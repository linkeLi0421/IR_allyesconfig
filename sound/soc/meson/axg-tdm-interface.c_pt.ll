; ModuleID = '/llk/IR_all_yes/sound/soc/meson/axg-tdm-interface.c_pt.bc'
source_filename = "../sound/soc/meson/axg-tdm-interface.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+axg_tdm_set_tdm_slots\22, \22a\22\09"
module asm "\09.weak\09__crc_axg_tdm_set_tdm_slots\09\09\09\09"
module asm "\09.long\09__crc_axg_tdm_set_tdm_slots\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_axg_tdm_set_tdm_slots:\09\09\09\09\09"
module asm "\09.asciz \09\22axg_tdm_set_tdm_slots\22\09\09\09\09\09"
module asm "__kstrtabns_axg_tdm_set_tdm_slots:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.axg_tdm_iface = type { ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.axg_tdm_stream = type { ptr, %struct.list_head, %struct.mutex, i32, i32, i32, ptr, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@axg_tdm_set_tdm_slots._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 52, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"interface has no slot\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"axg_tdm_set_tdm_slots\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sound/soc/meson/axg-tdm-interface.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@axg_tdm_set_tdm_slots._entry_ptr = internal global ptr @axg_tdm_set_tdm_slots._entry, section ".printk_index", align 4
@axg_tdm_set_tdm_slots._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 76, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unsupported slot width: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@axg_tdm_set_tdm_slots._entry_ptr.7 = internal global ptr @axg_tdm_set_tdm_slots._entry.5, section ".printk_index", align 4
@__kstrtab_axg_tdm_set_tdm_slots = external dso_local constant [0 x i8], align 1
@__kstrtabns_axg_tdm_set_tdm_slots = external dso_local constant [0 x i8], align 1
@__ksymtab_axg_tdm_set_tdm_slots = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @axg_tdm_set_tdm_slots to i32), ptr @__kstrtab_axg_tdm_set_tdm_slots, ptr @__kstrtabns_axg_tdm_set_tdm_slots }, section "___ksymtab_gpl+axg_tdm_set_tdm_slots", align 4
@__initcall__kmod_snd_soc_meson_axg_tdm_interface__238_571_axg_tdm_iface_pdrv_init6 = internal global ptr @axg_tdm_iface_pdrv_init, section ".initcall6.init", align 4
@axg_tdm_iface_pdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @axg_tdm_iface_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.8, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @axg_tdm_iface_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_axg_tdm_iface_pdrv_exit = internal global ptr @axg_tdm_iface_pdrv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description239 = internal constant [77 x i8] c"snd_soc_meson_axg_tdm_interface.description=Amlogic AXG TDM interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [76 x i8] c"snd_soc_meson_axg_tdm_interface.author=Jerome Brunet <jbrunet@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [85 x i8] c"snd_soc_meson_axg_tdm_interface.file=sound/soc/meson/snd-soc-meson-axg-tdm-interface\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [47 x i8] c"snd_soc_meson_axg_tdm_interface.license=GPL v2\00", section ".modinfo", align 1
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"axg-tdm-iface\00", [18 x i8] zeroinitializer }, align 32
@axg_tdm_iface_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,axg-tdm-iface\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@axg_tdm_iface_dai_drv = internal constant { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.15, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @axg_tdm_iface_probe_dai, ptr @axg_tdm_iface_remove_dai, ptr null, ptr null, ptr @axg_tdm_iface_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.16, i64 33555525, i32 8191, i32 0, i32 0, i32 1, i32 128, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.17, i64 33555525, i32 8191, i32 0, i32 0, i32 1, i32 128, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.18, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @axg_tdm_iface_probe_dai, ptr @axg_tdm_iface_remove_dai, ptr null, ptr null, ptr @axg_tdm_iface_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.19, i64 33555525, i32 8191, i32 0, i32 0, i32 1, i32 128, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sclk\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to get sclk\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lrclk\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get lrclk\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to get mclk\0A\00", [44 x i8] zeroinitializer }, align 32
@axg_tdm_iface_component_drv = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr @axg_tdm_iface_dapm_widgets, i32 1, ptr @axg_tdm_iface_dapm_routes, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @axg_tdm_iface_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TDM Pad\00", [24 x i8] zeroinitializer }, align 32
@axg_tdm_iface_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @axg_tdm_iface_set_sysclk, ptr null, ptr null, ptr null, ptr @axg_tdm_iface_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @axg_tdm_iface_startup, ptr null, ptr @axg_tdm_iface_hw_params, ptr @axg_tdm_iface_hw_free, ptr null, ptr @axg_tdm_iface_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TDM Loopback\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Loopback\00", [23 x i8] zeroinitializer }, align 32
@axg_tdm_iface_set_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 107, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"master clock not provided\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"axg_tdm_iface_set_sysclk\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@axg_tdm_iface_set_sysclk._entry_ptr = internal global ptr @axg_tdm_iface_set_sysclk._entry, section ".printk_index", align 4
@axg_tdm_iface_set_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 125, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cpu clock master: mclk missing\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"axg_tdm_iface_set_fmt\00", [42 x i8] zeroinitializer }, align 32
@axg_tdm_iface_set_fmt._entry_ptr = internal global ptr @axg_tdm_iface_set_fmt._entry, section ".printk_index", align 4
@axg_tdm_iface_set_fmt._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 135, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"only CBS_CFS and CBM_CFM are supported\0A\00", [56 x i8] zeroinitializer }, align 32
@axg_tdm_iface_set_fmt._entry_ptr.27 = internal global ptr @axg_tdm_iface_set_fmt._entry.25, section ".printk_index", align 4
@axg_tdm_iface_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 154, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"interface has not slots\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"axg_tdm_iface_startup\00", [42 x i8] zeroinitializer }, align 32
@axg_tdm_iface_startup._entry_ptr = internal global ptr @axg_tdm_iface_startup._entry, section ".printk_index", align 4
@axg_tdm_iface_startup._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 165, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"can't set iface rate constraint\0A\00", [63 x i8] zeroinitializer }, align 32
@axg_tdm_iface_startup._entry_ptr.32 = internal global ptr @axg_tdm_iface_startup._entry.30, section ".printk_index", align 4
@axg_tdm_iface_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 311, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bad slot number for format: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"axg_tdm_iface_hw_params\00", [40 x i8] zeroinitializer }, align 32
@axg_tdm_iface_hw_params._entry_ptr = internal global ptr @axg_tdm_iface_hw_params._entry, section ".printk_index", align 4
@axg_tdm_iface_hw_params._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 321, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unsupported dai format\0A\00", [40 x i8] zeroinitializer }, align 32
@axg_tdm_iface_hw_params._entry_ptr.37 = internal global ptr @axg_tdm_iface_hw_params._entry.35, section ".printk_index", align 4
@axg_tdm_iface_set_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 187, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"not enough slots for channels\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"axg_tdm_iface_set_stream\00", [39 x i8] zeroinitializer }, align 32
@axg_tdm_iface_set_stream._entry_ptr = internal global ptr @axg_tdm_iface_set_stream._entry, section ".printk_index", align 4
@axg_tdm_iface_set_stream._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 192, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"incompatible slots width for stream\0A\00", [59 x i8] zeroinitializer }, align 32
@axg_tdm_iface_set_stream._entry_ptr.42 = internal global ptr @axg_tdm_iface_set_stream._entry.40, section ".printk_index", align 4
@axg_tdm_iface_set_sclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 276, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"can't derive sclk %lu from mclk %lu\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"axg_tdm_iface_set_sclk\00", [41 x i8] zeroinitializer }, align 32
@axg_tdm_iface_set_sclk._entry_ptr = internal global ptr @axg_tdm_iface_set_sclk._entry, section ".printk_index", align 4
@axg_tdm_iface_set_sclk._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 283, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"setting bit clock failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@axg_tdm_iface_set_sclk._entry_ptr.47 = internal global ptr @axg_tdm_iface_set_sclk._entry.45, section ".printk_index", align 4
@axg_tdm_iface_set_sclk._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.2, i32 291, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"setting bit clock phase failed: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@axg_tdm_iface_set_sclk._entry_ptr.50 = internal global ptr @axg_tdm_iface_set_sclk._entry.48, section ".printk_index", align 4
@axg_tdm_iface_set_lrclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 213, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"setting sample clock failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"axg_tdm_iface_set_lrclk\00", [40 x i8] zeroinitializer }, align 32
@axg_tdm_iface_set_lrclk._entry_ptr = internal global ptr @axg_tdm_iface_set_lrclk._entry, section ".printk_index", align 4
@axg_tdm_iface_set_lrclk._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.2, i32 243, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"setting sample clock duty cycle failed: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@axg_tdm_iface_set_lrclk._entry_ptr.55 = internal global ptr @axg_tdm_iface_set_lrclk._entry.53, section ".printk_index", align 4
@axg_tdm_iface_set_lrclk._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str.2, i32 252, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"setting sample clock phase failed: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@axg_tdm_iface_set_lrclk._entry_ptr.58 = internal global ptr @axg_tdm_iface_set_lrclk._entry.56, section ".printk_index", align 4
@axg_tdm_iface_dapm_routes = internal constant { [1 x %struct.snd_soc_dapm_route], [44 x i8] } { [1 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.19, ptr null, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }], [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Playback Signal\00", [16 x i8] zeroinitializer }, align 32
@axg_tdm_iface_dapm_widgets = internal constant { [1 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [44 x i8] } { [1 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 25, ptr @.str.59, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [44 x i8] zeroinitializer }, align 32
@switch.table.axg_tdm_iface_hw_params = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 1, i32 1, i32 0, i32 0], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.61 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.62 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.63 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 52, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 76, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [19 x i8] c"axg_tdm_iface_pdrv\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 564, i32 31 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 567, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant [23 x i8] c"axg_tdm_iface_of_match\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 502, i32 34 }
@___asan_gen_.98 = private unnamed_addr constant [22 x i8] c"axg_tdm_iface_dai_drv\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 421, i32 40 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 535, i32 34 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 537, i32 51 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 540, i32 35 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 542, i32 52 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 550, i32 34 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 556, i32 35 }
@___asan_gen_.119 = private unnamed_addr constant [28 x i8] c"axg_tdm_iface_component_drv\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 494, i32 46 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 423, i32 11 }
@___asan_gen_.125 = private unnamed_addr constant [18 x i8] c"axg_tdm_iface_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 411, i32 37 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 432, i32 19 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 425, i32 19 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 444, i32 11 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 446, i32 19 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 107, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 125, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 135, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 154, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 164, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 310, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 321, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 187, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 192, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 274, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 283, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 291, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 213, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 242, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 251, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant [26 x i8] c"axg_tdm_iface_dapm_routes\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 490, i32 40 }
@___asan_gen_.257 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 487, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant [27 x i8] c"axg_tdm_iface_dapm_widgets\00", align 1
@___asan_gen_.261 = private constant [39 x i8] c"../sound/soc/meson/axg-tdm-interface.c\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 486, i32 41 }
@___asan_gen_.263 = private unnamed_addr constant [37 x i8] c"switch.table.axg_tdm_iface_hw_params\00", align 1
@llvm.compiler.used = appending global [92 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_axg_tdm_iface_pdrv_exit, ptr @__initcall__kmod_snd_soc_meson_axg_tdm_interface__238_571_axg_tdm_iface_pdrv_init6, ptr @__ksymtab_axg_tdm_set_tdm_slots, ptr @axg_tdm_iface_hw_params._entry, ptr @axg_tdm_iface_hw_params._entry.35, ptr @axg_tdm_iface_hw_params._entry_ptr, ptr @axg_tdm_iface_hw_params._entry_ptr.37, ptr @axg_tdm_iface_pdrv_exit, ptr @axg_tdm_iface_set_fmt._entry, ptr @axg_tdm_iface_set_fmt._entry.25, ptr @axg_tdm_iface_set_fmt._entry_ptr, ptr @axg_tdm_iface_set_fmt._entry_ptr.27, ptr @axg_tdm_iface_set_lrclk._entry, ptr @axg_tdm_iface_set_lrclk._entry.53, ptr @axg_tdm_iface_set_lrclk._entry.56, ptr @axg_tdm_iface_set_lrclk._entry_ptr, ptr @axg_tdm_iface_set_lrclk._entry_ptr.55, ptr @axg_tdm_iface_set_lrclk._entry_ptr.58, ptr @axg_tdm_iface_set_sclk._entry, ptr @axg_tdm_iface_set_sclk._entry.45, ptr @axg_tdm_iface_set_sclk._entry.48, ptr @axg_tdm_iface_set_sclk._entry_ptr, ptr @axg_tdm_iface_set_sclk._entry_ptr.47, ptr @axg_tdm_iface_set_sclk._entry_ptr.50, ptr @axg_tdm_iface_set_stream._entry, ptr @axg_tdm_iface_set_stream._entry.40, ptr @axg_tdm_iface_set_stream._entry_ptr, ptr @axg_tdm_iface_set_stream._entry_ptr.42, ptr @axg_tdm_iface_set_sysclk._entry, ptr @axg_tdm_iface_set_sysclk._entry_ptr, ptr @axg_tdm_iface_startup._entry, ptr @axg_tdm_iface_startup._entry.30, ptr @axg_tdm_iface_startup._entry_ptr, ptr @axg_tdm_iface_startup._entry_ptr.32, ptr @axg_tdm_set_tdm_slots._entry, ptr @axg_tdm_set_tdm_slots._entry.5, ptr @axg_tdm_set_tdm_slots._entry_ptr, ptr @axg_tdm_set_tdm_slots._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @axg_tdm_iface_pdrv, ptr @.str.8, ptr @axg_tdm_iface_of_match, ptr @axg_tdm_iface_dai_drv, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @axg_tdm_iface_component_drv, ptr @.str.15, ptr @axg_tdm_iface_ops, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @axg_tdm_iface_dapm_routes, ptr @.str.59, ptr @axg_tdm_iface_dapm_widgets, ptr @switch.table.axg_tdm_iface_hw_params], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_tdm_set_tdm_slots._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_tdm_set_tdm_slots._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_tdm_iface_pdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_tdm_iface_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_tdm_iface_dai_drv to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_tdm_iface_component_drv to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_tdm_iface_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_tdm_iface_set_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_tdm_iface_set_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_tdm_iface_set_fmt._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_tdm_iface_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_tdm_iface_startup._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_tdm_iface_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_tdm_iface_hw_params._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_tdm_iface_set_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_tdm_iface_set_stream._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_tdm_iface_set_sclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_tdm_iface_set_sclk._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_tdm_iface_set_sclk._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_tdm_iface_set_lrclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_tdm_iface_set_lrclk._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_tdm_iface_set_lrclk._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_tdm_iface_dapm_routes to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_tdm_iface_dapm_widgets to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.axg_tdm_iface_hw_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @axg_tdm_set_tdm_slots(ptr nocapture noundef readonly %dai, ptr noundef %tx_mask, ptr noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #0 align 64 {
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
  %playback_dma_data = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %4 = ptrtoint ptr %playback_dma_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %playback_dma_data, align 4
  %capture_dma_data = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %6 = ptrtoint ptr %capture_dma_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %capture_dma_data, align 4
  %tobool.not.i = icmp eq ptr %tx_mask, null
  br i1 %tobool.not.i, label %entry.axg_tdm_slots_total.exit_crit_edge, label %cond.false.i

entry.axg_tdm_slots_total.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %axg_tdm_slots_total.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %tx_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_mask, align 4
  %call.i.i = tail call i32 @__sw_hweight32(i32 noundef %9) #5
  %arrayidx.i.1 = getelementptr i32, ptr %tx_mask, i32 1
  %10 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.1, align 4
  %call.i.i.1 = tail call i32 @__sw_hweight32(i32 noundef %11) #5
  %add314.i.1 = add i32 %call.i.i.1, %call.i.i
  %arrayidx.i.2 = getelementptr i32, ptr %tx_mask, i32 2
  %12 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.2, align 4
  %call.i.i.2 = tail call i32 @__sw_hweight32(i32 noundef %13) #5
  %add314.i.2 = add i32 %call.i.i.2, %add314.i.1
  %arrayidx.i.3 = getelementptr i32, ptr %tx_mask, i32 3
  %14 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.3, align 4
  %call.i.i.3 = tail call i32 @__sw_hweight32(i32 noundef %15) #5
  %add314.i.3 = add i32 %call.i.i.3, %add314.i.2
  br label %axg_tdm_slots_total.exit

axg_tdm_slots_total.exit:                         ; preds = %cond.false.i, %entry.axg_tdm_slots_total.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.axg_tdm_slots_total.exit_crit_edge ], [ %add314.i.3, %cond.false.i ]
  %tobool.not.i74 = icmp eq ptr %rx_mask, null
  br i1 %tobool.not.i74, label %axg_tdm_slots_total.exit.axg_tdm_slots_total.exit178_crit_edge, label %cond.false.i171

axg_tdm_slots_total.exit.axg_tdm_slots_total.exit178_crit_edge: ; preds = %axg_tdm_slots_total.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %axg_tdm_slots_total.exit178

cond.false.i171:                                  ; preds = %axg_tdm_slots_total.exit
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %rx_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_mask, align 4
  %call.i.i170 = tail call i32 @__sw_hweight32(i32 noundef %17) #5
  %arrayidx.i77.1 = getelementptr i32, ptr %rx_mask, i32 1
  %18 = ptrtoint ptr %arrayidx.i77.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i77.1, align 4
  %call.i.i170.1 = tail call i32 @__sw_hweight32(i32 noundef %19) #5
  %add314.i173.1 = add i32 %call.i.i170.1, %call.i.i170
  %arrayidx.i77.2 = getelementptr i32, ptr %rx_mask, i32 2
  %20 = ptrtoint ptr %arrayidx.i77.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i77.2, align 4
  %call.i.i170.2 = tail call i32 @__sw_hweight32(i32 noundef %21) #5
  %add314.i173.2 = add i32 %call.i.i170.2, %add314.i173.1
  %arrayidx.i77.3 = getelementptr i32, ptr %rx_mask, i32 3
  %22 = ptrtoint ptr %arrayidx.i77.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i77.3, align 4
  %call.i.i170.3 = tail call i32 @__sw_hweight32(i32 noundef %23) #5
  %add314.i173.3 = add i32 %call.i.i170.3, %add314.i173.2
  br label %axg_tdm_slots_total.exit178

axg_tdm_slots_total.exit178:                      ; preds = %cond.false.i171, %axg_tdm_slots_total.exit.axg_tdm_slots_total.exit178_crit_edge
  %retval.0.i177 = phi i32 [ 0, %axg_tdm_slots_total.exit.axg_tdm_slots_total.exit178_crit_edge ], [ %add314.i173.3, %cond.false.i171 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i177)
  %tobool3.not = icmp eq i32 %retval.0.i177, 0
  %or.cond = select i1 %tobool.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %axg_tdm_slots_total.exit178
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str) #8
  br label %cleanup

if.end:                                           ; preds = %axg_tdm_slots_total.exit178
  %slots4 = getelementptr inbounds %struct.axg_tdm_iface, ptr %3, i32 0, i32 5
  %26 = ptrtoint ptr %slots4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %slots, ptr %slots4, align 4
  %27 = tail call i32 @llvm.fshl.i32(i32 %slot_width, i32 %slot_width, i32 29)
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %27, label %do.end24 [
    i32 0, label %sw.bb
    i32 4, label %if.end.sw.bb5_crit_edge
    i32 3, label %if.end.sw.bb7_crit_edge
    i32 2, label %if.end.sw.bb14_crit_edge
    i32 1, label %if.end.sw.bb18_crit_edge
  ]

if.end.sw.bb18_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb18

if.end.sw.bb14_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb14

if.end.sw.bb7_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7

if.end.sw.bb5_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

sw.bb5:                                           ; preds = %sw.bb, %if.end.sw.bb5_crit_edge
  %slot_width.addr.0 = phi i32 [ %slot_width, %if.end.sw.bb5_crit_edge ], [ 32, %sw.bb ]
  br label %sw.bb7

sw.bb7:                                           ; preds = %sw.bb5, %if.end.sw.bb7_crit_edge
  %slot_width.addr.1 = phi i32 [ %slot_width, %if.end.sw.bb7_crit_edge ], [ %slot_width.addr.0, %sw.bb5 ]
  %fmt.0 = phi i32 [ 33554501, %if.end.sw.bb7_crit_edge ], [ 33555525, %sw.bb5 ]
  br label %sw.bb14

sw.bb14:                                          ; preds = %sw.bb7, %if.end.sw.bb14_crit_edge
  %slot_width.addr.2 = phi i32 [ %slot_width, %if.end.sw.bb14_crit_edge ], [ %slot_width.addr.1, %sw.bb7 ]
  %fmt.1 = phi i32 [ 5, %if.end.sw.bb14_crit_edge ], [ %fmt.0, %sw.bb7 ]
  br label %sw.bb18

sw.bb18:                                          ; preds = %sw.bb14, %if.end.sw.bb18_crit_edge
  %slot_width.addr.3 = phi i32 [ %slot_width, %if.end.sw.bb18_crit_edge ], [ %slot_width.addr.2, %sw.bb14 ]
  %fmt.2 = phi i32 [ %27, %if.end.sw.bb18_crit_edge ], [ %fmt.1, %sw.bb14 ]
  %slot_width26 = getelementptr inbounds %struct.axg_tdm_iface, ptr %3, i32 0, i32 6
  %29 = ptrtoint ptr %slot_width26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %slot_width.addr.3, ptr %slot_width26, align 4
  %tobool27.not = icmp eq ptr %5, null
  br i1 %tobool27.not, label %sw.bb18.if.end32_crit_edge, label %if.then28

sw.bb18.if.end32_crit_edge:                       ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

do.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.6, i32 noundef %slot_width) #8
  br label %cleanup

if.then28:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #7
  %mask = getelementptr inbounds %struct.axg_tdm_stream, ptr %5, i32 0, i32 6
  %32 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %tx_mask, ptr %mask, align 4
  %driver = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 3
  %33 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %driver, align 4
  %channels_max = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %34, i32 0, i32 11, i32 6
  %35 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i, ptr %channels_max, align 8
  %conv29 = zext i32 %fmt.2 to i64
  %36 = load ptr, ptr %driver, align 4
  %formats = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %36, i32 0, i32 11, i32 1
  %37 = ptrtoint ptr %formats to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv29, ptr %formats, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %sw.bb18.if.end32_crit_edge
  %tobool33.not = icmp eq ptr %7, null
  br i1 %tobool33.not, label %if.end32.cleanup_crit_edge, label %if.then34

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %mask35 = getelementptr inbounds %struct.axg_tdm_stream, ptr %7, i32 0, i32 6
  %38 = ptrtoint ptr %mask35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %rx_mask, ptr %mask35, align 4
  %driver36 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 3
  %39 = ptrtoint ptr %driver36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %driver36, align 4
  %channels_max37 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %40, i32 0, i32 10, i32 6
  %41 = ptrtoint ptr %channels_max37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %retval.0.i177, ptr %channels_max37, align 8
  %conv38 = zext i32 %fmt.2 to i64
  %42 = load ptr, ptr %driver36, align 4
  %formats41 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %42, i32 0, i32 10, i32 1
  %43 = ptrtoint ptr %formats41 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %conv38, ptr %formats41, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.end32.cleanup_crit_edge, %do.end24, %do.end
  %retval.0 = phi i32 [ -22, %do.end24 ], [ -22, %do.end ], [ 0, %if.then34 ], [ 0, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @axg_tdm_iface_pdrv_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @axg_tdm_iface_pdrv, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @axg_tdm_iface_pdrv_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @axg_tdm_iface_pdrv) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axg_tdm_iface_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #5
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
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 336, i32 noundef 3520) #5
  %tobool3.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %1 = call ptr @memcpy(ptr %call5.i.i, ptr @axg_tdm_iface_dai_drv, i32 336)
  %call7 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.9) #5
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end14

if.then10:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call7 to i32
  %call13 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %3, ptr noundef nonnull @.str.10) #5
  br label %cleanup

if.end14:                                         ; preds = %for.body.preheader
  %call15 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.11) #5
  %lrclk = getelementptr inbounds %struct.axg_tdm_iface, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %lrclk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call15, ptr %lrclk, align 4
  %cmp.i66 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i66, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call15 to i32
  %call21 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %5, ptr noundef nonnull @.str.12) #5
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %call23 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.13) #5
  %mclk = getelementptr inbounds %struct.axg_tdm_iface, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call23, ptr %mclk, align 4
  %cmp.i67 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i67, label %if.then26, label %if.end22.if.end34_crit_edge

if.end22.if.end34_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then26:                                        ; preds = %if.end22
  %cmp29 = icmp eq ptr %call23, inttoptr (i32 -2 to ptr)
  br i1 %cmp29, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %mclk, align 4
  br label %if.end34

if.else:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %call23 to i32
  %call32 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %8, ptr noundef nonnull @.str.14) #5
  br label %cleanup

if.end34:                                         ; preds = %if.then30, %if.end22.if.end34_crit_edge
  %call35 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @axg_tdm_iface_component_drv, ptr noundef nonnull %call5.i.i, i32 noundef 2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.else, %if.then18, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.then10 ], [ %call21, %if.then18 ], [ %call35, %if.end34 ], [ %call32, %if.else ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axg_tdm_iface_probe_dai(ptr nocapture noundef %dai) #0 align 64 {
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
  %capture_widget = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 6
  %4 = ptrtoint ptr %capture_widget to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %capture_widget, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then:                                          ; preds = %entry
  %call1 = tail call ptr @axg_tdm_stream_alloc(ptr noundef %3) #5
  %capture_dma_data = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %6 = ptrtoint ptr %capture_dma_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1, ptr %capture_dma_data, align 4
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %playback_widget = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 5
  %7 = ptrtoint ptr %playback_widget to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %playback_widget, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.then7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  %call8 = tail call ptr @axg_tdm_stream_alloc(ptr noundef %3) #5
  %playback_dma_data = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %9 = ptrtoint ptr %playback_dma_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8, ptr %playback_dma_data, align 4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.then11, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11:                                        ; preds = %if.then7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %10 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %capture_dma_data.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then11.if.end.i_crit_edge, label %if.then.i

if.then11.if.end.i_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @axg_tdm_stream_free(ptr noundef nonnull %11) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then11.if.end.i_crit_edge
  %12 = ptrtoint ptr %playback_dma_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %playback_dma_data, align 4
  %tobool2.not.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @axg_tdm_stream_free(ptr noundef nonnull %13) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i, %if.end.i.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ 0, %if.then7.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ -12, %if.then3.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axg_tdm_iface_remove_dai(ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %capture_dma_data = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %0 = ptrtoint ptr %capture_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %capture_dma_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @axg_tdm_stream_free(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %playback_dma_data = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %2 = ptrtoint ptr %playback_dma_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %playback_dma_data, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @axg_tdm_stream_free(ptr noundef nonnull %3) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @axg_tdm_stream_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @axg_tdm_stream_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axg_tdm_iface_set_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clk_id)
  %cmp1 = icmp eq i32 %clk_id, 0
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then:                                          ; preds = %entry
  %mclk = getelementptr inbounds %struct.axg_tdm_iface, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mclk, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.else

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.20) #8
  br label %if.end8

if.else:                                          ; preds = %if.then
  %call4 = tail call i32 @clk_set_rate(ptr noundef nonnull %5, i32 noundef %freq) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %mclk_rate = getelementptr inbounds %struct.axg_tdm_iface, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %freq, ptr %mclk_rate, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.else.if.end8_crit_edge, %do.end, %entry.if.end8_crit_edge
  %ret.0 = phi i32 [ %call4, %if.else.if.end8_crit_edge ], [ 0, %if.then6 ], [ -524, %do.end ], [ -524, %entry.if.end8_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axg_tdm_iface_set_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #0 align 64 {
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
  %and = and i32 %fmt, 61440
  %4 = add nsw i32 %and, -4096
  %5 = lshr exact i32 %4, 12
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %entry.do.end4_crit_edge
    i32 2, label %entry.do.end4_crit_edge11
  ]

entry.do.end4_crit_edge11:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %mclk = getelementptr inbounds %struct.axg_tdm_iface, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mclk, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %do.end, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.23) #8
  br label %cleanup

do.end4:                                          ; preds = %entry.do.end4_crit_edge, %entry.do.end4_crit_edge11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.26) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %fmt6 = getelementptr inbounds %struct.axg_tdm_iface, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %fmt6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %fmt, ptr %fmt6, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end4, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -19, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axg_tdm_iface_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
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
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %cond.in.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %6 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %mask = getelementptr inbounds %struct.axg_tdm_stream, ptr %cond.i, i32 0, i32 6
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mask, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %entry.cleanup.sink.split_crit_edge, label %cond.false.i

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cond.false.i:                                     ; preds = %entry
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %call.i.i = tail call i32 @__sw_hweight32(i32 noundef %10) #5
  %arrayidx.i.1 = getelementptr i32, ptr %8, i32 1
  %11 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.1, align 4
  %call.i.i.1 = tail call i32 @__sw_hweight32(i32 noundef %12) #5
  %add314.i.1 = add i32 %call.i.i.1, %call.i.i
  %arrayidx.i.2 = getelementptr i32, ptr %8, i32 2
  %13 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.2, align 4
  %call.i.i.2 = tail call i32 @__sw_hweight32(i32 noundef %14) #5
  %add314.i.2 = add i32 %call.i.i.2, %add314.i.1
  %arrayidx.i.3 = getelementptr i32, ptr %8, i32 3
  %15 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.3, align 4
  %call.i.i.3 = tail call i32 @__sw_hweight32(i32 noundef %16) #5
  %add314.i.3 = sub i32 0, %add314.i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.3, i32 %add314.i.3)
  %tobool.not = icmp eq i32 %call.i.i.3, %add314.i.3
  br i1 %tobool.not, label %cond.false.i.cleanup.sink.split_crit_edge, label %if.end

cond.false.i.cleanup.sink.split_crit_edge:        ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %cond.false.i
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %17 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %component, align 4
  %active.i = getelementptr inbounds %struct.snd_soc_component, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool4.not = icmp eq i32 %20, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %21 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %runtime, align 4
  %rate = getelementptr inbounds %struct.axg_tdm_iface, ptr %3, i32 0, i32 7
  %23 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rate, align 4
  %call.i = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %22, i32 noundef 11, i32 noundef %24, i32 noundef %24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then5.cleanup.sink.split_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5.cleanup.sink.split_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then5.cleanup.sink.split_crit_edge, %cond.false.i.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.31.sink = phi ptr [ @.str.28, %entry.cleanup.sink.split_crit_edge ], [ @.str.28, %cond.false.i.cleanup.sink.split_crit_edge ], [ @.str.31, %if.then5.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %entry.cleanup.sink.split_crit_edge ], [ -22, %cond.false.i.cleanup.sink.split_crit_edge ], [ %call.i, %if.then5.cleanup.sink.split_crit_edge ]
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull %.str.31.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then5.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axg_tdm_iface_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #0 align 64 {
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
  %fmt = getelementptr inbounds %struct.axg_tdm_iface, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt, align 4
  %and = and i32 %5, 15
  %6 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %and, label %do.end5 [
    i32 1, label %entry.sw.bb_crit_edge
    i32 3, label %entry.sw.bb_crit_edge66
    i32 2, label %entry.sw.bb_crit_edge67
    i32 4, label %entry.sw.epilog_crit_edge
    i32 5, label %entry.sw.epilog_crit_edge68
  ]

entry.sw.epilog_crit_edge68:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.bb_crit_edge67:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge66:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge66, %entry.sw.bb_crit_edge67
  %slots = getelementptr inbounds %struct.axg_tdm_iface, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp ugt i32 %8, 2
  br i1 %cmp, label %do.end, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.33, i32 noundef %8) #8
  br label %cleanup

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.36) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge68
  %stream.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %9 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stream.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i = icmp eq i32 %10, 0
  %playback_dma_data.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %capture_dma_data.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %cond.in.i.i = select i1 %cmp.i.i, ptr %playback_dma_data.i.i, ptr %capture_dma_data.i.i
  %11 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %cond.i.i = load ptr, ptr %cond.in.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i.i.i, label %for.inc.i.i.i.i, label %sw.epilog.if.then.i.i.i.i_crit_edge

sw.epilog.if.then.i.i.i.i_crit_edge:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge, %sw.epilog.if.then.i.i.i.i_crit_edge
  %i.09.lcssa.i.i.i.i = phi i32 [ 0, %sw.epilog.if.then.i.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge ]
  %.lcssa.i.i.i.i = phi i32 [ %15, %sw.epilog.if.then.i.i.i.i_crit_edge ], [ %18, %for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge ]
  %16 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i.i, i1 true) #5, !range !141
  %add.i.i.i.i = or i32 %16, %i.09.lcssa.i.i.i.i
  br label %params_width.exit.i

for.inc.i.i.i.i:                                  ; preds = %sw.epilog
  %arrayidx.1.i.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx.1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.1.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.1.i.i.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.1.i.i.i.i, label %for.inc.i.i.i.i.params_width.exit.i_crit_edge, label %for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge

for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge:        ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i.i

for.inc.i.i.i.i.params_width.exit.i_crit_edge:    ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %params_width.exit.i

params_width.exit.i:                              ; preds = %for.inc.i.i.i.i.params_width.exit.i_crit_edge, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %add.i.i.i.i, %if.then.i.i.i.i ], [ 0, %for.inc.i.i.i.i.params_width.exit.i_crit_edge ]
  %call1.i.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i.i) #5
  %arrayidx.i.i33.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %arrayidx.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i33.i, align 4
  %rate.i = getelementptr inbounds %struct.axg_tdm_iface, ptr %3, i32 0, i32 7
  %21 = ptrtoint ptr %rate.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %rate.i, align 4
  %mask.i = getelementptr inbounds %struct.axg_tdm_stream, ptr %cond.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mask.i, align 4
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %params_width.exit.i.axg_tdm_slots_total.exit.i_crit_edge, label %cond.false.i.i

params_width.exit.i.axg_tdm_slots_total.exit.i_crit_edge: ; preds = %params_width.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %axg_tdm_slots_total.exit.i

cond.false.i.i:                                   ; preds = %params_width.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %call.i.i.i = tail call i32 @__sw_hweight32(i32 noundef %25) #5
  %arrayidx.i.i.1 = getelementptr i32, ptr %23, i32 1
  %26 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i.1, align 4
  %call.i.i.i.1 = tail call i32 @__sw_hweight32(i32 noundef %27) #5
  %add314.i.i.1 = add i32 %call.i.i.i.1, %call.i.i.i
  %arrayidx.i.i.2 = getelementptr i32, ptr %23, i32 2
  %28 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i.2, align 4
  %call.i.i.i.2 = tail call i32 @__sw_hweight32(i32 noundef %29) #5
  %add314.i.i.2 = add i32 %call.i.i.i.2, %add314.i.i.1
  %arrayidx.i.i.3 = getelementptr i32, ptr %23, i32 3
  %30 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i.3, align 4
  %call.i.i.i.3 = tail call i32 @__sw_hweight32(i32 noundef %31) #5
  %add314.i.i.3 = add i32 %call.i.i.i.3, %add314.i.i.2
  br label %axg_tdm_slots_total.exit.i

axg_tdm_slots_total.exit.i:                       ; preds = %cond.false.i.i, %params_width.exit.i.axg_tdm_slots_total.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %params_width.exit.i.axg_tdm_slots_total.exit.i_crit_edge ], [ %add314.i.i.3, %cond.false.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %13)
  %cmp.i = icmp ult i32 %retval.0.i.i, %13
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %axg_tdm_slots_total.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.38) #8
  br label %cleanup

if.end.i:                                         ; preds = %axg_tdm_slots_total.exit.i
  %slot_width.i = getelementptr inbounds %struct.axg_tdm_iface, ptr %3, i32 0, i32 6
  %34 = ptrtoint ptr %slot_width.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %slot_width.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %call1.i.i)
  %cmp6.i = icmp ult i32 %35, %call1.i.i
  br i1 %cmp6.i, label %do.end10.i, label %if.end12.i

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.41) #8
  br label %cleanup

if.end12.i:                                       ; preds = %if.end.i
  %38 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.i.i36.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i.i.i36.i, label %for.inc.i.i.i43.i, label %if.end12.i.if.then.i.i.i40.i_crit_edge

if.end12.i.if.then.i.i.i40.i_crit_edge:           ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i40.i

if.then.i.i.i40.i:                                ; preds = %for.inc.i.i.i43.i.if.then.i.i.i40.i_crit_edge, %if.end12.i.if.then.i.i.i40.i_crit_edge
  %i.09.lcssa.i.i.i37.i = phi i32 [ 0, %if.end12.i.if.then.i.i.i40.i_crit_edge ], [ 32, %for.inc.i.i.i43.i.if.then.i.i.i40.i_crit_edge ]
  %.lcssa.i.i.i38.i = phi i32 [ %39, %if.end12.i.if.then.i.i.i40.i_crit_edge ], [ %42, %for.inc.i.i.i43.i.if.then.i.i.i40.i_crit_edge ]
  %40 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i38.i, i1 true) #5, !range !141
  %add.i.i.i39.i = or i32 %40, %i.09.lcssa.i.i.i37.i
  br label %params_physical_width.exit.i

for.inc.i.i.i43.i:                                ; preds = %if.end12.i
  %arrayidx.1.i.i.i41.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %41 = ptrtoint ptr %arrayidx.1.i.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.1.i.i.i41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.1.i.i.i42.i = icmp eq i32 %42, 0
  br i1 %tobool.not.1.i.i.i42.i, label %for.inc.i.i.i43.i.params_physical_width.exit.i_crit_edge, label %for.inc.i.i.i43.i.if.then.i.i.i40.i_crit_edge

for.inc.i.i.i43.i.if.then.i.i.i40.i_crit_edge:    ; preds = %for.inc.i.i.i43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i40.i

for.inc.i.i.i43.i.params_physical_width.exit.i_crit_edge: ; preds = %for.inc.i.i.i43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %params_physical_width.exit.i

params_physical_width.exit.i:                     ; preds = %for.inc.i.i.i43.i.params_physical_width.exit.i_crit_edge, %if.then.i.i.i40.i
  %retval.0.i.i.i44.i = phi i32 [ %add.i.i.i39.i, %if.then.i.i.i40.i ], [ 0, %for.inc.i.i.i43.i.params_physical_width.exit.i_crit_edge ]
  %call1.i45.i = tail call i32 @snd_pcm_format_physical_width(i32 noundef %retval.0.i.i.i44.i) #5
  %physical_width.i = getelementptr inbounds %struct.axg_tdm_stream, ptr %cond.i.i, i32 0, i32 5
  %43 = ptrtoint ptr %physical_width.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call1.i45.i, ptr %physical_width.i, align 4
  %44 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i.i.i47.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i.i.i47.i, label %for.inc.i.i.i54.i, label %params_physical_width.exit.i.if.then.i.i.i51.i_crit_edge

params_physical_width.exit.i.if.then.i.i.i51.i_crit_edge: ; preds = %params_physical_width.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i51.i

if.then.i.i.i51.i:                                ; preds = %for.inc.i.i.i54.i.if.then.i.i.i51.i_crit_edge, %params_physical_width.exit.i.if.then.i.i.i51.i_crit_edge
  %i.09.lcssa.i.i.i48.i = phi i32 [ 0, %params_physical_width.exit.i.if.then.i.i.i51.i_crit_edge ], [ 32, %for.inc.i.i.i54.i.if.then.i.i.i51.i_crit_edge ]
  %.lcssa.i.i.i49.i = phi i32 [ %45, %params_physical_width.exit.i.if.then.i.i.i51.i_crit_edge ], [ %48, %for.inc.i.i.i54.i.if.then.i.i.i51.i_crit_edge ]
  %46 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i49.i, i1 true) #5, !range !141
  %add.i.i.i50.i = or i32 %46, %i.09.lcssa.i.i.i48.i
  br label %if.end9

for.inc.i.i.i54.i:                                ; preds = %params_physical_width.exit.i
  %arrayidx.1.i.i.i52.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %47 = ptrtoint ptr %arrayidx.1.i.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.1.i.i.i52.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.1.i.i.i53.i = icmp eq i32 %48, 0
  br i1 %tobool.not.1.i.i.i53.i, label %for.inc.i.i.i54.i.if.end9_crit_edge, label %for.inc.i.i.i54.i.if.then.i.i.i51.i_crit_edge

for.inc.i.i.i54.i.if.then.i.i.i51.i_crit_edge:    ; preds = %for.inc.i.i.i54.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i51.i

for.inc.i.i.i54.i.if.end9_crit_edge:              ; preds = %for.inc.i.i.i54.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.end9:                                          ; preds = %for.inc.i.i.i54.i.if.end9_crit_edge, %if.then.i.i.i51.i
  %retval.0.i.i.i55.i = phi i32 [ %add.i.i.i50.i, %if.then.i.i.i51.i ], [ 0, %for.inc.i.i.i54.i.if.end9_crit_edge ]
  %call1.i56.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i55.i) #5
  %width15.i = getelementptr inbounds %struct.axg_tdm_stream, ptr %cond.i.i, i32 0, i32 4
  %49 = ptrtoint ptr %width15.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call1.i56.i, ptr %width15.i, align 4
  %50 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i.i, align 4
  %channels17.i = getelementptr inbounds %struct.axg_tdm_stream, ptr %cond.i.i, i32 0, i32 3
  %52 = ptrtoint ptr %channels17.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %channels17.i, align 4
  %53 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fmt, align 4
  %and11 = and i32 %54, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and11)
  %cmp12 = icmp eq i32 %and11, 16384
  br i1 %cmp12, label %if.then13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then13:                                        ; preds = %if.end9
  %55 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i40 = getelementptr inbounds %struct.device, ptr %56, i32 0, i32 8
  %57 = ptrtoint ptr %driver_data.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %driver_data.i.i.i40, align 4
  %slots.i = getelementptr inbounds %struct.axg_tdm_iface, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %slots.i, align 4
  %slot_width.i41 = getelementptr inbounds %struct.axg_tdm_iface, ptr %58, i32 0, i32 6
  %61 = ptrtoint ptr %slot_width.i41 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %slot_width.i41, align 4
  %mul.i = mul i32 %62, %60
  %63 = ptrtoint ptr %arrayidx.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i.i33.i, align 4
  %mul2.i = mul i32 %mul.i, %64
  %mclk_rate.i = getelementptr inbounds %struct.axg_tdm_iface, ptr %58, i32 0, i32 3
  %65 = ptrtoint ptr %mclk_rate.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mclk_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i = icmp eq i32 %66, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  %mclk.i = getelementptr inbounds %struct.axg_tdm_iface, ptr %58, i32 0, i32 2
  %67 = ptrtoint ptr %mclk.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mclk.i, align 4
  %mul3.i = shl i32 %mul2.i, 2
  %call4.i = tail call i32 @clk_set_rate(ptr noundef %68, i32 noundef %mul3.i) #5
  br label %if.end9.i

if.else.i:                                        ; preds = %if.then13
  %rem.i = urem i32 %66, %mul2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool6.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool6.not.i, label %if.else.i.if.end9.i_crit_edge, label %do.end.i43

if.else.i.if.end9.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

do.end.i43:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.43, i32 noundef %mul2.i, i32 noundef %66) #8
  br label %cleanup

if.end9.i:                                        ; preds = %if.else.i.if.end9.i_crit_edge, %if.then.i
  %69 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %58, align 4
  %call10.i = tail call i32 @clk_set_rate(ptr noundef %70, i32 noundef %mul2.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end17.i, label %do.end15.i

do.end15.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %71 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.46, i32 noundef %call10.i) #8
  br label %cleanup

if.end17.i:                                       ; preds = %if.end9.i
  %73 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %58, align 4
  %fmt.i = getelementptr inbounds %struct.axg_tdm_iface, ptr %58, i32 0, i32 4
  %75 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %fmt.i, align 4
  %and.i.i44 = and i32 %76, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i44)
  %tobool.i.not.i = icmp eq i32 %and.i.i44, 0
  %cond.i = select i1 %tobool.i.not.i, i32 180, i32 0
  %call20.i = tail call i32 @clk_set_phase(ptr noundef %74, i32 noundef %cond.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  %77 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev.i, align 4
  br i1 %tobool21.not.i, label %if.end17, label %do.end25.i

do.end25.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.49, i32 noundef %call20.i) #8
  br label %cleanup

if.end17:                                         ; preds = %if.end17.i
  %driver_data.i.i.i47 = getelementptr inbounds %struct.device, ptr %78, i32 0, i32 8
  %79 = ptrtoint ptr %driver_data.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %driver_data.i.i.i47, align 4
  %lrclk.i = getelementptr inbounds %struct.axg_tdm_iface, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %lrclk.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %lrclk.i, align 4
  %83 = ptrtoint ptr %arrayidx.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.i.i33.i, align 4
  %call2.i = tail call i32 @clk_set_rate(ptr noundef %82, i32 noundef %84) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i49 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i49, label %if.end.i52, label %do.end.i50

do.end.i50:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %85 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.51, i32 noundef %call2.i) #8
  br label %cleanup

if.end.i52:                                       ; preds = %if.end17
  %fmt.i51 = getelementptr inbounds %struct.axg_tdm_iface, ptr %80, i32 0, i32 4
  %87 = ptrtoint ptr %fmt.i51 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %fmt.i51, align 4
  %and.i = and i32 %88, 15
  %switch.tableidx = add nsw i32 %and.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %89 = icmp ult i32 %switch.tableidx, 5
  br i1 %89, label %switch.lookup, label %if.end.i52.cleanup_crit_edge

if.end.i52.cleanup_crit_edge:                     ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.lookup:                                    ; preds = %if.end.i52
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.axg_tdm_iface_hw_params, i32 0, i32 %switch.tableidx
  %90 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %90)
  %switch.load = load i32, ptr %switch.gep, align 4
  %91 = ptrtoint ptr %lrclk.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %lrclk.i, align 4
  %call5.i = tail call i32 @clk_set_duty_cycle(ptr noundef %92, i32 noundef %switch.load, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i53 = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i53, label %if.end12.i58, label %do.end10.i54

do.end10.i54:                                     ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  %93 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.54, i32 noundef %call5.i) #8
  br label %cleanup

if.end12.i58:                                     ; preds = %switch.lookup
  %95 = ptrtoint ptr %lrclk.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %lrclk.i, align 4
  %97 = ptrtoint ptr %fmt.i51 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %fmt.i51, align 4
  %and.i.i55 = and i32 %98, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i55)
  %cmp.i.i56 = icmp eq i32 %and.i.i55, 1
  %and1.i.i = and i32 %98, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.i = icmp ne i32 %and1.i.i, 0
  %xor5.i.i = xor i1 %cmp.i.i56, %tobool.i.i
  %cond.i57 = select i1 %xor5.i.i, i32 180, i32 0
  %call16.i = tail call i32 @clk_set_phase(ptr noundef %96, i32 noundef %cond.i57) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end12.i58.cleanup_crit_edge, label %do.end21.i

if.end12.i58.cleanup_crit_edge:                   ; preds = %if.end12.i58
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end21.i:                                       ; preds = %if.end12.i58
  call void @__sanitizer_cov_trace_pc() #7
  %99 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.57, i32 noundef %call16.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end21.i, %if.end12.i58.cleanup_crit_edge, %do.end10.i54, %if.end.i52.cleanup_crit_edge, %do.end.i50, %do.end25.i, %do.end15.i, %do.end.i43, %if.end9.cleanup_crit_edge, %do.end10.i, %do.end.i, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end5 ], [ -22, %do.end ], [ 0, %if.end12.i58.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end10.i ], [ %call20.i, %do.end25.i ], [ %call10.i, %do.end15.i ], [ -22, %do.end.i43 ], [ -22, %if.end.i52.cleanup_crit_edge ], [ %call16.i, %do.end21.i ], [ %call5.i, %do.end10.i54 ], [ %call2.i, %do.end.i50 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axg_tdm_iface_hw_free(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void @axg_tdm_stream_stop(ptr noundef %cond.i) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axg_tdm_iface_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge4
    i32 4, label %entry.sw.bb_crit_edge5
    i32 5, label %entry.sw.bb2_crit_edge
    i32 3, label %entry.sw.bb2_crit_edge6
    i32 0, label %entry.sw.bb2_crit_edge7
  ]

entry.sw.bb2_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

entry.sw.bb2_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

entry.sw.bb_crit_edge5:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge4:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge4, %entry.sw.bb_crit_edge5
  %call1 = tail call i32 @axg_tdm_stream_start(ptr noundef %cond.i) #5
  br label %cleanup

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge6, %entry.sw.bb2_crit_edge7
  tail call void @axg_tdm_stream_stop(ptr noundef %cond.i) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb2 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_phase(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_duty_cycle(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @axg_tdm_stream_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @axg_tdm_stream_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axg_tdm_iface_set_bias_level(ptr nocapture noundef readonly %component, i32 noundef %level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %4 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dapm.i.i, align 4
  %6 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %mclk = getelementptr inbounds %struct.axg_tdm_iface, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.sw.epilog_crit_edge

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.sw.epilog_crit_edge, label %if.end.i.sw.epilog.sink.split_crit_edge

if.end.i.sw.epilog.sink.split_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp4 = icmp eq i32 %5, 2
  br i1 %cmp4, label %if.then5, label %sw.bb3.sw.epilog_crit_edge

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then5:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  %mclk6 = getelementptr inbounds %struct.axg_tdm_iface, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %mclk6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mclk6, align 4
  tail call void @clk_disable(ptr noundef %10) #5
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then5, %if.end.i.sw.epilog.sink.split_crit_edge
  %.sink = phi ptr [ %10, %if.then5 ], [ %8, %if.end.i.sw.epilog.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ 0, %if.then5 ], [ %call1.i, %if.end.i.sw.epilog.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb3.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %if.then.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb3.sw.epilog_crit_edge ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ %call.i, %if.then.sw.epilog_crit_edge ], [ 0, %if.end.i.sw.epilog_crit_edge ], [ %ret.0.ph, %sw.epilog.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !19, !21, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !126, !128, !130}
!llvm.module.flags = !{!132, !133, !134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 52, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @axg_tdm_set_tdm_slots._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @axg_tdm_set_tdm_slots._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 76, i32 3}
!10 = !{ptr @axg_tdm_set_tdm_slots._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @axg_tdm_set_tdm_slots._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__ksymtab_axg_tdm_set_tdm_slots, !13, !"__ksymtab_axg_tdm_set_tdm_slots", i1 false, i1 false}
!13 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 97, i32 1}
!14 = !{ptr @__initcall__kmod_snd_soc_meson_axg_tdm_interface__238_571_axg_tdm_iface_pdrv_init6, !15, !"__initcall__kmod_snd_soc_meson_axg_tdm_interface__238_571_axg_tdm_iface_pdrv_init6", i1 false, i1 false}
!15 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 571, i32 1}
!16 = !{ptr @__exitcall_axg_tdm_iface_pdrv_exit, !15, !"__exitcall_axg_tdm_iface_pdrv_exit", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_description239, !18, !"__UNIQUE_ID_description239", i1 false, i1 false}
!18 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 573, i32 1}
!19 = !{ptr @__UNIQUE_ID_author240, !20, !"__UNIQUE_ID_author240", i1 false, i1 false}
!20 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 574, i32 1}
!21 = !{ptr @__UNIQUE_ID_file241, !22, !"__UNIQUE_ID_file241", i1 false, i1 false}
!22 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 575, i32 1}
!23 = !{ptr @__UNIQUE_ID_license242, !22, !"__UNIQUE_ID_license242", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 567, i32 11}
!26 = !{ptr @axg_tdm_iface_pdrv, !27, !"axg_tdm_iface_pdrv", i1 false, i1 false}
!27 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 564, i32 31}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 535, i32 34}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 537, i32 51}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 540, i32 35}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 542, i32 52}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 550, i32 34}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 556, i32 35}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 423, i32 11}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 432, i32 19}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 425, i32 19}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 444, i32 11}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 446, i32 19}
!50 = !{ptr @axg_tdm_iface_dai_drv, !51, !"axg_tdm_iface_dai_drv", i1 false, i1 false}
!51 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 421, i32 40}
!52 = !{ptr @axg_tdm_iface_ops, !53, !"axg_tdm_iface_ops", i1 false, i1 false}
!53 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 411, i32 37}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 107, i32 4}
!56 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @axg_tdm_iface_set_sysclk._entry, !55, !"_entry", i1 false, i1 false}
!59 = !{ptr @axg_tdm_iface_set_sysclk._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 125, i32 4}
!62 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @axg_tdm_iface_set_fmt._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @axg_tdm_iface_set_fmt._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 135, i32 3}
!67 = !{ptr @axg_tdm_iface_set_fmt._entry.25, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @axg_tdm_iface_set_fmt._entry_ptr.27, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 154, i32 3}
!71 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @axg_tdm_iface_startup._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @axg_tdm_iface_startup._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 164, i32 4}
!76 = !{ptr @axg_tdm_iface_startup._entry.30, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @axg_tdm_iface_startup._entry_ptr.32, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 310, i32 4}
!80 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @axg_tdm_iface_hw_params._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @axg_tdm_iface_hw_params._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 321, i32 3}
!85 = !{ptr @axg_tdm_iface_hw_params._entry.35, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @axg_tdm_iface_hw_params._entry_ptr.37, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 187, i32 3}
!89 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @axg_tdm_iface_set_stream._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @axg_tdm_iface_set_stream._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 192, i32 3}
!94 = !{ptr @axg_tdm_iface_set_stream._entry.40, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @axg_tdm_iface_set_stream._entry_ptr.42, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 274, i32 4}
!98 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @axg_tdm_iface_set_sclk._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @axg_tdm_iface_set_sclk._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 283, i32 3}
!103 = !{ptr @axg_tdm_iface_set_sclk._entry.45, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @axg_tdm_iface_set_sclk._entry_ptr.47, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 291, i32 3}
!107 = !{ptr @axg_tdm_iface_set_sclk._entry.48, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @axg_tdm_iface_set_sclk._entry_ptr.50, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 213, i32 3}
!111 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @axg_tdm_iface_set_lrclk._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @axg_tdm_iface_set_lrclk._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 242, i32 3}
!116 = !{ptr @axg_tdm_iface_set_lrclk._entry.53, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @axg_tdm_iface_set_lrclk._entry_ptr.55, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 251, i32 3}
!120 = !{ptr @axg_tdm_iface_set_lrclk._entry.56, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @axg_tdm_iface_set_lrclk._entry_ptr.58, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @axg_tdm_iface_component_drv, !123, !"axg_tdm_iface_component_drv", i1 false, i1 false}
!123 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 494, i32 46}
!124 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 487, i32 2}
!126 = !{ptr @axg_tdm_iface_dapm_widgets, !127, !"axg_tdm_iface_dapm_widgets", i1 false, i1 false}
!127 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 486, i32 41}
!128 = !{ptr @axg_tdm_iface_dapm_routes, !129, !"axg_tdm_iface_dapm_routes", i1 false, i1 false}
!129 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 490, i32 40}
!130 = !{ptr @axg_tdm_iface_of_match, !131, !"axg_tdm_iface_of_match", i1 false, i1 false}
!131 = !{!"../sound/soc/meson/axg-tdm-interface.c", i32 502, i32 34}
!132 = !{i32 1, !"wchar_size", i32 2}
!133 = !{i32 1, !"min_enum_size", i32 4}
!134 = !{i32 8, !"branch-target-enforcement", i32 0}
!135 = !{i32 8, !"sign-return-address", i32 0}
!136 = !{i32 8, !"sign-return-address-all", i32 0}
!137 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!138 = !{i32 7, !"uwtable", i32 1}
!139 = !{i32 7, !"frame-pointer", i32 2}
!140 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!141 = !{i32 0, i32 33}
