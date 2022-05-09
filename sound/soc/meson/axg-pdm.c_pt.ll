; ModuleID = '/llk/IR_all_yes/sound/soc/meson/axg-pdm.c_pt.bc'
source_filename = "../sound/soc/meson/axg-pdm.c"
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
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.axg_pdm_cfg = type { ptr, i32 }
%struct.axg_pdm_filters = type { %struct.axg_pdm_hcic, %struct.axg_pdm_hpf, [3 x %struct.axg_pdm_lpf] }
%struct.axg_pdm_hcic = type { i32, i32, i32, i32 }
%struct.axg_pdm_hpf = type { i32, i32 }
%struct.axg_pdm_lpf = type { i32, i32, ptr, i32 }
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
%struct.axg_pdm = type { ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_meson_axg_pdm__238_635_axg_pdm_pdrv_init6 = internal global ptr @axg_pdm_pdrv_init, section ".initcall6.init", align 4
@axg_pdm_pdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @axg_pdm_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @axg_pdm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_axg_pdm_pdrv_exit = internal global ptr @axg_pdm_pdrv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description239 = internal constant [63 x i8] c"snd_soc_meson_axg_pdm.description=Amlogic AXG PDM Input driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [66 x i8] c"snd_soc_meson_axg_pdm.author=Jerome Brunet <jbrunet@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [65 x i8] c"snd_soc_meson_axg_pdm.file=sound/soc/meson/snd-soc-meson-axg-pdm\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [37 x i8] c"snd_soc_meson_axg_pdm.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"axg-pdm\00", [24 x i8] zeroinitializer }, align 32
@axg_pdm_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,axg-pdm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axg_pdm_config }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@axg_pdm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 597, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to match device\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"axg_pdm_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/meson/axg-pdm.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@axg_pdm_probe._entry_ptr = internal global ptr @axg_pdm_probe._entry, section ".printk_index", align 4
@axg_pdm_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@axg_pdm_regmap_cfg = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 48, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"axg_pdm:605:(&axg_pdm_regmap_cfg)->lock\00", [56 x i8] zeroinitializer }, align 32
@axg_pdm_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 608, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to init regmap: %ld\0A\00", [36 x i8] zeroinitializer }, align 32
@axg_pdm_probe._entry_ptr.9 = internal global ptr @axg_pdm_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to get pclk\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dclk\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to get dclk\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sysclk\00", [25 x i8] zeroinitializer }, align 32
@axg_pdm_component_drv = internal constant { %struct.snd_soc_component_driver, [36 x i8] } zeroinitializer, align 32
@axg_pdm_dai_drv = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.15, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @axg_pdm_dai_probe, ptr @axg_pdm_dai_remove, ptr null, ptr null, ptr @axg_pdm_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.16, i64 1088, i32 1073741824, i32 5512, i32 48000, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PDM\00", [28 x i8] zeroinitializer }, align 32
@axg_pdm_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @axg_pdm_startup, ptr @axg_pdm_shutdown, ptr @axg_pdm_hw_params, ptr null, ptr null, ptr @axg_pdm_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@axg_pdm_dai_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 388, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"enabling pclk failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"axg_pdm_dai_probe\00", [46 x i8] zeroinitializer }, align 32
@axg_pdm_dai_probe._entry_ptr = internal global ptr @axg_pdm_dai_probe._entry, section ".printk_index", align 4
@axg_pdm_dai_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 398, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"setting sysclk failed\0A\00", [41 x i8] zeroinitializer }, align 32
@axg_pdm_dai_probe._entry_ptr.21 = internal global ptr @axg_pdm_dai_probe._entry.19, section ".printk_index", align 4
@axg_pdm_dai_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.3, i32 404, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"enabling sysclk failed\0A\00", [40 x i8] zeroinitializer }, align 32
@axg_pdm_dai_probe._entry_ptr.24 = internal global ptr @axg_pdm_dai_probe._entry.22, section ".printk_index", align 4
@axg_pdm_dai_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.3, i32 420, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid filter configuration\0A\00", [34 x i8] zeroinitializer }, align 32
@axg_pdm_dai_probe._entry_ptr.27 = internal global ptr @axg_pdm_dai_probe._entry.25, section ".printk_index", align 4
@axg_pdm_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 278, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"enabling dclk failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"axg_pdm_startup\00", [16 x i8] zeroinitializer }, align 32
@axg_pdm_startup._entry_ptr = internal global ptr @axg_pdm_startup._entry, section ".printk_index", align 4
@axg_pdm_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 241, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unsupported sample width\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"axg_pdm_hw_params\00", [46 x i8] zeroinitializer }, align 32
@axg_pdm_hw_params._entry_ptr = internal global ptr @axg_pdm_hw_params._entry, section ".printk_index", align 4
@axg_pdm_hw_params._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.3, i32 249, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to set system clock\0A\00", [36 x i8] zeroinitializer }, align 32
@axg_pdm_hw_params._entry_ptr.34 = internal global ptr @axg_pdm_hw_params._entry.32, section ".printk_index", align 4
@axg_pdm_hw_params._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.3, i32 255, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to set dclk\0A\00", [44 x i8] zeroinitializer }, align 32
@axg_pdm_hw_params._entry_ptr.37 = internal global ptr @axg_pdm_hw_params._entry.35, section ".printk_index", align 4
@axg_pdm_hw_params._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.31, ptr @.str.3, i32 261, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid clock setting\0A\00", [41 x i8] zeroinitializer }, align 32
@axg_pdm_hw_params._entry_ptr.40 = internal global ptr @axg_pdm_hw_params._entry.38, section ".printk_index", align 4
@axg_pdm_config = internal constant { %struct.axg_pdm_cfg, [24 x i8] } { %struct.axg_pdm_cfg { ptr @axg_default_filters, i32 250000000 }, [24 x i8] zeroinitializer }, align 32
@axg_default_filters = internal constant { %struct.axg_pdm_filters, [56 x i8] } { %struct.axg_pdm_filters { %struct.axg_pdm_hcic { i32 21, i32 128, i32 7, i32 8 }, %struct.axg_pdm_hpf { i32 32768, i32 13 }, [3 x %struct.axg_pdm_lpf] [%struct.axg_pdm_lpf { i32 2, i32 1, ptr @lpf1_default_tap, i32 87 }, %struct.axg_pdm_lpf { i32 2, i32 0, ptr @lpf2_default_tap, i32 33 }, %struct.axg_pdm_lpf { i32 2, i32 1, ptr @lpf3_default_tap, i32 117 }] }, [56 x i8] zeroinitializer }, align 32
@lpf1_default_tap = internal constant { [87 x i32], [68 x i8] } { [87 x i32] [i32 20, i32 16777138, i32 16776921, i32 16776654, i32 16776517, i32 16776754, i32 327, i32 1605, i32 2950, i32 3617, i32 2787, i32 0, i32 16772814, i32 16768168, i32 16765458, i32 16766929, i32 16773799, i32 8012, i32 20674, i32 29354, i32 28657, i32 15410, i32 16768078, i32 16738840, i32 16715759, i32 16710575, i32 16731200, i32 0, i32 60360, i32 114807, i32 139422, i32 115108, i32 36448, i32 16694866, i32 16570000, i32 16486309, i32 16491672, i32 16619538, i32 98766, i32 456179, i32 856367, i32 1223000, i32 1480326, i32 1572878, i32 1480326, i32 1223000, i32 856367, i32 456179, i32 98766, i32 16619538, i32 16491672, i32 16486309, i32 16570000, i32 16694866, i32 36448, i32 115108, i32 139422, i32 114807, i32 60360, i32 0, i32 16731200, i32 16710575, i32 16715759, i32 16738840, i32 16768078, i32 15410, i32 28657, i32 29354, i32 20674, i32 8012, i32 16773799, i32 16766929, i32 16765458, i32 16768168, i32 16772814, i32 0, i32 2787, i32 3617, i32 2950, i32 1605, i32 327, i32 16776754, i32 16776517, i32 16776654, i32 16776921, i32 16777138, i32 20], [68 x i8] zeroinitializer }, align 32
@lpf2_default_tap = internal constant { [33 x i32], [60 x i8] } { [33 x i32] [i32 1290, i32 16773124, i32 705, i32 15378, i32 16754712, i32 16763005, i32 68335, i32 16732707, i32 16694675, i32 167745, i32 16735246, i32 16540664, i32 352129, i32 0, i32 16021664, i32 1164771, i32 3057485, i32 1164771, i32 16021664, i32 0, i32 352129, i32 16540664, i32 16735246, i32 167745, i32 16694675, i32 16732707, i32 68335, i32 16763005, i32 16754712, i32 15378, i32 705, i32 16773124, i32 1290], [60 x i8] zeroinitializer }, align 32
@lpf3_default_tap = internal constant { [117 x i32], [108 x i8] } { [117 x i32] [i32 0, i32 129, i32 0, i32 16776923, i32 0, i32 557, i32 0, i32 16776262, i32 0, i32 1527, i32 0, i32 16774891, i32 0, i32 3406, i32 0, i32 16772382, i32 0, i32 6684, i32 0, i32 16768176, i32 0, i32 11998, i32 0, i32 16761553, i32 0, i32 20158, i32 0, i32 16751595, i32 0, i32 32215, i32 0, i32 16737082, i32 0, i32 49618, i32 0, i32 16716245, i32 0, i32 74600, i32 0, i32 16686149, i32 0, i32 111186, i32 0, i32 16641014, i32 0, i32 168120, i32 0, i32 16566797, i32 0, i32 269692, i32 0, i32 16417106, i32 0, i32 518598, i32 0, i32 15896501, i32 0, i32 2667030, i32 4194270, i32 2667030, i32 0, i32 15896501, i32 0, i32 518598, i32 0, i32 16417106, i32 0, i32 269692, i32 0, i32 16566797, i32 0, i32 168120, i32 0, i32 16641014, i32 0, i32 111186, i32 0, i32 16686149, i32 0, i32 74600, i32 0, i32 16716245, i32 0, i32 49618, i32 0, i32 16737082, i32 0, i32 32215, i32 0, i32 16751595, i32 0, i32 20158, i32 0, i32 16761553, i32 0, i32 11998, i32 0, i32 16768176, i32 0, i32 6684, i32 0, i32 16772382, i32 0, i32 3406, i32 0, i32 16774891, i32 0, i32 1527, i32 0, i32 16776262, i32 0, i32 557, i32 0, i32 16776923, i32 0, i32 129, i32 0], [108 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 24, i64 32]
@__sancov_gen_cov_switch_values.41 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.42 = private unnamed_addr constant [13 x i8] c"axg_pdm_pdrv\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 628, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 631, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"axg_pdm_of_match\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 576, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 597, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [19 x i8] c"axg_pdm_regmap_cfg\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 462, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 605, i32 14 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 607, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 612, i32 33 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 614, i32 50 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 616, i32 33 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 618, i32 50 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 620, i32 35 }
@___asan_gen_.99 = private unnamed_addr constant [22 x i8] c"axg_pdm_component_drv\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 460, i32 46 }
@___asan_gen_.102 = private unnamed_addr constant [16 x i8] c"axg_pdm_dai_drv\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 443, i32 34 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 444, i32 10 }
@___asan_gen_.108 = private unnamed_addr constant [16 x i8] c"axg_pdm_dai_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 297, i32 37 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 446, i32 18 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 388, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 398, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 404, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 420, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 278, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 241, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 249, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 255, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 261, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [15 x i8] c"axg_pdm_config\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 571, i32 33 }
@___asan_gen_.180 = private unnamed_addr constant [20 x i8] c"axg_default_filters\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 538, i32 37 }
@___asan_gen_.183 = private unnamed_addr constant [17 x i8] c"lpf1_default_tap\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 469, i32 27 }
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"lpf2_default_tap\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 490, i32 27 }
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"lpf3_default_tap\00", align 1
@___asan_gen_.190 = private constant [29 x i8] c"../sound/soc/meson/axg-pdm.c\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 500, i32 27 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_axg_pdm_pdrv_exit, ptr @__initcall__kmod_snd_soc_meson_axg_pdm__238_635_axg_pdm_pdrv_init6, ptr @axg_pdm_dai_probe._entry, ptr @axg_pdm_dai_probe._entry.19, ptr @axg_pdm_dai_probe._entry.22, ptr @axg_pdm_dai_probe._entry.25, ptr @axg_pdm_dai_probe._entry_ptr, ptr @axg_pdm_dai_probe._entry_ptr.21, ptr @axg_pdm_dai_probe._entry_ptr.24, ptr @axg_pdm_dai_probe._entry_ptr.27, ptr @axg_pdm_hw_params._entry, ptr @axg_pdm_hw_params._entry.32, ptr @axg_pdm_hw_params._entry.35, ptr @axg_pdm_hw_params._entry.38, ptr @axg_pdm_hw_params._entry_ptr, ptr @axg_pdm_hw_params._entry_ptr.34, ptr @axg_pdm_hw_params._entry_ptr.37, ptr @axg_pdm_hw_params._entry_ptr.40, ptr @axg_pdm_pdrv_exit, ptr @axg_pdm_probe._entry, ptr @axg_pdm_probe._entry.7, ptr @axg_pdm_probe._entry_ptr, ptr @axg_pdm_probe._entry_ptr.9, ptr @axg_pdm_startup._entry, ptr @axg_pdm_startup._entry_ptr, ptr @axg_pdm_pdrv, ptr @.str, ptr @axg_pdm_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @axg_pdm_probe._key, ptr @axg_pdm_regmap_cfg, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @axg_pdm_component_drv, ptr @axg_pdm_dai_drv, ptr @.str.15, ptr @axg_pdm_dai_ops, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @axg_pdm_config, ptr @axg_default_filters, ptr @lpf1_default_tap, ptr @lpf2_default_tap, ptr @lpf3_default_tap], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_pdm_pdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_pdm_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_pdm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_pdm_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_pdm_regmap_cfg to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_pdm_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_pdm_component_drv to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_pdm_dai_drv to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_pdm_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_pdm_dai_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_pdm_dai_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_pdm_dai_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_pdm_dai_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_pdm_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_pdm_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_pdm_hw_params._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_pdm_hw_params._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_pdm_hw_params._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_pdm_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_default_filters to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpf1_default_tap to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpf2_default_tap to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpf3_default_tap to i32), i32 468, i32 576, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @axg_pdm_pdrv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @axg_pdm_pdrv, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @axg_pdm_pdrv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @axg_pdm_pdrv) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axg_pdm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 20, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %call.i, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %call12 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call7, ptr noundef nonnull @axg_pdm_regmap_cfg, ptr noundef nonnull @axg_pdm_probe._key, ptr noundef nonnull @.str.6) #5
  %map = getelementptr inbounds %struct.axg_pdm, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call12, ptr %map, align 4
  %cmp.i82 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82, label %do.end18, label %if.end23

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %4) #8
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end11
  %call24 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.10) #5
  %pclk = getelementptr inbounds %struct.axg_pdm, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call24, ptr %pclk, align 4
  %cmp.i83 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i83, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %call24 to i32
  %call30 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %9, ptr noundef nonnull @.str.11) #5
  br label %cleanup

if.end31:                                         ; preds = %if.end23
  %call32 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.12) #5
  %dclk = getelementptr inbounds %struct.axg_pdm, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %dclk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call32, ptr %dclk, align 4
  %cmp.i84 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i84, label %if.then35, label %if.end39

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call32 to i32
  %call38 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %11, ptr noundef nonnull @.str.13) #5
  br label %cleanup

if.end39:                                         ; preds = %if.end31
  %call40 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.14) #5
  %sysclk = getelementptr inbounds %struct.axg_pdm, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call40, ptr %sysclk, align 4
  %cmp.i85 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i85, label %if.then43, label %if.end47

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %call40 to i32
  %call46 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %13, ptr noundef nonnull @.str.13) #5
  br label %cleanup

if.end47:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  %call48 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @axg_pdm_component_drv, ptr noundef nonnull @axg_pdm_dai_drv, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.then43, %if.then35, %if.then27, %do.end18, %if.then9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then9 ], [ %7, %do.end18 ], [ %call30, %if.then27 ], [ %call38, %if.then35 ], [ %call46, %if.then43 ], [ %call48, %if.end47 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

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

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axg_pdm_dai_probe(ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %pclk = getelementptr inbounds %struct.axg_pdm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %5) #5
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %sysclk = getelementptr inbounds %struct.axg_pdm, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sysclk, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %sys_rate = getelementptr inbounds %struct.axg_pdm_cfg, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %sys_rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sys_rate, align 4
  %call2 = tail call i32 @clk_set_rate(ptr noundef %9, i32 noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.20) #8
  br label %err_pclk

if.end9:                                          ; preds = %if.end
  %16 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sysclk, align 4
  %call.i51 = tail call i32 @clk_prepare(ptr noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %tobool.not.i52 = icmp eq i32 %call.i51, 0
  br i1 %tobool.not.i52, label %if.end.i55, label %if.end9.do.end16_crit_edge

if.end9.do.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end16

if.end.i55:                                       ; preds = %if.end9
  %call1.i53 = tail call i32 @clk_enable(ptr noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53)
  %tobool2.not.i54 = icmp eq i32 %call1.i53, 0
  br i1 %tobool2.not.i54, label %if.end18, label %if.then3.i56

if.then3.i56:                                     ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %17) #5
  br label %do.end16

do.end16:                                         ; preds = %if.then3.i56, %if.end9.do.end16_crit_edge
  %retval.0.i57.ph = phi i32 [ %call1.i53, %if.then3.i56 ], [ %call.i51, %if.end9.do.end16_crit_edge ]
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.23) #8
  br label %err_pclk

if.end18:                                         ; preds = %if.end.i55
  %map = getelementptr inbounds %struct.axg_pdm, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %map, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 0, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %22 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map, align 4
  %call.i59 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 0, i32 noundef 268435456, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %steps.i = getelementptr inbounds %struct.axg_pdm_hcic, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %steps.i, align 4
  %ds.i = getelementptr inbounds %struct.axg_pdm_hcic, ptr %27, i32 0, i32 3
  %30 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ds.i, align 4
  %shl2.i = shl i32 %31, 4
  %or.i = or i32 %shl2.i, %29
  %mult.i = getelementptr inbounds %struct.axg_pdm_hcic, ptr %27, i32 0, i32 1
  %32 = ptrtoint ptr %mult.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mult.i, align 4
  %shl3.i = shl i32 %33, 16
  %or4.i = or i32 %or.i, %shl3.i
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %27, align 4
  %shl5.i = shl i32 %35, 24
  %or6.i = or i32 %or4.i, %shl5.i
  %36 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %map, align 4
  %call.i.i60 = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 4, i32 noundef 1073676799, i32 noundef %or6.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %hpf1.i = getelementptr inbounds %struct.axg_pdm_filters, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %hpf1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hpf1.i, align 4
  %steps.i61 = getelementptr inbounds %struct.axg_pdm_filters, ptr %41, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %steps.i61 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %steps.i61, align 4
  %shl2.i62 = shl i32 %45, 16
  %or.i63 = or i32 %shl2.i62, %43
  %46 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %map, align 4
  %call.i.i65 = tail call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 24, i32 noundef 2097151, i32 noundef %or.i63, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %3, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %tap_num.i = getelementptr %struct.axg_pdm_filters, ptr %51, i32 0, i32 2, i32 0, i32 3
  %52 = ptrtoint ptr %tap_num.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tap_num.i, align 4
  %tap_num.1.i = getelementptr %struct.axg_pdm_filters, ptr %51, i32 0, i32 2, i32 1, i32 3
  %54 = ptrtoint ptr %tap_num.1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tap_num.1.i, align 4
  %add.1.i = add i32 %55, %53
  %tap_num.2.i = getelementptr %struct.axg_pdm_filters, ptr %51, i32 0, i32 2, i32 2, i32 3
  %56 = ptrtoint ptr %tap_num.2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tap_num.2.i, align 4
  %add.2.i = add i32 %add.1.i, %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 335, i32 %add.2.i)
  %cmp2.i = icmp ugt i32 %add.2.i, 335
  br i1 %cmp2.i, label %do.end26, label %if.end.i69

if.end.i69:                                       ; preds = %if.end18
  %58 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %map, align 4
  %call.i67 = tail call i32 @regmap_write(ptr noundef %59, i32 noundef 36, i32 noundef 0) #5
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %3, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %arrayidx.i.i = getelementptr %struct.axg_pdm_filters, ptr %63, i32 0, i32 2, i32 0
  %64 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %map, align 4
  %call.i.i68 = tail call i32 @regmap_get_reg_stride(ptr noundef %65) #5
  %tap_num.i.i = getelementptr %struct.axg_pdm_filters, ptr %63, i32 0, i32 2, i32 0, i32 3
  %66 = ptrtoint ptr %tap_num.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tap_num.i.i, align 4
  %68 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i.i, align 4
  %shl2.i.i = shl i32 %69, 12
  %or.i.i = or i32 %shl2.i.i, %67
  %round_mode.i.i = getelementptr %struct.axg_pdm_filters, ptr %63, i32 0, i32 2, i32 0, i32 1
  %70 = ptrtoint ptr %round_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %round_mode.i.i, align 4
  %shl3.i.i = shl i32 %71, 16
  %or4.i.i = or i32 %or.i.i, %shl3.i.i
  %72 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %map, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %73, i32 noundef 12, i32 noundef 258559, i32 noundef %or4.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %74 = ptrtoint ptr %tap_num.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tap_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp941.not.i = icmp eq i32 %75, 0
  br i1 %cmp941.not.i, label %if.end.i69.for.inc18.i_crit_edge, label %for.body10.lr.ph.i

if.end.i69.for.inc18.i_crit_edge:                 ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc18.i

for.body10.lr.ph.i:                               ; preds = %if.end.i69
  %tap.i = getelementptr %struct.axg_pdm_filters, ptr %51, i32 0, i32 2, i32 0, i32 2
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.body10.i.for.body10.i_crit_edge, %for.body10.lr.ph.i
  %j.042.i = phi i32 [ 0, %for.body10.lr.ph.i ], [ %inc16.i, %for.body10.i.for.body10.i_crit_edge ]
  %76 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %map, align 4
  %78 = ptrtoint ptr %tap.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tap.i, align 4
  %arrayidx13.i = getelementptr i32, ptr %79, i32 %j.042.i
  %80 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx13.i, align 4
  %call14.i = tail call i32 @regmap_write(ptr noundef %77, i32 noundef 40, i32 noundef %81) #5
  %inc16.i = add nuw i32 %j.042.i, 1
  %82 = ptrtoint ptr %tap_num.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tap_num.i, align 4
  %cmp9.i = icmp ult i32 %inc16.i, %83
  br i1 %cmp9.i, label %for.body10.i.for.body10.i_crit_edge, label %for.body10.i.for.inc18.i_crit_edge

for.body10.i.for.inc18.i_crit_edge:               ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc18.i

for.body10.i.for.body10.i_crit_edge:              ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body10.i

for.inc18.i:                                      ; preds = %for.body10.i.for.inc18.i_crit_edge, %if.end.i69.for.inc18.i_crit_edge
  %84 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %3, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %arrayidx.i.1.i = getelementptr %struct.axg_pdm_filters, ptr %87, i32 0, i32 2, i32 1
  %88 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %map, align 4
  %call.i.1.i = tail call i32 @regmap_get_reg_stride(ptr noundef %89) #5
  %add.i.1.i = add i32 %call.i.1.i, 12
  %tap_num.i.1.i = getelementptr %struct.axg_pdm_filters, ptr %87, i32 0, i32 2, i32 1, i32 3
  %90 = ptrtoint ptr %tap_num.i.1.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %tap_num.i.1.i, align 4
  %92 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx.i.1.i, align 4
  %shl2.i.1.i = shl i32 %93, 12
  %or.i.1.i = or i32 %shl2.i.1.i, %91
  %round_mode.i.1.i = getelementptr %struct.axg_pdm_filters, ptr %87, i32 0, i32 2, i32 1, i32 1
  %94 = ptrtoint ptr %round_mode.i.1.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %round_mode.i.1.i, align 4
  %shl3.i.1.i = shl i32 %95, 16
  %or4.i.1.i = or i32 %or.i.1.i, %shl3.i.1.i
  %96 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %map, align 4
  %call.i.i.1.i = tail call i32 @regmap_update_bits_base(ptr noundef %97, i32 noundef %add.i.1.i, i32 noundef 258559, i32 noundef %or4.i.1.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %98 = ptrtoint ptr %tap_num.1.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tap_num.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp941.not.1.i = icmp eq i32 %99, 0
  br i1 %cmp941.not.1.i, label %for.inc18.i.for.inc18.1.i_crit_edge, label %for.body10.lr.ph.1.i

for.inc18.i.for.inc18.1.i_crit_edge:              ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc18.1.i

for.body10.lr.ph.1.i:                             ; preds = %for.inc18.i
  %tap.1.i = getelementptr %struct.axg_pdm_filters, ptr %51, i32 0, i32 2, i32 1, i32 2
  br label %for.body10.1.i

for.body10.1.i:                                   ; preds = %for.body10.1.i.for.body10.1.i_crit_edge, %for.body10.lr.ph.1.i
  %j.042.1.i = phi i32 [ 0, %for.body10.lr.ph.1.i ], [ %inc16.1.i, %for.body10.1.i.for.body10.1.i_crit_edge ]
  %100 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %map, align 4
  %102 = ptrtoint ptr %tap.1.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %tap.1.i, align 4
  %arrayidx13.1.i = getelementptr i32, ptr %103, i32 %j.042.1.i
  %104 = ptrtoint ptr %arrayidx13.1.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx13.1.i, align 4
  %call14.1.i = tail call i32 @regmap_write(ptr noundef %101, i32 noundef 40, i32 noundef %105) #5
  %inc16.1.i = add nuw i32 %j.042.1.i, 1
  %106 = ptrtoint ptr %tap_num.1.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %tap_num.1.i, align 4
  %cmp9.1.i = icmp ult i32 %inc16.1.i, %107
  br i1 %cmp9.1.i, label %for.body10.1.i.for.body10.1.i_crit_edge, label %for.body10.1.i.for.inc18.1.i_crit_edge

for.body10.1.i.for.inc18.1.i_crit_edge:           ; preds = %for.body10.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc18.1.i

for.body10.1.i.for.body10.1.i_crit_edge:          ; preds = %for.body10.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body10.1.i

for.inc18.1.i:                                    ; preds = %for.body10.1.i.for.inc18.1.i_crit_edge, %for.inc18.i.for.inc18.1.i_crit_edge
  %108 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %3, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %arrayidx.i.2.i = getelementptr %struct.axg_pdm_filters, ptr %111, i32 0, i32 2, i32 2
  %112 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %map, align 4
  %call.i.2.i = tail call i32 @regmap_get_reg_stride(ptr noundef %113) #5
  %mul.i.2.i = shl i32 %call.i.2.i, 1
  %add.i.2.i = add i32 %mul.i.2.i, 12
  %tap_num.i.2.i = getelementptr %struct.axg_pdm_filters, ptr %111, i32 0, i32 2, i32 2, i32 3
  %114 = ptrtoint ptr %tap_num.i.2.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %tap_num.i.2.i, align 4
  %116 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx.i.2.i, align 4
  %shl2.i.2.i = shl i32 %117, 12
  %or.i.2.i = or i32 %shl2.i.2.i, %115
  %round_mode.i.2.i = getelementptr %struct.axg_pdm_filters, ptr %111, i32 0, i32 2, i32 2, i32 1
  %118 = ptrtoint ptr %round_mode.i.2.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %round_mode.i.2.i, align 4
  %shl3.i.2.i = shl i32 %119, 16
  %or4.i.2.i = or i32 %or.i.2.i, %shl3.i.2.i
  %120 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %map, align 4
  %call.i.i.2.i = tail call i32 @regmap_update_bits_base(ptr noundef %121, i32 noundef %add.i.2.i, i32 noundef 258559, i32 noundef %or4.i.2.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %122 = ptrtoint ptr %tap_num.2.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %tap_num.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp941.not.2.i = icmp eq i32 %123, 0
  br i1 %cmp941.not.2.i, label %for.inc18.1.i.cleanup_crit_edge, label %for.body10.lr.ph.2.i

for.inc18.1.i.cleanup_crit_edge:                  ; preds = %for.inc18.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body10.lr.ph.2.i:                             ; preds = %for.inc18.1.i
  %tap.2.i = getelementptr %struct.axg_pdm_filters, ptr %51, i32 0, i32 2, i32 2, i32 2
  br label %for.body10.2.i

for.body10.2.i:                                   ; preds = %for.body10.2.i.for.body10.2.i_crit_edge, %for.body10.lr.ph.2.i
  %j.042.2.i = phi i32 [ 0, %for.body10.lr.ph.2.i ], [ %inc16.2.i, %for.body10.2.i.for.body10.2.i_crit_edge ]
  %124 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %map, align 4
  %126 = ptrtoint ptr %tap.2.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %tap.2.i, align 4
  %arrayidx13.2.i = getelementptr i32, ptr %127, i32 %j.042.2.i
  %128 = ptrtoint ptr %arrayidx13.2.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx13.2.i, align 4
  %call14.2.i = tail call i32 @regmap_write(ptr noundef %125, i32 noundef 40, i32 noundef %129) #5
  %inc16.2.i = add nuw i32 %j.042.2.i, 1
  %130 = ptrtoint ptr %tap_num.2.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %tap_num.2.i, align 4
  %cmp9.2.i = icmp ult i32 %inc16.2.i, %131
  br i1 %cmp9.2.i, label %for.body10.2.i.for.body10.2.i_crit_edge, label %for.body10.2.i.cleanup_crit_edge

for.body10.2.i.cleanup_crit_edge:                 ; preds = %for.body10.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body10.2.i.for.body10.2.i_crit_edge:          ; preds = %for.body10.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body10.2.i

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %132 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.26) #8
  %134 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %sysclk, align 4
  tail call void @clk_disable(ptr noundef %135) #5
  tail call void @clk_unprepare(ptr noundef %135) #5
  br label %err_pclk

err_pclk:                                         ; preds = %do.end26, %do.end16, %do.end7
  %ret.0 = phi i32 [ %call2, %do.end7 ], [ %retval.0.i57.ph, %do.end16 ], [ -22, %do.end26 ]
  %136 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %137) #5
  tail call void @clk_unprepare(ptr noundef %137) #5
  br label %cleanup

cleanup:                                          ; preds = %err_pclk, %for.body10.2.i.cleanup_crit_edge, %for.inc18.1.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %ret.0, %err_pclk ], [ 0, %for.inc18.1.i.cleanup_crit_edge ], [ 0, %for.body10.2.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axg_pdm_dai_remove(ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %sysclk = getelementptr inbounds %struct.axg_pdm, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sysclk, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  %pclk = getelementptr inbounds %struct.axg_pdm, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_get_reg_stride(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axg_pdm_startup(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dclk = getelementptr inbounds %struct.axg_pdm, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %5) #5
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.28) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %map = getelementptr inbounds %struct.axg_pdm, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 4, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i13.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 12, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i14.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 16, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i15.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 20, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i16.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 24, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0.i9 = phi i32 [ 0, %if.end ], [ %retval.0.i.ph, %do.end ]
  ret i32 %retval.0.i9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @axg_pdm_shutdown(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %map = getelementptr inbounds %struct.axg_pdm, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 4, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i13.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i14.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 16, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i15.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 20, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i16.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 24, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %dclk = getelementptr inbounds %struct.axg_pdm, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dclk, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axg_pdm_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %ds.i = getelementptr inbounds %struct.axg_pdm_hcic, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ds.i, align 4
  %arrayidx.i = getelementptr %struct.axg_pdm_filters, ptr %7, i32 0, i32 2, i32 0
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %mul.i = mul i32 %11, %9
  %arrayidx.1.i = getelementptr %struct.axg_pdm_filters, ptr %7, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.1.i, align 4
  %mul.1.i = mul i32 %mul.i, %13
  %arrayidx.2.i = getelementptr %struct.axg_pdm_filters, ptr %7, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.2.i, align 4
  %mul.2.i = mul i32 %mul.1.i, %15
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %19, %entry.if.then.i.i.i_crit_edge ], [ %22, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %20 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #5, !range !111
  %add.i.i.i = or i32 %20, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.1.i.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #5
  %23 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1.i, label %do.end [
    i32 24, label %params_width.exit.sw.epilog_crit_edge
    i32 32, label %sw.bb4
  ]

params_width.exit.sw.epilog_crit_edge:            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end:                                           ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.30) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb4, %params_width.exit.sw.epilog_crit_edge
  %val.0 = phi i32 [ 0, %sw.bb4 ], [ 536870912, %params_width.exit.sw.epilog_crit_edge ]
  %map = getelementptr inbounds %struct.axg_pdm, ptr %3, i32 0, i32 1
  %26 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 0, i32 noundef 536870912, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %mul1.i = mul i32 %17, %mul.2.i
  %mul2.i = mul i32 %mul1.i, 510
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  %sys_rate3.i = getelementptr inbounds %struct.axg_pdm_cfg, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %sys_rate3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sys_rate3.i, align 4
  %sysclk.i = getelementptr inbounds %struct.axg_pdm, ptr %3, i32 0, i32 3
  %32 = ptrtoint ptr %sysclk.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sysclk.i, align 4
  %34 = tail call i32 @llvm.umin.i32(i32 %mul2.i, i32 %31) #5
  %call7.i = tail call i32 @clk_set_rate(ptr noundef %33, i32 noundef %34) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not = icmp eq i32 %call7.i, 0
  br i1 %tobool.not, label %if.end, label %do.end9

do.end9:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.33) #8
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %dclk = getelementptr inbounds %struct.axg_pdm, ptr %3, i32 0, i32 2
  %37 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dclk, align 4
  %call11 = tail call i32 @clk_set_rate(ptr noundef %38, i32 noundef %mul1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end18, label %do.end16

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.36) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %41 = ptrtoint ptr %sysclk.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sysclk.i, align 4
  %call.i51 = tail call i32 @clk_get_rate(ptr noundef %42) #5
  %conv.i = zext i32 %call.i51 to i64
  %43 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dclk, align 4
  %call1.i52 = tail call i32 @clk_get_rate(ptr noundef %44) #5
  %mul.i53 = shl i32 %call1.i52, 1
  %conv2.i = zext i32 %mul.i53 to i64
  %add.i = add nsw i64 %conv.i, -1
  %sub.i = add nsw i64 %add.i, %conv2.i
  %45 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dclk, align 4
  %call4.i = tail call i32 @clk_get_rate(ptr noundef %46) #5
  %mul5.i = shl i32 %call4.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp175.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp175.i, label %if.then179.i, label %if.else185.i, !prof !112

if.then179.i:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %conv180.i = trunc i64 %sub.i to i32
  %div183.i = udiv i32 %conv180.i, %mul5.i
  br label %if.end189.i

if.else185.i:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %47 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul5.i, i64 %sub.i) #9, !srcloc !113
  %asmresult1.i.i = extractvalue { i64, i64 } %47, 1
  %extract.t352.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end189.i

if.end189.i:                                      ; preds = %if.else185.i, %if.then179.i
  %_tmp.0.off0.i = phi i32 [ %div183.i, %if.then179.i ], [ %extract.t352.i, %if.else185.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %_tmp.0.off0.i)
  %cmp193.i = icmp ugt i32 %_tmp.0.off0.i, 255
  br i1 %cmp193.i, label %do.end24, label %if.end26, !prof !114

do.end24:                                         ; preds = %if.end189.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 191, i32 noundef 9, ptr noundef null) #5
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.39) #8
  br label %cleanup

if.end26:                                         ; preds = %if.end189.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul224.i = mul nuw nsw i32 %_tmp.0.off0.i, 3
  %div225326.i = lshr i32 %mul224.i, 2
  %shl229.1.i = shl nuw nsw i32 %div225326.i, 8
  %or230.1.i = or i32 %shl229.1.i, %div225326.i
  %shl229.2.i = shl nuw nsw i32 %div225326.i, 16
  %or230.2.i = or i32 %or230.1.i, %shl229.2.i
  %shl229.3.i = shl nuw i32 %div225326.i, 24
  %or230.3.i = or i32 %or230.2.i, %shl229.3.i
  %50 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %map, align 4
  %call231.i = tail call i32 @regmap_write(ptr noundef %51, i32 noundef 28, i32 noundef %or230.3.i) #5
  %52 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %map, align 4
  %call233.i = tail call i32 @regmap_write(ptr noundef %53, i32 noundef 32, i32 noundef %or230.3.i) #5
  %arrayidx.i.i54 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %54 = ptrtoint ptr %arrayidx.i.i54 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i.i54, align 4
  %sub1.i = sub i32 32, %55
  %shr.i55 = lshr i32 -1, %sub1.i
  %56 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %map, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef 0, i32 noundef 65280, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %58 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %map, align 4
  %shl.i57 = shl i32 %shr.i55, 8
  %or.i = or i32 %shl.i57, %shr.i55
  %call.i7.i = tail call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef 0, i32 noundef 65535, i32 noundef %or.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end24, %do.end16, %do.end9, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call7.i, %do.end9 ], [ %call11, %do.end16 ], [ -22, %do.end24 ], [ 0, %if.end26 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axg_pdm_trigger(ptr nocapture noundef readnone %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge5
    i32 4, label %entry.sw.bb_crit_edge6
    i32 0, label %entry.sw.bb1_crit_edge
    i32 5, label %entry.sw.bb1_crit_edge7
    i32 3, label %entry.sw.bb1_crit_edge8
  ]

entry.sw.bb1_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb_crit_edge6:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge5:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge5, %entry.sw.bb_crit_edge6
  %map = getelementptr inbounds %struct.axg_pdm, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 0, i32 noundef 65536, i32 noundef 65536, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i5.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 0, i32 noundef 65536, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i6.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 0, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge7, %entry.sw.bb1_crit_edge8
  %map2 = getelementptr inbounds %struct.axg_pdm, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %map2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map2, align 4
  %call.i.i4 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 0, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb1, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb1 ], [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !94, !96, !98, !100}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @__initcall__kmod_snd_soc_meson_axg_pdm__238_635_axg_pdm_pdrv_init6, !1, !"__initcall__kmod_snd_soc_meson_axg_pdm__238_635_axg_pdm_pdrv_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/meson/axg-pdm.c", i32 635, i32 1}
!2 = !{ptr @__exitcall_axg_pdm_pdrv_exit, !1, !"__exitcall_axg_pdm_pdrv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description239, !4, !"__UNIQUE_ID_description239", i1 false, i1 false}
!4 = !{!"../sound/soc/meson/axg-pdm.c", i32 637, i32 1}
!5 = !{ptr @__UNIQUE_ID_author240, !6, !"__UNIQUE_ID_author240", i1 false, i1 false}
!6 = !{!"../sound/soc/meson/axg-pdm.c", i32 638, i32 1}
!7 = !{ptr @__UNIQUE_ID_file241, !8, !"__UNIQUE_ID_file241", i1 false, i1 false}
!8 = !{!"../sound/soc/meson/axg-pdm.c", i32 639, i32 1}
!9 = !{ptr @__UNIQUE_ID_license242, !8, !"__UNIQUE_ID_license242", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/meson/axg-pdm.c", i32 631, i32 11}
!12 = !{ptr @axg_pdm_pdrv, !13, !"axg_pdm_pdrv", i1 false, i1 false}
!13 = !{!"../sound/soc/meson/axg-pdm.c", i32 628, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/meson/axg-pdm.c", i32 597, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @axg_pdm_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @axg_pdm_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @axg_pdm_probe._key, !23, !"_key", i1 false, i1 false}
!23 = !{!"../sound/soc/meson/axg-pdm.c", i32 605, i32 14}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/meson/axg-pdm.c", i32 607, i32 3}
!27 = !{ptr @axg_pdm_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @axg_pdm_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/meson/axg-pdm.c", i32 612, i32 33}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/meson/axg-pdm.c", i32 614, i32 50}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/meson/axg-pdm.c", i32 616, i32 33}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/meson/axg-pdm.c", i32 618, i32 50}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/meson/axg-pdm.c", i32 620, i32 35}
!39 = !{ptr @axg_pdm_regmap_cfg, !40, !"axg_pdm_regmap_cfg", i1 false, i1 false}
!40 = !{!"../sound/soc/meson/axg-pdm.c", i32 462, i32 35}
!41 = !{ptr @axg_pdm_component_drv, !42, !"axg_pdm_component_drv", i1 false, i1 false}
!42 = !{!"../sound/soc/meson/axg-pdm.c", i32 460, i32 46}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/meson/axg-pdm.c", i32 444, i32 10}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/meson/axg-pdm.c", i32 446, i32 18}
!47 = !{ptr @axg_pdm_dai_drv, !48, !"axg_pdm_dai_drv", i1 false, i1 false}
!48 = !{!"../sound/soc/meson/axg-pdm.c", i32 443, i32 34}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/meson/axg-pdm.c", i32 388, i32 3}
!51 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @axg_pdm_dai_probe._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @axg_pdm_dai_probe._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/meson/axg-pdm.c", i32 398, i32 3}
!56 = !{ptr @axg_pdm_dai_probe._entry.19, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @axg_pdm_dai_probe._entry_ptr.21, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/meson/axg-pdm.c", i32 404, i32 3}
!60 = !{ptr @axg_pdm_dai_probe._entry.22, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @axg_pdm_dai_probe._entry_ptr.24, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/meson/axg-pdm.c", i32 420, i32 3}
!64 = !{ptr @axg_pdm_dai_probe._entry.25, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @axg_pdm_dai_probe._entry_ptr.27, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @axg_pdm_dai_ops, !67, !"axg_pdm_dai_ops", i1 false, i1 false}
!67 = !{!"../sound/soc/meson/axg-pdm.c", i32 297, i32 37}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/meson/axg-pdm.c", i32 278, i32 3}
!70 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @axg_pdm_startup._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @axg_pdm_startup._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/meson/axg-pdm.c", i32 241, i32 3}
!75 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @axg_pdm_hw_params._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @axg_pdm_hw_params._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/meson/axg-pdm.c", i32 249, i32 3}
!80 = !{ptr @axg_pdm_hw_params._entry.32, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @axg_pdm_hw_params._entry_ptr.34, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/meson/axg-pdm.c", i32 255, i32 3}
!84 = !{ptr @axg_pdm_hw_params._entry.35, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @axg_pdm_hw_params._entry_ptr.37, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/meson/axg-pdm.c", i32 261, i32 3}
!88 = !{ptr @axg_pdm_hw_params._entry.38, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @axg_pdm_hw_params._entry_ptr.40, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @axg_pdm_of_match, !91, !"axg_pdm_of_match", i1 false, i1 false}
!91 = !{!"../sound/soc/meson/axg-pdm.c", i32 576, i32 34}
!92 = !{ptr @axg_pdm_config, !93, !"axg_pdm_config", i1 false, i1 false}
!93 = !{!"../sound/soc/meson/axg-pdm.c", i32 571, i32 33}
!94 = !{ptr @axg_default_filters, !95, !"axg_default_filters", i1 false, i1 false}
!95 = !{!"../sound/soc/meson/axg-pdm.c", i32 538, i32 37}
!96 = !{ptr @lpf1_default_tap, !97, !"lpf1_default_tap", i1 false, i1 false}
!97 = !{!"../sound/soc/meson/axg-pdm.c", i32 469, i32 27}
!98 = !{ptr @lpf2_default_tap, !99, !"lpf2_default_tap", i1 false, i1 false}
!99 = !{!"../sound/soc/meson/axg-pdm.c", i32 490, i32 27}
!100 = !{ptr @lpf3_default_tap, !101, !"lpf3_default_tap", i1 false, i1 false}
!101 = !{!"../sound/soc/meson/axg-pdm.c", i32 500, i32 27}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{i32 0, i32 33}
!112 = !{!"branch_weights", i32 2000, i32 1}
!113 = !{i64 2148645942, i64 2148646222, i64 2148646556, i64 2148646890}
!114 = !{!"branch_weights", i32 1, i32 2000}
