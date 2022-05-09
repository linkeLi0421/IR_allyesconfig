; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/wm8741.c_pt.bc'
source_filename = "../sound/soc/codecs/wm8741.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.atomic_t = type { i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.98, i32 }
%union.anon.98 = type { ptr }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.wm8741_priv = type { %struct.wm8741_platform_data, ptr, [2 x %struct.regulator_bulk_data], i32, ptr }
%struct.wm8741_platform_data = type { i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
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
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }

@__initcall__kmod_snd_soc_wm8741__301_695_wm8741_modinit6 = internal global ptr @wm8741_modinit, section ".initcall6.init", align 4
@wm8741_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @wm8741_spi_probe, ptr null, ptr null, %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @wm8741_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@wm8741_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @wm8741_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @wm8741_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @wm8741_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_wm8741_exit = internal global ptr @wm8741_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description302 = internal constant [46 x i8] c"snd_soc_wm8741.description=ASoC WM8741 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [67 x i8] c"snd_soc_wm8741.author=Ian Lartey <ian@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [52 x i8] c"snd_soc_wm8741.file=sound/soc/codecs/snd-soc-wm8741\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [27 x i8] c"snd_soc_wm8741.license=GPL\00", section ".modinfo", align 1
@wm8741_modinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Failed to register WM8741 I2C driver: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wm8741_modinit\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/wm8741.c\00", [38 x i8] zeroinitializer }, align 32
@wm8741_modinit._entry_ptr = internal global ptr @wm8741_modinit._entry, section ".printk_index", align 4
@wm8741_modinit._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 689, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Failed to register wm8741 SPI driver: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@wm8741_modinit._entry_ptr.5 = internal global ptr @wm8741_modinit._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wm8741\00", [25 x i8] zeroinitializer }, align 32
@wm8741_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wlf,wm8741\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@wm8741_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 643, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request supplies: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8741_spi_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm8741_spi_probe._entry_ptr = internal global ptr @wm8741_spi_probe._entry, section ".printk_index", align 4
@wm8741_spi_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wm8741_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 7, i32 0, i32 0, i32 9, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8741_reg_defaults, i32 10, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wm8741:647:(&wm8741_regmap)->lock\00", [62 x i8] zeroinitializer }, align 32
@wm8741_spi_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 650, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to init regmap: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@wm8741_spi_probe._entry_ptr.14 = internal global ptr @wm8741_spi_probe._entry.12, section ".printk_index", align 4
@wm8741_spi_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.2, i32 656, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to set pdata: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@wm8741_spi_probe._entry_ptr.17 = internal global ptr @wm8741_spi_probe._entry.15, section ".printk_index", align 4
@soc_component_dev_wm8741 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr @wm8741_dapm_widgets, i32 6, ptr @wm8741_dapm_routes, i32 4, ptr @wm8741_probe, ptr @wm8741_remove, ptr null, ptr @wm8741_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 92, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@wm8741_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.6, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wm8741_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.22, i64 68719477828, i32 7904, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DVDD\00", [27 x i8] zeroinitializer }, align 32
@wm8741_reg_defaults = internal constant { [10 x %struct.reg_default], [48 x i8] } { [10 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 5, i32 10 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 8, i32 2 }, %struct.reg_default { i32 32, i32 2 }], [48 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"diff-mode\00", [22 x i8] zeroinitializer }, align 32
@wm8741_dapm_routes = internal constant { [4 x %struct.snd_soc_dapm_route], [48 x i8] } { [4 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.24, ptr null, ptr @.str.21, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.25, ptr null, ptr @.str.21, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.26, ptr null, ptr @.str.23, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.27, ptr null, ptr @.str.23, ptr null, %struct.snd_soc_dobj zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACL\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACR\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VOUTLP\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VOUTLN\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VOUTRP\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VOUTRN\00", [25 x i8] zeroinitializer }, align 32
@wm8741_dapm_widgets = internal constant { [6 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [264 x i8] } { [6 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.21, ptr @.str.22, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.23, ptr @.str.22, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.24, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.25, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.26, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.27, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [264 x i8] zeroinitializer }, align 32
@wm8741_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 482, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable supplies: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm8741_probe\00", [19 x i8] zeroinitializer }, align 32
@wm8741_probe._entry_ptr = internal global ptr @wm8741_probe._entry, section ".printk_index", align 4
@wm8741_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 488, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to issue reset\0A\00", [41 x i8] zeroinitializer }, align 32
@wm8741_probe._entry_ptr.33 = internal global ptr @wm8741_probe._entry.31, section ".printk_index", align 4
@wm8741_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.2, i32 494, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to change default settings\0A\00", [61 x i8] zeroinitializer }, align 32
@wm8741_probe._entry_ptr.36 = internal global ptr @wm8741_probe._entry.34, section ".printk_index", align 4
@wm8741_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.2, i32 500, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to add controls\0A\00", [40 x i8] zeroinitializer }, align 32
@wm8741_probe._entry_ptr.39 = internal global ptr @wm8741_probe._entry.37, section ".printk_index", align 4
@wm8741_probe.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.30, ptr @.str.2, ptr @.str.41, i8 0, i8 126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_wm8741\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Successful registration\0A\00", [39 x i8] zeroinitializer }, align 32
@wm8741_snd_controls_stereo = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_tlv_fine }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_tlv }, i32 ptrtoint (ptr @.compoundliteral.44 to i32) }], [32 x i8] zeroinitializer }, align 32
@wm8741_snd_controls_mono_left = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_tlv_fine }, i32 ptrtoint (ptr @.compoundliteral.45 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_tlv }, i32 ptrtoint (ptr @.compoundliteral.46 to i32) }], [32 x i8] zeroinitializer }, align 32
@wm8741_snd_controls_mono_right = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_tlv_fine }, i32 ptrtoint (ptr @.compoundliteral.47 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_tlv }, i32 ptrtoint (ptr @.compoundliteral.48 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Fine Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@dac_tlv_fine = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -12700, i32 13], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 0, i32 2, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Playback Volume\00", [16 x i8] zeroinitializer }, align 32
@dac_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -12700, i32 400], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 511, i32 511, i32 1, i32 3, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 0, i32 0, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 511, i32 511, i32 1, i32 1, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 2, i32 2, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 511, i32 511, i32 3, i32 3, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@wm8741_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @wm8741_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @wm8741_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8741_mute, ptr @wm8741_startup, ptr null, ptr @wm8741_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@wm8741_set_dai_sysclk.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wm8741_set_dai_sysclk\00", [42 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"wm8741_set_dai_sysclk info: freq=%dHz\0A\00", [57 x i8] zeroinitializer }, align 32
@constraints_11289 = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @rates_11289, i32 2, i32 0 }, [20 x i8] zeroinitializer }, align 32
@constraints_12288 = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @rates_12288, i32 3, i32 0 }, [20 x i8] zeroinitializer }, align 32
@constraints_16384 = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @rates_16384, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@constraints_16934 = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @rates_16934, i32 2, i32 0 }, [20 x i8] zeroinitializer }, align 32
@constraints_18432 = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @rates_18432, i32 2, i32 0 }, [20 x i8] zeroinitializer }, align 32
@constraints_22579 = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @rates_22579, i32 3, i32 0 }, [20 x i8] zeroinitializer }, align 32
@constraints_24576 = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @rates_24576, i32 4, i32 0 }, [20 x i8] zeroinitializer }, align 32
@constraints_36864 = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @rates_36864, i32 3, i32 0 }, [20 x i8] zeroinitializer }, align 32
@rates_11289 = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 44100, i32 88200], [24 x i8] zeroinitializer }, align 32
@rates_12288 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 32000, i32 48000, i32 96000], [20 x i8] zeroinitializer }, align 32
@rates_16384 = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 32000], [28 x i8] zeroinitializer }, align 32
@rates_16934 = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 44100, i32 88200], [24 x i8] zeroinitializer }, align 32
@rates_18432 = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 48000, i32 96000], [24 x i8] zeroinitializer }, align 32
@rates_22579 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 44100, i32 88200, i32 176400], [20 x i8] zeroinitializer }, align 32
@rates_24576 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 32000, i32 48000, i32 96000, i32 192000], [16 x i8] zeroinitializer }, align 32
@rates_36864 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 48000, i32 96000, i32 192000], [20 x i8] zeroinitializer }, align 32
@wm8741_set_dai_fmt.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 0, i8 89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wm8741_set_dai_fmt\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"wm8741_set_dai_fmt:    Format=%x, Clock Inv=%x\0A\00", [48 x i8] zeroinitializer }, align 32
@wm8741_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 203, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"No MCLK configured, call set_sysclk() on init or in hw_params\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8741_hw_params\00", [47 x i8] zeroinitializer }, align 32
@wm8741_hw_params._entry_ptr = internal global ptr @wm8741_hw_params._entry, section ".printk_index", align 4
@wm8741_hw_params._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 215, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"LRCLK %d unsupported with MCLK %d\0A\00", [61 x i8] zeroinitializer }, align 32
@wm8741_hw_params._entry_ptr.57 = internal global ptr @wm8741_hw_params._entry.55, section ".printk_index", align 4
@wm8741_hw_params.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.54, ptr @.str.2, ptr @.str.58, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"wm8741_hw_params:    Unsupported bit size param = %d\00", [43 x i8] zeroinitializer }, align 32
@wm8741_hw_params.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.54, ptr @.str.2, ptr @.str.59, i8 0, i8 62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"wm8741_hw_params:    bit size param = %d, rate param = %d\00", [38 x i8] zeroinitializer }, align 32
@wm8741_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"wm8741\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@wm8741_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.60, ptr @.str.2, i32 585, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8741_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@wm8741_i2c_probe._entry_ptr = internal global ptr @wm8741_i2c_probe._entry, section ".printk_index", align 4
@wm8741_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wm8741:589:(&wm8741_regmap)->lock\00", [62 x i8] zeroinitializer }, align 32
@wm8741_i2c_probe._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.60, ptr @.str.2, i32 592, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@wm8741_i2c_probe._entry_ptr.63 = internal global ptr @wm8741_i2c_probe._entry.62, section ".printk_index", align 4
@wm8741_i2c_probe._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.60, ptr @.str.2, i32 598, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@wm8741_i2c_probe._entry_ptr.65 = internal global ptr @wm8741_i2c_probe._entry.64, section ".printk_index", align 4
@switch.table.wm8741_probe = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @wm8741_snd_controls_stereo, ptr @wm8741_snd_controls_mono_left, ptr @wm8741_snd_controls_stereo, ptr @wm8741_snd_controls_mono_right], [16 x i8] zeroinitializer }, align 32
@switch.table.wm8741_set_dai_fmt = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 8, i32 0, i32 4, i32 12, i32 28], [44 x i8] zeroinitializer }, align 32
@switch.table.wm8741_hw_params = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1, i32 2, i32 0, i32 3], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 11289600, i64 12288000, i64 16384000, i64 16934400, i64 18432000, i64 22579200, i64 24576000, i64 33868800, i64 36864000]
@__sancov_gen_cov_switch_values.66 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@___asan_gen_.67 = private unnamed_addr constant [18 x i8] c"wm8741_spi_driver\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 667, i32 26 }
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"wm8741_i2c_driver\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 616, i32 26 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 683, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 688, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 669, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant [16 x i8] c"wm8741_of_match\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 534, i32 34 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 643, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [14 x i8] c"wm8741_regmap\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 540, i32 35 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 647, i32 19 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 650, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 656, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [25 x i8] c"soc_component_dev_wm8741\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 520, i32 46 }
@___asan_gen_.136 = private unnamed_addr constant [11 x i8] c"wm8741_dai\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 393, i32 34 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 32, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 33, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [20 x i8] c"wm8741_reg_defaults\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 45, i32 33 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 556, i32 42 }
@___asan_gen_.151 = private unnamed_addr constant [19 x i8] c"wm8741_dapm_routes\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 96, i32 40 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 88, i32 1 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 89, i32 1 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 90, i32 1 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 91, i32 1 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 92, i32 1 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 93, i32 1 }
@___asan_gen_.175 = private unnamed_addr constant [20 x i8] c"wm8741_dapm_widgets\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 87, i32 41 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 482, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 488, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 494, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 500, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 504, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant [27 x i8] c"wm8741_snd_controls_stereo\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 66, i32 38 }
@___asan_gen_.214 = private unnamed_addr constant [30 x i8] c"wm8741_snd_controls_mono_left\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 73, i32 38 }
@___asan_gen_.217 = private unnamed_addr constant [31 x i8] c"wm8741_snd_controls_mono_right\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 80, i32 38 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 67, i32 1 }
@___asan_gen_.223 = private unnamed_addr constant [13 x i8] c"dac_tlv_fine\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 63, i32 14 }
@___asan_gen_.226 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 69, i32 1 }
@___asan_gen_.230 = private unnamed_addr constant [8 x i8] c"dac_tlv\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 64, i32 14 }
@___asan_gen_.233 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [15 x i8] c"wm8741_dai_ops\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 384, i32 37 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 264, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant [18 x i8] c"constraints_11289\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 107, i32 48 }
@___asan_gen_.250 = private unnamed_addr constant [18 x i8] c"constraints_12288\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 116, i32 48 }
@___asan_gen_.253 = private unnamed_addr constant [18 x i8] c"constraints_16384\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 125, i32 48 }
@___asan_gen_.256 = private unnamed_addr constant [18 x i8] c"constraints_16934\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 134, i32 48 }
@___asan_gen_.259 = private unnamed_addr constant [18 x i8] c"constraints_18432\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 143, i32 48 }
@___asan_gen_.262 = private unnamed_addr constant [18 x i8] c"constraints_22579\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 152, i32 48 }
@___asan_gen_.265 = private unnamed_addr constant [18 x i8] c"constraints_24576\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 161, i32 48 }
@___asan_gen_.268 = private unnamed_addr constant [18 x i8] c"constraints_36864\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 170, i32 48 }
@___asan_gen_.271 = private unnamed_addr constant [12 x i8] c"rates_11289\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 103, i32 27 }
@___asan_gen_.274 = private unnamed_addr constant [12 x i8] c"rates_12288\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 112, i32 27 }
@___asan_gen_.277 = private unnamed_addr constant [12 x i8] c"rates_16384\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 121, i32 27 }
@___asan_gen_.280 = private unnamed_addr constant [12 x i8] c"rates_16934\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 130, i32 27 }
@___asan_gen_.283 = private unnamed_addr constant [12 x i8] c"rates_18432\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 139, i32 27 }
@___asan_gen_.286 = private unnamed_addr constant [12 x i8] c"rates_22579\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 148, i32 27 }
@___asan_gen_.289 = private unnamed_addr constant [12 x i8] c"rates_24576\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 157, i32 27 }
@___asan_gen_.292 = private unnamed_addr constant [12 x i8] c"rates_36864\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 166, i32 27 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 356, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 202, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 214, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 234, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 247, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant [14 x i8] c"wm8741_i2c_id\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 610, i32 35 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 585, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.334 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 589, i32 19 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 592, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.341 = private constant [29 x i8] c"../sound/soc/codecs/wm8741.c\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 598, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant [26 x i8] c"switch.table.wm8741_probe\00", align 1
@___asan_gen_.344 = private unnamed_addr constant [32 x i8] c"switch.table.wm8741_set_dai_fmt\00", align 1
@___asan_gen_.345 = private unnamed_addr constant [30 x i8] c"switch.table.wm8741_hw_params\00", align 1
@llvm.compiler.used = appending global [120 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_wm8741_exit, ptr @__initcall__kmod_snd_soc_wm8741__301_695_wm8741_modinit6, ptr @wm8741_exit, ptr @wm8741_hw_params._entry, ptr @wm8741_hw_params._entry.55, ptr @wm8741_hw_params._entry_ptr, ptr @wm8741_hw_params._entry_ptr.57, ptr @wm8741_i2c_probe._entry, ptr @wm8741_i2c_probe._entry.62, ptr @wm8741_i2c_probe._entry.64, ptr @wm8741_i2c_probe._entry_ptr, ptr @wm8741_i2c_probe._entry_ptr.63, ptr @wm8741_i2c_probe._entry_ptr.65, ptr @wm8741_modinit._entry, ptr @wm8741_modinit._entry.3, ptr @wm8741_modinit._entry_ptr, ptr @wm8741_modinit._entry_ptr.5, ptr @wm8741_probe._entry, ptr @wm8741_probe._entry.31, ptr @wm8741_probe._entry.34, ptr @wm8741_probe._entry.37, ptr @wm8741_probe._entry_ptr, ptr @wm8741_probe._entry_ptr.33, ptr @wm8741_probe._entry_ptr.36, ptr @wm8741_probe._entry_ptr.39, ptr @wm8741_spi_probe._entry, ptr @wm8741_spi_probe._entry.12, ptr @wm8741_spi_probe._entry.15, ptr @wm8741_spi_probe._entry_ptr, ptr @wm8741_spi_probe._entry_ptr.14, ptr @wm8741_spi_probe._entry_ptr.17, ptr @wm8741_spi_driver, ptr @wm8741_i2c_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @wm8741_of_match, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @wm8741_spi_probe._key, ptr @wm8741_regmap, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @soc_component_dev_wm8741, ptr @wm8741_dai, ptr @.str.18, ptr @.str.19, ptr @wm8741_reg_defaults, ptr @.str.20, ptr @wm8741_dapm_routes, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @wm8741_dapm_widgets, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @wm8741_snd_controls_stereo, ptr @wm8741_snd_controls_mono_left, ptr @wm8741_snd_controls_mono_right, ptr @.str.42, ptr @dac_tlv_fine, ptr @.compoundliteral, ptr @.str.43, ptr @dac_tlv, ptr @.compoundliteral.44, ptr @.compoundliteral.45, ptr @.compoundliteral.46, ptr @.compoundliteral.47, ptr @.compoundliteral.48, ptr @wm8741_dai_ops, ptr @.str.49, ptr @.str.50, ptr @constraints_11289, ptr @constraints_12288, ptr @constraints_16384, ptr @constraints_16934, ptr @constraints_18432, ptr @constraints_22579, ptr @constraints_24576, ptr @constraints_36864, ptr @rates_11289, ptr @rates_12288, ptr @rates_16384, ptr @rates_16934, ptr @rates_18432, ptr @rates_22579, ptr @rates_24576, ptr @rates_36864, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @wm8741_i2c_id, ptr @.str.60, ptr @wm8741_i2c_probe._key, ptr @.str.61, ptr @switch.table.wm8741_probe, ptr @switch.table.wm8741_set_dai_fmt, ptr @switch.table.wm8741_hw_params], section "llvm.metadata"
@0 = internal global [99 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8741_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8741_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8741_modinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8741_modinit._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8741_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8741_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8741_spi_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8741_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8741_spi_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8741_spi_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_wm8741 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8741_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8741_reg_defaults to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8741_dapm_routes to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8741_dapm_widgets to i32), i32 1080, i32 1344, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8741_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8741_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8741_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8741_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8741_snd_controls_stereo to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8741_snd_controls_mono_left to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8741_snd_controls_mono_right to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_tlv_fine to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8741_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @constraints_11289 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @constraints_12288 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @constraints_16384 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @constraints_16934 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @constraints_18432 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @constraints_22579 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @constraints_24576 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @constraints_36864 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rates_11289 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rates_12288 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rates_16384 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rates_16934 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rates_18432 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rates_22579 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rates_24576 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rates_36864 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8741_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8741_hw_params._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8741_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8741_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8741_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8741_i2c_probe._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8741_i2c_probe._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8741_probe to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8741_set_dai_fmt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8741_hw_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8741_modinit() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @wm8741_i2c_driver) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call2 = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @wm8741_spi_driver) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %if.end.if.end10_crit_edge, label %do.end7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call2) #9
  br label %if.end10

if.end10:                                         ; preds = %do.end7, %if.end.if.end10_crit_edge
  ret i32 %call2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm8741_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @wm8741_spi_driver, i32 0, i32 4)) #6
  tail call void @i2c_del_driver(ptr noundef nonnull @wm8741_i2c_driver) #6
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8741_spi_probe(ptr noundef %spi) #4 align 64 {
entry:
  %diff_mode.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 40, i32 noundef 3520) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %arrayidx2 = getelementptr %struct.wm8741_priv, ptr %call.i, i32 0, i32 2, i32 0
  %0 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.18, ptr %arrayidx2, align 4
  %arrayidx2.1 = getelementptr %struct.wm8741_priv, ptr %call.i, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.19, ptr %arrayidx2.1, align 4
  %call5 = tail call i32 @devm_regulator_bulk_get(ptr noundef %spi, i32 noundef 2, ptr noundef %arrayidx2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end9, label %do.end

do.end:                                           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.7, i32 noundef %call5) #9
  br label %cleanup

if.end9:                                          ; preds = %for.body.preheader
  %call10 = tail call ptr @__devm_regmap_init_spi(ptr noundef %spi, ptr noundef nonnull @wm8741_regmap, ptr noundef nonnull @wm8741_spi_probe._key, ptr noundef nonnull @.str.11) #6
  %regmap = getelementptr inbounds %struct.wm8741_priv, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call10, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end20

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.13, i32 noundef %3) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end9
  %platform_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %4 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %diff_mode.i) #6
  %6 = ptrtoint ptr %diff_mode.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %diff_mode.i, align 4, !annotation !196
  %of_node.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %7 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end20
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.20, ptr noundef nonnull %diff_mode.i, i32 noundef 1, i32 noundef 0) #6
  %9 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i60 = icmp sgt i32 %9, -1
  br i1 %cmp.i60, label %if.then.i.if.end10.sink.split.i_crit_edge, label %if.then.i.wm8741_set_pdata.exit_crit_edge

if.then.i.wm8741_set_pdata.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wm8741_set_pdata.exit

if.then.i.if.end10.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.sink.split.i

if.else.i:                                        ; preds = %if.end20
  %cmp6.not.i = icmp eq ptr %5, null
  br i1 %cmp6.not.i, label %if.else.i.wm8741_set_pdata.exit_crit_edge, label %if.else.i.if.end10.sink.split.i_crit_edge

if.else.i.if.end10.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.sink.split.i

if.else.i.wm8741_set_pdata.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wm8741_set_pdata.exit

if.end10.sink.split.i:                            ; preds = %if.else.i.if.end10.sink.split.i_crit_edge, %if.then.i.if.end10.sink.split.i_crit_edge
  %.sink.in.i = phi ptr [ %diff_mode.i, %if.then.i.if.end10.sink.split.i_crit_edge ], [ %5, %if.else.i.if.end10.sink.split.i_crit_edge ]
  %10 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.sink.i = load i32, ptr %.sink.in.i, align 4
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink.i, ptr %call.i, align 4
  br label %wm8741_set_pdata.exit

wm8741_set_pdata.exit:                            ; preds = %if.end10.sink.split.i, %if.else.i.wm8741_set_pdata.exit_crit_edge, %if.then.i.wm8741_set_pdata.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %diff_mode.i) #6
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call31 = call i32 @devm_snd_soc_register_component(ptr noundef %spi, ptr noundef nonnull @soc_component_dev_wm8741, ptr noundef nonnull @wm8741_dai, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %wm8741_set_pdata.exit, %if.then13, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end ], [ %3, %if.then13 ], [ %call31, %wm8741_set_pdata.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_spi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8741_probe(ptr noundef %component) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %supplies = getelementptr inbounds %struct.wm8741_priv, ptr %3, i32 0, i32 2
  %call1 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.29, i32 noundef %call1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 9, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  br i1 %cmp3, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.32) #9
  br label %err_enable

if.end9:                                          ; preds = %if.end
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %switch.i = icmp ult i32 %11, 4
  br i1 %switch.i, label %if.end17, label %do.end15

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.35) #9
  br label %err_enable

if.end17:                                         ; preds = %if.end9
  %shl.i = shl nuw nsw i32 %11, 2
  %call3.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 8, i32 noundef 12, i32 noundef %shl.i) #6
  %call4.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 0, i32 noundef 32, i32 noundef 32) #6
  %call5.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1, i32 noundef 32, i32 noundef 32) #6
  %call6.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 2, i32 noundef 32, i32 noundef 32) #6
  %call7.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 3, i32 noundef 32, i32 noundef 32) #6
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i56 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i.i56, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %20 = icmp ult i32 %19, 4
  br i1 %20, label %switch.lookup, label %do.end23

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.38) #9
  br label %err_enable

switch.lookup:                                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.wm8741_probe, i32 0, i32 %19
  %23 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %call1.i = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull %switch.load, i32 noundef 2) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8741_probe.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8741_probe, %if.then30)) #6
          to label %cleanup [label %if.then30], !srcloc !197

if.then30:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8741_probe.__UNIQUE_ID_ddebug300, ptr noundef %25, ptr noundef nonnull @.str.41) #6
  br label %cleanup

err_enable:                                       ; preds = %do.end23, %do.end15, %do.end7
  %ret.0 = phi i32 [ %call.i, %do.end7 ], [ -22, %do.end15 ], [ -22, %do.end23 ]
  %call37 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #6
  br label %cleanup

cleanup:                                          ; preds = %err_enable, %if.then30, %switch.lookup, %do.end
  %retval.0 = phi i32 [ 0, %if.then30 ], [ %call1, %do.end ], [ %ret.0, %err_enable ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm8741_remove(ptr nocapture noundef readonly %component) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %supplies = getelementptr inbounds %struct.wm8741_priv, ptr %3, i32 0, i32 2
  %call1 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8741_resume(ptr nocapture noundef readonly %component) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 13
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regcache_sync(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8741_set_dai_sysclk(ptr nocapture noundef readonly %codec_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8741_set_dai_sysclk.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8741_set_dai_sysclk, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !197

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8741_set_dai_sysclk.__UNIQUE_ID_ddebug298, ptr noundef %7, ptr noundef nonnull @.str.50, i32 noundef %freq) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %freq, label %do.end.cleanup_crit_edge [
    i32 0, label %do.end.sw.epilog_crit_edge
    i32 11289600, label %sw.bb5
    i32 12288000, label %sw.bb7
    i32 16384000, label %sw.bb9
    i32 16934400, label %sw.bb11
    i32 18432000, label %sw.bb13
    i32 22579200, label %do.end.sw.bb15_crit_edge
    i32 33868800, label %do.end.sw.bb15_crit_edge35
    i32 24576000, label %sw.bb17
    i32 36864000, label %sw.bb19
  ]

do.end.sw.bb15_crit_edge35:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb15

do.end.sw.bb15_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb15

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb5:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb13:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb15:                                          ; preds = %do.end.sw.bb15_crit_edge, %do.end.sw.bb15_crit_edge35
  br label %sw.epilog

sw.bb17:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb19:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %do.end.sw.epilog_crit_edge
  %constraints_36864.sink = phi ptr [ @constraints_36864, %sw.bb19 ], [ @constraints_24576, %sw.bb17 ], [ @constraints_22579, %sw.bb15 ], [ @constraints_18432, %sw.bb13 ], [ @constraints_16934, %sw.bb11 ], [ @constraints_16384, %sw.bb9 ], [ @constraints_12288, %sw.bb7 ], [ @constraints_11289, %sw.bb5 ], [ null, %do.end.sw.epilog_crit_edge ]
  %sysclk_constraints20 = getelementptr inbounds %struct.wm8741_priv, ptr %5, i32 0, i32 4
  %9 = ptrtoint ptr %sysclk_constraints20 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %constraints_36864.sink, ptr %sysclk_constraints20, align 4
  %sysclk = getelementptr inbounds %struct.wm8741_priv, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %freq, ptr %sysclk, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8741_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %and = and i32 %fmt, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and)
  %cond = icmp eq i32 %and, 16384
  br i1 %cond, label %sw.epilog, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %and2 = and i32 %fmt, 15
  %switch.tableidx = add nsw i32 %and2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 5
  br i1 %2, label %switch.lookup, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %sw.epilog
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.wm8741_set_dai_fmt, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %and9 = and i32 %fmt, 3840
  %4 = lshr exact i32 %and9, 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %4, label %switch.lookup.cleanup_crit_edge [
    i32 0, label %switch.lookup.do.body_crit_edge
    i32 2, label %sw.bb10
    i32 3, label %sw.bb11
    i32 4, label %sw.bb13
  ]

switch.lookup.do.body_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb10:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %switch.load, 16
  br label %do.body

sw.bb11:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %or12 = or i32 %switch.load, 32
  br label %do.body

sw.bb13:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %or14 = or i32 %switch.load, 48
  br label %do.body

do.body:                                          ; preds = %sw.bb13, %sw.bb11, %sw.bb10, %switch.lookup.do.body_crit_edge
  %iface.1 = phi i32 [ %or14, %sw.bb13 ], [ %or12, %sw.bb11 ], [ %or, %sw.bb10 ], [ %switch.load, %switch.lookup.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8741_set_dai_fmt.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8741_set_dai_fmt, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !197

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8741_set_dai_fmt.__UNIQUE_ID_ddebug299, ptr noundef %7, ptr noundef nonnull @.str.52, i32 noundef %and2, i32 noundef %and9) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %call21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 5, i32 noundef 60, i32 noundef %iface.1) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %switch.lookup.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8741_mute(ptr nocapture noundef readonly %codec_dai, i32 noundef %mute, i32 noundef %direction) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %shl = select i1 %tobool.not, i32 0, i32 8
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 4, i32 noundef 8, i32 noundef %shl) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8741_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %sysclk = getelementptr inbounds %struct.wm8741_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %8 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime, align 4
  %sysclk_constraints = getelementptr inbounds %struct.wm8741_priv, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %sysclk_constraints to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sysclk_constraints, align 4
  %call2 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %9, i32 noundef 0, i32 noundef 11, ptr noundef %11) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8741_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %sysclk = getelementptr inbounds %struct.wm8741_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %sysclk_constraints = getelementptr inbounds %struct.wm8741_priv, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %sysclk_constraints to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sysclk_constraints, align 4
  %count = getelementptr inbounds %struct.snd_pcm_hw_constraint_list, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp120.not = icmp eq i32 %11, 0
  br i1 %cmp120.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.53) #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0121 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %13, i32 %i.0121
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp4 = icmp eq i32 %17, %15
  br i1 %cmp4, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0121, 1
  %exitcond.not = icmp eq i32 %inc, %11
  br i1 %exitcond.not, label %for.inc.do.end13_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.do.end13_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.0121, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %11)
  %cmp9 = icmp eq i32 %i.0.lcssa, %11
  br i1 %cmp9, label %for.end.do.end13_crit_edge, label %if.end17

for.end.do.end13_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13

do.end13:                                         ; preds = %for.end.do.end13_crit_edge, %for.inc.do.end13_crit_edge
  %arrayidx.i.i90 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %arrayidx.i.i90 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i90, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.56, i32 noundef %19, i32 noundef %7) #9
  br label %cleanup

if.end17:                                         ; preds = %for.end
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.end17.if.then.i.i.i_crit_edge

if.end17.if.then.i.i.i_crit_edge:                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.end17.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.end17.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %21, %if.end17.if.then.i.i.i_crit_edge ], [ %24, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %22 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #6, !range !198
  %add.i.i.i = or i32 %22, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.end17
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.1.i.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #6
  %25 = add i32 %call1.i, -16
  %26 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %26)
  %27 = icmp ult i32 %26, 5
  br i1 %27, label %switch.hole_check, label %params_width.exit.do.body22_crit_edge

params_width.exit.do.body22_crit_edge:            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body22

do.body22:                                        ; preds = %switch.hole_check.do.body22_crit_edge, %params_width.exit.do.body22_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8741_hw_params.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8741_hw_params, %if.then27)) #6
          to label %cleanup [label %if.then27], !srcloc !197

if.then27:                                        ; preds = %do.body22
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  %30 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i.i92 = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i.i92, label %for.inc.i.i.i99, label %if.then27.if.then.i.i.i96_crit_edge

if.then27.if.then.i.i.i96_crit_edge:              ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i96

if.then.i.i.i96:                                  ; preds = %for.inc.i.i.i99.if.then.i.i.i96_crit_edge, %if.then27.if.then.i.i.i96_crit_edge
  %i.09.lcssa.i.i.i93 = phi i32 [ 0, %if.then27.if.then.i.i.i96_crit_edge ], [ 32, %for.inc.i.i.i99.if.then.i.i.i96_crit_edge ]
  %.lcssa.i.i.i94 = phi i32 [ %31, %if.then27.if.then.i.i.i96_crit_edge ], [ %34, %for.inc.i.i.i99.if.then.i.i.i96_crit_edge ]
  %32 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i94, i1 true) #6, !range !198
  %add.i.i.i95 = or i32 %32, %i.09.lcssa.i.i.i93
  br label %params_width.exit102

for.inc.i.i.i99:                                  ; preds = %if.then27
  %arrayidx.1.i.i.i97 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx.1.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.1.i.i.i97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.1.i.i.i98 = icmp eq i32 %34, 0
  br i1 %tobool.not.1.i.i.i98, label %for.inc.i.i.i99.params_width.exit102_crit_edge, label %for.inc.i.i.i99.if.then.i.i.i96_crit_edge

for.inc.i.i.i99.if.then.i.i.i96_crit_edge:        ; preds = %for.inc.i.i.i99
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i96

for.inc.i.i.i99.params_width.exit102_crit_edge:   ; preds = %for.inc.i.i.i99
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_width.exit102

params_width.exit102:                             ; preds = %for.inc.i.i.i99.params_width.exit102_crit_edge, %if.then.i.i.i96
  %retval.0.i.i.i100 = phi i32 [ %add.i.i.i95, %if.then.i.i.i96 ], [ 0, %for.inc.i.i.i99.params_width.exit102_crit_edge ]
  %call1.i101 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i100) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8741_hw_params.__UNIQUE_ID_ddebug296, ptr noundef %29, ptr noundef nonnull @.str.58, i32 noundef %call1.i101) #6
  br label %cleanup

switch.hole_check:                                ; preds = %params_width.exit
  %switch.maskindex = trunc i32 %26 to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %35 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %switch.lobit.not = icmp eq i8 %35, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.body22_crit_edge, label %switch.lookup

switch.hole_check.do.body22_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body22

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.wm8741_hw_params, i32 0, i32 %26
  %36 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %36)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx.i.i103 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %37 = ptrtoint ptr %arrayidx.i.i103 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000, i32 %38)
  %cmp34 = icmp ugt i32 %38, 96000
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %38)
  %cmp37 = icmp ugt i32 %38, 48000
  %. = select i1 %cmp37, i32 32, i32 0
  %mode.0 = select i1 %cmp34, i32 64, i32 %.
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8741_hw_params.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8741_hw_params, %if.then54)) #6
          to label %do.end60 [label %if.then54], !srcloc !197

if.then54:                                        ; preds = %switch.lookup
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  %41 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i.i.i106 = icmp eq i32 %42, 0
  br i1 %tobool.not.i.i.i106, label %for.inc.i.i.i113, label %if.then54.if.then.i.i.i110_crit_edge

if.then54.if.then.i.i.i110_crit_edge:             ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i110

if.then.i.i.i110:                                 ; preds = %for.inc.i.i.i113.if.then.i.i.i110_crit_edge, %if.then54.if.then.i.i.i110_crit_edge
  %i.09.lcssa.i.i.i107 = phi i32 [ 0, %if.then54.if.then.i.i.i110_crit_edge ], [ 32, %for.inc.i.i.i113.if.then.i.i.i110_crit_edge ]
  %.lcssa.i.i.i108 = phi i32 [ %42, %if.then54.if.then.i.i.i110_crit_edge ], [ %45, %for.inc.i.i.i113.if.then.i.i.i110_crit_edge ]
  %43 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i108, i1 true) #6, !range !198
  %add.i.i.i109 = or i32 %43, %i.09.lcssa.i.i.i107
  br label %params_width.exit116

for.inc.i.i.i113:                                 ; preds = %if.then54
  %arrayidx.1.i.i.i111 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx.1.i.i.i111 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.1.i.i.i111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.1.i.i.i112 = icmp eq i32 %45, 0
  br i1 %tobool.not.1.i.i.i112, label %for.inc.i.i.i113.params_width.exit116_crit_edge, label %for.inc.i.i.i113.if.then.i.i.i110_crit_edge

for.inc.i.i.i113.if.then.i.i.i110_crit_edge:      ; preds = %for.inc.i.i.i113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i110

for.inc.i.i.i113.params_width.exit116_crit_edge:  ; preds = %for.inc.i.i.i113
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_width.exit116

params_width.exit116:                             ; preds = %for.inc.i.i.i113.params_width.exit116_crit_edge, %if.then.i.i.i110
  %retval.0.i.i.i114 = phi i32 [ %add.i.i.i109, %if.then.i.i.i110 ], [ 0, %for.inc.i.i.i113.params_width.exit116_crit_edge ]
  %call1.i115 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i114) #6
  %46 = ptrtoint ptr %arrayidx.i.i103 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i.i103, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8741_hw_params.__UNIQUE_ID_ddebug297, ptr noundef %40, ptr noundef nonnull @.str.59, i32 noundef %call1.i115, i32 noundef %47) #6
  br label %do.end60

do.end60:                                         ; preds = %params_width.exit116, %switch.lookup
  %call61 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 5, i32 noundef 3, i32 noundef %switch.load) #6
  %call62 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 7, i32 noundef 96, i32 noundef %mode.0) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end60, %params_width.exit102, %do.body22, %do.end13, %do.end
  %retval.0 = phi i32 [ -22, %do.end13 ], [ 0, %do.end60 ], [ -22, %do.end ], [ -22, %params_width.exit102 ], [ -22, %do.body22 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8741_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #4 align 64 {
entry:
  %diff_mode.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %arrayidx2 = getelementptr %struct.wm8741_priv, ptr %call.i, i32 0, i32 2, i32 0
  %0 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.18, ptr %arrayidx2, align 4
  %arrayidx2.1 = getelementptr %struct.wm8741_priv, ptr %call.i, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.19, ptr %arrayidx2.1, align 4
  %call5 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef %arrayidx2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end9, label %do.end

do.end:                                           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %call5) #9
  br label %cleanup

if.end9:                                          ; preds = %for.body.preheader
  %call10 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @wm8741_regmap, ptr noundef nonnull @wm8741_i2c_probe._key, ptr noundef nonnull @.str.61) #6
  %regmap = getelementptr inbounds %struct.wm8741_priv, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call10, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end20

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %3) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end9
  %platform_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %4 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %diff_mode.i) #6
  %6 = ptrtoint ptr %diff_mode.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %diff_mode.i, align 4, !annotation !196
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %7 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end20
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.20, ptr noundef nonnull %diff_mode.i, i32 noundef 1, i32 noundef 0) #6
  %9 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i60 = icmp sgt i32 %9, -1
  br i1 %cmp.i60, label %if.then.i.if.end10.sink.split.i_crit_edge, label %if.then.i.wm8741_set_pdata.exit_crit_edge

if.then.i.wm8741_set_pdata.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wm8741_set_pdata.exit

if.then.i.if.end10.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.sink.split.i

if.else.i:                                        ; preds = %if.end20
  %cmp6.not.i = icmp eq ptr %5, null
  br i1 %cmp6.not.i, label %if.else.i.wm8741_set_pdata.exit_crit_edge, label %if.else.i.if.end10.sink.split.i_crit_edge

if.else.i.if.end10.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.sink.split.i

if.else.i.wm8741_set_pdata.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wm8741_set_pdata.exit

if.end10.sink.split.i:                            ; preds = %if.else.i.if.end10.sink.split.i_crit_edge, %if.then.i.if.end10.sink.split.i_crit_edge
  %.sink.in.i = phi ptr [ %diff_mode.i, %if.then.i.if.end10.sink.split.i_crit_edge ], [ %5, %if.else.i.if.end10.sink.split.i_crit_edge ]
  %10 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.sink.i = load i32, ptr %.sink.in.i, align 4
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink.i, ptr %call.i, align 4
  br label %wm8741_set_pdata.exit

wm8741_set_pdata.exit:                            ; preds = %if.end10.sink.split.i, %if.else.i.wm8741_set_pdata.exit_crit_edge, %if.then.i.wm8741_set_pdata.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %diff_mode.i) #6
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call31 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_wm8741, ptr noundef nonnull @wm8741_dai, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %wm8741_set_pdata.exit, %if.then13, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end ], [ %3, %if.then13 ], [ %call31, %wm8741_set_pdata.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !16, !17, !19, !20, !21, !23, !25, !27, !28, !29, !30, !31, !32, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !116, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !152, !153, !155, !156, !157, !158, !160, !161, !162, !164, !165, !167, !168, !170, !172, !174, !175, !176, !178, !179, !181, !182, !184, !185}
!llvm.module.flags = !{!187, !188, !189, !190, !191, !192, !193, !194}
!llvm.ident = !{!195}

!0 = !{ptr @__initcall__kmod_snd_soc_wm8741__301_695_wm8741_modinit6, !1, !"__initcall__kmod_snd_soc_wm8741__301_695_wm8741_modinit6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/wm8741.c", i32 695, i32 1}
!2 = !{ptr @__exitcall_wm8741_exit, !3, !"__exitcall_wm8741_exit", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/wm8741.c", i32 706, i32 1}
!4 = !{ptr @__UNIQUE_ID_description302, !5, !"__UNIQUE_ID_description302", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/wm8741.c", i32 708, i32 1}
!6 = !{ptr @__UNIQUE_ID_author303, !7, !"__UNIQUE_ID_author303", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/wm8741.c", i32 709, i32 1}
!8 = !{ptr @__UNIQUE_ID_file304, !9, !"__UNIQUE_ID_file304", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/wm8741.c", i32 710, i32 1}
!10 = !{ptr @__UNIQUE_ID_license305, !9, !"__UNIQUE_ID_license305", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/soc/codecs/wm8741.c", i32 683, i32 3}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @wm8741_modinit._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @wm8741_modinit._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/wm8741.c", i32 688, i32 3}
!19 = !{ptr @wm8741_modinit._entry.3, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @wm8741_modinit._entry_ptr.5, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/codecs/wm8741.c", i32 669, i32 11}
!23 = !{ptr @wm8741_spi_driver, !24, !"wm8741_spi_driver", i1 false, i1 false}
!24 = !{!"../sound/soc/codecs/wm8741.c", i32 667, i32 26}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/wm8741.c", i32 643, i32 3}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @wm8741_spi_probe._entry, !26, !"_entry", i1 false, i1 false}
!31 = !{ptr @wm8741_spi_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @wm8741_spi_probe._key, !33, !"_key", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/wm8741.c", i32 647, i32 19}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/wm8741.c", i32 650, i32 3}
!37 = !{ptr @wm8741_spi_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @wm8741_spi_probe._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/wm8741.c", i32 656, i32 3}
!41 = !{ptr @wm8741_spi_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @wm8741_spi_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/wm8741.c", i32 32, i32 2}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/wm8741.c", i32 33, i32 2}
!47 = distinct !{null, !48, !"wm8741_supply_names", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/wm8741.c", i32 31, i32 20}
!49 = !{ptr @wm8741_regmap, !50, !"wm8741_regmap", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/wm8741.c", i32 540, i32 35}
!51 = !{ptr @wm8741_reg_defaults, !52, !"wm8741_reg_defaults", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/wm8741.c", i32 45, i32 33}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/wm8741.c", i32 556, i32 42}
!55 = !{ptr @soc_component_dev_wm8741, !56, !"soc_component_dev_wm8741", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/wm8741.c", i32 520, i32 46}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/wm8741.c", i32 88, i32 1}
!59 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/wm8741.c", i32 89, i32 1}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/wm8741.c", i32 90, i32 1}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/wm8741.c", i32 91, i32 1}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/wm8741.c", i32 92, i32 1}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/wm8741.c", i32 93, i32 1}
!70 = !{ptr @wm8741_dapm_widgets, !71, !"wm8741_dapm_widgets", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/wm8741.c", i32 87, i32 41}
!72 = !{ptr @wm8741_dapm_routes, !73, !"wm8741_dapm_routes", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/wm8741.c", i32 96, i32 40}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/wm8741.c", i32 482, i32 3}
!76 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @wm8741_probe._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @wm8741_probe._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/wm8741.c", i32 488, i32 3}
!81 = !{ptr @wm8741_probe._entry.31, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @wm8741_probe._entry_ptr.33, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/wm8741.c", i32 494, i32 3}
!85 = !{ptr @wm8741_probe._entry.34, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @wm8741_probe._entry_ptr.36, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/wm8741.c", i32 500, i32 3}
!89 = !{ptr @wm8741_probe._entry.37, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @wm8741_probe._entry_ptr.39, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/wm8741.c", i32 504, i32 2}
!93 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @wm8741_probe.__UNIQUE_ID_ddebug300, !92, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/wm8741.c", i32 67, i32 1}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/wm8741.c", i32 69, i32 1}
!99 = !{ptr @wm8741_snd_controls_stereo, !100, !"wm8741_snd_controls_stereo", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/wm8741.c", i32 66, i32 38}
!101 = !{ptr @dac_tlv_fine, !102, !"dac_tlv_fine", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/wm8741.c", i32 63, i32 14}
!103 = !{ptr @dac_tlv, !104, !"dac_tlv", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/wm8741.c", i32 64, i32 14}
!105 = !{ptr @wm8741_snd_controls_mono_left, !106, !"wm8741_snd_controls_mono_left", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/wm8741.c", i32 73, i32 38}
!107 = !{ptr @wm8741_snd_controls_mono_right, !108, !"wm8741_snd_controls_mono_right", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/wm8741.c", i32 80, i32 38}
!109 = !{ptr @wm8741_dai, !110, !"wm8741_dai", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/wm8741.c", i32 393, i32 34}
!111 = !{ptr @wm8741_dai_ops, !112, !"wm8741_dai_ops", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/wm8741.c", i32 384, i32 37}
!113 = !{ptr @.str.49, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/wm8741.c", i32 264, i32 2}
!115 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @wm8741_set_dai_sysclk.__UNIQUE_ID_ddebug298, !114, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!117 = !{ptr @constraints_11289, !118, !"constraints_11289", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/wm8741.c", i32 107, i32 48}
!119 = !{ptr @rates_11289, !120, !"rates_11289", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/wm8741.c", i32 103, i32 27}
!121 = !{ptr @constraints_12288, !122, !"constraints_12288", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/wm8741.c", i32 116, i32 48}
!123 = !{ptr @rates_12288, !124, !"rates_12288", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/wm8741.c", i32 112, i32 27}
!125 = !{ptr @constraints_16384, !126, !"constraints_16384", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/wm8741.c", i32 125, i32 48}
!127 = !{ptr @rates_16384, !128, !"rates_16384", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/wm8741.c", i32 121, i32 27}
!129 = !{ptr @constraints_16934, !130, !"constraints_16934", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/wm8741.c", i32 134, i32 48}
!131 = !{ptr @rates_16934, !132, !"rates_16934", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/wm8741.c", i32 130, i32 27}
!133 = !{ptr @constraints_18432, !134, !"constraints_18432", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/wm8741.c", i32 143, i32 48}
!135 = !{ptr @rates_18432, !136, !"rates_18432", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/wm8741.c", i32 139, i32 27}
!137 = !{ptr @constraints_22579, !138, !"constraints_22579", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/wm8741.c", i32 152, i32 48}
!139 = !{ptr @rates_22579, !140, !"rates_22579", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/wm8741.c", i32 148, i32 27}
!141 = !{ptr @constraints_24576, !142, !"constraints_24576", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/wm8741.c", i32 161, i32 48}
!143 = !{ptr @rates_24576, !144, !"rates_24576", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/wm8741.c", i32 157, i32 27}
!145 = !{ptr @constraints_36864, !146, !"constraints_36864", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/wm8741.c", i32 170, i32 48}
!147 = !{ptr @rates_36864, !148, !"rates_36864", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/wm8741.c", i32 166, i32 27}
!149 = !{ptr @.str.51, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/wm8741.c", i32 356, i32 2}
!151 = !{ptr @.str.52, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @wm8741_set_dai_fmt.__UNIQUE_ID_ddebug299, !150, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!153 = !{ptr @.str.53, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/wm8741.c", i32 202, i32 3}
!155 = !{ptr @.str.54, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @wm8741_hw_params._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @wm8741_hw_params._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.56, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/wm8741.c", i32 214, i32 3}
!160 = !{ptr @wm8741_hw_params._entry.55, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @wm8741_hw_params._entry_ptr.57, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.58, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/wm8741.c", i32 234, i32 3}
!164 = !{ptr @wm8741_hw_params.__UNIQUE_ID_ddebug296, !163, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!165 = !{ptr @.str.59, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/wm8741.c", i32 247, i32 2}
!167 = !{ptr @wm8741_hw_params.__UNIQUE_ID_ddebug297, !166, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!168 = !{ptr @wm8741_of_match, !169, !"wm8741_of_match", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/wm8741.c", i32 534, i32 34}
!170 = !{ptr @wm8741_i2c_driver, !171, !"wm8741_i2c_driver", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/wm8741.c", i32 616, i32 26}
!172 = !{ptr @.str.60, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/wm8741.c", i32 585, i32 3}
!174 = !{ptr @wm8741_i2c_probe._entry, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @wm8741_i2c_probe._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @wm8741_i2c_probe._key, !177, !"_key", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/wm8741.c", i32 589, i32 19}
!178 = !{ptr @.str.61, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @wm8741_i2c_probe._entry.62, !180, !"_entry", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/wm8741.c", i32 592, i32 3}
!181 = !{ptr @wm8741_i2c_probe._entry_ptr.63, !180, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @wm8741_i2c_probe._entry.64, !183, !"_entry", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/wm8741.c", i32 598, i32 3}
!184 = !{ptr @wm8741_i2c_probe._entry_ptr.65, !183, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @wm8741_i2c_id, !186, !"wm8741_i2c_id", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/wm8741.c", i32 610, i32 35}
!187 = !{i32 1, !"wchar_size", i32 2}
!188 = !{i32 1, !"min_enum_size", i32 4}
!189 = !{i32 8, !"branch-target-enforcement", i32 0}
!190 = !{i32 8, !"sign-return-address", i32 0}
!191 = !{i32 8, !"sign-return-address-all", i32 0}
!192 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!193 = !{i32 7, !"uwtable", i32 1}
!194 = !{i32 7, !"frame-pointer", i32 2}
!195 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!196 = !{!"auto-init"}
!197 = !{i64 2148969556, i64 2148969561, i64 2148969574, i64 2148969618, i64 2148969652, i64 2148969673}
!198 = !{i32 0, i32 33}
