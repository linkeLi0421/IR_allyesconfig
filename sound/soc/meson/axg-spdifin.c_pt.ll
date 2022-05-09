; ModuleID = '/llk/IR_all_yes/sound/soc/meson/axg-spdifin.c_pt.bc'
source_filename = "../sound/soc/meson/axg-spdifin.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.axg_spdifin_cfg = type { ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.axg_spdifin = type { ptr, ptr, ptr, ptr }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.79, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.79 = type { %struct.anon.82, [40 x i8] }
%struct.anon.82 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.78, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.78 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.73, [128 x i8] }
%union.anon.73 = type { %union.anon.75 }
%union.anon.75 = type { [64 x i64] }

@__initcall__kmod_snd_soc_meson_axg_spdifin__258_506_axg_spdifin_pdrv_init6 = internal global ptr @axg_spdifin_pdrv_init, section ".initcall6.init", align 4
@axg_spdifin_pdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @axg_spdifin_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @axg_spdifin_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_axg_spdifin_pdrv_exit = internal global ptr @axg_spdifin_pdrv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description259 = internal constant [69 x i8] c"snd_soc_meson_axg_spdifin.description=Amlogic AXG SPDIF Input driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author260 = internal constant [70 x i8] c"snd_soc_meson_axg_spdifin.author=Jerome Brunet <jbrunet@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file261 = internal constant [73 x i8] c"snd_soc_meson_axg_spdifin.file=sound/soc/meson/snd-soc-meson-axg-spdifin\00", section ".modinfo", align 1
@__UNIQUE_ID_license262 = internal constant [41 x i8] c"snd_soc_meson_axg_spdifin.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"axg-spdifin\00", [20 x i8] zeroinitializer }, align 32
@axg_spdifin_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,axg-spdifin\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axg_cfg }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@axg_spdifin_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 465, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to match device\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"axg_spdifin_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/soc/meson/axg-spdifin.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@axg_spdifin_probe._entry_ptr = internal global ptr @axg_spdifin_probe._entry, section ".printk_index", align 4
@axg_spdifin_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@axg_spdifin_regmap_cfg = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 40, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"axg_spdifin:473:(&axg_spdifin_regmap_cfg)->lock\00", [48 x i8] zeroinitializer }, align 32
@axg_spdifin_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 476, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to init regmap: %ld\0A\00", [36 x i8] zeroinitializer }, align 32
@axg_spdifin_probe._entry_ptr.9 = internal global ptr @axg_spdifin_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to get pclk\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"refclk\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to get mclk\0A\00", [44 x i8] zeroinitializer }, align 32
@axg_spdifin_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 491, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get dai driver: %ld\0A\00", [33 x i8] zeroinitializer }, align 32
@axg_spdifin_probe._entry_ptr.16 = internal global ptr @axg_spdifin_probe._entry.14, section ".printk_index", align 4
@axg_spdifin_component_drv = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @axg_spdifin_controls, i32 5, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SPDIF Input\00", [20 x i8] zeroinitializer }, align 32
@axg_spdifin_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @axg_spdifin_startup, ptr @axg_spdifin_shutdown, ptr null, ptr null, ptr @axg_spdifin_prepare, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@axg_spdifin_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 124, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to enable spdifin reference clock\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"axg_spdifin_startup\00", [44 x i8] zeroinitializer }, align 32
@axg_spdifin_startup._entry_ptr = internal global ptr @axg_spdifin_startup._entry, section ".printk_index", align 4
@axg_spdifin_dai_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 247, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to enable pclk\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"axg_spdifin_dai_probe\00", [42 x i8] zeroinitializer }, align 32
@axg_spdifin_dai_probe._entry_ptr = internal global ptr @axg_spdifin_dai_probe._entry, section ".printk_index", align 4
@axg_spdifin_dai_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.3, i32 253, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mode configuration failed\0A\00", [37 x i8] zeroinitializer }, align 32
@axg_spdifin_dai_probe._entry_ptr.25 = internal global ptr @axg_spdifin_dai_probe._entry.23, section ".printk_index", align 4
@axg_spdifin_sample_mode_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 195, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"reference clock rate set failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"axg_spdifin_sample_mode_config\00", [33 x i8] zeroinitializer }, align 32
@axg_spdifin_sample_mode_config._entry_ptr = internal global ptr @axg_spdifin_sample_mode_config._entry, section ".printk_index", align 4
@axg_spdifin_controls = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.28, i32 0, i32 5, i32 0, ptr @axg_spdifin_rate_lock_info, ptr @axg_spdifin_rate_lock_get, ptr null, %union.anon.83 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @axg_spdifin_chsts_src_enum to i32) }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.31, i32 0, i32 1, i32 0, ptr @axg_spdifin_iec958_info, ptr @axg_spdifin_get_status_mask, ptr null, %union.anon.83 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.32, i32 0, i32 5, i32 0, ptr @axg_spdifin_iec958_info, ptr @axg_spdifin_get_status, ptr null, %union.anon.83 zeroinitializer, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Capture Rate Lock\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 0, i32 0, i32 7, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IEC958 Capture Src\00", [45 x i8] zeroinitializer }, align 32
@axg_spdifin_chsts_src_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 11, i8 11, i32 2, i32 1, ptr @spdifin_chsts_src_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IEC958 Capture Mask\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IEC958 Capture \00", [16 x i8] zeroinitializer }, align 32
@spdifin_chsts_src_texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.33, ptr @.str.34], [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"A\00", [30 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@axg_cfg = internal constant { %struct.axg_spdifin_cfg, [24 x i8] } { %struct.axg_spdifin_cfg { ptr @axg_spdifin_mode_rates, i32 333333333 }, [24 x i8] zeroinitializer }, align 32
@axg_spdifin_mode_rates = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 32000, i32 44100, i32 48000, i32 88200, i32 96000, i32 176400, i32 192000], [36 x i8] zeroinitializer }, align 32
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"axg_spdifin_pdrv\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 499, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 502, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [21 x i8] c"axg_spdifin_of_match\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 411, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 465, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [23 x i8] c"axg_spdifin_regmap_cfg\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 395, i32 35 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 473, i32 14 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 475, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 480, i32 33 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 482, i32 50 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 484, i32 35 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 486, i32 52 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 490, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [26 x i8] c"axg_spdifin_component_drv\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 390, i32 46 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 429, i32 14 }
@___asan_gen_.101 = private unnamed_addr constant [16 x i8] c"axg_spdifin_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 269, i32 37 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 433, i32 29 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 123, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 247, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 253, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 195, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [21 x i8] c"axg_spdifin_controls\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 381, i32 38 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 382, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 383, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 384, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [27 x i8] c"axg_spdifin_chsts_src_enum\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 345, i32 8 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 386, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 387, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [24 x i8] c"spdifin_chsts_src_texts\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 341, i32 27 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 342, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 342, i32 7 }
@___asan_gen_.171 = private unnamed_addr constant [8 x i8] c"axg_cfg\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 406, i32 37 }
@___asan_gen_.174 = private unnamed_addr constant [23 x i8] c"axg_spdifin_mode_rates\00", align 1
@___asan_gen_.175 = private constant [33 x i8] c"../sound/soc/meson/axg-spdifin.c\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 402, i32 27 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author260, ptr @__UNIQUE_ID_description259, ptr @__UNIQUE_ID_file261, ptr @__UNIQUE_ID_license262, ptr @__exitcall_axg_spdifin_pdrv_exit, ptr @__initcall__kmod_snd_soc_meson_axg_spdifin__258_506_axg_spdifin_pdrv_init6, ptr @axg_spdifin_dai_probe._entry, ptr @axg_spdifin_dai_probe._entry.23, ptr @axg_spdifin_dai_probe._entry_ptr, ptr @axg_spdifin_dai_probe._entry_ptr.25, ptr @axg_spdifin_pdrv_exit, ptr @axg_spdifin_probe._entry, ptr @axg_spdifin_probe._entry.14, ptr @axg_spdifin_probe._entry.7, ptr @axg_spdifin_probe._entry_ptr, ptr @axg_spdifin_probe._entry_ptr.16, ptr @axg_spdifin_probe._entry_ptr.9, ptr @axg_spdifin_sample_mode_config._entry, ptr @axg_spdifin_sample_mode_config._entry_ptr, ptr @axg_spdifin_startup._entry, ptr @axg_spdifin_startup._entry_ptr, ptr @axg_spdifin_pdrv, ptr @.str, ptr @axg_spdifin_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @axg_spdifin_probe._key, ptr @axg_spdifin_regmap_cfg, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @axg_spdifin_component_drv, ptr @.str.17, ptr @axg_spdifin_ops, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @axg_spdifin_controls, ptr @.str.28, ptr @.str.29, ptr @.compoundliteral, ptr @.str.30, ptr @axg_spdifin_chsts_src_enum, ptr @.str.31, ptr @.str.32, ptr @spdifin_chsts_src_texts, ptr @.str.33, ptr @.str.34, ptr @axg_cfg, ptr @axg_spdifin_mode_rates], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_spdifin_pdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_spdifin_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_spdifin_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_spdifin_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_spdifin_regmap_cfg to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_spdifin_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_spdifin_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_spdifin_component_drv to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_spdifin_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_spdifin_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_spdifin_dai_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_spdifin_dai_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_spdifin_sample_mode_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_spdifin_controls to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_spdifin_chsts_src_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdifin_chsts_src_texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_cfg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_spdifin_mode_rates to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @axg_spdifin_pdrv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @axg_spdifin_pdrv, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @axg_spdifin_pdrv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @axg_spdifin_pdrv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axg_spdifin_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %call.i, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %call12 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call7, ptr noundef nonnull @axg_spdifin_regmap_cfg, ptr noundef nonnull @axg_spdifin_probe._key, ptr noundef nonnull @.str.6) #7
  %map = getelementptr inbounds %struct.axg_spdifin, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call12, ptr %map, align 4
  %cmp.i85 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i85, label %do.end18, label %if.end23

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %4) #10
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end11
  %call24 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.10) #7
  %pclk = getelementptr inbounds %struct.axg_spdifin, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call24, ptr %pclk, align 4
  %cmp.i86 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i86, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call24 to i32
  %call30 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %9, ptr noundef nonnull @.str.11) #7
  br label %cleanup

if.end31:                                         ; preds = %if.end23
  %call32 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.12) #7
  %refclk = getelementptr inbounds %struct.axg_spdifin, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %refclk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call32, ptr %refclk, align 4
  %cmp.i87 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i87, label %if.then35, label %if.end39

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call32 to i32
  %call38 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %11, ptr noundef nonnull @.str.13) #7
  br label %cleanup

if.end39:                                         ; preds = %if.end31
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 168, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end39.do.end45_crit_edge, label %if.end.i

if.end39.do.end45_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end45

if.end.i:                                         ; preds = %if.end39
  %12 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.17, ptr %call.i.i, align 8
  %ops.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i, i32 0, i32 8
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @axg_spdifin_ops, ptr %ops.i, align 8
  %probe.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %probe.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @axg_spdifin_dai_probe, ptr %probe.i, align 8
  %remove.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %remove.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @axg_spdifin_dai_remove, ptr %remove.i, align 4
  %capture.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i, i32 0, i32 10
  %16 = ptrtoint ptr %capture.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.18, ptr %capture.i, align 8
  %channels_min.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i, i32 0, i32 10, i32 5
  %17 = ptrtoint ptr %channels_min.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %channels_min.i, align 4
  %channels_max.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i, i32 0, i32 10, i32 6
  %18 = ptrtoint ptr %channels_max.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %channels_max.i, align 8
  %formats.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i, i32 0, i32 10, i32 1
  %19 = ptrtoint ptr %formats.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 262144, ptr %formats.i, align 8
  %rates.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i, i32 0, i32 10, i32 2
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %call5.i = tail call i32 @snd_pcm_rate_to_rate_bit(i32 noundef %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %call5.i)
  %cmp6.i = icmp eq i32 %call5.i, -2147483648
  br i1 %cmp6.i, label %if.end.i.do.end45_crit_edge, label %for.inc.i

if.end.i.do.end45_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end45

for.inc.i:                                        ; preds = %if.end.i
  %26 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rates.i, align 8
  %or.i = or i32 %27, %call5.i
  store i32 %or.i, ptr %rates.i, align 8
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %arrayidx.1.i = getelementptr i32, ptr %31, i32 1
  %32 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.1.i, align 4
  %call5.1.i = tail call i32 @snd_pcm_rate_to_rate_bit(i32 noundef %33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %call5.1.i)
  %cmp6.1.i = icmp eq i32 %call5.1.i, -2147483648
  br i1 %cmp6.1.i, label %for.inc.i.do.end45_crit_edge, label %for.inc.1.i

for.inc.i.do.end45_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end45

for.inc.1.i:                                      ; preds = %for.inc.i
  %34 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rates.i, align 8
  %or.1.i = or i32 %35, %call5.1.i
  store i32 %or.1.i, ptr %rates.i, align 8
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %arrayidx.2.i = getelementptr i32, ptr %39, i32 2
  %40 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.2.i, align 4
  %call5.2.i = tail call i32 @snd_pcm_rate_to_rate_bit(i32 noundef %41) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %call5.2.i)
  %cmp6.2.i = icmp eq i32 %call5.2.i, -2147483648
  br i1 %cmp6.2.i, label %for.inc.1.i.do.end45_crit_edge, label %for.inc.2.i

for.inc.1.i.do.end45_crit_edge:                   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end45

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %42 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rates.i, align 8
  %or.2.i = or i32 %43, %call5.2.i
  store i32 %or.2.i, ptr %rates.i, align 8
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %arrayidx.3.i = getelementptr i32, ptr %47, i32 3
  %48 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.3.i, align 4
  %call5.3.i = tail call i32 @snd_pcm_rate_to_rate_bit(i32 noundef %49) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %call5.3.i)
  %cmp6.3.i = icmp eq i32 %call5.3.i, -2147483648
  br i1 %cmp6.3.i, label %for.inc.2.i.do.end45_crit_edge, label %for.inc.3.i

for.inc.2.i.do.end45_crit_edge:                   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end45

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %50 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rates.i, align 8
  %or.3.i = or i32 %51, %call5.3.i
  store i32 %or.3.i, ptr %rates.i, align 8
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %arrayidx.4.i = getelementptr i32, ptr %55, i32 4
  %56 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.4.i, align 4
  %call5.4.i = tail call i32 @snd_pcm_rate_to_rate_bit(i32 noundef %57) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %call5.4.i)
  %cmp6.4.i = icmp eq i32 %call5.4.i, -2147483648
  br i1 %cmp6.4.i, label %for.inc.3.i.do.end45_crit_edge, label %for.inc.4.i

for.inc.3.i.do.end45_crit_edge:                   ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end45

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %58 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rates.i, align 8
  %or.4.i = or i32 %59, %call5.4.i
  store i32 %or.4.i, ptr %rates.i, align 8
  %60 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %arrayidx.5.i = getelementptr i32, ptr %63, i32 5
  %64 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.5.i, align 4
  %call5.5.i = tail call i32 @snd_pcm_rate_to_rate_bit(i32 noundef %65) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %call5.5.i)
  %cmp6.5.i = icmp eq i32 %call5.5.i, -2147483648
  br i1 %cmp6.5.i, label %for.inc.4.i.do.end45_crit_edge, label %for.inc.5.i

for.inc.4.i.do.end45_crit_edge:                   ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end45

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %66 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rates.i, align 8
  %or.5.i = or i32 %67, %call5.5.i
  store i32 %or.5.i, ptr %rates.i, align 8
  %68 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %arrayidx.6.i = getelementptr i32, ptr %71, i32 6
  %72 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.6.i, align 4
  %call5.6.i = tail call i32 @snd_pcm_rate_to_rate_bit(i32 noundef %73) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %call5.6.i)
  %cmp6.6.i = icmp eq i32 %call5.6.i, -2147483648
  br i1 %cmp6.6.i, label %for.inc.5.i.do.end45_crit_edge, label %axg_spdifin_get_dai_drv.exit

for.inc.5.i.do.end45_crit_edge:                   ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end45

axg_spdifin_get_dai_drv.exit:                     ; preds = %for.inc.5.i
  %74 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rates.i, align 8
  %or.6.i = or i32 %75, %call5.6.i
  store i32 %or.6.i, ptr %rates.i, align 8
  %cmp.i88 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i88, label %axg_spdifin_get_dai_drv.exit.do.end45_crit_edge, label %if.end48

axg_spdifin_get_dai_drv.exit.do.end45_crit_edge:  ; preds = %axg_spdifin_get_dai_drv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end45

do.end45:                                         ; preds = %axg_spdifin_get_dai_drv.exit.do.end45_crit_edge, %for.inc.5.i.do.end45_crit_edge, %for.inc.4.i.do.end45_crit_edge, %for.inc.3.i.do.end45_crit_edge, %for.inc.2.i.do.end45_crit_edge, %for.inc.1.i.do.end45_crit_edge, %for.inc.i.do.end45_crit_edge, %if.end.i.do.end45_crit_edge, %if.end39.do.end45_crit_edge
  %retval.2.i91 = phi ptr [ %call.i.i, %axg_spdifin_get_dai_drv.exit.do.end45_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.inc.5.i.do.end45_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.inc.4.i.do.end45_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.inc.3.i.do.end45_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.inc.2.i.do.end45_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.inc.1.i.do.end45_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.inc.i.do.end45_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i.do.end45_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end39.do.end45_crit_edge ]
  %76 = ptrtoint ptr %retval.2.i91 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %76) #10
  br label %cleanup

if.end48:                                         ; preds = %axg_spdifin_get_dai_drv.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call49 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @axg_spdifin_component_drv, ptr noundef nonnull %call.i.i, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %do.end45, %if.then35, %if.then27, %do.end18, %if.then9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then9 ], [ %7, %do.end18 ], [ %call30, %if.then27 ], [ %call38, %if.then35 ], [ %76, %do.end45 ], [ %call49, %if.end48 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axg_spdifin_dai_probe(ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %pclk = getelementptr inbounds %struct.axg_spdifin, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.21) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %refclk.i = getelementptr inbounds %struct.axg_spdifin, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %refclk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %refclk.i, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %ref_rate.i = getelementptr inbounds %struct.axg_spdifin_cfg, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %ref_rate.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ref_rate.i, align 4
  %call.i20 = tail call i32 @clk_set_rate(ptr noundef %9, i32 noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool.not.i21 = icmp eq i32 %call.i20, 0
  br i1 %tobool.not.i21, label %if.end.i23, label %do.end7

if.end.i23:                                       ; preds = %if.end
  %14 = ptrtoint ptr %refclk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %refclk.i, align 4
  %call2.i = tail call i32 @clk_get_rate(ptr noundef %15) #7
  %map.i = getelementptr inbounds %struct.axg_spdifin, ptr %3, i32 0, i32 1
  %div.i = udiv i32 %call2.i, 1000
  %16 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map.i, align 4
  %and23.i = and i32 %div.i, 1048575
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 4, i32 noundef 1048575, i32 noundef %and23.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %18 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map.i, align 4
  %call.i61.i = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 0, i32 noundef 16777216, i32 noundef 16777216, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %arrayidx.i.i = getelementptr i32, ptr %23, i32 6
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i, align 4
  %mul.i.i = shl i32 %25, 7
  %div.i.i = udiv i32 %call2.i, %mul.i.i
  %26 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %map.i, align 4
  %call183.i.i.i = tail call i32 @regmap_get_reg_stride(ptr noundef %27) #7
  %conv188.i.i.i = add i32 %call183.i.i.i, 16
  %shl198.i.i.i = shl i32 %div.i.i, 8
  %call.i.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef %conv188.i.i.i, i32 noundef 65280, i32 noundef %shl198.i.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %do.body29.i

do.body29.i:                                      ; preds = %do.body29.i.do.body29.i_crit_edge, %if.end.i23
  %t_next.0.i = phi i32 [ %div.i.i, %if.end.i23 ], [ %div.i64.i, %do.body29.i.do.body29.i_crit_edge ]
  %i.0.i = phi i32 [ 6, %if.end.i23 ], [ %sub.i, %do.body29.i.do.body29.i_crit_edge ]
  %sub.i = add nsw i32 %i.0.i, -1
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %arrayidx.i62.i = getelementptr i32, ptr %31, i32 %sub.i
  %32 = ptrtoint ptr %arrayidx.i62.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i62.i, align 4
  %mul.i63.i = shl i32 %33, 7
  %div.i64.i = udiv i32 %call2.i, %mul.i63.i
  %34 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %map.i, align 4
  %extract.t.i.i76.i = lshr i32 %sub.i, 2
  %call183.i.i65.i = tail call i32 @regmap_get_reg_stride(ptr noundef %35) #7
  %36 = mul i32 %call183.i.i65.i, %extract.t.i.i76.i
  %conv188.i.i66.i = add i32 %36, 16
  %and.i.i.i = shl i32 %sub.i, 3
  %sub190.i.i.i = and i32 %and.i.i.i, 24
  %mul191.i.i.i = xor i32 %sub190.i.i.i, 24
  %shl197.i.i.i = shl i32 255, %mul191.i.i.i
  %shl198.i.i67.i = shl i32 %div.i64.i, %mul191.i.i.i
  %call.i.i.i68.i = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef %conv188.i.i66.i, i32 noundef %shl197.i.i.i, i32 noundef %shl198.i.i67.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %37 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %map.i, align 4
  %add.i = add i32 %div.i64.i, %t_next.0.i
  %conv.i.i77.i = zext i32 %sub.i to i64
  %39 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %conv.i.i77.i, i64 6148914691236517205) #11, !srcloc !105
  %40 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %conv.i.i77.i, i64 %39) #11, !srcloc !106
  %conv162.i.i.i = trunc i64 %40 to i32
  %call183.i.i69.i = tail call i32 @regmap_get_reg_stride(ptr noundef %38) #7
  %41 = mul i32 %call183.i.i69.i, %conv162.i.i.i
  %conv188.i.i70.i = add i32 %41, 8
  %mul163.i.neg.neg.i.i = mul i32 %conv162.i.i.i, 3
  %sub164.i.neg.i.i = sub nsw i32 3, %i.0.i
  %sub190.i.i71.i = add i32 %sub164.i.neg.i.i, %mul163.i.neg.neg.i.i
  %mul191.i.i72.i = mul i32 %sub190.i.i71.i, 10
  %shl197.i.i73.i = shl i32 1023, %mul191.i.i72.i
  %shl198.i.i74.i = shl i32 %add.i, %mul191.i.i72.i
  %call.i.i.i75.i = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef %conv188.i.i70.i, i32 noundef %shl197.i.i73.i, i32 noundef %shl198.i.i74.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %cmp.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp.not.i, label %do.body29.i.cleanup_crit_edge, label %do.body29.i.do.body29.i_crit_edge

do.body29.i.do.body29.i_crit_edge:                ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29.i

do.body29.i.cleanup_crit_edge:                    ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.26) #10
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.24) #10
  %46 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %47) #7
  tail call void @clk_unprepare(ptr noundef %47) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %do.body29.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call.i20, %do.end7 ], [ 0, %do.body29.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axg_spdifin_dai_remove(ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %pclk = getelementptr inbounds %struct.axg_spdifin, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_rate_to_rate_bit(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axg_spdifin_startup(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %refclk = getelementptr inbounds %struct.axg_spdifin, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %refclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.19) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %map = getelementptr inbounds %struct.axg_spdifin, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 4
  %call.i7 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 0, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @axg_spdifin_shutdown(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %map = getelementptr inbounds %struct.axg_spdifin, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %refclk = getelementptr inbounds %struct.axg_spdifin, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %refclk, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axg_spdifin_prepare(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %map = getelementptr inbounds %struct.axg_spdifin, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 805306368, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %call.i8 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 0, i32 noundef 536870912, i32 noundef 536870912, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 4
  %call.i9 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 0, i32 noundef 268435456, i32 noundef 268435456, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_get_reg_stride(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @axg_spdifin_rate_lock_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 192000, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axg_spdifin_rate_lock_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  %stat.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat.i) #7
  %6 = ptrtoint ptr %stat.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %stat.i, align 4, !annotation !107
  %map.i = getelementptr inbounds %struct.axg_spdifin, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 28, ptr noundef nonnull %stat.i) #7
  %9 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stat.i, align 4
  %and.i = lshr i32 %10, 28
  %shr.i = and i32 %and.i, 7
  %11 = and i32 %10, 261888
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr.i)
  %cmp.not.i = icmp eq i32 %shr.i, 7
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %entry.axg_spdifin_get_rate.exit_crit_edge, label %if.then.i

entry.axg_spdifin_get_rate.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %axg_spdifin_get_rate.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %arrayidx.i = getelementptr i32, ptr %15, i32 %shr.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  br label %axg_spdifin_get_rate.exit

axg_spdifin_get_rate.exit:                        ; preds = %if.then.i, %entry.axg_spdifin_get_rate.exit_crit_edge
  %rate.0.i = phi i32 [ %17, %if.then.i ], [ 0, %entry.axg_spdifin_get_rate.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat.i) #7
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %18 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %rate.0.i, ptr %value, align 8
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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @axg_spdifin_iec958_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  ret i32 0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal i32 @axg_spdifin_get_status_mask(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = call ptr @memset(ptr %value, i32 255, i32 24)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axg_spdifin_get_status(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %map = getelementptr inbounds %struct.axg_spdifin, ptr %5, i32 0, i32 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %do.end12

do.end12:                                         ; preds = %do.end12.do.end12_crit_edge, %entry
  %i.035 = phi i32 [ 0, %entry ], [ %inc23, %do.end12.do.end12_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !107
  %7 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map, align 4
  %shl = shl i32 %i.035, 8
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 0, i32 noundef 1792, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %9 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map, align 4
  %call16 = call i32 @regmap_read(ptr noundef %10, i32 noundef 32, ptr noundef nonnull %val) #7
  %mul = shl i32 %i.035, 2
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %conv = trunc i32 %12 to i8
  %arrayidx = getelementptr [24 x i8], ptr %value, i32 0, i32 %mul
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %arrayidx, align 1
  %add.1 = or i32 %mul, 1
  %shr.1 = lshr i32 %12, 8
  %conv.1 = trunc i32 %shr.1 to i8
  %arrayidx.1 = getelementptr [24 x i8], ptr %value, i32 0, i32 %add.1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.1, ptr %arrayidx.1, align 1
  %add.2 = or i32 %mul, 2
  %shr.2 = lshr i32 %12, 16
  %conv.2 = trunc i32 %shr.2 to i8
  %arrayidx.2 = getelementptr [24 x i8], ptr %value, i32 0, i32 %add.2
  %15 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.2, ptr %arrayidx.2, align 1
  %add.3 = or i32 %mul, 3
  %shr.3 = lshr i32 %12, 24
  %conv.3 = trunc i32 %shr.3 to i8
  %arrayidx.3 = getelementptr [24 x i8], ptr %value, i32 0, i32 %add.3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.3, ptr %arrayidx.3, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  %inc23 = add nuw nsw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc23, 6
  br i1 %exitcond.not, label %for.end24, label %do.end12.do.end12_crit_edge

do.end12.do.end12_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

for.end24:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !33, !35, !37, !39, !40, !41, !43, !45, !47, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @__initcall__kmod_snd_soc_meson_axg_spdifin__258_506_axg_spdifin_pdrv_init6, !1, !"__initcall__kmod_snd_soc_meson_axg_spdifin__258_506_axg_spdifin_pdrv_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/meson/axg-spdifin.c", i32 506, i32 1}
!2 = !{ptr @__exitcall_axg_spdifin_pdrv_exit, !1, !"__exitcall_axg_spdifin_pdrv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description259, !4, !"__UNIQUE_ID_description259", i1 false, i1 false}
!4 = !{!"../sound/soc/meson/axg-spdifin.c", i32 508, i32 1}
!5 = !{ptr @__UNIQUE_ID_author260, !6, !"__UNIQUE_ID_author260", i1 false, i1 false}
!6 = !{!"../sound/soc/meson/axg-spdifin.c", i32 509, i32 1}
!7 = !{ptr @__UNIQUE_ID_file261, !8, !"__UNIQUE_ID_file261", i1 false, i1 false}
!8 = !{!"../sound/soc/meson/axg-spdifin.c", i32 510, i32 1}
!9 = !{ptr @__UNIQUE_ID_license262, !8, !"__UNIQUE_ID_license262", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/meson/axg-spdifin.c", i32 502, i32 11}
!12 = !{ptr @axg_spdifin_pdrv, !13, !"axg_spdifin_pdrv", i1 false, i1 false}
!13 = !{!"../sound/soc/meson/axg-spdifin.c", i32 499, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/meson/axg-spdifin.c", i32 465, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @axg_spdifin_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @axg_spdifin_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @axg_spdifin_probe._key, !23, !"_key", i1 false, i1 false}
!23 = !{!"../sound/soc/meson/axg-spdifin.c", i32 473, i32 14}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/meson/axg-spdifin.c", i32 475, i32 3}
!27 = !{ptr @axg_spdifin_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @axg_spdifin_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/meson/axg-spdifin.c", i32 480, i32 33}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/meson/axg-spdifin.c", i32 482, i32 50}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/meson/axg-spdifin.c", i32 484, i32 35}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/meson/axg-spdifin.c", i32 486, i32 52}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/meson/axg-spdifin.c", i32 490, i32 3}
!39 = !{ptr @axg_spdifin_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @axg_spdifin_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @axg_spdifin_regmap_cfg, !42, !"axg_spdifin_regmap_cfg", i1 false, i1 false}
!42 = !{!"../sound/soc/meson/axg-spdifin.c", i32 395, i32 35}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/meson/axg-spdifin.c", i32 429, i32 14}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/meson/axg-spdifin.c", i32 433, i32 29}
!47 = !{ptr @axg_spdifin_ops, !48, !"axg_spdifin_ops", i1 false, i1 false}
!48 = !{!"../sound/soc/meson/axg-spdifin.c", i32 269, i32 37}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/meson/axg-spdifin.c", i32 123, i32 3}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @axg_spdifin_startup._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @axg_spdifin_startup._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/meson/axg-spdifin.c", i32 247, i32 3}
!56 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @axg_spdifin_dai_probe._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @axg_spdifin_dai_probe._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/meson/axg-spdifin.c", i32 253, i32 3}
!61 = !{ptr @axg_spdifin_dai_probe._entry.23, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @axg_spdifin_dai_probe._entry_ptr.25, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/meson/axg-spdifin.c", i32 195, i32 3}
!65 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @axg_spdifin_sample_mode_config._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @axg_spdifin_sample_mode_config._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @axg_spdifin_component_drv, !69, !"axg_spdifin_component_drv", i1 false, i1 false}
!69 = !{!"../sound/soc/meson/axg-spdifin.c", i32 390, i32 46}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/meson/axg-spdifin.c", i32 382, i32 2}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/meson/axg-spdifin.c", i32 383, i32 2}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/meson/axg-spdifin.c", i32 384, i32 2}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/meson/axg-spdifin.c", i32 386, i32 2}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/meson/axg-spdifin.c", i32 387, i32 2}
!80 = !{ptr @axg_spdifin_controls, !81, !"axg_spdifin_controls", i1 false, i1 false}
!81 = !{!"../sound/soc/meson/axg-spdifin.c", i32 381, i32 38}
!82 = !{ptr @axg_spdifin_chsts_src_enum, !83, !"axg_spdifin_chsts_src_enum", i1 false, i1 false}
!83 = !{!"../sound/soc/meson/axg-spdifin.c", i32 345, i32 8}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/meson/axg-spdifin.c", i32 342, i32 2}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/meson/axg-spdifin.c", i32 342, i32 7}
!88 = !{ptr @spdifin_chsts_src_texts, !89, !"spdifin_chsts_src_texts", i1 false, i1 false}
!89 = !{!"../sound/soc/meson/axg-spdifin.c", i32 341, i32 27}
!90 = !{ptr @axg_spdifin_of_match, !91, !"axg_spdifin_of_match", i1 false, i1 false}
!91 = !{!"../sound/soc/meson/axg-spdifin.c", i32 411, i32 34}
!92 = !{ptr @axg_cfg, !93, !"axg_cfg", i1 false, i1 false}
!93 = !{!"../sound/soc/meson/axg-spdifin.c", i32 406, i32 37}
!94 = !{ptr @axg_spdifin_mode_rates, !95, !"axg_spdifin_mode_rates", i1 false, i1 false}
!95 = !{!"../sound/soc/meson/axg-spdifin.c", i32 402, i32 27}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{i64 1187925, i64 1187952}
!106 = !{i64 1188265, i64 1188292, i64 1188326, i64 1188347}
!107 = !{!"auto-init"}
