; ModuleID = '/llk/IR_all_yes/sound/soc/atmel/mchp-spdiftx.c_pt.bc'
source_filename = "../sound/soc/atmel/mchp-spdiftx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.86, i32 }
%union.anon.86 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mchp_spdiftx_dev = type { %struct.mchp_spdiftx_mixer_control, %struct.snd_dmaengine_dai_dma_data, ptr, ptr, ptr, ptr, i32, ptr, i8 }
%struct.mchp_spdiftx_mixer_control = type { [24 x i8], [24 x i8], %struct.spinlock }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.76, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.76 = type { %struct.anon.79, [40 x i8] }
%struct.anon.79 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.85, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.85 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.80, [128 x i8] }
%union.anon.80 = type { %union.anon.82 }
%union.anon.82 = type { [64 x i64] }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }

@__initcall__kmod_snd_soc_mchp_spdiftx__242_866_mchp_spdiftx_driver_init6 = internal global ptr @mchp_spdiftx_driver_init, section ".initcall6.init", align 4
@mchp_spdiftx_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mchp_spdiftx_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mchp_spdiftx_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mchp_spdiftx_driver_exit = internal global ptr @mchp_spdiftx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author243 = internal constant [80 x i8] c"snd_soc_mchp_spdiftx.author=Codrin Ciubotariu <codrin.ciubotariu@microchip.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description244 = internal constant [71 x i8] c"snd_soc_mchp_spdiftx.description=Microchip S/PDIF TX Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [63 x i8] c"snd_soc_mchp_spdiftx.file=sound/soc/atmel/snd-soc-mchp-spdiftx\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [36 x i8] c"snd_soc_mchp_spdiftx.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mchp_spdiftx\00", [19 x i8] zeroinitializer }, align 32
@mchp_spdiftx_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-spdiftx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mchp_spdiftx_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mchp_spdiftx_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @mchp_spdiftx_writeable_reg, ptr @mchp_spdiftx_readable_reg, ptr null, ptr @mchp_spdiftx_precious_reg, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 240, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"mchp_spdiftx:795:(&mchp_spdiftx_regmap_config)->lock\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@mchp_spdiftx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 814, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to get the peripheral clock: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mchp_spdiftx_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sound/soc/atmel/mchp-spdiftx.c\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mchp_spdiftx_probe._entry_ptr = internal global ptr @mchp_spdiftx_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gclk\00", [27 x i8] zeroinitializer }, align 32
@mchp_spdiftx_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 823, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to get the PMC generic clock: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@mchp_spdiftx_probe._entry_ptr.11 = internal global ptr @mchp_spdiftx_probe._entry.9, section ".printk_index", align 4
@mchp_spdiftx_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ctrl->lock\00", [20 x i8] zeroinitializer }, align 32
@mchp_spdiftx_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 843, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register PMC: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@mchp_spdiftx_probe._entry_ptr.15 = internal global ptr @mchp_spdiftx_probe._entry.13, section ".printk_index", align 4
@mchp_spdiftx_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.25, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@mchp_spdiftx_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.25, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @mchp_spdiftx_dai_probe, ptr @mchp_spdiftx_dai_remove, ptr null, ptr null, ptr @mchp_spdiftx_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.26, i64 3517578218725, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@mchp_spdiftx_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 851, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register component: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@mchp_spdiftx_probe._entry_ptr.18 = internal global ptr @mchp_spdiftx_probe._entry.16, section ".printk_index", align 4
@mchp_spdiftx_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.5, i32 257, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"underflow detected\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mchp_spdiftx_interrupt\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mchp_spdiftx_interrupt._entry_ptr = internal global ptr @mchp_spdiftx_interrupt._entry, section ".printk_index", align 4
@mchp_spdiftx_interrupt._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.5, i32 262, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"overflow detected\0A\00", [45 x i8] zeroinitializer }, align 32
@mchp_spdiftx_interrupt._entry_ptr.24 = internal global ptr @mchp_spdiftx_interrupt._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mchp-spdiftx\00", [19 x i8] zeroinitializer }, align 32
@mchp_spdiftx_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mchp_spdiftx_dai_startup, ptr @mchp_spdiftx_dai_shutdown, ptr @mchp_spdiftx_hw_params, ptr @mchp_spdiftx_hw_free, ptr null, ptr @mchp_spdiftx_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"S/PDIF Playback\00", [16 x i8] zeroinitializer }, align 32
@mchp_spdiftx_dai_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.5, i32 721, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to enable the peripheral clock: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mchp_spdiftx_dai_probe\00", [41 x i8] zeroinitializer }, align 32
@mchp_spdiftx_dai_probe._entry_ptr = internal global ptr @mchp_spdiftx_dai_probe._entry, section ".printk_index", align 4
@mchp_spdiftx_ctrls = internal global { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.29, i32 0, i32 7, i32 0, ptr @mchp_spdiftx_info, ptr @mchp_spdiftx_cs_get, ptr @mchp_spdiftx_cs_put, %union.anon.86 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.30, i32 0, i32 1, i32 4, ptr @mchp_spdiftx_info, ptr @mchp_spdiftx_cs_mask, ptr null, %union.anon.86 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.31, i32 0, i32 3, i32 0, ptr @mchp_spdiftx_info, ptr @mchp_spdiftx_subcode_get, ptr @mchp_spdiftx_subcode_put, %union.anon.86 zeroinitializer, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 Playback Default\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IEC958 Playback Mask\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"IEC958 Subcode Playback Default\00", [32 x i8] zeroinitializer }, align 32
@mchp_spdiftx_hw_params.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.33, ptr @.str.5, ptr @.str.34, i8 0, i8 91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_soc_mchp_spdiftx\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mchp_spdiftx_hw_params\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s() rate=%u format=%#x width=%u channels=%u\0A\00", [50 x i8] zeroinitializer }, align 32
@mchp_spdiftx_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.5, i32 368, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Capture is not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@mchp_spdiftx_hw_params._entry_ptr = internal global ptr @mchp_spdiftx_hw_params._entry, section ".printk_index", align 4
@mchp_spdiftx_hw_params._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.33, ptr @.str.5, i32 375, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PCM already running\0A\00", [43 x i8] zeroinitializer }, align 32
@mchp_spdiftx_hw_params._entry_ptr.38 = internal global ptr @mchp_spdiftx_hw_params._entry.36, section ".printk_index", align 4
@mchp_spdiftx_hw_params._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.33, ptr @.str.5, i32 393, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unsupported number of channels: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@mchp_spdiftx_hw_params._entry_ptr.41 = internal global ptr @mchp_spdiftx_hw_params._entry.39, section ".printk_index", align 4
@mchp_spdiftx_hw_params._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.33, ptr @.str.5, i32 440, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unsupported PCM format: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@mchp_spdiftx_hw_params._entry_ptr.44 = internal global ptr @mchp_spdiftx_hw_params._entry.42, section ".printk_index", align 4
@mchp_spdiftx_hw_params._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.33, ptr @.str.5, i32 484, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unsupported sample frequency: %u\0A\00", [62 x i8] zeroinitializer }, align 32
@mchp_spdiftx_hw_params._entry_ptr.47 = internal global ptr @mchp_spdiftx_hw_params._entry.45, section ".printk_index", align 4
@mchp_spdiftx_hw_params._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.33, ptr @.str.5, i32 500, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"unable to change gclk rate to: rate %u * ratio %u\0A\00", [45 x i8] zeroinitializer }, align 32
@mchp_spdiftx_hw_params._entry_ptr.50 = internal global ptr @mchp_spdiftx_hw_params._entry.48, section ".printk_index", align 4
@mchp_spdiftx_hw_params._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.33, ptr @.str.5, i32 505, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to enable gclk: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mchp_spdiftx_hw_params._entry_ptr.53 = internal global ptr @mchp_spdiftx_hw_params._entry.51, section ".printk_index", align 4
@mchp_spdiftx_hw_params.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.33, ptr @.str.5, ptr @.str.54, i8 0, i8 127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s(): GCLK set to %d\0A\00", [42 x i8] zeroinitializer }, align 32
@mchp_spdiftx_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.5, i32 345, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to disable TX: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mchp_spdiftx_trigger\00", [43 x i8] zeroinitializer }, align 32
@mchp_spdiftx_trigger._entry_ptr = internal global ptr @mchp_spdiftx_trigger._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [19 x i64] [i64 17, i64 32, i64 0, i64 1, i64 3, i64 5, i64 6, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37]
@__sancov_gen_cov_switch_values.57 = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 6, i64 7, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.59 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 2, i64 3, i64 6, i64 7, i64 10, i64 11, i64 32, i64 33, i64 36, i64 37, i64 40, i64 41]
@__sancov_gen_cov_switch_values.60 = internal global [15 x i64] [i64 13, i64 32, i64 8000, i64 11025, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 64000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.61 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.62 = private unnamed_addr constant [20 x i8] c"mchp_spdiftx_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 858, i32 31 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 861, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant [20 x i8] c"mchp_spdiftx_dt_ids\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 759, i32 34 }
@___asan_gen_.71 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [27 x i8] c"mchp_spdiftx_regmap_config\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 170, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 794, i32 11 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 810, i32 39 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 813, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 819, i32 39 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 822, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 828, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 843, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [23 x i8] c"mchp_spdiftx_component\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 755, i32 46 }
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"mchp_spdiftx_dai\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 741, i32 34 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 851, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 257, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 262, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 756, i32 11 }
@___asan_gen_.155 = private unnamed_addr constant [21 x i8] c"mchp_spdiftx_dai_ops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 537, i32 37 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 746, i32 18 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 720, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant [19 x i8] c"mchp_spdiftx_ctrls\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 681, i32 32 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 685, i32 11 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 694, i32 11 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 703, i32 11 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 363, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 368, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 375, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 392, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 439, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 483, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 498, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 505, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 509, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.243 = private constant [34 x i8] c"../sound/soc/atmel/mchp-spdiftx.c\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 345, i32 3 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_mchp_spdiftx_driver_exit, ptr @__initcall__kmod_snd_soc_mchp_spdiftx__242_866_mchp_spdiftx_driver_init6, ptr @mchp_spdiftx_dai_probe._entry, ptr @mchp_spdiftx_dai_probe._entry_ptr, ptr @mchp_spdiftx_driver_exit, ptr @mchp_spdiftx_hw_params._entry, ptr @mchp_spdiftx_hw_params._entry.36, ptr @mchp_spdiftx_hw_params._entry.39, ptr @mchp_spdiftx_hw_params._entry.42, ptr @mchp_spdiftx_hw_params._entry.45, ptr @mchp_spdiftx_hw_params._entry.48, ptr @mchp_spdiftx_hw_params._entry.51, ptr @mchp_spdiftx_hw_params._entry_ptr, ptr @mchp_spdiftx_hw_params._entry_ptr.38, ptr @mchp_spdiftx_hw_params._entry_ptr.41, ptr @mchp_spdiftx_hw_params._entry_ptr.44, ptr @mchp_spdiftx_hw_params._entry_ptr.47, ptr @mchp_spdiftx_hw_params._entry_ptr.50, ptr @mchp_spdiftx_hw_params._entry_ptr.53, ptr @mchp_spdiftx_interrupt._entry, ptr @mchp_spdiftx_interrupt._entry.22, ptr @mchp_spdiftx_interrupt._entry_ptr, ptr @mchp_spdiftx_interrupt._entry_ptr.24, ptr @mchp_spdiftx_probe._entry, ptr @mchp_spdiftx_probe._entry.13, ptr @mchp_spdiftx_probe._entry.16, ptr @mchp_spdiftx_probe._entry.9, ptr @mchp_spdiftx_probe._entry_ptr, ptr @mchp_spdiftx_probe._entry_ptr.11, ptr @mchp_spdiftx_probe._entry_ptr.15, ptr @mchp_spdiftx_probe._entry_ptr.18, ptr @mchp_spdiftx_trigger._entry, ptr @mchp_spdiftx_trigger._entry_ptr, ptr @mchp_spdiftx_driver, ptr @.str, ptr @mchp_spdiftx_dt_ids, ptr @mchp_spdiftx_probe._key, ptr @mchp_spdiftx_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @mchp_spdiftx_probe.__key, ptr @.str.12, ptr @.str.14, ptr @mchp_spdiftx_component, ptr @mchp_spdiftx_dai, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @mchp_spdiftx_dai_ops, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @mchp_spdiftx_ctrls, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdiftx_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdiftx_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdiftx_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdiftx_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdiftx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdiftx_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdiftx_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdiftx_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdiftx_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdiftx_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdiftx_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdiftx_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdiftx_interrupt._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdiftx_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdiftx_dai_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdiftx_ctrls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdiftx_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdiftx_hw_params._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdiftx_hw_params._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdiftx_hw_params._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdiftx_hw_params._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdiftx_hw_params._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdiftx_hw_params._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdiftx_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_spdiftx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mchp_spdiftx_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mchp_spdiftx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @mchp_spdiftx_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_spdiftx_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %mem = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mem) #10
  %2 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %mem, align 4, !annotation !131
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 156, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_match_node(ptr noundef nonnull @mchp_spdiftx_dt_ids, ptr noundef %1) #10
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr inbounds %struct.of_device_id, ptr %call3, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %caps = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %call.i, i32 0, i32 7
  %5 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %caps, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %call7 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %mem) #10
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %call13 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call7, ptr noundef nonnull @mchp_spdiftx_regmap_config, ptr noundef nonnull @mchp_spdiftx_probe._key, ptr noundef nonnull @.str.1) #10
  %cmp.i132 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %call18 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %if.end17.cleanup_crit_edge, label %if.end20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end20.dev_name.exit_crit_edge

if.end20.dev_name.exit_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end20.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %if.end20.dev_name.exit_crit_edge ]
  %call.i133 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call18, ptr noundef nonnull @mchp_spdiftx_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %tobool25.not = icmp eq i32 %call.i133, 0
  br i1 %tobool25.not, label %if.end27, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %dev_name.exit
  %call29 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  %pclk = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call29, ptr %pclk, align 4
  %cmp.i134 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i134, label %if.then32, label %if.end36

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %call29 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %13) #13
  br label %cleanup

if.end36:                                         ; preds = %if.end27
  %call38 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.8) #10
  %gclk = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %gclk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call38, ptr %gclk, align 4
  %cmp.i135 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i135, label %if.then41, label %if.end48

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %call38 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %15) #13
  br label %cleanup

if.end48:                                         ; preds = %if.end36
  %lock = getelementptr inbounds %struct.mchp_spdiftx_mixer_control, ptr %call.i, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @mchp_spdiftx_probe.__key, i16 noundef signext 3) #10
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 4, ptr %call.i, align 4
  %dev54 = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %dev54 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %dev54, align 4
  %regmap55 = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %regmap55 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call13, ptr %regmap55, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %20 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mem, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add = add i32 %23, 12
  %playback = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %playback to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add, ptr %playback, align 4
  %addr_width = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %call.i, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %addr_width to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %addr_width, align 4
  %call58 = call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %dev, ptr noundef null, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end65, label %do.end63

do.end63:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call58) #13
  br label %cleanup

if.end65:                                         ; preds = %if.end48
  %call67 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @mchp_spdiftx_component, ptr noundef nonnull @mchp_spdiftx_dai, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end65.cleanup_crit_edge, label %do.end72

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end72:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call67) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end72, %if.end65.cleanup_crit_edge, %do.end63, %if.then41, %if.then32, %dev_name.exit.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then15, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then9 ], [ %7, %if.then15 ], [ %13, %if.then32 ], [ %15, %if.then41 ], [ %call58, %do.end63 ], [ %call67, %do.end72 ], [ -12, %entry.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ %call.i133, %dev_name.exit.cleanup_crit_edge ], [ 0, %if.end65.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_spdiftx_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %sr = alloca i32, align 4
  %imr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sr) #10
  %0 = ptrtoint ptr %sr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sr, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %imr) #10
  %1 = ptrtoint ptr %imr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %imr, align 4, !annotation !131
  %regmap = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %dev_id, i32 0, i32 3
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef 32, ptr noundef nonnull %sr) #10
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %5, i32 noundef 28, ptr noundef nonnull %imr) #10
  %6 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sr, align 4
  %8 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %imr, align 4
  %and = and i32 %9, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %and, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %do.end

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev6 = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %dev_id, i32 0, i32 2
  %10 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev6, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.19) #13
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.end.if.end7_crit_edge
  %idr.0 = phi i32 [ 16, %do.end ], [ 0, %if.end.if.end7_crit_edge ]
  %and8 = and i32 %and, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end16_crit_edge, label %do.end13

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %dev14 = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %dev_id, i32 0, i32 2
  %12 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev14, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.23) #13
  %or15 = or i32 %idr.0, 32
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %if.end7.if.end16_crit_edge
  %idr.1 = phi i32 [ %or15, %do.end13 ], [ %idr.0, %if.end7.if.end16_crit_edge ]
  %and17 = and i32 %and, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end22_crit_edge, label %if.then19

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.mchp_spdiftx_mixer_control, ptr %dev_id, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %lock) #10
  call fastcc void @mchp_spdiftx_user_data_write(ptr noundef %dev_id)
  call void @_raw_spin_unlock(ptr noundef %lock) #10
  %or21 = or i32 %idr.1, 128
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end16.if.end22_crit_edge
  %idr.2 = phi i32 [ %or21, %if.then19 ], [ %idr.1, %if.end16.if.end22_crit_edge ]
  %and23 = and i32 %and, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end29_crit_edge, label %if.then25

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %lock26 = getelementptr inbounds %struct.mchp_spdiftx_mixer_control, ptr %dev_id, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %lock26) #10
  call fastcc void @mchp_spdiftx_channel_status_write(ptr noundef %dev_id)
  call void @_raw_spin_unlock(ptr noundef %lock26) #10
  %or28 = or i32 %idr.2, 64
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end22.if.end29_crit_edge
  %idr.3 = phi i32 [ %or28, %if.then25 ], [ %idr.2, %if.end22.if.end29_crit_edge ]
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call31 = call i32 @regmap_write(ptr noundef %15, i32 noundef 24, i32 noundef %idr.3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end29 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %imr) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sr) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mchp_spdiftx_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.fshl.i32(i32 %reg, i32 %reg, i32 30)
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %0, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 1, label %entry.return_crit_edge1
    i32 3, label %entry.return_crit_edge2
    i32 5, label %entry.return_crit_edge3
    i32 6, label %entry.return_crit_edge4
    i32 20, label %entry.return_crit_edge5
    i32 21, label %entry.return_crit_edge6
    i32 22, label %entry.return_crit_edge7
    i32 23, label %entry.return_crit_edge8
    i32 24, label %entry.return_crit_edge9
    i32 25, label %entry.return_crit_edge10
    i32 32, label %entry.return_crit_edge11
    i32 33, label %entry.return_crit_edge12
    i32 34, label %entry.return_crit_edge13
    i32 35, label %entry.return_crit_edge14
    i32 36, label %entry.return_crit_edge15
    i32 37, label %entry.return_crit_edge16
  ]

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mchp_spdiftx_readable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -4
  %1 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 30)
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %1, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 6, label %entry.return_crit_edge1
    i32 7, label %entry.return_crit_edge2
    i32 19, label %entry.return_crit_edge3
    i32 20, label %entry.return_crit_edge4
    i32 21, label %entry.return_crit_edge5
    i32 22, label %entry.return_crit_edge6
    i32 23, label %entry.return_crit_edge7
    i32 24, label %entry.return_crit_edge8
    i32 31, label %entry.return_crit_edge9
    i32 32, label %entry.return_crit_edge10
    i32 33, label %entry.return_crit_edge11
    i32 34, label %entry.return_crit_edge12
    i32 35, label %entry.return_crit_edge13
    i32 36, label %entry.return_crit_edge14
  ]

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mchp_spdiftx_precious_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %reg)
  %switch.selectcmp.case1 = icmp eq i32 %reg, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %reg)
  %switch.selectcmp.case2 = icmp eq i32 %reg, 32
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  ret i1 %switch.selectcmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mchp_spdiftx_user_data_write(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %dev, i32 0, i32 3
  %arrayidx = getelementptr %struct.mchp_spdiftx_mixer_control, ptr %dev, i32 0, i32 1, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %arrayidx4 = getelementptr %struct.mchp_spdiftx_mixer_control, ptr %dev, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %3 to i32
  %shl6 = shl nuw nsw i32 %conv5, 8
  %or = or i32 %shl6, %conv
  %arrayidx10 = getelementptr %struct.mchp_spdiftx_mixer_control, ptr %dev, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %5 to i32
  %shl12 = shl nuw nsw i32 %conv11, 16
  %or13 = or i32 %or, %shl12
  %arrayidx17 = getelementptr %struct.mchp_spdiftx_mixer_control, ptr %dev, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %7 to i32
  %shl19 = shl nuw i32 %conv18, 24
  %or20 = or i32 %or13, %shl19
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 80, i32 noundef %or20) #10
  %arrayidx.1 = getelementptr %struct.mchp_spdiftx_mixer_control, ptr %dev, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %11 to i32
  %arrayidx4.1 = getelementptr %struct.mchp_spdiftx_mixer_control, ptr %dev, i32 0, i32 1, i32 5
  %12 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.1, align 1
  %conv5.1 = zext i8 %13 to i32
  %shl6.1 = shl nuw nsw i32 %conv5.1, 8
  %or.1 = or i32 %shl6.1, %conv.1
  %arrayidx10.1 = getelementptr %struct.mchp_spdiftx_mixer_control, ptr %dev, i32 0, i32 1, i32 6
  %14 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx10.1, align 1
  %conv11.1 = zext i8 %15 to i32
  %shl12.1 = shl nuw nsw i32 %conv11.1, 16
  %or13.1 = or i32 %or.1, %shl12.1
  %arrayidx17.1 = getelementptr %struct.mchp_spdiftx_mixer_control, ptr %dev, i32 0, i32 1, i32 7
  %16 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx17.1, align 1
  %conv18.1 = zext i8 %17 to i32
  %shl19.1 = shl nuw i32 %conv18.1, 24
  %or20.1 = or i32 %or13.1, %shl19.1
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call.1 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 84, i32 noundef %or20.1) #10
  %arrayidx.2 = getelementptr %struct.mchp_spdiftx_mixer_control, ptr %dev, i32 0, i32 1, i32 8
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %21 to i32
  %arrayidx4.2 = getelementptr %struct.mchp_spdiftx_mixer_control, ptr %dev, i32 0, i32 1, i32 9
  %22 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx4.2, align 1
  %conv5.2 = zext i8 %23 to i32
  %shl6.2 = shl nuw nsw i32 %conv5.2, 8
  %or.2 = or i32 %shl6.2, %conv.2
  %arrayidx10.2 = getelementptr %struct.mchp_spdiftx_mixer_control, ptr %dev, i32 0, i32 1, i32 10
  %24 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx10.2, align 1
  %conv11.2 = zext i8 %25 to i32
  %shl12.2 = shl nuw nsw i32 %conv11.2, 16
  %or13.2 = or i32 %or.2, %shl12.2
  %arrayidx17.2 = getelementptr %struct.mchp_spdiftx_mixer_control, ptr %dev, i32 0, i32 1, i32 11
  %26 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx17.2, align 1
  %conv18.2 = zext i8 %27 to i32
  %shl19.2 = shl nuw i32 %conv18.2, 24
  %or20.2 = or i32 %or13.2, %shl19.2
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call.2 = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 88, i32 noundef %or20.2) #10
  %arrayidx.3 = getelementptr %struct.mchp_spdiftx_mixer_control, ptr %dev, i32 0, i32 1, i32 12
  %30 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %31 to i32
  %arrayidx4.3 = getelementptr %struct.mchp_spdiftx_mixer_control, ptr %dev, i32 0, i32 1, i32 13
  %32 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx4.3, align 1
  %conv5.3 = zext i8 %33 to i32
  %shl6.3 = shl nuw nsw i32 %conv5.3, 8
  %or.3 = or i32 %shl6.3, %conv.3
  %arrayidx10.3 = getelementptr %struct.mchp_spdiftx_mixer_control, ptr %dev, i32 0, i32 1, i32 14
  %34 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx10.3, align 1
  %conv11.3 = zext i8 %35 to i32
  %shl12.3 = shl nuw nsw i32 %conv11.3, 16
  %or13.3 = or i32 %or.3, %shl12.3
  %arrayidx17.3 = getelementptr %struct.mchp_spdiftx_mixer_control, ptr %dev, i32 0, i32 1, i32 15
  %36 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx17.3, align 1
  %conv18.3 = zext i8 %37 to i32
  %shl19.3 = shl nuw i32 %conv18.3, 24
  %or20.3 = or i32 %or13.3, %shl19.3
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %call.3 = tail call i32 @regmap_write(ptr noundef %39, i32 noundef 92, i32 noundef %or20.3) #10
  %arrayidx.4 = getelementptr %struct.mchp_spdiftx_mixer_control, ptr %dev, i32 0, i32 1, i32 16
  %40 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.4, align 1
  %conv.4 = zext i8 %41 to i32
  %arrayidx4.4 = getelementptr %struct.mchp_spdiftx_mixer_control, ptr %dev, i32 0, i32 1, i32 17
  %42 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx4.4, align 1
  %conv5.4 = zext i8 %43 to i32
  %shl6.4 = shl nuw nsw i32 %conv5.4, 8
  %or.4 = or i32 %shl6.4, %conv.4
  %arrayidx10.4 = getelementptr %struct.mchp_spdiftx_mixer_control, ptr %dev, i32 0, i32 1, i32 18
  %44 = ptrtoint ptr %arrayidx10.4 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx10.4, align 1
  %conv11.4 = zext i8 %45 to i32
  %shl12.4 = shl nuw nsw i32 %conv11.4, 16
  %or13.4 = or i32 %or.4, %shl12.4
  %arrayidx17.4 = getelementptr %struct.mchp_spdiftx_mixer_control, ptr %dev, i32 0, i32 1, i32 19
  %46 = ptrtoint ptr %arrayidx17.4 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx17.4, align 1
  %conv18.4 = zext i8 %47 to i32
  %shl19.4 = shl nuw i32 %conv18.4, 24
  %or20.4 = or i32 %or13.4, %shl19.4
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %call.4 = tail call i32 @regmap_write(ptr noundef %49, i32 noundef 96, i32 noundef %or20.4) #10
  %arrayidx.5 = getelementptr %struct.mchp_spdiftx_mixer_control, ptr %dev, i32 0, i32 1, i32 20
  %50 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.5, align 1
  %conv.5 = zext i8 %51 to i32
  %arrayidx4.5 = getelementptr %struct.mchp_spdiftx_mixer_control, ptr %dev, i32 0, i32 1, i32 21
  %52 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx4.5, align 1
  %conv5.5 = zext i8 %53 to i32
  %shl6.5 = shl nuw nsw i32 %conv5.5, 8
  %or.5 = or i32 %shl6.5, %conv.5
  %arrayidx10.5 = getelementptr %struct.mchp_spdiftx_mixer_control, ptr %dev, i32 0, i32 1, i32 22
  %54 = ptrtoint ptr %arrayidx10.5 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx10.5, align 1
  %conv11.5 = zext i8 %55 to i32
  %shl12.5 = shl nuw nsw i32 %conv11.5, 16
  %or13.5 = or i32 %or.5, %shl12.5
  %arrayidx17.5 = getelementptr %struct.mchp_spdiftx_mixer_control, ptr %dev, i32 0, i32 1, i32 23
  %56 = ptrtoint ptr %arrayidx17.5 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx17.5, align 1
  %conv18.5 = zext i8 %57 to i32
  %shl19.5 = shl nuw i32 %conv18.5, 24
  %or20.5 = or i32 %or13.5, %shl19.5
  %58 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap, align 4
  %call.5 = tail call i32 @regmap_write(ptr noundef %59, i32 noundef 100, i32 noundef %or20.5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mchp_spdiftx_channel_status_write(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dev, align 1
  %conv = zext i8 %1 to i32
  %arrayidx4 = getelementptr [24 x i8], ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %3 to i32
  %shl6 = shl nuw nsw i32 %conv5, 8
  %or = or i32 %shl6, %conv
  %arrayidx10 = getelementptr [24 x i8], ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %5 to i32
  %shl12 = shl nuw nsw i32 %conv11, 16
  %or13 = or i32 %or, %shl12
  %arrayidx17 = getelementptr [24 x i8], ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %7 to i32
  %shl19 = shl nuw i32 %conv18, 24
  %or20 = or i32 %or13, %shl19
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 128, i32 noundef %or20) #10
  %arrayidx.1 = getelementptr [24 x i8], ptr %dev, i32 0, i32 4
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %11 to i32
  %arrayidx4.1 = getelementptr [24 x i8], ptr %dev, i32 0, i32 5
  %12 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.1, align 1
  %conv5.1 = zext i8 %13 to i32
  %shl6.1 = shl nuw nsw i32 %conv5.1, 8
  %or.1 = or i32 %shl6.1, %conv.1
  %arrayidx10.1 = getelementptr [24 x i8], ptr %dev, i32 0, i32 6
  %14 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx10.1, align 1
  %conv11.1 = zext i8 %15 to i32
  %shl12.1 = shl nuw nsw i32 %conv11.1, 16
  %or13.1 = or i32 %or.1, %shl12.1
  %arrayidx17.1 = getelementptr [24 x i8], ptr %dev, i32 0, i32 7
  %16 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx17.1, align 1
  %conv18.1 = zext i8 %17 to i32
  %shl19.1 = shl nuw i32 %conv18.1, 24
  %or20.1 = or i32 %or13.1, %shl19.1
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call.1 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 132, i32 noundef %or20.1) #10
  %arrayidx.2 = getelementptr [24 x i8], ptr %dev, i32 0, i32 8
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %21 to i32
  %arrayidx4.2 = getelementptr [24 x i8], ptr %dev, i32 0, i32 9
  %22 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx4.2, align 1
  %conv5.2 = zext i8 %23 to i32
  %shl6.2 = shl nuw nsw i32 %conv5.2, 8
  %or.2 = or i32 %shl6.2, %conv.2
  %arrayidx10.2 = getelementptr [24 x i8], ptr %dev, i32 0, i32 10
  %24 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx10.2, align 1
  %conv11.2 = zext i8 %25 to i32
  %shl12.2 = shl nuw nsw i32 %conv11.2, 16
  %or13.2 = or i32 %or.2, %shl12.2
  %arrayidx17.2 = getelementptr [24 x i8], ptr %dev, i32 0, i32 11
  %26 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx17.2, align 1
  %conv18.2 = zext i8 %27 to i32
  %shl19.2 = shl nuw i32 %conv18.2, 24
  %or20.2 = or i32 %or13.2, %shl19.2
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call.2 = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 136, i32 noundef %or20.2) #10
  %arrayidx.3 = getelementptr [24 x i8], ptr %dev, i32 0, i32 12
  %30 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %31 to i32
  %arrayidx4.3 = getelementptr [24 x i8], ptr %dev, i32 0, i32 13
  %32 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx4.3, align 1
  %conv5.3 = zext i8 %33 to i32
  %shl6.3 = shl nuw nsw i32 %conv5.3, 8
  %or.3 = or i32 %shl6.3, %conv.3
  %arrayidx10.3 = getelementptr [24 x i8], ptr %dev, i32 0, i32 14
  %34 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx10.3, align 1
  %conv11.3 = zext i8 %35 to i32
  %shl12.3 = shl nuw nsw i32 %conv11.3, 16
  %or13.3 = or i32 %or.3, %shl12.3
  %arrayidx17.3 = getelementptr [24 x i8], ptr %dev, i32 0, i32 15
  %36 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx17.3, align 1
  %conv18.3 = zext i8 %37 to i32
  %shl19.3 = shl nuw i32 %conv18.3, 24
  %or20.3 = or i32 %or13.3, %shl19.3
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %call.3 = tail call i32 @regmap_write(ptr noundef %39, i32 noundef 140, i32 noundef %or20.3) #10
  %arrayidx.4 = getelementptr [24 x i8], ptr %dev, i32 0, i32 16
  %40 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.4, align 1
  %conv.4 = zext i8 %41 to i32
  %arrayidx4.4 = getelementptr [24 x i8], ptr %dev, i32 0, i32 17
  %42 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx4.4, align 1
  %conv5.4 = zext i8 %43 to i32
  %shl6.4 = shl nuw nsw i32 %conv5.4, 8
  %or.4 = or i32 %shl6.4, %conv.4
  %arrayidx10.4 = getelementptr [24 x i8], ptr %dev, i32 0, i32 18
  %44 = ptrtoint ptr %arrayidx10.4 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx10.4, align 1
  %conv11.4 = zext i8 %45 to i32
  %shl12.4 = shl nuw nsw i32 %conv11.4, 16
  %or13.4 = or i32 %or.4, %shl12.4
  %arrayidx17.4 = getelementptr [24 x i8], ptr %dev, i32 0, i32 19
  %46 = ptrtoint ptr %arrayidx17.4 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx17.4, align 1
  %conv18.4 = zext i8 %47 to i32
  %shl19.4 = shl nuw i32 %conv18.4, 24
  %or20.4 = or i32 %or13.4, %shl19.4
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %call.4 = tail call i32 @regmap_write(ptr noundef %49, i32 noundef 144, i32 noundef %or20.4) #10
  %arrayidx.5 = getelementptr [24 x i8], ptr %dev, i32 0, i32 20
  %50 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.5, align 1
  %conv.5 = zext i8 %51 to i32
  %arrayidx4.5 = getelementptr [24 x i8], ptr %dev, i32 0, i32 21
  %52 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx4.5, align 1
  %conv5.5 = zext i8 %53 to i32
  %shl6.5 = shl nuw nsw i32 %conv5.5, 8
  %or.5 = or i32 %shl6.5, %conv.5
  %arrayidx10.5 = getelementptr [24 x i8], ptr %dev, i32 0, i32 22
  %54 = ptrtoint ptr %arrayidx10.5 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx10.5, align 1
  %conv11.5 = zext i8 %55 to i32
  %shl12.5 = shl nuw nsw i32 %conv11.5, 16
  %or13.5 = or i32 %or.5, %shl12.5
  %arrayidx17.5 = getelementptr [24 x i8], ptr %dev, i32 0, i32 23
  %56 = ptrtoint ptr %arrayidx17.5 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx17.5, align 1
  %conv18.5 = zext i8 %57 to i32
  %shl19.5 = shl nuw i32 %conv18.5, 24
  %or20.5 = or i32 %or13.5, %shl19.5
  %58 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap, align 4
  %call.5 = tail call i32 @regmap_write(ptr noundef %59, i32 noundef 148, i32 noundef %or20.5) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_spdiftx_dai_probe(ptr noundef %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %playback = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %3, i32 0, i32 1
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %4 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %playback, ptr %playback_dma_data.i, align 4
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %5 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %capture_dma_data.i, align 4
  %pclk = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %7) #10
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %dev2 = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.27, i32 noundef %retval.0.i.ph) #13
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @snd_soc_add_dai_controls(ptr noundef %dai, ptr noundef nonnull @mchp_spdiftx_ctrls, i32 noundef 3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_spdiftx_dai_remove(ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %pclk = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_dai_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mchp_spdiftx_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_spdiftx_cs_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uvalue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.mchp_spdiftx_mixer_control, ptr %5, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uvalue, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %value, ptr %5, i32 24)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_spdiftx_cs_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %uvalue) #2 align 64 {
entry:
  %mr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.mchp_spdiftx_mixer_control, ptr %5, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uvalue, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %value, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp11.not = icmp ne i8 %7, %9
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %5, align 1
  %arrayidx.1 = getelementptr [24 x i8], ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.1, align 1
  %arrayidx9.1 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx9.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %14)
  %cmp11.not.1 = icmp ne i8 %12, %14
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx.1, align 1
  %arrayidx.2 = getelementptr [24 x i8], ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.2, align 1
  %arrayidx9.2 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx9.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp11.not.2 = icmp ne i8 %17, %19
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx.2, align 1
  %arrayidx.3 = getelementptr [24 x i8], ptr %5, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.3, align 1
  %arrayidx9.3 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx9.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %24)
  %cmp11.not.3 = icmp ne i8 %22, %24
  %25 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx.3, align 1
  %arrayidx.4 = getelementptr [24 x i8], ptr %5, i32 0, i32 4
  %26 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.4, align 1
  %arrayidx9.4 = getelementptr [24 x i8], ptr %value, i32 0, i32 4
  %28 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx9.4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %29)
  %cmp11.not.4 = icmp ne i8 %27, %29
  %30 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx.4, align 1
  %arrayidx.5 = getelementptr [24 x i8], ptr %5, i32 0, i32 5
  %31 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.5, align 1
  %arrayidx9.5 = getelementptr [24 x i8], ptr %value, i32 0, i32 5
  %33 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx9.5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %34)
  %cmp11.not.5 = icmp ne i8 %32, %34
  %35 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx.5, align 1
  %arrayidx.6 = getelementptr [24 x i8], ptr %5, i32 0, i32 6
  %36 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.6, align 1
  %arrayidx9.6 = getelementptr [24 x i8], ptr %value, i32 0, i32 6
  %38 = ptrtoint ptr %arrayidx9.6 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx9.6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %39)
  %cmp11.not.6 = icmp ne i8 %37, %39
  %40 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %arrayidx.6, align 1
  %arrayidx.7 = getelementptr [24 x i8], ptr %5, i32 0, i32 7
  %41 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.7, align 1
  %arrayidx9.7 = getelementptr [24 x i8], ptr %value, i32 0, i32 7
  %43 = ptrtoint ptr %arrayidx9.7 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx9.7, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %44)
  %cmp11.not.7 = icmp ne i8 %42, %44
  %45 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx.7, align 1
  %arrayidx.8 = getelementptr [24 x i8], ptr %5, i32 0, i32 8
  %46 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.8, align 1
  %arrayidx9.8 = getelementptr %struct.snd_ctl_elem_value, ptr %uvalue, i32 0, i32 2, i32 0, i32 0, i32 1
  %48 = ptrtoint ptr %arrayidx9.8 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx9.8, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %47, i8 %49)
  %cmp11.not.8 = icmp ne i8 %47, %49
  %50 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx.8, align 1
  %arrayidx.9 = getelementptr [24 x i8], ptr %5, i32 0, i32 9
  %51 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.9, align 1
  %arrayidx9.9 = getelementptr [24 x i8], ptr %value, i32 0, i32 9
  %53 = ptrtoint ptr %arrayidx9.9 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx9.9, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %52, i8 %54)
  %cmp11.not.9 = icmp ne i8 %52, %54
  %55 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %arrayidx.9, align 1
  %arrayidx.10 = getelementptr [24 x i8], ptr %5, i32 0, i32 10
  %56 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.10, align 1
  %arrayidx9.10 = getelementptr [24 x i8], ptr %value, i32 0, i32 10
  %58 = ptrtoint ptr %arrayidx9.10 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx9.10, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %59)
  %cmp11.not.10 = icmp ne i8 %57, %59
  %60 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %arrayidx.10, align 1
  %arrayidx.11 = getelementptr [24 x i8], ptr %5, i32 0, i32 11
  %61 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.11, align 1
  %arrayidx9.11 = getelementptr [24 x i8], ptr %value, i32 0, i32 11
  %63 = ptrtoint ptr %arrayidx9.11 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx9.11, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %62, i8 %64)
  %cmp11.not.11 = icmp ne i8 %62, %64
  %65 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %arrayidx.11, align 1
  %arrayidx.12 = getelementptr [24 x i8], ptr %5, i32 0, i32 12
  %66 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.12, align 1
  %arrayidx9.12 = getelementptr [24 x i8], ptr %value, i32 0, i32 12
  %68 = ptrtoint ptr %arrayidx9.12 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx9.12, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %69)
  %cmp11.not.12 = icmp ne i8 %67, %69
  %70 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %arrayidx.12, align 1
  %arrayidx.13 = getelementptr [24 x i8], ptr %5, i32 0, i32 13
  %71 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.13, align 1
  %arrayidx9.13 = getelementptr [24 x i8], ptr %value, i32 0, i32 13
  %73 = ptrtoint ptr %arrayidx9.13 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx9.13, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %72, i8 %74)
  %cmp11.not.13 = icmp ne i8 %72, %74
  %75 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %arrayidx.13, align 1
  %arrayidx.14 = getelementptr [24 x i8], ptr %5, i32 0, i32 14
  %76 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.14, align 1
  %arrayidx9.14 = getelementptr [24 x i8], ptr %value, i32 0, i32 14
  %78 = ptrtoint ptr %arrayidx9.14 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx9.14, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %77, i8 %79)
  %cmp11.not.14 = icmp ne i8 %77, %79
  %80 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %arrayidx.14, align 1
  %arrayidx.15 = getelementptr [24 x i8], ptr %5, i32 0, i32 15
  %81 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx.15, align 1
  %arrayidx9.15 = getelementptr [24 x i8], ptr %value, i32 0, i32 15
  %83 = ptrtoint ptr %arrayidx9.15 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx9.15, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %82, i8 %84)
  %cmp11.not.15 = icmp ne i8 %82, %84
  %85 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %arrayidx.15, align 1
  %arrayidx.16 = getelementptr [24 x i8], ptr %5, i32 0, i32 16
  %86 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx.16, align 1
  %arrayidx9.16 = getelementptr %struct.snd_ctl_elem_value, ptr %uvalue, i32 0, i32 2, i32 0, i32 0, i32 2
  %88 = ptrtoint ptr %arrayidx9.16 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx9.16, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %87, i8 %89)
  %cmp11.not.16 = icmp ne i8 %87, %89
  %90 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %arrayidx.16, align 1
  %arrayidx.17 = getelementptr [24 x i8], ptr %5, i32 0, i32 17
  %91 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.17, align 1
  %arrayidx9.17 = getelementptr [24 x i8], ptr %value, i32 0, i32 17
  %93 = ptrtoint ptr %arrayidx9.17 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx9.17, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %92, i8 %94)
  %cmp11.not.17 = icmp ne i8 %92, %94
  %95 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %arrayidx.17, align 1
  %arrayidx.18 = getelementptr [24 x i8], ptr %5, i32 0, i32 18
  %96 = ptrtoint ptr %arrayidx.18 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx.18, align 1
  %arrayidx9.18 = getelementptr [24 x i8], ptr %value, i32 0, i32 18
  %98 = ptrtoint ptr %arrayidx9.18 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx9.18, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %97, i8 %99)
  %cmp11.not.18 = icmp ne i8 %97, %99
  %100 = ptrtoint ptr %arrayidx.18 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %arrayidx.18, align 1
  %arrayidx.19 = getelementptr [24 x i8], ptr %5, i32 0, i32 19
  %101 = ptrtoint ptr %arrayidx.19 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.19, align 1
  %arrayidx9.19 = getelementptr [24 x i8], ptr %value, i32 0, i32 19
  %103 = ptrtoint ptr %arrayidx9.19 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx9.19, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %102, i8 %104)
  %cmp11.not.19 = icmp ne i8 %102, %104
  %105 = ptrtoint ptr %arrayidx.19 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %arrayidx.19, align 1
  %arrayidx.20 = getelementptr [24 x i8], ptr %5, i32 0, i32 20
  %106 = ptrtoint ptr %arrayidx.20 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx.20, align 1
  %arrayidx9.20 = getelementptr [24 x i8], ptr %value, i32 0, i32 20
  %108 = ptrtoint ptr %arrayidx9.20 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx9.20, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %107, i8 %109)
  %cmp11.not.20 = icmp ne i8 %107, %109
  %110 = ptrtoint ptr %arrayidx.20 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %arrayidx.20, align 1
  %arrayidx.21 = getelementptr [24 x i8], ptr %5, i32 0, i32 21
  %111 = ptrtoint ptr %arrayidx.21 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx.21, align 1
  %arrayidx9.21 = getelementptr [24 x i8], ptr %value, i32 0, i32 21
  %113 = ptrtoint ptr %arrayidx9.21 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx9.21, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %112, i8 %114)
  %cmp11.not.21 = icmp ne i8 %112, %114
  %115 = ptrtoint ptr %arrayidx.21 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %arrayidx.21, align 1
  %arrayidx.22 = getelementptr [24 x i8], ptr %5, i32 0, i32 22
  %116 = ptrtoint ptr %arrayidx.22 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx.22, align 1
  %arrayidx9.22 = getelementptr [24 x i8], ptr %value, i32 0, i32 22
  %118 = ptrtoint ptr %arrayidx9.22 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx9.22, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %117, i8 %119)
  %cmp11.not.22 = icmp ne i8 %117, %119
  %120 = ptrtoint ptr %arrayidx.22 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %arrayidx.22, align 1
  %arrayidx.23 = getelementptr [24 x i8], ptr %5, i32 0, i32 23
  %121 = ptrtoint ptr %arrayidx.23 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx.23, align 1
  %arrayidx9.23 = getelementptr [24 x i8], ptr %value, i32 0, i32 23
  %123 = ptrtoint ptr %arrayidx9.23 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx9.23, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %122, i8 %124)
  %cmp11.not.23 = icmp ne i8 %122, %124
  %125 = select i1 %cmp11.not.23, i1 true, i1 %cmp11.not.22
  %126 = select i1 %125, i1 true, i1 %cmp11.not.21
  %127 = select i1 %126, i1 true, i1 %cmp11.not.20
  %128 = select i1 %127, i1 true, i1 %cmp11.not.19
  %129 = select i1 %128, i1 true, i1 %cmp11.not.18
  %130 = select i1 %129, i1 true, i1 %cmp11.not.17
  %131 = select i1 %130, i1 true, i1 %cmp11.not.16
  %132 = select i1 %131, i1 true, i1 %cmp11.not.15
  %133 = select i1 %132, i1 true, i1 %cmp11.not.14
  %134 = select i1 %133, i1 true, i1 %cmp11.not.13
  %135 = select i1 %134, i1 true, i1 %cmp11.not.12
  %136 = select i1 %135, i1 true, i1 %cmp11.not.11
  %137 = select i1 %136, i1 true, i1 %cmp11.not.10
  %138 = select i1 %137, i1 true, i1 %cmp11.not.9
  %139 = select i1 %138, i1 true, i1 %cmp11.not.8
  %140 = select i1 %139, i1 true, i1 %cmp11.not.7
  %141 = select i1 %140, i1 true, i1 %cmp11.not.6
  %142 = select i1 %141, i1 true, i1 %cmp11.not.5
  %143 = select i1 %142, i1 true, i1 %cmp11.not.4
  %144 = select i1 %143, i1 true, i1 %cmp11.not.3
  %145 = select i1 %144, i1 true, i1 %cmp11.not.2
  %146 = select i1 %145, i1 true, i1 %cmp11.not.1
  %narrow = select i1 %146, i1 true, i1 %cmp11.not
  %147 = ptrtoint ptr %arrayidx.23 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %124, ptr %arrayidx.23, align 1
  br i1 %narrow, label %if.then18, label %entry.if.end24_crit_edge

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then18:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mr.i) #10
  %148 = ptrtoint ptr %mr.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 -1, ptr %mr.i, align 4, !annotation !131
  %regmap.i = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %5, i32 0, i32 3
  %149 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %150, i32 noundef 4, ptr noundef nonnull %mr.i) #10
  %151 = ptrtoint ptr %mr.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %mr.i, align 4
  %and.i = and i32 %152, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool20.not = icmp eq i32 %and.i, 0
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %153 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %regmap.i, align 4
  %call22 = call i32 @regmap_write(ptr noundef %154, i32 noundef 20, i32 noundef 64) #10
  br label %if.end24

if.else:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @mchp_spdiftx_channel_status_write(ptr noundef %5)
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then21, %entry.if.end24_crit_edge
  %spec.select.23 = zext i1 %narrow to i32
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret i32 %spec.select.23
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mchp_spdiftx_cs_mask(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uvalue) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uvalue, i32 0, i32 2
  %0 = call ptr @memset(ptr %value, i32 255, i32 24)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_spdiftx_subcode_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uvalue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.mchp_spdiftx_mixer_control, ptr %5, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %subcode = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uvalue, i32 0, i32 2, i32 0, i32 0, i32 3
  %user_data = getelementptr inbounds %struct.mchp_spdiftx_mixer_control, ptr %5, i32 0, i32 1
  %6 = call ptr @memcpy(ptr %subcode, ptr %user_data, i32 24)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_spdiftx_subcode_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %uvalue) #2 align 64 {
entry:
  %mr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.mchp_spdiftx_mixer_control, ptr %5, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %subcode = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uvalue, i32 0, i32 2, i32 0, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.040 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %changed.039 = phi i32 [ 0, %entry ], [ %spec.select, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mchp_spdiftx_mixer_control, ptr %5, i32 0, i32 1, i32 %i.040
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %arrayidx9 = getelementptr [147 x i8], ptr %subcode, i32 0, i32 %i.040
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp11.not = icmp eq i8 %7, %9
  %spec.select = select i1 %cmp11.not, i32 %changed.039, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool.not = icmp eq i32 %spec.select, 0
  br i1 %tobool.not, label %for.end.if.end24_crit_edge, label %if.then18

for.end.if.end24_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then18:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mr.i) #10
  %11 = ptrtoint ptr %mr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %mr.i, align 4, !annotation !131
  %regmap.i = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %13, i32 noundef 4, ptr noundef nonnull %mr.i) #10
  %14 = ptrtoint ptr %mr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mr.i, align 4
  %and.i = and i32 %15, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool20.not = icmp eq i32 %and.i, 0
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %call22 = call i32 @regmap_write(ptr noundef %17, i32 noundef 20, i32 noundef 128) #10
  br label %if.end24

if.else:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @mchp_spdiftx_user_data_write(ptr noundef %5)
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then21, %for.end.if.end24_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_spdiftx_dai_startup(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 0, i32 noundef 3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mchp_spdiftx_dai_shutdown(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 24, i32 noundef -1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_spdiftx_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %mr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mr) #10
  %4 = ptrtoint ptr %mr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %mr, align 4, !annotation !131
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %6, %entry.if.then.i.i.i_crit_edge ], [ %9, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %7 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #10, !range !132
  %add.i.i.i = or i32 %7, %i.09.lcssa.i.i.i
  br label %params_physical_width.exit

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.1.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_physical_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

for.inc.i.i.i.params_physical_width.exit_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_physical_width.exit

params_physical_width.exit:                       ; preds = %for.inc.i.i.i.params_physical_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_physical_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_physical_width(i32 noundef %retval.0.i.i.i) #10
  %div = sdiv i32 %call1.i, 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mchp_spdiftx_hw_params.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mchp_spdiftx_hw_params, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !133

if.then:                                          ; preds = %params_physical_width.exit
  %dev5 = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev5, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  %14 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %params_format.exit

for.inc.i.i:                                      ; preds = %if.then
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.1.i.i = icmp eq i32 %17, 0
  %18 = tail call i32 @llvm.cttz.i32(i32 %17, i1 true) #10, !range !132
  %add.i.i327 = or i32 %18, 32
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_width.exit_crit_edge, label %for.inc.i.i.if.then.i.i.i281_crit_edge

for.inc.i.i.if.then.i.i.i281_crit_edge:           ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i281

for.inc.i.i.params_width.exit_crit_edge:          ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_width.exit

params_format.exit:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %19 = tail call i32 @llvm.cttz.i32(i32 %15, i1 true) #10, !range !132
  br label %if.then.i.i.i281

if.then.i.i.i281:                                 ; preds = %params_format.exit, %for.inc.i.i.if.then.i.i.i281_crit_edge
  %.pre-phi = phi i32 [ %19, %params_format.exit ], [ %18, %for.inc.i.i.if.then.i.i.i281_crit_edge ]
  %retval.0.i.i321 = phi i32 [ %19, %params_format.exit ], [ %add.i.i327, %for.inc.i.i.if.then.i.i.i281_crit_edge ]
  %i.09.lcssa.i.i.i278 = phi i32 [ 0, %params_format.exit ], [ 32, %for.inc.i.i.if.then.i.i.i281_crit_edge ]
  %add.i.i.i280 = or i32 %.pre-phi, %i.09.lcssa.i.i.i278
  br label %params_width.exit

params_width.exit:                                ; preds = %if.then.i.i.i281, %for.inc.i.i.params_width.exit_crit_edge
  %retval.0.i.i322 = phi i32 [ %retval.0.i.i321, %if.then.i.i.i281 ], [ 0, %for.inc.i.i.params_width.exit_crit_edge ]
  %retval.0.i.i.i285 = phi i32 [ %add.i.i.i280, %if.then.i.i.i281 ], [ 0, %for.inc.i.i.params_width.exit_crit_edge ]
  %call1.i286 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i285) #10
  %arrayidx.i.i287 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %arrayidx.i.i287 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i287, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mchp_spdiftx_hw_params.__UNIQUE_ID_ddebug240, ptr noundef %11, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %13, i32 noundef %retval.0.i.i322, i32 noundef %call1.i286, i32 noundef %21) #10
  br label %do.end

do.end:                                           ; preds = %params_width.exit, %params_physical_width.exit
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %22 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp = icmp eq i32 %23, 1
  br i1 %cmp, label %do.end13, label %if.end15

do.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev14 = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %3, i32 0, i32 2
  %24 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.35) #13
  br label %cleanup

if.end15:                                         ; preds = %do.end
  %regmap = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %3, i32 0, i32 3
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call16 = call i32 @regmap_read(ptr noundef %27, i32 noundef 4, ptr noundef nonnull %mr) #10
  %28 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mr, align 4
  %and = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end23, label %do.end21

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %dev22 = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %3, i32 0, i32 2
  %30 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev22, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.37) #13
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %32 = ptrtoint ptr %mr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 16, ptr %mr, align 4
  %maxburst = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %3, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %maxburst to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %maxburst, align 4
  %arrayidx.i.i288 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %34 = ptrtoint ptr %arrayidx.i.i288 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i288, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %35, label %do.end34 [
    i32 1, label %if.end23.sw.epilog_crit_edge
    i32 2, label %sw.bb25
  ]

if.end23.sw.epilog_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end23
  %37 = ptrtoint ptr %mr to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 18, ptr %mr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div)
  %cmp27 = icmp ugt i32 %div, 2
  br i1 %cmp27, label %if.then28, label %sw.bb25.sw.epilog_crit_edge

sw.bb25.sw.epilog_crit_edge:                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then28:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %maxburst to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %maxburst, align 4
  br label %sw.epilog

do.end34:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %dev35 = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %3, i32 0, i32 2
  %39 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev35, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.40, i32 noundef %35) #13
  br label %cleanup

sw.epilog:                                        ; preds = %if.then28, %sw.bb25.sw.epilog_crit_edge, %if.end23.sw.epilog_crit_edge
  %41 = ptrtoint ptr %maxburst to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %maxburst, align 4
  %shl = shl i32 %42, 16
  %and39 = and i32 %shl, 983040
  %43 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mr, align 4
  %or40 = or i32 %and39, %44
  store i32 %or40, ptr %mr, align 4
  %45 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i.i291 = icmp eq i32 %46, 0
  br i1 %tobool.not.i.i291, label %for.inc.i.i298, label %sw.epilog.params_format.exit300_crit_edge

sw.epilog.params_format.exit300_crit_edge:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_format.exit300

for.inc.i.i298:                                   ; preds = %sw.epilog
  %arrayidx.1.i.i296 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %47 = ptrtoint ptr %arrayidx.1.i.i296 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.1.i.i296, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.1.i.i297 = icmp eq i32 %48, 0
  br i1 %tobool.not.1.i.i297, label %for.inc.i.i298.sw.bb42_crit_edge, label %for.inc.i.i298.params_format.exit300_crit_edge

for.inc.i.i298.params_format.exit300_crit_edge:   ; preds = %for.inc.i.i298
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_format.exit300

for.inc.i.i298.sw.bb42_crit_edge:                 ; preds = %for.inc.i.i298
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb42

params_format.exit300:                            ; preds = %for.inc.i.i298.params_format.exit300_crit_edge, %sw.epilog.params_format.exit300_crit_edge
  %i.09.lcssa.i.i292 = phi i32 [ 0, %sw.epilog.params_format.exit300_crit_edge ], [ 32, %for.inc.i.i298.params_format.exit300_crit_edge ]
  %.lcssa.i.i293 = phi i32 [ %46, %sw.epilog.params_format.exit300_crit_edge ], [ %48, %for.inc.i.i298.params_format.exit300_crit_edge ]
  %49 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i293, i1 true) #10, !range !132
  %add.i.i294 = or i32 %49, %i.09.lcssa.i.i292
  %50 = zext i32 %add.i.i294 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %add.i.i294, label %do.end71 [
    i32 0, label %params_format.exit300.sw.bb42_crit_edge
    i32 3, label %sw.bb44
    i32 2, label %params_format.exit300.sw.bb46_crit_edge
    i32 41, label %sw.bb48
    i32 40, label %params_format.exit300.sw.bb50_crit_edge
    i32 37, label %sw.bb52
    i32 36, label %params_format.exit300.sw.bb54_crit_edge
    i32 33, label %sw.bb56
    i32 32, label %params_format.exit300.sw.bb58_crit_edge
    i32 7, label %sw.bb60
    i32 6, label %params_format.exit300.sw.bb62_crit_edge
    i32 11, label %sw.bb64
    i32 10, label %params_format.exit300.sw.bb66_crit_edge
  ]

params_format.exit300.sw.bb66_crit_edge:          ; preds = %params_format.exit300
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb66

params_format.exit300.sw.bb62_crit_edge:          ; preds = %params_format.exit300
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb62

params_format.exit300.sw.bb58_crit_edge:          ; preds = %params_format.exit300
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb58

params_format.exit300.sw.bb54_crit_edge:          ; preds = %params_format.exit300
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb54

params_format.exit300.sw.bb50_crit_edge:          ; preds = %params_format.exit300
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb50

params_format.exit300.sw.bb46_crit_edge:          ; preds = %params_format.exit300
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb46

params_format.exit300.sw.bb42_crit_edge:          ; preds = %params_format.exit300
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb42

sw.bb42:                                          ; preds = %params_format.exit300.sw.bb42_crit_edge, %for.inc.i.i298.sw.bb42_crit_edge
  %or43 = or i32 %or40, 2048
  %51 = ptrtoint ptr %mr to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or43, ptr %mr, align 4
  br label %sw.epilog74

sw.bb44:                                          ; preds = %params_format.exit300
  call void @__sanitizer_cov_trace_pc() #12
  %or45 = or i32 %or40, 4
  %52 = ptrtoint ptr %mr to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or45, ptr %mr, align 4
  br label %sw.bb46

sw.bb46:                                          ; preds = %sw.bb44, %params_format.exit300.sw.bb46_crit_edge
  %53 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mr, align 4
  %or47 = or i32 %54, 4096
  store i32 %or47, ptr %mr, align 4
  br label %sw.epilog74

sw.bb48:                                          ; preds = %params_format.exit300
  call void @__sanitizer_cov_trace_pc() #12
  %or49 = or i32 %or40, 4
  %55 = ptrtoint ptr %mr to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or49, ptr %mr, align 4
  br label %sw.bb50

sw.bb50:                                          ; preds = %sw.bb48, %params_format.exit300.sw.bb50_crit_edge
  %56 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mr, align 4
  %or51 = or i32 %57, 4608
  store i32 %or51, ptr %mr, align 4
  br label %sw.epilog74

sw.bb52:                                          ; preds = %params_format.exit300
  call void @__sanitizer_cov_trace_pc() #12
  %or53 = or i32 %or40, 4
  %58 = ptrtoint ptr %mr to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or53, ptr %mr, align 4
  br label %sw.bb54

sw.bb54:                                          ; preds = %sw.bb52, %params_format.exit300.sw.bb54_crit_edge
  %59 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mr, align 4
  %or55 = or i32 %60, 5120
  store i32 %or55, ptr %mr, align 4
  br label %sw.epilog74

sw.bb56:                                          ; preds = %params_format.exit300
  call void @__sanitizer_cov_trace_pc() #12
  %or57 = or i32 %or40, 4
  %61 = ptrtoint ptr %mr to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or57, ptr %mr, align 4
  br label %sw.bb58

sw.bb58:                                          ; preds = %sw.bb56, %params_format.exit300.sw.bb58_crit_edge
  %62 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mr, align 4
  %or59 = or i32 %63, 6144
  store i32 %or59, ptr %mr, align 4
  br label %sw.epilog74

sw.bb60:                                          ; preds = %params_format.exit300
  call void @__sanitizer_cov_trace_pc() #12
  %or61 = or i32 %or40, 4
  %64 = ptrtoint ptr %mr to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %or61, ptr %mr, align 4
  br label %sw.bb62

sw.bb62:                                          ; preds = %sw.bb60, %params_format.exit300.sw.bb62_crit_edge
  %65 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mr, align 4
  %or63 = or i32 %66, 6144
  store i32 %or63, ptr %mr, align 4
  br label %sw.epilog74

sw.bb64:                                          ; preds = %params_format.exit300
  call void @__sanitizer_cov_trace_pc() #12
  %or65 = or i32 %or40, 4
  %67 = ptrtoint ptr %mr to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or65, ptr %mr, align 4
  br label %sw.bb66

sw.bb66:                                          ; preds = %sw.bb64, %params_format.exit300.sw.bb66_crit_edge
  %68 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %mr, align 4
  %or67 = or i32 %69, 8192
  store i32 %or67, ptr %mr, align 4
  br label %sw.epilog74

do.end71:                                         ; preds = %params_format.exit300
  %dev72 = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %3, i32 0, i32 2
  %70 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev72, align 4
  br i1 %tobool.not.i.i291, label %for.inc.i.i309, label %do.end71.if.then.i.i306_crit_edge

do.end71.if.then.i.i306_crit_edge:                ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i306

if.then.i.i306:                                   ; preds = %for.inc.i.i309.if.then.i.i306_crit_edge, %do.end71.if.then.i.i306_crit_edge
  %i.09.lcssa.i.i303 = phi i32 [ 0, %do.end71.if.then.i.i306_crit_edge ], [ 32, %for.inc.i.i309.if.then.i.i306_crit_edge ]
  %.lcssa.i.i304 = phi i32 [ %46, %do.end71.if.then.i.i306_crit_edge ], [ %74, %for.inc.i.i309.if.then.i.i306_crit_edge ]
  %72 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i304, i1 true) #10, !range !132
  %add.i.i305 = or i32 %72, %i.09.lcssa.i.i303
  br label %params_format.exit311

for.inc.i.i309:                                   ; preds = %do.end71
  %arrayidx.1.i.i307 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %73 = ptrtoint ptr %arrayidx.1.i.i307 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.1.i.i307, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.1.i.i308 = icmp eq i32 %74, 0
  br i1 %tobool.not.1.i.i308, label %for.inc.i.i309.params_format.exit311_crit_edge, label %for.inc.i.i309.if.then.i.i306_crit_edge

for.inc.i.i309.if.then.i.i306_crit_edge:          ; preds = %for.inc.i.i309
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i306

for.inc.i.i309.params_format.exit311_crit_edge:   ; preds = %for.inc.i.i309
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_format.exit311

params_format.exit311:                            ; preds = %for.inc.i.i309.params_format.exit311_crit_edge, %if.then.i.i306
  %retval.0.i.i310 = phi i32 [ %add.i.i305, %if.then.i.i306 ], [ 0, %for.inc.i.i309.params_format.exit311_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.43, i32 noundef %retval.0.i.i310) #13
  br label %cleanup

sw.epilog74:                                      ; preds = %sw.bb66, %sw.bb62, %sw.bb58, %sw.bb54, %sw.bb50, %sw.bb46, %sw.bb42
  %sub = shl i32 %div, 28
  %shl75 = add i32 %sub, 805306368
  %and76 = and i32 %shl75, 805306368
  %75 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %mr, align 4
  %or77 = or i32 %76, %and76
  store i32 %or77, ptr %mr, align 4
  %lock = getelementptr inbounds %struct.mchp_spdiftx_mixer_control, ptr %3, i32 0, i32 2
  %call83 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %arrayidx = getelementptr [24 x i8], ptr %3, i32 0, i32 3
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx, align 1
  %79 = and i8 %78, -16
  store i8 %79, ptr %arrayidx, align 1
  %arrayidx.i.i312 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %80 = ptrtoint ptr %arrayidx.i.i312 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i.i312, align 4
  %82 = zext i32 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %81, label %do.end155 [
    i32 22050, label %sw.epilog74.sw.epilog159.sink.split_crit_edge
    i32 24000, label %sw.bb98
    i32 32000, label %sw.bb104
    i32 44100, label %sw.epilog74.sw.epilog159_crit_edge
    i32 48000, label %sw.bb116
    i32 88200, label %sw.bb122
    i32 96000, label %sw.bb128
    i32 176400, label %sw.bb134
    i32 192000, label %sw.bb140
    i32 8000, label %sw.epilog74.sw.bb146_crit_edge
    i32 11025, label %sw.epilog74.sw.bb146_crit_edge334
    i32 16000, label %sw.epilog74.sw.bb146_crit_edge335
    i32 64000, label %sw.epilog74.sw.bb146_crit_edge336
  ]

sw.epilog74.sw.bb146_crit_edge336:                ; preds = %sw.epilog74
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb146

sw.epilog74.sw.bb146_crit_edge335:                ; preds = %sw.epilog74
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb146

sw.epilog74.sw.bb146_crit_edge334:                ; preds = %sw.epilog74
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb146

sw.epilog74.sw.bb146_crit_edge:                   ; preds = %sw.epilog74
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb146

sw.epilog74.sw.epilog159_crit_edge:               ; preds = %sw.epilog74
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog159

sw.epilog74.sw.epilog159.sink.split_crit_edge:    ; preds = %sw.epilog74
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog159.sink.split

sw.bb98:                                          ; preds = %sw.epilog74
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog159.sink.split

sw.bb104:                                         ; preds = %sw.epilog74
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog159.sink.split

sw.bb116:                                         ; preds = %sw.epilog74
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog159.sink.split

sw.bb122:                                         ; preds = %sw.epilog74
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog159.sink.split

sw.bb128:                                         ; preds = %sw.epilog74
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog159.sink.split

sw.bb134:                                         ; preds = %sw.epilog74
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog159.sink.split

sw.bb140:                                         ; preds = %sw.epilog74
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog159.sink.split

sw.bb146:                                         ; preds = %sw.epilog74.sw.bb146_crit_edge, %sw.epilog74.sw.bb146_crit_edge334, %sw.epilog74.sw.bb146_crit_edge335, %sw.epilog74.sw.bb146_crit_edge336
  br label %sw.epilog159.sink.split

do.end155:                                        ; preds = %sw.epilog74
  call void @__sanitizer_cov_trace_pc() #12
  %dev156 = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %3, i32 0, i32 2
  %83 = ptrtoint ptr %dev156 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev156, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.46, i32 noundef %81) #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call83) #10
  br label %cleanup

sw.epilog159.sink.split:                          ; preds = %sw.bb146, %sw.bb140, %sw.bb134, %sw.bb128, %sw.bb122, %sw.bb116, %sw.bb104, %sw.bb98, %sw.epilog74.sw.epilog159.sink.split_crit_edge
  %.sink333 = phi i8 [ 1, %sw.bb146 ], [ 14, %sw.bb140 ], [ 12, %sw.bb134 ], [ 10, %sw.bb128 ], [ 8, %sw.bb122 ], [ 2, %sw.bb116 ], [ 3, %sw.bb104 ], [ 6, %sw.bb98 ], [ 4, %sw.epilog74.sw.epilog159.sink.split_crit_edge ]
  %85 = or i8 %79, %.sink333
  %86 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %arrayidx, align 1
  br label %sw.epilog159

sw.epilog159:                                     ; preds = %sw.epilog159.sink.split, %sw.epilog74.sw.epilog159_crit_edge
  call fastcc void @mchp_spdiftx_channel_status_write(ptr noundef %3)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call83) #10
  %gclk_enabled = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %3, i32 0, i32 8
  %87 = ptrtoint ptr %gclk_enabled to i32
  call void @__asan_load1_noabort(i32 %87)
  %bf.load = load i8, ptr %gclk_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool161.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool161.not, label %sw.epilog159.if.end165_crit_edge, label %if.then162

sw.epilog159.if.end165_crit_edge:                 ; preds = %sw.epilog159
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end165

if.then162:                                       ; preds = %sw.epilog159
  call void @__sanitizer_cov_trace_pc() #12
  %gclk = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %3, i32 0, i32 5
  %88 = ptrtoint ptr %gclk to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %gclk, align 4
  call void @clk_disable(ptr noundef %89) #10
  call void @clk_unprepare(ptr noundef %89) #10
  %90 = ptrtoint ptr %gclk_enabled to i32
  call void @__asan_load1_noabort(i32 %90)
  %bf.load164 = load i8, ptr %gclk_enabled, align 4
  %bf.clear = and i8 %bf.load164, 127
  store i8 %bf.clear, ptr %gclk_enabled, align 4
  br label %if.end165

if.end165:                                        ; preds = %if.then162, %sw.epilog159.if.end165_crit_edge
  %gclk166 = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %3, i32 0, i32 5
  %91 = ptrtoint ptr %gclk166 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %gclk166, align 4
  %93 = ptrtoint ptr %arrayidx.i.i312 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx.i.i312, align 4
  %mul = shl i32 %94, 7
  %call168 = call i32 @clk_set_rate(ptr noundef %92, i32 noundef %mul) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %if.end176, label %do.end173

do.end173:                                        ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #12
  %dev174 = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %3, i32 0, i32 2
  %95 = ptrtoint ptr %dev174 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev174, align 4
  %97 = ptrtoint ptr %arrayidx.i.i312 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx.i.i312, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.49, i32 noundef %98, i32 noundef 128) #13
  br label %cleanup

if.end176:                                        ; preds = %if.end165
  %99 = ptrtoint ptr %gclk166 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %gclk166, align 4
  %call.i = call i32 @clk_prepare(ptr noundef %100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end176.do.end183_crit_edge

if.end176.do.end183_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end183

if.end.i:                                         ; preds = %if.end176
  %call1.i316 = call i32 @clk_enable(ptr noundef %100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i316)
  %tobool2.not.i = icmp eq i32 %call1.i316, 0
  br i1 %tobool2.not.i, label %if.end185, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @clk_unprepare(ptr noundef %100) #10
  br label %do.end183

do.end183:                                        ; preds = %if.then3.i, %if.end176.do.end183_crit_edge
  %retval.0.i317.ph = phi i32 [ %call1.i316, %if.then3.i ], [ %call.i, %if.end176.do.end183_crit_edge ]
  %dev184 = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %3, i32 0, i32 2
  %101 = ptrtoint ptr %dev184 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev184, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.52, i32 noundef %retval.0.i317.ph) #13
  br label %cleanup

if.end185:                                        ; preds = %if.end.i
  %103 = ptrtoint ptr %gclk_enabled to i32
  call void @__asan_load1_noabort(i32 %103)
  %bf.load187 = load i8, ptr %gclk_enabled, align 4
  %bf.set189 = or i8 %bf.load187, -128
  store i8 %bf.set189, ptr %gclk_enabled, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mchp_spdiftx_hw_params.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mchp_spdiftx_hw_params, %if.then202)) #10
          to label %do.end208 [label %if.then202], !srcloc !133

if.then202:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #12
  %dev203 = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %3, i32 0, i32 2
  %104 = ptrtoint ptr %dev203 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev203, align 4
  %106 = ptrtoint ptr %arrayidx.i.i312 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx.i.i312, align 4
  %mul205 = shl i32 %107, 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mchp_spdiftx_hw_params.__UNIQUE_ID_ddebug241, ptr noundef %105, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.33, i32 noundef %mul205) #10
  br label %do.end208

do.end208:                                        ; preds = %if.then202, %if.end185
  %108 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regmap, align 4
  %call210 = call i32 @regmap_write(ptr noundef %109, i32 noundef 20, i32 noundef 48) #10
  %110 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regmap, align 4
  %112 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %mr, align 4
  %call212 = call i32 @regmap_write(ptr noundef %111, i32 noundef 4, i32 noundef %113) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end208, %do.end183, %do.end173, %do.end155, %params_format.exit311, %do.end34, %do.end21, %do.end13
  %retval.0 = phi i32 [ -22, %do.end13 ], [ -16, %do.end21 ], [ -22, %do.end34 ], [ -22, %params_format.exit311 ], [ -22, %do.end155 ], [ %call168, %do.end173 ], [ %retval.0.i317.ph, %do.end183 ], [ 0, %do.end208 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mr) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_spdiftx_hw_free(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 24, i32 noundef 48) #10
  %gclk_enabled = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %gclk_enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %gclk_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %gclk = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %gclk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gclk, align 4
  tail call void @clk_disable(ptr noundef %8) #10
  tail call void @clk_unprepare(ptr noundef %8) #10
  %9 = ptrtoint ptr %gclk_enabled to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load3 = load i8, ptr %gclk_enabled, align 4
  %bf.clear = and i8 %bf.load3, 127
  store i8 %bf.clear, ptr %gclk_enabled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 0, i32 noundef 3) #10
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_spdiftx_trigger(ptr nocapture noundef readnone %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %mr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mr) #10
  %4 = ptrtoint ptr %mr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %mr, align 4, !annotation !131
  %lock = getelementptr inbounds %struct.mchp_spdiftx_mixer_control, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %regmap = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %6, i32 noundef 4, ptr noundef nonnull %mr) #10
  %7 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mr, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %9 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %cmd, label %sw.default [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge31
    i32 4, label %entry.sw.bb_crit_edge32
    i32 0, label %entry.sw.bb5_crit_edge
    i32 5, label %entry.sw.bb5_crit_edge33
    i32 3, label %entry.sw.bb5_crit_edge34
  ]

entry.sw.bb5_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

entry.sw.bb5_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

entry.sw.bb_crit_edge32:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge31:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge31, %entry.sw.bb_crit_edge32
  br i1 %tobool.not, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %8, 1
  %10 = ptrtoint ptr %mr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or, ptr %mr, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge33, %entry.sw.bb5_crit_edge34
  br i1 %tobool.not, label %sw.bb5.sw.epilog_crit_edge, label %if.then7

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then7:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  %and8 = and i32 %8, -2
  %11 = ptrtoint ptr %mr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and8, ptr %mr, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %cleanup

sw.epilog:                                        ; preds = %if.then7, %sw.bb5.sw.epilog_crit_edge, %if.then, %sw.bb.sw.epilog_crit_edge
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %14 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mr, align 4
  %call13 = call i32 @regmap_write(ptr noundef %13, i32 noundef 4, i32 noundef %15) #10
  call void @_raw_spin_unlock(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool15.not = icmp eq i32 %call13, 0
  br i1 %tobool15.not, label %sw.epilog.cleanup_crit_edge, label %do.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %dev17 = getelementptr inbounds %struct.mchp_spdiftx_dev, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev17, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.55, i32 noundef %call13) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.epilog.cleanup_crit_edge, %sw.default
  %retval.0 = phi i32 [ -22, %sw.default ], [ %call13, %do.end ], [ 0, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mr) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !32, !33, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !51, !52, !54, !55, !56, !58, !60, !62, !64, !66, !67, !68, !69, !71, !73, !75, !77, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !117, !118, !119, !120}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @__initcall__kmod_snd_soc_mchp_spdiftx__242_866_mchp_spdiftx_driver_init6, !1, !"__initcall__kmod_snd_soc_mchp_spdiftx__242_866_mchp_spdiftx_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 866, i32 1}
!2 = !{ptr @__exitcall_mchp_spdiftx_driver_exit, !1, !"__exitcall_mchp_spdiftx_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author243, !4, !"__UNIQUE_ID_author243", i1 false, i1 false}
!4 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 868, i32 1}
!5 = !{ptr @__UNIQUE_ID_description244, !6, !"__UNIQUE_ID_description244", i1 false, i1 false}
!6 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 869, i32 1}
!7 = !{ptr @__UNIQUE_ID_file245, !8, !"__UNIQUE_ID_file245", i1 false, i1 false}
!8 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 870, i32 1}
!9 = !{ptr @__UNIQUE_ID_license246, !8, !"__UNIQUE_ID_license246", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 861, i32 11}
!12 = !{ptr @mchp_spdiftx_driver, !13, !"mchp_spdiftx_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 858, i32 31}
!14 = !{ptr @mchp_spdiftx_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 794, i32 11}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 810, i32 39}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 813, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mchp_spdiftx_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @mchp_spdiftx_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 819, i32 39}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 822, i32 3}
!31 = !{ptr @mchp_spdiftx_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @mchp_spdiftx_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @mchp_spdiftx_probe.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 828, i32 2}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 843, i32 3}
!38 = !{ptr @mchp_spdiftx_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mchp_spdiftx_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 851, i32 3}
!42 = !{ptr @mchp_spdiftx_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mchp_spdiftx_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @mchp_spdiftx_regmap_config, !45, !"mchp_spdiftx_regmap_config", i1 false, i1 false}
!45 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 170, i32 35}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 257, i32 3}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @mchp_spdiftx_interrupt._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @mchp_spdiftx_interrupt._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 262, i32 3}
!54 = !{ptr @mchp_spdiftx_interrupt._entry.22, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mchp_spdiftx_interrupt._entry_ptr.24, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 756, i32 11}
!58 = !{ptr @mchp_spdiftx_component, !59, !"mchp_spdiftx_component", i1 false, i1 false}
!59 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 755, i32 46}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 746, i32 18}
!62 = !{ptr @mchp_spdiftx_dai, !63, !"mchp_spdiftx_dai", i1 false, i1 false}
!63 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 741, i32 34}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 720, i32 3}
!66 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @mchp_spdiftx_dai_probe._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @mchp_spdiftx_dai_probe._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 685, i32 11}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 694, i32 11}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 703, i32 11}
!75 = !{ptr @mchp_spdiftx_ctrls, !76, !"mchp_spdiftx_ctrls", i1 false, i1 false}
!76 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 681, i32 32}
!77 = !{ptr @mchp_spdiftx_dai_ops, !78, !"mchp_spdiftx_dai_ops", i1 false, i1 false}
!78 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 537, i32 37}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 363, i32 2}
!81 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @mchp_spdiftx_hw_params.__UNIQUE_ID_ddebug240, !80, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 368, i32 3}
!86 = !{ptr @mchp_spdiftx_hw_params._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @mchp_spdiftx_hw_params._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 375, i32 3}
!90 = !{ptr @mchp_spdiftx_hw_params._entry.36, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @mchp_spdiftx_hw_params._entry_ptr.38, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 392, i32 3}
!94 = !{ptr @mchp_spdiftx_hw_params._entry.39, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @mchp_spdiftx_hw_params._entry_ptr.41, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 439, i32 3}
!98 = !{ptr @mchp_spdiftx_hw_params._entry.42, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @mchp_spdiftx_hw_params._entry_ptr.44, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 483, i32 3}
!102 = !{ptr @mchp_spdiftx_hw_params._entry.45, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @mchp_spdiftx_hw_params._entry_ptr.47, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 498, i32 3}
!106 = !{ptr @mchp_spdiftx_hw_params._entry.48, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @mchp_spdiftx_hw_params._entry_ptr.50, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 505, i32 3}
!110 = !{ptr @mchp_spdiftx_hw_params._entry.51, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @mchp_spdiftx_hw_params._entry_ptr.53, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 509, i32 2}
!114 = !{ptr @mchp_spdiftx_hw_params.__UNIQUE_ID_ddebug241, !113, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!115 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 345, i32 3}
!117 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @mchp_spdiftx_trigger._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @mchp_spdiftx_trigger._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @mchp_spdiftx_dt_ids, !121, !"mchp_spdiftx_dt_ids", i1 false, i1 false}
!121 = !{!"../sound/soc/atmel/mchp-spdiftx.c", i32 759, i32 34}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{!"auto-init"}
!132 = !{i32 0, i32 33}
!133 = !{i64 2148742473, i64 2148742478, i64 2148742491, i64 2148742535, i64 2148742569, i64 2148742590}
