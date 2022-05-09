; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/rt5682-sdw.c_pt.bc'
source_filename = "../sound/soc/codecs/rt5682-sdw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sdw_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdw_device_id = type { i16, i16, i8, i8, i32 }
%struct.sdw_slave_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.104, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.104 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.reg_default = type { i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.sdw_slave = type { %struct.sdw_slave_id, %struct.device, i32, ptr, ptr, %struct.sdw_slave_prop, ptr, %struct.list_head, [15 x %struct.completion], [15 x i32], i16, i16, i8, %struct.completion, %struct.completion, %struct.completion, i32, i8, i8 }
%struct.sdw_slave_id = type { i16, i16, i8, i8, i8 }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.sdw_slave_prop = type { i32, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i32, i8, i32, i32, i32, ptr, ptr, ptr, i8, i32, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rt5682_priv = type { ptr, ptr, %struct.rt5682_platform_data, ptr, ptr, ptr, [3 x %struct.regulator_bulk_data], %struct.delayed_work, %struct.delayed_work, %struct.mutex, i8, %struct.mutex, ptr, i32, %struct.sdw_bus_params, i8, i8, i8, [2 x %struct.clk_hw], ptr, i32, i32, [3 x i32], [3 x i32], [3 x i32], [2 x i32], [2 x i32], [2 x i32], i32, i32 }
%struct.rt5682_platform_data = type { i32, i32, i32, i32, i32, i32, i32, i8, [2 x ptr] }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.sdw_bus_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.sdw_stream_config = type { i32, i32, i32, i32, i32 }
%struct.sdw_port_config = type { i32, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.sdw_dpn_prop = type { i32, i32, i32, i32, ptr, i32, i32, i8, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i8, i8, i32, ptr }
%struct.sdw_slave_intr_status = type { i8, i8, [15 x i8] }

@__initcall__kmod_snd_soc_rt5682_sdw__301_820_rt5682_sdw_driver_init6 = internal global ptr @rt5682_sdw_driver_init, section ".initcall6.init", align 4
@rt5682_sdw_driver = internal global { %struct.sdw_driver, [60 x i8] } { %struct.sdw_driver { ptr null, ptr @rt5682_sdw_probe, ptr @rt5682_sdw_remove, ptr null, ptr @rt5682_id, ptr @rt5682_slave_ops, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5682_pm, ptr null, ptr null } }, [60 x i8] zeroinitializer }, align 32
@__exitcall_rt5682_sdw_driver_exit = internal global ptr @rt5682_sdw_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description302 = internal constant [54 x i8] c"snd_soc_rt5682_sdw.description=ASoC RT5682 driver SDW\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [62 x i8] c"snd_soc_rt5682_sdw.author=Oder Chiou <oder_chiou@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [60 x i8] c"snd_soc_rt5682_sdw.file=sound/soc/codecs/snd-soc-rt5682-sdw\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [34 x i8] c"snd_soc_rt5682_sdw.license=GPL v2\00", section ".modinfo", align 1
@rt5682_id = internal constant { [2 x %struct.sdw_device_id], [40 x i8] } { [2 x %struct.sdw_device_id] [%struct.sdw_device_id { i16 605, i16 22146, i8 2, i8 0, i32 0 }, %struct.sdw_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@rt5682_slave_ops = internal constant { %struct.sdw_slave_ops, [40 x i8] } { %struct.sdw_slave_ops { ptr @rt5682_read_prop, ptr @rt5682_interrupt_callback, ptr @rt5682_update_status, ptr @rt5682_bus_config, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rt5682\00", [25 x i8] zeroinitializer }, align 32
@rt5682_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rt5682_dev_system_suspend, ptr @rt5682_dev_resume, ptr @rt5682_dev_system_suspend, ptr @rt5682_dev_resume, ptr @rt5682_dev_system_suspend, ptr @rt5682_dev_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5682_dev_suspend, ptr @rt5682_dev_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@rt5682_sdw_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rt5682_sdw_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.2, i32 32, i32 0, i32 0, i32 8, ptr null, ptr @rt5682_sdw_readable_register, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 65535, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rt5682_sdw:709:(&rt5682_sdw_regmap)->lock\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sdw\00", [28 x i8] zeroinitializer }, align 32
@rt5682_sdw_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&rt5682->disable_irq_lock\00", [38 x i8] zeroinitializer }, align 32
@rt5682_sdw_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rt5682_sdw_indirect_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 16, ptr null, ptr @rt5682_readable_register, ptr @rt5682_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @rt5682_sdw_read, ptr @rt5682_sdw_write, ptr null, i8 0, i32 65535, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5682_reg, i32 318, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"rt5682_sdw:350:(&rt5682_sdw_indirect_regmap)->lock\00", [45 x i8] zeroinitializer }, align 32
@rt5682_sdw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 354, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rt5682_sdw_init\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/soc/codecs/rt5682-sdw.c\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt5682_sdw_init._entry_ptr = internal global ptr @rt5682_sdw_init._entry, section ".printk_index", align 4
@rt5682_sdw_init.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&rt5682->calibrate_mutex\00", [39 x i8] zeroinitializer }, align 32
@rt5682_sdw_init.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"(work_completion)(&(&rt5682->jack_detect_work)->work)\00", [42 x i8] zeroinitializer }, align 32
@rt5682_sdw_init.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&(&rt5682->jack_detect_work)->timer\00", [60 x i8] zeroinitializer }, align 32
@rt5682_soc_component_dev = external dso_local constant %struct.snd_soc_component_driver, align 4
@rt5682_dai = internal global { [3 x %struct.snd_soc_dai_driver], [104 x i8] } { [3 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.18, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt5682_aif1_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.19, i64 68719476805, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.20, i64 68719476805, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.21, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt5682_aif2_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.22, i64 68719476805, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.23, i32 2, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt5682_sdw_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.24, i64 68719476805, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.25, i64 68719476805, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [104 x i8] zeroinitializer }, align 32
@rt5682_sdw_init.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.6, ptr @.str.7, ptr @.str.17, i8 0, i8 93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_soc_rt5682_sdw\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@rt5682_reg = external dso_local constant [318 x %struct.reg_default], align 4
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rt5682-aif1\00", [20 x i8] zeroinitializer }, align 32
@rt5682_aif1_dai_ops = external dso_local constant %struct.snd_soc_dai_ops, align 4
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AIF1 Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AIF1 Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rt5682-aif2\00", [20 x i8] zeroinitializer }, align 32
@rt5682_aif2_dai_ops = external dso_local constant %struct.snd_soc_dai_ops, align 4
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AIF2 Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rt5682-sdw\00", [21 x i8] zeroinitializer }, align 32
@rt5682_sdw_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5682_set_sdw_stream, ptr null, ptr null, ptr null, ptr @rt5682_sdw_shutdown, ptr @rt5682_sdw_hw_params, ptr @rt5682_sdw_hw_free, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SDW Capture\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SDW Playback\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rt5682_sdw_hw_params.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.26, ptr @.str.7, ptr @.str.27, i8 0, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rt5682_sdw_hw_params\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@rt5682_sdw_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.7, i32 170, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to configure port\0A\00", [38 x i8] zeroinitializer }, align 32
@rt5682_sdw_hw_params._entry_ptr = internal global ptr @rt5682_sdw_hw_params._entry, section ".printk_index", align 4
@rt5682_interrupt_callback.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.29, ptr @.str.7, ptr @.str.30, i8 0, i8 -85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rt5682_interrupt_callback\00", [38 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s control_port_stat=%x\00", [40 x i8] zeroinitializer }, align 32
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@rt5682_io_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.7, i32 416, ptr @.str.33, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Device with ID register %x is not rt5682\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rt5682_io_init\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rt5682_io_init._entry_ptr = internal global ptr @rt5682_io_init._entry, section ".printk_index", align 4
@rt5682_io_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.7, i32 422, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@rt5682_io_init._entry_ptr.35 = internal global ptr @rt5682_io_init._entry.34, section ".printk_index", align 4
@rt5682_io_init.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.32, ptr @.str.7, ptr @.str.36, i8 0, i8 124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s hw_init complete: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@rt5682_bus_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.7, i32 673, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid clk config\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rt5682_bus_config\00", [46 x i8] zeroinitializer }, align 32
@rt5682_bus_config._entry_ptr = internal global ptr @rt5682_bus_config._entry, section ".printk_index", align 4
@rt5682_clock_config.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.39, ptr @.str.7, ptr @.str.40, i8 0, i8 -92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rt5682_clock_config\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s complete, clk_freq=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@rt5682_dev_system_suspend.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.41, ptr @.str.7, ptr @.str.42, i8 0, i8 -64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rt5682_dev_system_suspend\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: could not disable imp-def interrupts\0A:\00", [53 x i8] zeroinitializer }, align 32
@rt5682_dev_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.7, i32 792, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Initialization not complete, timed out\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rt5682_dev_resume\00", [46 x i8] zeroinitializer }, align 32
@rt5682_dev_resume._entry_ptr = internal global ptr @rt5682_dev_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 224, i64 240, i64 12288, i64 12289, i64 12292, i64 12293, i64 12296]
@__sancov_gen_cov_switch_values.45 = internal global [15 x i64] [i64 13, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.46 = internal global [8 x i64] [i64 6, i64 32, i64 2400000, i64 4800000, i64 6000000, i64 9600000, i64 12000000, i64 12288000]
@___asan_gen_.47 = private unnamed_addr constant [18 x i8] c"rt5682_sdw_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 809, i32 26 }
@___asan_gen_.50 = private unnamed_addr constant [10 x i8] c"rt5682_id\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 728, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"rt5682_slave_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 696, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 811, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant [10 x i8] c"rt5682_pm\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 804, i32 32 }
@___asan_gen_.65 = private unnamed_addr constant [18 x i8] c"rt5682_sdw_regmap\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 520, i32 35 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 709, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 521, i32 10 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 347, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [27 x i8] c"rt5682_sdw_indirect_regmap\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 75, i32 35 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 349, i32 19 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 353, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 365, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 366, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [11 x i8] c"rt5682_dai\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 279, i32 34 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 372, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 281, i32 11 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 291, i32 19 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 284, i32 19 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 300, i32 11 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 303, i32 19 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 312, i32 11 }
@___asan_gen_.152 = private unnamed_addr constant [15 x i8] c"rt5682_sdw_ops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 272, i32 37 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 322, i32 19 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 315, i32 19 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 140, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 170, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 683, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 416, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 422, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 499, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 673, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 658, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 771, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.225 = private constant [33 x i8] c"../sound/soc/codecs/rt5682-sdw.c\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 792, i32 3 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_rt5682_sdw_driver_exit, ptr @__initcall__kmod_snd_soc_rt5682_sdw__301_820_rt5682_sdw_driver_init6, ptr @rt5682_bus_config._entry, ptr @rt5682_bus_config._entry_ptr, ptr @rt5682_dev_resume._entry, ptr @rt5682_dev_resume._entry_ptr, ptr @rt5682_io_init._entry, ptr @rt5682_io_init._entry.34, ptr @rt5682_io_init._entry_ptr, ptr @rt5682_io_init._entry_ptr.35, ptr @rt5682_sdw_driver_exit, ptr @rt5682_sdw_hw_params._entry, ptr @rt5682_sdw_hw_params._entry_ptr, ptr @rt5682_sdw_init._entry, ptr @rt5682_sdw_init._entry_ptr, ptr @rt5682_sdw_driver, ptr @rt5682_id, ptr @rt5682_slave_ops, ptr @.str, ptr @rt5682_pm, ptr @rt5682_sdw_probe._key, ptr @rt5682_sdw_regmap, ptr @.str.1, ptr @.str.2, ptr @rt5682_sdw_init.__key, ptr @.str.3, ptr @rt5682_sdw_init._key, ptr @rt5682_sdw_indirect_regmap, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @rt5682_sdw_init.__key.10, ptr @.str.11, ptr @rt5682_sdw_init.__key.12, ptr @.str.13, ptr @rt5682_sdw_init.__key.14, ptr @.str.15, ptr @rt5682_dai, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @rt5682_sdw_ops, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_sdw_driver to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_id to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_slave_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_sdw_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_sdw_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_sdw_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_sdw_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_sdw_indirect_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_sdw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_sdw_init.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_sdw_init.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_sdw_init.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_dai to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_sdw_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_sdw_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_io_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_io_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_bus_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_dev_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682_sdw_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__sdw_register_driver(ptr noundef nonnull @rt5682_sdw_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rt5682_sdw_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sdw_unregister_driver(ptr noundef nonnull @rt5682_sdw_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdw_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sdw_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682_sdw_probe(ptr noundef %slave, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__devm_regmap_init_sdw(ptr noundef %slave, ptr noundef nonnull @rt5682_sdw_regmap, ptr noundef nonnull @rt5682_sdw_probe._key, ptr noundef nonnull @.str.1) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  tail call fastcc void @rt5682_sdw_init(ptr noundef %dev, ptr noundef %call, ptr noundef %slave)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682_sdw_remove(ptr nocapture noundef readonly %slave) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %hw_init = getelementptr inbounds %struct.rt5682_priv, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %hw_init to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hw_init, align 4, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %jack_detect_work = getelementptr inbounds %struct.rt5682_priv, ptr %1, i32 0, i32 7
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jack_detect_work) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_sdw(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rt5682_sdw_init(ptr noundef %dev, ptr noundef %regmap, ptr noundef %slave) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 636, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i, align 4
  %slave1 = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 12
  %1 = ptrtoint ptr %slave1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %slave, ptr %slave1, align 4
  %sdw_regmap = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %sdw_regmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %regmap, ptr %sdw_regmap, align 4
  %is_sdw = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 17
  %3 = ptrtoint ptr %is_sdw to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %is_sdw, align 2
  %disable_irq_lock = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %disable_irq_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @rt5682_sdw_init.__key) #9
  %call2 = tail call ptr @__devm_regmap_init(ptr noundef %dev, ptr noundef null, ptr noundef %dev, ptr noundef nonnull @rt5682_sdw_indirect_regmap, ptr noundef nonnull @rt5682_sdw_init._key, ptr noundef nonnull @.str.4) #9
  %regmap3 = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %regmap3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %regmap3, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %5) #12
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %hw_init = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 15
  %6 = ptrtoint ptr %hw_init to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %hw_init, align 4
  %first_hw_init = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 16
  %7 = ptrtoint ptr %first_hw_init to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %first_hw_init, align 1
  %calibrate_mutex = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %calibrate_mutex, ptr noundef nonnull @.str.11, ptr noundef nonnull @rt5682_sdw_init.__key.10) #9
  %jack_detect_work = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 7
  tail call void @__init_work(ptr noundef %jack_detect_work, i32 noundef 0) #9
  %8 = ptrtoint ptr %jack_detect_work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %jack_detect_work, align 4
  %lockdep_map = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 7, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.13, ptr noundef nonnull @rt5682_sdw_init.__key.12, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry24 = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 7, i32 0, i32 1
  %9 = ptrtoint ptr %entry24 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry24, ptr %entry24, align 4
  %prev.i = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 7, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry24, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 7, i32 0, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @rt5682_jack_detect_handler, ptr %func, align 4
  %timer = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 7, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.15, ptr noundef nonnull @rt5682_sdw_init.__key.14) #9
  %call35 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @rt5682_soc_component_dev, ptr noundef nonnull @rt5682_dai, i32 noundef 3) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5682_sdw_init.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5682_sdw_init, %if.then42)) #9
          to label %cleanup [label %if.then42], !srcloc !127

if.then42:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %dev43 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5682_sdw_init.__UNIQUE_ID_ddebug296, ptr noundef %dev43, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.6) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end12, %if.then6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt5682_sdw_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 224, label %entry.return_crit_edge
    i32 240, label %entry.return_crit_edge1
    i32 12288, label %entry.return_crit_edge2
    i32 12289, label %entry.return_crit_edge3
    i32 12292, label %entry.return_crit_edge4
    i32 12293, label %entry.return_crit_edge5
    i32 12296, label %entry.return_crit_edge6
  ]

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt5682_jack_detect_handler(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rt5682_readable_register(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rt5682_volatile_register(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682_sdw_read(ptr nocapture noundef readonly %context, i32 noundef %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %data_l = alloca i32, align 4
  %data_h = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %context, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_l) #9
  %2 = ptrtoint ptr %data_l to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data_l, align 4, !annotation !128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_h) #9
  %3 = ptrtoint ptr %data_h to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %data_h, align 4, !annotation !128
  %sdw_regmap = getelementptr inbounds %struct.rt5682_priv, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %sdw_regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdw_regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 12296, i32 noundef 0) #9
  %6 = ptrtoint ptr %sdw_regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdw_regmap, align 4
  %shr = lshr i32 %reg, 8
  %and = and i32 %shr, 255
  %call3 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 12289, i32 noundef %and) #9
  %8 = ptrtoint ptr %sdw_regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdw_regmap, align 4
  %and5 = and i32 %reg, 255
  %call6 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 12288, i32 noundef %and5) #9
  %10 = ptrtoint ptr %sdw_regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdw_regmap, align 4
  %call8 = call i32 @regmap_read(ptr noundef %11, i32 noundef 12293, ptr noundef nonnull %data_h) #9
  %12 = ptrtoint ptr %sdw_regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdw_regmap, align 4
  %call10 = call i32 @regmap_read(ptr noundef %13, i32 noundef 12292, ptr noundef nonnull %data_l) #9
  %14 = ptrtoint ptr %data_h to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_h, align 4
  %shl = shl i32 %15, 8
  %16 = ptrtoint ptr %data_l to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_l, align 4
  %or = or i32 %shl, %17
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_h) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_l) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682_sdw_write(ptr nocapture noundef readonly %context, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %context, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %sdw_regmap = getelementptr inbounds %struct.rt5682_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sdw_regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdw_regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 12296, i32 noundef 1) #9
  %4 = ptrtoint ptr %sdw_regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdw_regmap, align 4
  %shr = lshr i32 %reg, 8
  %and = and i32 %shr, 255
  %call3 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 12289, i32 noundef %and) #9
  %6 = ptrtoint ptr %sdw_regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdw_regmap, align 4
  %and5 = and i32 %reg, 255
  %call6 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 12288, i32 noundef %and5) #9
  %8 = ptrtoint ptr %sdw_regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdw_regmap, align 4
  %shr8 = lshr i32 %val, 8
  %and9 = and i32 %shr8, 255
  %call10 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 12293, i32 noundef %and9) #9
  %10 = ptrtoint ptr %sdw_regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdw_regmap, align 4
  %and12 = and i32 %val, 255
  %call13 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 12292, i32 noundef %and12) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682_set_sdw_stream(ptr nocapture noundef writeonly %dai, ptr noundef %sdw_stream, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sdw_stream, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4) #13
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %sdw_stream, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %direction)
  %cmp = icmp eq i32 %direction, 0
  %playback_dma_data = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %capture_dma_data = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %playback_dma_data.sink = select i1 %cmp, ptr %playback_dma_data, ptr %capture_dma_data
  %2 = ptrtoint ptr %playback_dma_data.sink to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %playback_dma_data.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt5682_sdw_shutdown(ptr nocapture noundef readonly %substream, ptr nocapture noundef %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %0 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %cond.in.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %2 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  store ptr null, ptr %cond.in.i, align 4
  tail call void @kfree(ptr noundef %cond.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682_sdw_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %stream_config = alloca %struct.sdw_stream_config, align 4
  %port_config = alloca %struct.sdw_port_config, align 4
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
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %stream_config) #9
  %6 = getelementptr inbounds %struct.sdw_stream_config, ptr %stream_config, i32 0, i32 1
  %7 = getelementptr inbounds %struct.sdw_stream_config, ptr %stream_config, i32 0, i32 2
  %8 = getelementptr inbounds %struct.sdw_stream_config, ptr %stream_config, i32 0, i32 3
  %9 = getelementptr inbounds i8, ptr %stream_config, i32 16
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %port_config) #9
  %11 = getelementptr inbounds %struct.sdw_port_config, ptr %port_config, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5682_sdw_hw_params.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5682_sdw_hw_params, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !127

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %dai to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dai, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5682_sdw_hw_params.__UNIQUE_ID_ddebug295, ptr noundef %13, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, ptr noundef %15) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %16 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp eq i32 %17, 0
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %cond.in.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %18 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %tobool7.not = icmp eq ptr %cond.i, null
  br i1 %tobool7.not, label %do.end.cleanup_crit_edge, label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %slave = getelementptr inbounds %struct.rt5682_priv, ptr %5, i32 0, i32 12
  %19 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %slave, align 4
  %tobool10.not = icmp eq ptr %20, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %not.cmp.i = xor i1 %cmp.i, true
  %. = zext i1 %not.cmp.i to i32
  %.98 = select i1 %cmp.i, i32 1, i32 2
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i, align 4
  %23 = ptrtoint ptr %stream_config to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %stream_config, align 4
  %arrayidx.i.i101 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %24 = ptrtoint ptr %arrayidx.i.i101 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i101, align 4
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %6, align 4
  %arrayidx.i.i102 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %arrayidx.i.i102 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.end12.if.then.i.i_crit_edge

if.end12.if.then.i.i_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %if.end12.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %if.end12.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %28, %if.end12.if.then.i.i_crit_edge ], [ %31, %for.inc.i.i.if.then.i.i_crit_edge ]
  %29 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #9, !range !129
  %add.i.i = or i32 %29, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %if.end12
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.1.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %call19 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i) #9
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call19, ptr %7, align 4
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %., ptr %8, align 4
  %34 = ptrtoint ptr %arrayidx.i.i101 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i101, align 4
  %notmask = shl nsw i32 -1, %35
  %sub = xor i32 %notmask, -1
  %36 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub, ptr %11, align 4
  %37 = ptrtoint ptr %port_config to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.98, ptr %port_config, align 4
  %38 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %slave, align 4
  %40 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cond.i, align 4
  %call23 = call i32 @sdw_stream_add_slave(ptr noundef %39, ptr noundef nonnull %stream_config, ptr noundef nonnull %port_config, i32 noundef 1, ptr noundef %41) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end30, label %do.end28

do.end28:                                         ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev29 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %42 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev29, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.28) #12
  br label %cleanup

if.end30:                                         ; preds = %params_format.exit
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i.i, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %45, label %if.end30.cleanup_crit_edge [
    i32 48000, label %if.end30.if.end53_crit_edge
    i32 96000, label %if.end30.if.else47_crit_edge
    i32 192000, label %sw.bb33
    i32 32000, label %sw.bb34
    i32 24000, label %sw.bb35
    i32 16000, label %sw.bb36
    i32 12000, label %sw.bb37
    i32 8000, label %sw.bb38
    i32 44100, label %sw.bb39
    i32 88200, label %sw.bb40
    i32 176400, label %sw.bb41
    i32 22050, label %sw.bb42
    i32 11025, label %sw.bb43
  ]

if.end30.if.else47_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else47

if.end30.if.end53_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb33:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else47

sw.bb34:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

sw.bb35:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

sw.bb36:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

sw.bb37:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

sw.bb38:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

sw.bb39:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

sw.bb40:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else47

sw.bb41:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else47

sw.bb42:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

sw.bb43:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.else47:                                        ; preds = %sw.bb41, %sw.bb40, %sw.bb33, %if.end30.if.else47_crit_edge
  %val_p.0 = phi i32 [ 10, %sw.bb41 ], [ 9, %sw.bb40 ], [ 2, %sw.bb33 ], [ 1, %if.end30.if.else47_crit_edge ]
  %val_c.0 = phi i32 [ 160, %sw.bb41 ], [ 144, %sw.bb40 ], [ 32, %sw.bb33 ], [ 16, %if.end30.if.else47_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 96001, i32 %45)
  %cmp49 = icmp ult i32 %45, 96001
  %.99 = select i1 %cmp49, i32 2, i32 1
  %.100 = select i1 %cmp49, i32 8192, i32 4096
  br label %if.end53

if.end53:                                         ; preds = %if.else47, %sw.bb43, %sw.bb42, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %if.end30.if.end53_crit_edge
  %val_c.0115 = phi i32 [ %val_c.0, %if.else47 ], [ 0, %if.end30.if.end53_crit_edge ], [ 48, %sw.bb34 ], [ 64, %sw.bb35 ], [ 80, %sw.bb36 ], [ 96, %sw.bb37 ], [ 112, %sw.bb38 ], [ 128, %sw.bb39 ], [ 192, %sw.bb42 ], [ 224, %sw.bb43 ]
  %val_p.0114 = phi i32 [ %val_p.0, %if.else47 ], [ 0, %if.end30.if.end53_crit_edge ], [ 3, %sw.bb34 ], [ 4, %sw.bb35 ], [ 5, %sw.bb36 ], [ 6, %sw.bb37 ], [ 7, %sw.bb38 ], [ 8, %sw.bb39 ], [ 12, %sw.bb42 ], [ 14, %sw.bb43 ]
  %osr_p.0 = phi i32 [ %.99, %if.else47 ], [ 4, %if.end30.if.end53_crit_edge ], [ 4, %sw.bb34 ], [ 4, %sw.bb35 ], [ 4, %sw.bb36 ], [ 4, %sw.bb37 ], [ 4, %sw.bb38 ], [ 4, %sw.bb39 ], [ 4, %sw.bb42 ], [ 4, %sw.bb43 ]
  %osr_c.0 = phi i32 [ %.100, %if.else47 ], [ 16384, %if.end30.if.end53_crit_edge ], [ 16384, %sw.bb34 ], [ 16384, %sw.bb35 ], [ 16384, %sw.bb36 ], [ 16384, %sw.bb37 ], [ 16384, %sw.bb38 ], [ 16384, %sw.bb39 ], [ 16384, %sw.bb42 ], [ 16384, %sw.bb43 ]
  %47 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp55 = icmp eq i32 %48, 0
  %regmap = getelementptr inbounds %struct.rt5682_priv, ptr %5, i32 0, i32 3
  %49 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap, align 4
  br i1 %cmp55, label %if.then56, label %if.else60

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 141, i32 noundef 15, i32 noundef %val_p.0114, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %51 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap, align 4
  %call.i107 = call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef 115, i32 noundef 15, i32 noundef %osr_p.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

if.else60:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %call.i108 = call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 141, i32 noundef 240, i32 noundef %val_c.0115, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %53 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap, align 4
  %call.i109 = call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef 115, i32 noundef 61440, i32 noundef %osr_c.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else60, %if.then56, %if.end30.cleanup_crit_edge, %do.end28, %if.end9.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %do.end28 ], [ -12, %do.end.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %if.end30.cleanup_crit_edge ], [ 0, %if.else60 ], [ 0, %if.then56 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %port_config) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %stream_config) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682_sdw_hw_free(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %slave = getelementptr inbounds %struct.rt5682_priv, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slave, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %8 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %cond.in.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %10 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %11 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cond.i, align 4
  %call4 = tail call i32 @sdw_stream_remove_slave(ptr noundef nonnull %7, ptr noundef %12) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_stream_add_slave(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_stream_remove_slave(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682_read_prop(ptr noundef %slave) #2 align 64 {
entry:
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #9
  %scp_int1_mask = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 19
  %0 = ptrtoint ptr %scp_int1_mask to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 7, ptr %scp_int1_mask, align 4
  %quirks = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 20
  %1 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %quirks, align 4
  %paging_support = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 9
  %2 = ptrtoint ptr %paging_support to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %paging_support, align 1
  %source_ports = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 14
  %3 = ptrtoint ptr %source_ports to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %source_ports, align 4
  %sink_ports = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 15
  %4 = ptrtoint ptr %sink_ports to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %sink_ports, align 4
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 84, i32 noundef 3520) #9
  %src_dpn_prop = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 17
  %5 = ptrtoint ptr %src_dpn_prop to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5.i.i, ptr %src_dpn_prop, align 4
  %tobool317.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool317.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %source_ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %source_ports, align 4
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %addr, align 4
  %call320 = call i32 @_find_next_bit_be(ptr noundef nonnull %addr, i32 noundef 32, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call320)
  %cmp797 = icmp ult i32 %call320, 32
  br i1 %cmp797, label %if.end.for.body_crit_edge, label %if.end.cond.false648_crit_edge

if.end.cond.false648_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false648

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %bit.0799 = phi i32 [ %call326, %for.body.for.body_crit_edge ], [ %call320, %if.end.for.body_crit_edge ]
  %i.0798 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sdw_dpn_prop, ptr %call5.i.i, i32 %i.0798
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %bit.0799, ptr %arrayidx, align 4
  %type = getelementptr %struct.sdw_dpn_prop, ptr %call5.i.i, i32 %i.0798, i32 5
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %type, align 4
  %simple_ch_prep_sm = getelementptr %struct.sdw_dpn_prop, ptr %call5.i.i, i32 %i.0798, i32 7
  %11 = ptrtoint ptr %simple_ch_prep_sm to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %simple_ch_prep_sm, align 4
  %ch_prep_timeout = getelementptr %struct.sdw_dpn_prop, ptr %call5.i.i, i32 %i.0798, i32 8
  %12 = ptrtoint ptr %ch_prep_timeout to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 10, ptr %ch_prep_timeout, align 4
  %inc = add i32 %i.0798, 1
  %add325 = add nuw nsw i32 %bit.0799, 1
  %call326 = call i32 @_find_next_bit_be(ptr noundef nonnull %addr, i32 noundef 32, i32 noundef %add325) #9
  %cmp = icmp ult i32 %call326, 32
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cond.false648_crit_edge

for.body.cond.false648_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false648

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cond.false648:                                    ; preds = %for.body.cond.false648_crit_edge, %if.end.cond.false648_crit_edge
  %13 = ptrtoint ptr %sink_ports to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sink_ports, align 4
  %call.i = call i32 @__sw_hweight32(i32 noundef %14) #9
  %15 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i, i32 84) #9
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !130

devm_kcalloc.exit.thread:                         ; preds = %cond.false648
  call void @__sanitizer_cov_trace_pc() #11
  %sink_dpn_prop795 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 18
  %17 = ptrtoint ptr %sink_dpn_prop795 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %sink_dpn_prop795, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %cond.false648
  %18 = extractvalue { i32, i1 } %15, 0
  %call5.i.i793 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %18, i32 noundef 3520) #9
  %sink_dpn_prop = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 18
  %19 = ptrtoint ptr %sink_dpn_prop to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call5.i.i793, ptr %sink_dpn_prop, align 4
  %tobool656.not = icmp eq ptr %call5.i.i793, null
  br i1 %tobool656.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end658

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end658:                                        ; preds = %devm_kcalloc.exit
  %20 = ptrtoint ptr %sink_ports to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sink_ports, align 4
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %addr, align 4
  %call661 = call i32 @_find_next_bit_be(ptr noundef nonnull %addr, i32 noundef 32, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call661)
  %cmp663800 = icmp ult i32 %call661, 32
  br i1 %cmp663800, label %if.end658.for.body665_crit_edge, label %if.end658.for.end678_crit_edge

if.end658.for.end678_crit_edge:                   ; preds = %if.end658
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end678

if.end658.for.body665_crit_edge:                  ; preds = %if.end658
  br label %for.body665

for.body665:                                      ; preds = %for.body665.for.body665_crit_edge, %if.end658.for.body665_crit_edge
  %bit.1802 = phi i32 [ %call677, %for.body665.for.body665_crit_edge ], [ %call661, %if.end658.for.body665_crit_edge ]
  %i.1801 = phi i32 [ %inc674, %for.body665.for.body665_crit_edge ], [ 0, %if.end658.for.body665_crit_edge ]
  %arrayidx666 = getelementptr %struct.sdw_dpn_prop, ptr %call5.i.i793, i32 %i.1801
  %23 = ptrtoint ptr %arrayidx666 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %bit.1802, ptr %arrayidx666, align 4
  %type669 = getelementptr %struct.sdw_dpn_prop, ptr %call5.i.i793, i32 %i.1801, i32 5
  %24 = ptrtoint ptr %type669 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %type669, align 4
  %simple_ch_prep_sm671 = getelementptr %struct.sdw_dpn_prop, ptr %call5.i.i793, i32 %i.1801, i32 7
  %25 = ptrtoint ptr %simple_ch_prep_sm671 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %simple_ch_prep_sm671, align 4
  %ch_prep_timeout673 = getelementptr %struct.sdw_dpn_prop, ptr %call5.i.i793, i32 %i.1801, i32 8
  %26 = ptrtoint ptr %ch_prep_timeout673 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 10, ptr %ch_prep_timeout673, align 4
  %inc674 = add i32 %i.1801, 1
  %add676 = add nuw nsw i32 %bit.1802, 1
  %call677 = call i32 @_find_next_bit_be(ptr noundef nonnull %addr, i32 noundef 32, i32 noundef %add676) #9
  %cmp663 = icmp ult i32 %call677, 32
  br i1 %cmp663, label %for.body665.for.body665_crit_edge, label %for.body665.for.end678_crit_edge

for.body665.for.end678_crit_edge:                 ; preds = %for.body665
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end678

for.body665.for.body665_crit_edge:                ; preds = %for.body665
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body665

for.end678:                                       ; preds = %for.body665.for.end678_crit_edge, %if.end658.for.end678_crit_edge
  %clk_stop_timeout = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 5
  %27 = ptrtoint ptr %clk_stop_timeout to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 20, ptr %clk_stop_timeout, align 4
  %wake_capable = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 1
  %28 = ptrtoint ptr %wake_capable to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %wake_capable, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end678, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end678 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682_interrupt_callback(ptr noundef %slave, ptr nocapture noundef readonly %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5682_interrupt_callback.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5682_interrupt_callback, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !127

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  %control_port = getelementptr inbounds %struct.sdw_slave_intr_status, ptr %status, i32 0, i32 1
  %2 = ptrtoint ptr %control_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %control_port, align 1
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5682_interrupt_callback.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %disable_irq_lock = getelementptr inbounds %struct.rt5682_priv, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %disable_irq_lock, i32 noundef 0) #9
  %control_port5 = getelementptr inbounds %struct.sdw_slave_intr_status, ptr %status, i32 0, i32 1
  %4 = ptrtoint ptr %control_port5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %control_port5, align 1
  %6 = and i8 %5, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool7.not = icmp eq i8 %6, 0
  br i1 %tobool7.not, label %do.end.if.end12_crit_edge, label %land.lhs.true

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

land.lhs.true:                                    ; preds = %do.end
  %disable_irq = getelementptr inbounds %struct.rt5682_priv, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %disable_irq to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %disable_irq, align 4, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not = icmp eq i8 %8, 0
  br i1 %tobool8.not, label %if.then9, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %9 = load ptr, ptr @system_power_efficient_wq, align 4
  %jack_detect_work = getelementptr inbounds %struct.rt5682_priv, ptr %1, i32 0, i32 7
  %irq_work_delay_time = getelementptr inbounds %struct.rt5682_priv, ptr %1, i32 0, i32 29
  %10 = ptrtoint ptr %irq_work_delay_time to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_work_delay_time, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %11) #9
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %jack_detect_work, i32 noundef %call2.i) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %land.lhs.true.if.end12_crit_edge, %do.end.if.end12_crit_edge
  tail call void @mutex_unlock(ptr noundef %disable_irq_lock) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682_update_status(ptr noundef %slave, i32 noundef %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  %driver_data.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %status1 = getelementptr inbounds %struct.rt5682_priv, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %status, ptr %status1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %cmp = icmp eq i32 %status, 0
  %hw_init = getelementptr inbounds %struct.rt5682_priv, ptr %1, i32 0, i32 15
  br i1 %cmp, label %if.end.thread, label %if.end

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %hw_init to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hw_init, align 4, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %status)
  %cmp4.not = icmp eq i32 %status, 1
  %or.cond = and i1 %cmp4.not, %tobool.not
  br i1 %or.cond, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %hw_init to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %hw_init, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call fastcc i32 @rt5682_io_init(ptr noundef %dev, ptr noundef %slave)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.thread, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end6 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682_bus_config(ptr noundef %slave, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  %driver_data.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %params1 = getelementptr inbounds %struct.rt5682_priv, ptr %1, i32 0, i32 14
  %2 = call ptr @memcpy(ptr %params1, ptr %params, i32 36)
  %call3 = tail call fastcc i32 @rt5682_clock_config(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rt5682_io_init(ptr noundef %dev, ptr noundef %slave) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !128
  %disable_irq = getelementptr inbounds %struct.rt5682_priv, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %disable_irq to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %disable_irq, align 4
  %hw_init = getelementptr inbounds %struct.rt5682_priv, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %hw_init to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_init, align 4, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %first_hw_init = getelementptr inbounds %struct.rt5682_priv, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %first_hw_init to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %first_hw_init, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev3 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev3, i32 noundef 3000) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev3, i1 noundef zeroext true) #9
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev3, i32 noundef 0) #9
  %call.i156 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 12, i32 22
  %8 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store volatile i64 %call.i156, ptr %last_busy.i, align 8
  tail call void @pm_runtime_enable(ptr noundef %dev3) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then2, %if.end.if.end9_crit_edge
  %dev10 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  %usage_count.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !131
  %10 = ptrtoint ptr %first_hw_init to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %first_hw_init, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool12.not = icmp eq i8 %11, 0
  br i1 %tobool12.not, label %if.end9.if.end15_crit_edge, label %if.then13

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %regmap = getelementptr inbounds %struct.rt5682_priv, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %13, i1 noundef zeroext false) #9
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_bypass(ptr noundef %15, i1 noundef zeroext true) #9
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end9.if.end15_crit_edge
  %regmap16 = getelementptr inbounds %struct.rt5682_priv, ptr %1, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %do.end.while.body_crit_edge, %if.end15
  %loop.0176 = phi i32 [ 10, %if.end15 ], [ %dec, %do.end.while.body_crit_edge ]
  %16 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap16, align 4
  %call17 = call i32 @regmap_read(ptr noundef %17, i32 noundef 255, ptr noundef nonnull %val) #9
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25904, i32 %19)
  %cmp18 = icmp eq i32 %19, 25904
  br i1 %cmp18, label %while.body.if.end26_crit_edge, label %do.end

while.body.if.end26_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

do.end:                                           ; preds = %while.body
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %19) #12
  call void @usleep_range_state(i32 noundef 30000, i32 noundef 30005, i32 noundef 2) #9
  %dec = add nsw i32 %loop.0176, -1
  %cmp = icmp ugt i32 %loop.0176, 1
  br i1 %cmp, label %do.end.while.body_crit_edge, label %while.end

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %do.end
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25904, i32 %.pr)
  %cmp21.not = icmp eq i32 %.pr, 25904
  br i1 %cmp21.not, label %while.end.if.end26_crit_edge, label %do.end25

while.end.if.end26_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

do.end25:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %.pr) #12
  br label %err_nodev

if.end26:                                         ; preds = %while.end.if.end26_crit_edge, %while.body.if.end26_crit_edge
  call void @rt5682_calibrate(ptr noundef %1) #9
  %21 = ptrtoint ptr %first_hw_init to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %first_hw_init, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool28.not = icmp eq i8 %22, 0
  br i1 %tobool28.not, label %if.end36, label %if.then29

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap16, align 4
  call void @regcache_cache_bypass(ptr noundef %24, i1 noundef zeroext false) #9
  %25 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap16, align 4
  call void @regcache_mark_dirty(ptr noundef %26) #9
  %27 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap16, align 4
  %call33 = call i32 @regcache_sync(ptr noundef %28) #9
  %29 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap16, align 4
  %call.i157 = call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 17, i32 noundef 112, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %reinit

if.end36:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  call void @rt5682_apply_patch_list(ptr noundef %1, ptr noundef %dev) #9
  %31 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap16, align 4
  %call38 = call i32 @regmap_write(ptr noundef %32, i32 noundef 142, i32 noundef 0) #9
  %33 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap16, align 4
  %call.i158 = call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 99, i32 noundef 60, i32 noundef 44, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %35 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap16, align 4
  %call42 = call i32 @regmap_write(ptr noundef %36, i32 noundef 148, i32 noundef 128) #9
  %37 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap16, align 4
  %call44 = call i32 @regmap_write(ptr noundef %38, i32 noundef 325, i32 noundef 0) #9
  %39 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap16, align 4
  %call.i159 = call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 273, i32 noundef 12, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %41 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap16, align 4
  %call.i160 = call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 293, i32 noundef 48, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %43 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap16, align 4
  %call.i161 = call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef 145, i32 noundef 768, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %45 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap16, align 4
  %call52 = call i32 @regmap_write(ptr noundef %46, i32 noundef 342, i32 noundef 41574) #9
  %47 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap16, align 4
  %call54 = call i32 @regmap_write(ptr noundef %48, i32 noundef 155, i32 noundef 5888) #9
  %49 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap16, align 4
  %call56 = call i32 @regmap_write(ptr noundef %50, i32 noundef 156, i32 noundef 6) #9
  %51 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap16, align 4
  %call58 = call i32 @regmap_write(ptr noundef %52, i32 noundef 157, i32 noundef 9728) #9
  %53 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap16, align 4
  %call60 = call i32 @regmap_write(ptr noundef %54, i32 noundef 158, i32 noundef 3215) #9
  %55 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap16, align 4
  %call62 = call i32 @regmap_write(ptr noundef %56, i32 noundef 132, i32 noundef 12288) #9
  %57 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap16, align 4
  %call64 = call i32 @regmap_write(ptr noundef %58, i32 noundef 133, i32 noundef 16384) #9
  %59 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap16, align 4
  %call.i162 = call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 128, i32 noundef 60416, i32 noundef 18432, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %61 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap16, align 4
  %call.i163 = call i32 @regmap_update_bits_base(ptr noundef %62, i32 noundef 17, i32 noundef 112, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %63 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap16, align 4
  %call70 = call i32 @regmap_write(ptr noundef %64, i32 noundef 16, i32 noundef 53570) #9
  %65 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap16, align 4
  %call.i164 = call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef 20, i32 noundef 1792, i32 noundef 1536, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %67 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap16, align 4
  %call.i165 = call i32 @regmap_update_bits_base(ptr noundef %68, i32 noundef 18, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %69 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap16, align 4
  %call.i166 = call i32 @regmap_update_bits_base(ptr noundef %70, i32 noundef 528, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %71 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap16, align 4
  %call.i167 = call i32 @regmap_update_bits_base(ptr noundef %72, i32 noundef 159, i32 noundef 53248, i32 noundef 53248, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %73 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap16, align 4
  %call.i168 = call i32 @regmap_update_bits_base(ptr noundef %74, i32 noundef 100, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %75 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regmap16, align 4
  %call.i169 = call i32 @regmap_update_bits_base(ptr noundef %76, i32 noundef 183, i32 noundef 33792, i32 noundef 33792, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %reinit

reinit:                                           ; preds = %if.end36, %if.then29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %77 = load ptr, ptr @system_power_efficient_wq, align 4
  %jack_detect_work = getelementptr inbounds %struct.rt5682_priv, ptr %1, i32 0, i32 7
  %call.i170 = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %77, ptr noundef %jack_detect_work, i32 noundef 25) #9
  %78 = ptrtoint ptr %hw_init to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %hw_init, align 4
  %79 = ptrtoint ptr %first_hw_init to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %first_hw_init, align 1
  br label %err_nodev

err_nodev:                                        ; preds = %reinit, %do.end25
  %ret.0 = phi i32 [ -19, %do.end25 ], [ 0, %reinit ]
  %call.i171 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i172 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 12, i32 22
  %80 = ptrtoint ptr %last_busy.i172 to i32
  call void @__asan_store8_noabort(i32 %80)
  store volatile i64 %call.i171, ptr %last_busy.i172, align 8
  %call.i173 = call i32 @__pm_runtime_suspend(ptr noundef %dev10, i32 noundef 13) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5682_io_init.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5682_io_init, %if.then95)) #9
          to label %cleanup [label %if.then95], !srcloc !127

if.then95:                                        ; preds = %err_nodev
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5682_io_init.__UNIQUE_ID_ddebug297, ptr noundef %dev10, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.32, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then95, %err_nodev, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %if.then95 ], [ %ret.0, %err_nodev ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_bypass(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt5682_calibrate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt5682_apply_patch_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rt5682_clock_config(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %curr_dr_freq = getelementptr inbounds %struct.rt5682_priv, ptr %1, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %curr_dr_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %curr_dr_freq, align 4
  %shr = lshr i32 %3, 1
  %4 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %shr, label %entry.cleanup_crit_edge [
    i32 12000000, label %entry.sw.epilog_crit_edge
    i32 6000000, label %sw.bb1
    i32 9600000, label %sw.bb2
    i32 4800000, label %sw.bb3
    i32 2400000, label %sw.bb4
    i32 12288000, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %value.0 = phi i32 [ 5, %sw.bb5 ], [ 4, %sw.bb4 ], [ 3, %sw.bb3 ], [ 2, %sw.bb2 ], [ 1, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  %sdw_regmap = getelementptr inbounds %struct.rt5682_priv, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %sdw_regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdw_regmap, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 224, i32 noundef %value.0) #9
  %7 = ptrtoint ptr %sdw_regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdw_regmap, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 240, i32 noundef %value.0) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5682_clock_config.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5682_clock_config, %if.then)) #9
          to label %cleanup [label %if.then], !srcloc !127

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5682_clock_config.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39, i32 noundef %shr) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682_dev_system_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hw_init = getelementptr inbounds %struct.rt5682_priv, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %hw_init to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hw_init, align 4, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %disable_irq_lock = getelementptr inbounds %struct.rt5682_priv, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %disable_irq_lock, i32 noundef 0) #9
  %disable_irq = getelementptr inbounds %struct.rt5682_priv, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %disable_irq to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %disable_irq, align 4
  %call1 = tail call i32 @sdw_update_no_pm(ptr noundef %add.ptr, i32 noundef 65, i8 noundef zeroext 4, i8 noundef zeroext 0) #9
  tail call void @mutex_unlock(ptr noundef %disable_irq_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.body, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5682_dev_system_suspend.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5682_dev_system_suspend, %if.then9)) #9
          to label %if.end12 [label %if.then9], !srcloc !127

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5682_dev_system_suspend.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %do.body, %if.end.if.end12_crit_edge
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i, align 4
  %hw_init.i = getelementptr inbounds %struct.rt5682_priv, ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %hw_init.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hw_init.i, align 4, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end12.cleanup_crit_edge, label %if.end.i

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %jack_detect_work.i = getelementptr inbounds %struct.rt5682_priv, ptr %6, i32 0, i32 7
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jack_detect_work.i) #9
  %regmap.i = getelementptr inbounds %struct.rt5682_priv, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  tail call void @regcache_cache_only(ptr noundef %10, i1 noundef zeroext true) #9
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  tail call void @regcache_mark_dirty(ptr noundef %12) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682_dev_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %first_hw_init = getelementptr inbounds %struct.rt5682_priv, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %first_hw_init to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %first_hw_init, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %unattach_request = getelementptr i8, ptr %dev, i32 2096
  %4 = ptrtoint ptr %unattach_request to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %unattach_request, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end.regmap_sync_crit_edge, label %if.end3

if.end.regmap_sync_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %regmap_sync

if.end3:                                          ; preds = %if.end
  %initialization_complete = getelementptr i8, ptr %dev, i32 2040
  %call5 = tail call i32 @wait_for_completion_timeout(ptr noundef %initialization_complete, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.end, label %if.end3.regmap_sync_crit_edge

if.end3.regmap_sync_crit_edge:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %regmap_sync

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #12
  br label %cleanup

regmap_sync:                                      ; preds = %if.end3.regmap_sync_crit_edge, %if.end.regmap_sync_crit_edge
  %6 = ptrtoint ptr %unattach_request to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %unattach_request, align 8
  %regmap = getelementptr inbounds %struct.rt5682_priv, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %8, i1 noundef zeroext false) #9
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call12 = tail call i32 @regcache_sync(ptr noundef %10) #9
  br label %cleanup

cleanup:                                          ; preds = %regmap_sync, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %regmap_sync ], [ -110, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682_dev_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hw_init = getelementptr inbounds %struct.rt5682_priv, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %hw_init to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hw_init, align 4, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %jack_detect_work = getelementptr inbounds %struct.rt5682_priv, ptr %1, i32 0, i32 7
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jack_detect_work) #9
  %regmap = getelementptr inbounds %struct.rt5682_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext true) #9
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %7) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_update_no_pm(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !24, !26, !27, !29, !30, !31, !32, !33, !34, !35, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !72, !73, !75, !76, !77, !79, !81, !83, !84, !85, !87, !88, !89, !90, !91, !93, !94, !96, !97, !99, !100, !101, !102, !104, !105, !106, !108, !110, !111, !112, !114, !115, !116}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = !{ptr @__initcall__kmod_snd_soc_rt5682_sdw__301_820_rt5682_sdw_driver_init6, !1, !"__initcall__kmod_snd_soc_rt5682_sdw__301_820_rt5682_sdw_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 820, i32 1}
!2 = !{ptr @__exitcall_rt5682_sdw_driver_exit, !1, !"__exitcall_rt5682_sdw_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description302, !4, !"__UNIQUE_ID_description302", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 822, i32 1}
!5 = !{ptr @__UNIQUE_ID_author303, !6, !"__UNIQUE_ID_author303", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 823, i32 1}
!7 = !{ptr @__UNIQUE_ID_file304, !8, !"__UNIQUE_ID_file304", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 824, i32 1}
!9 = !{ptr @__UNIQUE_ID_license305, !8, !"__UNIQUE_ID_license305", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 811, i32 11}
!12 = !{ptr @rt5682_sdw_driver, !13, !"rt5682_sdw_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 809, i32 26}
!14 = !{ptr @rt5682_sdw_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 709, i32 11}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 521, i32 10}
!19 = !{ptr @rt5682_sdw_regmap, !20, !"rt5682_sdw_regmap", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 520, i32 35}
!21 = !{ptr @rt5682_sdw_init.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 347, i32 2}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rt5682_sdw_init._key, !25, !"_key", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 349, i32 19}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 353, i32 3}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @rt5682_sdw_init._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @rt5682_sdw_init._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @rt5682_sdw_init.__key.10, !36, !"__key", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 365, i32 2}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @rt5682_sdw_init.__key.12, !39, !"__key", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 366, i32 2}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @rt5682_sdw_init.__key.14, !39, !"__key", i1 false, i1 false}
!42 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 372, i32 2}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @rt5682_sdw_init.__UNIQUE_ID_ddebug296, !44, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!47 = !{ptr @rt5682_sdw_indirect_regmap, !48, !"rt5682_sdw_indirect_regmap", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 75, i32 35}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 281, i32 11}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 291, i32 19}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 284, i32 19}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 300, i32 11}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 303, i32 19}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 312, i32 11}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 322, i32 19}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 315, i32 19}
!65 = !{ptr @rt5682_dai, !66, !"rt5682_dai", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 279, i32 34}
!67 = !{ptr @rt5682_sdw_ops, !68, !"rt5682_sdw_ops", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 272, i32 37}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 140, i32 2}
!71 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @rt5682_sdw_hw_params.__UNIQUE_ID_ddebug295, !70, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 170, i32 3}
!75 = !{ptr @rt5682_sdw_hw_params._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @rt5682_sdw_hw_params._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @rt5682_id, !78, !"rt5682_id", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 728, i32 35}
!79 = !{ptr @rt5682_slave_ops, !80, !"rt5682_slave_ops", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 696, i32 35}
!81 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 683, i32 2}
!83 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @rt5682_interrupt_callback.__UNIQUE_ID_ddebug299, !82, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 416, i32 3}
!87 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @rt5682_io_init._entry, !86, !"_entry", i1 false, i1 false}
!90 = !{ptr @rt5682_io_init._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @rt5682_io_init._entry.34, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 422, i32 3}
!93 = !{ptr @rt5682_io_init._entry_ptr.35, !92, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 499, i32 2}
!96 = !{ptr @rt5682_io_init.__UNIQUE_ID_ddebug297, !95, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!97 = !{ptr @.str.37, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 673, i32 3}
!99 = !{ptr @.str.38, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @rt5682_bus_config._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @rt5682_bus_config._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 658, i32 2}
!104 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @rt5682_clock_config.__UNIQUE_ID_ddebug298, !103, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!106 = !{ptr @rt5682_pm, !107, !"rt5682_pm", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 804, i32 32}
!108 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 771, i32 3}
!110 = !{ptr @.str.42, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @rt5682_dev_system_suspend.__UNIQUE_ID_ddebug300, !109, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!112 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/rt5682-sdw.c", i32 792, i32 3}
!114 = !{ptr @.str.44, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @rt5682_dev_resume._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @rt5682_dev_resume._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{i32 1, !"wchar_size", i32 2}
!118 = !{i32 1, !"min_enum_size", i32 4}
!119 = !{i32 8, !"branch-target-enforcement", i32 0}
!120 = !{i32 8, !"sign-return-address", i32 0}
!121 = !{i32 8, !"sign-return-address-all", i32 0}
!122 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!123 = !{i32 7, !"uwtable", i32 1}
!124 = !{i32 7, !"frame-pointer", i32 2}
!125 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!126 = !{i8 0, i8 2}
!127 = !{i64 2148972779, i64 2148972784, i64 2148972797, i64 2148972841, i64 2148972875, i64 2148972896}
!128 = !{!"auto-init"}
!129 = !{i32 0, i32 33}
!130 = !{!"branch_weights", i32 1, i32 2000}
!131 = !{i64 2148359402, i64 2148359428, i64 2148359457, i64 2148359491, i64 2148359522, i64 2148359545}
