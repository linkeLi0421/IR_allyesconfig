; ModuleID = '/llk/IR_all_yes/sound/soc/atmel/mchp-spdifrx.c_pt.bc'
source_filename = "../sound/soc/atmel/mchp-spdifrx.c"
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
%struct.atomic_t = type { i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.86, i32 }
%union.anon.86 = type { ptr }
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
%struct.mchp_spdifrx_dev = type { %struct.snd_dmaengine_dai_dma_data, %struct.mchp_spdifrx_mixer_control, %struct.spinlock, i32, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.mchp_spdifrx_mixer_control = type { [2 x %struct.mchp_spdifrx_ch_stat], [2 x %struct.mchp_spdifrx_user_data], i8, i8, i8 }
%struct.mchp_spdifrx_ch_stat = type { [24 x i8], %struct.completion }
%struct.mchp_spdifrx_user_data = type { [24 x i8], %struct.completion, %struct.spinlock }
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

@__initcall__kmod_snd_soc_mchp_spdifrx__245_949_mchp_spdifrx_driver_init6 = internal global ptr @mchp_spdifrx_driver_init, section ".initcall6.init", align 4
@mchp_spdifrx_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mchp_spdifrx_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mchp_spdifrx_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mchp_spdifrx_driver_exit = internal global ptr @mchp_spdifrx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author246 = internal constant [80 x i8] c"snd_soc_mchp_spdifrx.author=Codrin Ciubotariu <codrin.ciubotariu@microchip.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description247 = internal constant [71 x i8] c"snd_soc_mchp_spdifrx.description=Microchip S/PDIF RX Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file248 = internal constant [63 x i8] c"snd_soc_mchp_spdifrx.file=sound/soc/atmel/snd-soc-mchp-spdifrx\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [36 x i8] c"snd_soc_mchp_spdifrx.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mchp_spdifrx\00", [19 x i8] zeroinitializer }, align 32
@mchp_spdifrx_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-spdifrx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mchp_spdifrx_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mchp_spdifrx_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @mchp_spdifrx_writeable_reg, ptr @mchp_spdifrx_readable_reg, ptr null, ptr @mchp_spdifrx_precious_reg, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 252, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"mchp_spdifrx:881:(&mchp_spdifrx_regmap_config)->lock\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@mchp_spdifrx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 900, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to get the peripheral clock: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mchp_spdifrx_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sound/soc/atmel/mchp-spdifrx.c\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mchp_spdifrx_probe._entry_ptr = internal global ptr @mchp_spdifrx_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gclk\00", [27 x i8] zeroinitializer }, align 32
@mchp_spdifrx_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 909, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to get the PMC generated clock: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@mchp_spdifrx_probe._entry_ptr.11 = internal global ptr @mchp_spdifrx_probe._entry.9, section ".printk_index", align 4
@mchp_spdifrx_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dev->blockend_lock\00", [44 x i8] zeroinitializer }, align 32
@mchp_spdifrx_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 923, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register PMC: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@mchp_spdifrx_probe._entry_ptr.15 = internal global ptr @mchp_spdifrx_probe._entry.13, section ".printk_index", align 4
@mchp_spdifrx_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.28, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@mchp_spdifrx_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.28, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @mchp_spdifrx_dai_probe, ptr @mchp_spdifrx_dai_remove, ptr null, ptr null, ptr @mchp_spdifrx_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.29, i64 219043332324, i32 8190, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@mchp_spdifrx_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 931, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fail to register dai\0A\00", [42 x i8] zeroinitializer }, align 32
@mchp_spdifrx_probe._entry_ptr.18 = internal global ptr @mchp_spdifrx_probe._entry.16, section ".printk_index", align 4
@mchp_spdifrx_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.5, i32 936, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hw version: %#lx\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mchp_spdifrx_probe._entry_ptr.22 = internal global ptr @mchp_spdifrx_probe._entry.19, section ".printk_index", align 4
@mchp_spdif_interrupt.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.24, ptr @.str.5, ptr @.str.25, i8 0, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_soc_mchp_spdifrx\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mchp_spdif_interrupt\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ISR: %#x, IMR: %#x, pending: %#x\0A\00", [62 x i8] zeroinitializer }, align 32
@mchp_spdif_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.5, i32 341, ptr @.str.27, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Overrun detected\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mchp_spdif_interrupt._entry_ptr = internal global ptr @mchp_spdif_interrupt._entry, section ".printk_index", align 4
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mchp-spdifrx\00", [19 x i8] zeroinitializer }, align 32
@mchp_spdifrx_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mchp_spdifrx_hw_params, ptr @mchp_spdifrx_hw_free, ptr null, ptr @mchp_spdifrx_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"S/PDIF Capture\00", [17 x i8] zeroinitializer }, align 32
@mchp_spdifrx_dai_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.5, i32 792, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to enable the peripheral clock: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mchp_spdifrx_dai_probe\00", [41 x i8] zeroinitializer }, align 32
@mchp_spdifrx_dai_probe._entry_ptr = internal global ptr @mchp_spdifrx_dai_probe._entry, section ".printk_index", align 4
@mchp_spdifrx_dai_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&ctrl->user_data[ch].lock\00", [38 x i8] zeroinitializer }, align 32
@mchp_spdifrx_ctrls = internal global { [9 x %struct.snd_kcontrol_new], [112 x i8] } { [9 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.34, i32 0, i32 5, i32 0, ptr @mchp_spdifrx_info, ptr @mchp_spdifrx_cs1_get, ptr null, %union.anon.86 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.35, i32 0, i32 5, i32 0, ptr @mchp_spdifrx_info, ptr @mchp_spdifrx_cs2_get, ptr null, %union.anon.86 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.36, i32 0, i32 1, i32 0, ptr @mchp_spdifrx_info, ptr @mchp_spdifrx_cs_mask, ptr null, %union.anon.86 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.37, i32 0, i32 5, i32 0, ptr @mchp_spdifrx_info, ptr @mchp_spdifrx_subcode_ch1_get, ptr null, %union.anon.86 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.38, i32 0, i32 5, i32 0, ptr @mchp_spdifrx_info, ptr @mchp_spdifrx_subcode_ch2_get, ptr null, %union.anon.86 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.39, i32 0, i32 5, i32 0, ptr @mchp_spdifrx_boolean_info, ptr @mchp_spdifrx_ulock_get, ptr null, %union.anon.86 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.40, i32 0, i32 5, i32 0, ptr @mchp_spdifrx_boolean_info, ptr @mchp_spdifrx_badf_get, ptr null, %union.anon.86 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.41, i32 0, i32 5, i32 0, ptr @mchp_spdifrx_boolean_info, ptr @mchp_spdifrx_signal_get, ptr null, %union.anon.86 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.42, i32 0, i32 5, i32 0, ptr @mchp_spdifrx_rate_info, ptr @mchp_spdifrx_rate_get, ptr null, %union.anon.86 zeroinitializer, i32 0 }], [112 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"IEC958 Capture Default Channel 1\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"IEC958 Capture Default Channel 2\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IEC958 Capture Mask\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"IEC958 Subcode Capture Default Channel 1\00", [55 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"IEC958 Subcode Capture Default Channel 2\00", [55 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 Capture Unlocked\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"IEC958 Capture Bad Format\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IEC958 Capture Signal\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IEC958 Capture Rate\00", [44 x i8] zeroinitializer }, align 32
@mchp_spdifrx_cs_get.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.43, ptr @.str.5, ptr @.str.44, i8 0, i8 -125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mchp_spdifrx_cs_get\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"channel status for channel %d timeout\0A\00", [57 x i8] zeroinitializer }, align 32
@mchp_spdifrx_subcode_ch_get.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.45, ptr @.str.5, ptr @.str.46, i8 0, i8 -112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mchp_spdifrx_subcode_ch_get\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"user data for channel %d timeout\0A\00", [62 x i8] zeroinitializer }, align 32
@mchp_spdifrx_hw_params.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.47, ptr @.str.5, ptr @.str.48, i8 0, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mchp_spdifrx_hw_params\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s() rate=%u format=%#x width=%u channels=%u\0A\00", [50 x i8] zeroinitializer }, align 32
@mchp_spdifrx_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.5, i32 410, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Playback is not supported\0A\00", [37 x i8] zeroinitializer }, align 32
@mchp_spdifrx_hw_params._entry_ptr = internal global ptr @mchp_spdifrx_hw_params._entry, section ".printk_index", align 4
@mchp_spdifrx_hw_params._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.47, ptr @.str.5, i32 417, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PCM already running\0A\00", [43 x i8] zeroinitializer }, align 32
@mchp_spdifrx_hw_params._entry_ptr.52 = internal global ptr @mchp_spdifrx_hw_params._entry.50, section ".printk_index", align 4
@mchp_spdifrx_hw_params._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.47, ptr @.str.5, i32 423, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unsupported number of channels: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@mchp_spdifrx_hw_params._entry_ptr.55 = internal global ptr @mchp_spdifrx_hw_params._entry.53, section ".printk_index", align 4
@mchp_spdifrx_hw_params._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.47, ptr @.str.5, i32 442, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unsupported PCM format: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@mchp_spdifrx_hw_params._entry_ptr.58 = internal global ptr @mchp_spdifrx_hw_params._entry.56, section ".printk_index", align 4
@mchp_spdifrx_hw_params._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.47, ptr @.str.5, i32 455, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"unable to set gclk min rate: rate %u * ratio %u + 1\0A\00", [43 x i8] zeroinitializer }, align 32
@mchp_spdifrx_hw_params._entry_ptr.61 = internal global ptr @mchp_spdifrx_hw_params._entry.59, section ".printk_index", align 4
@mchp_spdifrx_hw_params._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.47, ptr @.str.5, i32 460, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to enable gclk: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mchp_spdifrx_hw_params._entry_ptr.64 = internal global ptr @mchp_spdifrx_hw_params._entry.62, section ".printk_index", align 4
@mchp_spdifrx_hw_params.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.47, ptr @.str.5, ptr @.str.65, i8 0, i8 116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"GCLK range min set to %d\0A\00", [38 x i8] zeroinitializer }, align 32
@mchp_spdifrx_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.5, i32 390, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to enable/disable RX: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mchp_spdifrx_trigger\00", [43 x i8] zeroinitializer }, align 32
@mchp_spdifrx_trigger._entry_ptr = internal global ptr @mchp_spdifrx_trigger._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4, i64 16, i64 20, i64 228]
@__sancov_gen_cov_switch_values.68 = internal global [33 x i64] [i64 31, i64 32, i64 0, i64 5, i64 6, i64 7, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 56, i64 57, i64 62]
@__sancov_gen_cov_switch_values.69 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 6, i64 7, i64 32, i64 33, i64 36, i64 37]
@__sancov_gen_cov_switch_values.70 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.71 = private unnamed_addr constant [20 x i8] c"mchp_spdifrx_driver\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 941, i32 31 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 944, i32 11 }
@___asan_gen_.77 = private unnamed_addr constant [20 x i8] c"mchp_spdifrx_dt_ids\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 852, i32 34 }
@___asan_gen_.80 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [27 x i8] c"mchp_spdifrx_regmap_config\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 195, i32 35 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 880, i32 11 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 896, i32 39 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 899, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 905, i32 39 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 908, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 912, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 923, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [23 x i8] c"mchp_spdifrx_component\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 848, i32 46 }
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"mchp_spdifrx_dai\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 834, i32 34 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 931, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 936, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 313, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 341, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 849, i32 11 }
@___asan_gen_.173 = private unnamed_addr constant [21 x i8] c"mchp_spdifrx_dai_ops\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 483, i32 37 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 839, i32 18 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 791, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 812, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [19 x i8] c"mchp_spdifrx_ctrls\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 700, i32 32 }
@___asan_gen_.197 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 87, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 704, i32 11 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 713, i32 11 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 722, i32 11 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 730, i32 11 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 738, i32 11 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 747, i32 11 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 756, i32 11 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 765, i32 11 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 774, i32 11 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 524, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 576, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 405, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 410, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 417, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 422, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 441, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 453, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 460, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 465, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.293 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.294 = private constant [34 x i8] c"../sound/soc/atmel/mchp-spdifrx.c\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 390, i32 3 }
@llvm.compiler.used = appending global [96 x ptr] [ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__exitcall_mchp_spdifrx_driver_exit, ptr @__initcall__kmod_snd_soc_mchp_spdifrx__245_949_mchp_spdifrx_driver_init6, ptr @mchp_spdif_interrupt._entry, ptr @mchp_spdif_interrupt._entry_ptr, ptr @mchp_spdifrx_dai_probe._entry, ptr @mchp_spdifrx_dai_probe._entry_ptr, ptr @mchp_spdifrx_driver_exit, ptr @mchp_spdifrx_hw_params._entry, ptr @mchp_spdifrx_hw_params._entry.50, ptr @mchp_spdifrx_hw_params._entry.53, ptr @mchp_spdifrx_hw_params._entry.56, ptr @mchp_spdifrx_hw_params._entry.59, ptr @mchp_spdifrx_hw_params._entry.62, ptr @mchp_spdifrx_hw_params._entry_ptr, ptr @mchp_spdifrx_hw_params._entry_ptr.52, ptr @mchp_spdifrx_hw_params._entry_ptr.55, ptr @mchp_spdifrx_hw_params._entry_ptr.58, ptr @mchp_spdifrx_hw_params._entry_ptr.61, ptr @mchp_spdifrx_hw_params._entry_ptr.64, ptr @mchp_spdifrx_probe._entry, ptr @mchp_spdifrx_probe._entry.13, ptr @mchp_spdifrx_probe._entry.16, ptr @mchp_spdifrx_probe._entry.19, ptr @mchp_spdifrx_probe._entry.9, ptr @mchp_spdifrx_probe._entry_ptr, ptr @mchp_spdifrx_probe._entry_ptr.11, ptr @mchp_spdifrx_probe._entry_ptr.15, ptr @mchp_spdifrx_probe._entry_ptr.18, ptr @mchp_spdifrx_probe._entry_ptr.22, ptr @mchp_spdifrx_trigger._entry, ptr @mchp_spdifrx_trigger._entry_ptr, ptr @mchp_spdifrx_driver, ptr @.str, ptr @mchp_spdifrx_dt_ids, ptr @mchp_spdifrx_probe._key, ptr @mchp_spdifrx_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @mchp_spdifrx_probe.__key, ptr @.str.12, ptr @.str.14, ptr @mchp_spdifrx_component, ptr @mchp_spdifrx_dai, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @mchp_spdifrx_dai_ops, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @mchp_spdifrx_dai_probe.__key, ptr @.str.32, ptr @mchp_spdifrx_ctrls, ptr @init_completion.__key, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdifrx_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdifrx_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdifrx_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdifrx_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdifrx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdifrx_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdifrx_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdifrx_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdifrx_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdifrx_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdifrx_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdifrx_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdif_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdifrx_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdifrx_dai_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdifrx_dai_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdifrx_ctrls to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdifrx_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdifrx_hw_params._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdifrx_hw_params._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdifrx_hw_params._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdifrx_hw_params._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdifrx_hw_params._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_spdifrx_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_spdifrx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mchp_spdifrx_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mchp_spdifrx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @mchp_spdifrx_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_spdifrx_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %mem = alloca ptr, align 4
  %vers = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mem) #10
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mem, align 4, !annotation !157
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vers) #10
  %1 = ptrtoint ptr %vers to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %vers, align 4, !annotation !157
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 520, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %mem) #10
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call8 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call2, ptr noundef nonnull @mchp_spdifrx_regmap_config, ptr noundef nonnull @mchp_spdifrx_probe._key, ptr noundef nonnull @.str.1) #10
  %cmp.i127 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %call13 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.end12.cleanup_crit_edge, label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end15.dev_name.exit_crit_edge

if.end15.dev_name.exit_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end15.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %if.end15.dev_name.exit_crit_edge ]
  %call.i128 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call13, ptr noundef nonnull @mchp_spdif_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %tobool20.not = icmp eq i32 %call.i128, 0
  br i1 %tobool20.not, label %if.end22, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %dev_name.exit
  %call24 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #10
  %pclk = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call24, ptr %pclk, align 4
  %cmp.i129 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i129, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %call24 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef %9) #13
  br label %cleanup

if.end31:                                         ; preds = %if.end22
  %call33 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.8) #10
  %gclk = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %gclk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call33, ptr %gclk, align 4
  %cmp.i130 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i130, label %if.then36, label %do.body44

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %call33 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %11) #13
  br label %cleanup

do.body44:                                        ; preds = %if.end31
  %blockend_lock = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %call.i, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %blockend_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @mchp_spdifrx_probe.__key, i16 noundef signext 3) #10
  %dev49 = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %dev49 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev1, ptr %dev49, align 4
  %regmap50 = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %call.i, i32 0, i32 5
  %13 = ptrtoint ptr %regmap50 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call8, ptr %regmap50, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %15 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mem, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add = add i32 %18, 36
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add, ptr %call.i, align 4
  %maxburst = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %maxburst to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %maxburst, align 4
  %call53 = call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %dev1, ptr noundef null, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end60, label %do.end58

do.end58:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %call53) #13
  br label %cleanup

if.end60:                                         ; preds = %do.body44
  %call62 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @mchp_spdifrx_component, ptr noundef nonnull @mchp_spdifrx_dai, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end69, label %do.end67

do.end67:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #13
  br label %cleanup

if.end69:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %call70 = call i32 @regmap_read(ptr noundef %call8, i32 noundef 252, ptr noundef nonnull %vers) #10
  %21 = ptrtoint ptr %vers to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vers, align 4
  %and = and i32 %22, 4095
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %and) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %do.end67, %do.end58, %if.then36, %if.then27, %dev_name.exit.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then10, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then4 ], [ %3, %if.then10 ], [ %9, %if.then27 ], [ %11, %if.then36 ], [ %call53, %do.end58 ], [ %call62, %do.end67 ], [ 0, %if.end69 ], [ -12, %entry.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call.i128, %dev_name.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vers) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_spdif_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %val.i79 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %sr = alloca i32, align 4
  %imr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %control = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %dev_id, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sr) #10
  %0 = ptrtoint ptr %sr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sr, align 4, !annotation !157
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %imr) #10
  %1 = ptrtoint ptr %imr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %imr, align 4, !annotation !157
  %regmap = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %dev_id, i32 0, i32 5
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef 28, ptr noundef nonnull %sr) #10
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %5, i32 noundef 24, ptr noundef nonnull %imr) #10
  %6 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sr, align 4
  %8 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %imr, align 4
  %and = and i32 %9, %7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mchp_spdif_interrupt.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mchp_spdif_interrupt, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !158

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev6 = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %dev_id, i32 0, i32 4
  %10 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev6, align 4
  %12 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sr, align 4
  %14 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %imr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mchp_spdif_interrupt.__UNIQUE_ID_ddebug240, ptr noundef %11, ptr noundef nonnull @.str.25, i32 noundef %13, i32 noundef %15, i32 noundef %and) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.end.cleanup_crit_edge, label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %and10 = and i32 %and, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.for.body21.preheader_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

if.end9.for.body21.preheader_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body21.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end9.for.body_crit_edge
  %cmp = phi i1 [ false, %for.body.for.body_crit_edge ], [ true, %if.end9.for.body_crit_edge ]
  %ch.0161 = phi i32 [ 1, %for.body.for.body_crit_edge ], [ 0, %if.end9.for.body_crit_edge ]
  %lock = getelementptr %struct.mchp_spdifrx_dev, ptr %dev_id, i32 0, i32 1, i32 1, i32 %ch.0161, i32 2
  call void @_raw_spin_lock(ptr noundef %lock) #10
  %arrayidx.i = getelementptr %struct.mchp_spdifrx_dev, ptr %dev_id, i32 0, i32 1, i32 1, i32 %ch.0161
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %val.i, align 4, !annotation !157
  %mul.i = mul nuw nsw i32 %ch.0161, 48
  %add.i = or i32 %mul.i, 72
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_read(ptr noundef %18, i32 noundef %add.i, ptr noundef nonnull %val.i) #10
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i, align 4
  %conv.i = trunc i32 %20 to i8
  %incdec.ptr.i = getelementptr i8, ptr %arrayidx.i, i32 1
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %shr.i = lshr i32 %20, 8
  %conv6.i = trunc i32 %shr.i to i8
  %incdec.ptr7.i = getelementptr i8, ptr %arrayidx.i, i32 2
  %22 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv6.i, ptr %incdec.ptr.i, align 1
  %shr8.i = lshr i32 %20, 16
  %conv10.i = trunc i32 %shr8.i to i8
  %incdec.ptr11.i = getelementptr i8, ptr %arrayidx.i, i32 3
  %23 = ptrtoint ptr %incdec.ptr7.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv10.i, ptr %incdec.ptr7.i, align 1
  %shr12.i = lshr i32 %20, 24
  %conv14.i = trunc i32 %shr12.i to i8
  %incdec.ptr15.i = getelementptr i8, ptr %arrayidx.i, i32 4
  %24 = ptrtoint ptr %incdec.ptr11.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv14.i, ptr %incdec.ptr11.i, align 1
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %add4.1.i = or i32 %mul.i, 76
  %call.1.i = call i32 @regmap_read(ptr noundef %26, i32 noundef %add4.1.i, ptr noundef nonnull %val.i) #10
  %27 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val.i, align 4
  %conv.1.i = trunc i32 %28 to i8
  %incdec.ptr.1.i = getelementptr i8, ptr %arrayidx.i, i32 5
  %29 = ptrtoint ptr %incdec.ptr15.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv.1.i, ptr %incdec.ptr15.i, align 1
  %shr.1.i = lshr i32 %28, 8
  %conv6.1.i = trunc i32 %shr.1.i to i8
  %incdec.ptr7.1.i = getelementptr i8, ptr %arrayidx.i, i32 6
  %30 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv6.1.i, ptr %incdec.ptr.1.i, align 1
  %shr8.1.i = lshr i32 %28, 16
  %conv10.1.i = trunc i32 %shr8.1.i to i8
  %incdec.ptr11.1.i = getelementptr i8, ptr %arrayidx.i, i32 7
  %31 = ptrtoint ptr %incdec.ptr7.1.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv10.1.i, ptr %incdec.ptr7.1.i, align 1
  %shr12.1.i = lshr i32 %28, 24
  %conv14.1.i = trunc i32 %shr12.1.i to i8
  %incdec.ptr15.1.i = getelementptr i8, ptr %arrayidx.i, i32 8
  %32 = ptrtoint ptr %incdec.ptr11.1.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv14.1.i, ptr %incdec.ptr11.1.i, align 1
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %add4.2.i = add nuw nsw i32 %mul.i, 80
  %call.2.i = call i32 @regmap_read(ptr noundef %34, i32 noundef %add4.2.i, ptr noundef nonnull %val.i) #10
  %35 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val.i, align 4
  %conv.2.i = trunc i32 %36 to i8
  %incdec.ptr.2.i = getelementptr i8, ptr %arrayidx.i, i32 9
  %37 = ptrtoint ptr %incdec.ptr15.1.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv.2.i, ptr %incdec.ptr15.1.i, align 1
  %shr.2.i = lshr i32 %36, 8
  %conv6.2.i = trunc i32 %shr.2.i to i8
  %incdec.ptr7.2.i = getelementptr i8, ptr %arrayidx.i, i32 10
  %38 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv6.2.i, ptr %incdec.ptr.2.i, align 1
  %shr8.2.i = lshr i32 %36, 16
  %conv10.2.i = trunc i32 %shr8.2.i to i8
  %incdec.ptr11.2.i = getelementptr i8, ptr %arrayidx.i, i32 11
  %39 = ptrtoint ptr %incdec.ptr7.2.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv10.2.i, ptr %incdec.ptr7.2.i, align 1
  %shr12.2.i = lshr i32 %36, 24
  %conv14.2.i = trunc i32 %shr12.2.i to i8
  %incdec.ptr15.2.i = getelementptr i8, ptr %arrayidx.i, i32 12
  %40 = ptrtoint ptr %incdec.ptr11.2.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv14.2.i, ptr %incdec.ptr11.2.i, align 1
  %41 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap, align 4
  %add4.3.i = add nuw nsw i32 %mul.i, 84
  %call.3.i = call i32 @regmap_read(ptr noundef %42, i32 noundef %add4.3.i, ptr noundef nonnull %val.i) #10
  %43 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val.i, align 4
  %conv.3.i = trunc i32 %44 to i8
  %incdec.ptr.3.i = getelementptr i8, ptr %arrayidx.i, i32 13
  %45 = ptrtoint ptr %incdec.ptr15.2.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv.3.i, ptr %incdec.ptr15.2.i, align 1
  %shr.3.i = lshr i32 %44, 8
  %conv6.3.i = trunc i32 %shr.3.i to i8
  %incdec.ptr7.3.i = getelementptr i8, ptr %arrayidx.i, i32 14
  %46 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv6.3.i, ptr %incdec.ptr.3.i, align 1
  %shr8.3.i = lshr i32 %44, 16
  %conv10.3.i = trunc i32 %shr8.3.i to i8
  %incdec.ptr11.3.i = getelementptr i8, ptr %arrayidx.i, i32 15
  %47 = ptrtoint ptr %incdec.ptr7.3.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv10.3.i, ptr %incdec.ptr7.3.i, align 1
  %shr12.3.i = lshr i32 %44, 24
  %conv14.3.i = trunc i32 %shr12.3.i to i8
  %incdec.ptr15.3.i = getelementptr i8, ptr %arrayidx.i, i32 16
  %48 = ptrtoint ptr %incdec.ptr11.3.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv14.3.i, ptr %incdec.ptr11.3.i, align 1
  %49 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap, align 4
  %add4.4.i = add nuw nsw i32 %mul.i, 88
  %call.4.i = call i32 @regmap_read(ptr noundef %50, i32 noundef %add4.4.i, ptr noundef nonnull %val.i) #10
  %51 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %val.i, align 4
  %conv.4.i = trunc i32 %52 to i8
  %incdec.ptr.4.i = getelementptr i8, ptr %arrayidx.i, i32 17
  %53 = ptrtoint ptr %incdec.ptr15.3.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv.4.i, ptr %incdec.ptr15.3.i, align 1
  %shr.4.i = lshr i32 %52, 8
  %conv6.4.i = trunc i32 %shr.4.i to i8
  %incdec.ptr7.4.i = getelementptr i8, ptr %arrayidx.i, i32 18
  %54 = ptrtoint ptr %incdec.ptr.4.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv6.4.i, ptr %incdec.ptr.4.i, align 1
  %shr8.4.i = lshr i32 %52, 16
  %conv10.4.i = trunc i32 %shr8.4.i to i8
  %incdec.ptr11.4.i = getelementptr i8, ptr %arrayidx.i, i32 19
  %55 = ptrtoint ptr %incdec.ptr7.4.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv10.4.i, ptr %incdec.ptr7.4.i, align 1
  %shr12.4.i = lshr i32 %52, 24
  %conv14.4.i = trunc i32 %shr12.4.i to i8
  %incdec.ptr15.4.i = getelementptr i8, ptr %arrayidx.i, i32 20
  %56 = ptrtoint ptr %incdec.ptr11.4.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv14.4.i, ptr %incdec.ptr11.4.i, align 1
  %57 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap, align 4
  %add4.5.i = add nuw nsw i32 %mul.i, 92
  %call.5.i = call i32 @regmap_read(ptr noundef %58, i32 noundef %add4.5.i, ptr noundef nonnull %val.i) #10
  %59 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val.i, align 4
  %conv.5.i = trunc i32 %60 to i8
  %incdec.ptr.5.i = getelementptr i8, ptr %arrayidx.i, i32 21
  %61 = ptrtoint ptr %incdec.ptr15.4.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv.5.i, ptr %incdec.ptr15.4.i, align 1
  %shr.5.i = lshr i32 %60, 8
  %conv6.5.i = trunc i32 %shr.5.i to i8
  %incdec.ptr7.5.i = getelementptr i8, ptr %arrayidx.i, i32 22
  %62 = ptrtoint ptr %incdec.ptr.5.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv6.5.i, ptr %incdec.ptr.5.i, align 1
  %shr8.5.i = lshr i32 %60, 16
  %conv10.5.i = trunc i32 %shr8.5.i to i8
  %incdec.ptr11.5.i = getelementptr i8, ptr %arrayidx.i, i32 23
  %63 = ptrtoint ptr %incdec.ptr7.5.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv10.5.i, ptr %incdec.ptr7.5.i, align 1
  %shr12.5.i = lshr i32 %60, 24
  %conv14.5.i = trunc i32 %shr12.5.i to i8
  %64 = ptrtoint ptr %incdec.ptr11.5.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv14.5.i, ptr %incdec.ptr11.5.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  call void @_raw_spin_unlock(ptr noundef %lock) #10
  %done = getelementptr %struct.mchp_spdifrx_dev, ptr %dev_id, i32 0, i32 1, i32 1, i32 %ch.0161, i32 1
  call void @complete(ptr noundef %done) #10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %blockend_lock.i = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %dev_id, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %blockend_lock.i) #10
  %blockend_refcount.i = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %dev_id, i32 0, i32 3
  %65 = ptrtoint ptr %blockend_refcount.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %blockend_refcount.i, align 4
  %dec.i = add i32 %66, -1
  store i32 %dec.i, ptr %blockend_refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %for.end.mchp_spdifrx_isr_blockend_dis.exit_crit_edge

for.end.mchp_spdifrx_isr_blockend_dis.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %mchp_spdifrx_isr_blockend_dis.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap, align 4
  %call.i78 = call i32 @regmap_write(ptr noundef %68, i32 noundef 20, i32 noundef 8) #10
  br label %mchp_spdifrx_isr_blockend_dis.exit

mchp_spdifrx_isr_blockend_dis.exit:               ; preds = %if.then.i, %for.end.mchp_spdifrx_isr_blockend_dis.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %blockend_lock.i) #10
  br label %for.body21.preheader

for.body21.preheader:                             ; preds = %mchp_spdifrx_isr_blockend_dis.exit, %if.end9.for.body21.preheader_crit_edge
  %ret.1163.ph = phi i32 [ 0, %if.end9.for.body21.preheader_crit_edge ], [ 1, %mchp_spdifrx_isr_blockend_dis.exit ]
  br label %for.body21

for.body21:                                       ; preds = %for.inc30.for.body21_crit_edge, %for.body21.preheader
  %cmp20 = phi i1 [ false, %for.inc30.for.body21_crit_edge ], [ true, %for.body21.preheader ]
  %ch.1164 = phi i32 [ 1, %for.inc30.for.body21_crit_edge ], [ 0, %for.body21.preheader ]
  %ret.1163 = phi i32 [ %ret.2, %for.inc30.for.body21_crit_edge ], [ %ret.1163.ph, %for.body21.preheader ]
  %idr.0162 = phi i32 [ %idr.1, %for.inc30.for.body21_crit_edge ], [ 0, %for.body21.preheader ]
  %shl = shl nuw nsw i32 256, %ch.1164
  %and22 = and i32 %shl, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %for.body21.for.inc30_crit_edge, label %if.then24

for.body21.for.inc30_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30

if.then24:                                        ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i80 = getelementptr [2 x %struct.mchp_spdifrx_ch_stat], ptr %control, i32 0, i32 %ch.1164
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i79) #10
  %69 = ptrtoint ptr %val.i79 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %val.i79, align 4, !annotation !157
  %mul.i82 = mul nuw nsw i32 %ch.1164, 48
  %add.i83 = add nuw nsw i32 %mul.i82, 48
  %70 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap, align 4
  %call.i84 = call i32 @regmap_read(ptr noundef %71, i32 noundef %add.i83, ptr noundef nonnull %val.i79) #10
  %72 = ptrtoint ptr %val.i79 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %val.i79, align 4
  %conv.i85 = trunc i32 %73 to i8
  %incdec.ptr.i86 = getelementptr i8, ptr %arrayidx.i80, i32 1
  %74 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv.i85, ptr %arrayidx.i80, align 1
  %shr.i87 = lshr i32 %73, 8
  %conv6.i88 = trunc i32 %shr.i87 to i8
  %incdec.ptr7.i89 = getelementptr i8, ptr %arrayidx.i80, i32 2
  %75 = ptrtoint ptr %incdec.ptr.i86 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv6.i88, ptr %incdec.ptr.i86, align 1
  %shr8.i90 = lshr i32 %73, 16
  %conv10.i91 = trunc i32 %shr8.i90 to i8
  %incdec.ptr11.i92 = getelementptr i8, ptr %arrayidx.i80, i32 3
  %76 = ptrtoint ptr %incdec.ptr7.i89 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv10.i91, ptr %incdec.ptr7.i89, align 1
  %shr12.i93 = lshr i32 %73, 24
  %conv14.i94 = trunc i32 %shr12.i93 to i8
  %incdec.ptr15.i95 = getelementptr i8, ptr %arrayidx.i80, i32 4
  %77 = ptrtoint ptr %incdec.ptr11.i92 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv14.i94, ptr %incdec.ptr11.i92, align 1
  %78 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regmap, align 4
  %add4.1.i96 = add nuw nsw i32 %mul.i82, 52
  %call.1.i97 = call i32 @regmap_read(ptr noundef %79, i32 noundef %add4.1.i96, ptr noundef nonnull %val.i79) #10
  %80 = ptrtoint ptr %val.i79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %val.i79, align 4
  %conv.1.i98 = trunc i32 %81 to i8
  %incdec.ptr.1.i99 = getelementptr i8, ptr %arrayidx.i80, i32 5
  %82 = ptrtoint ptr %incdec.ptr15.i95 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv.1.i98, ptr %incdec.ptr15.i95, align 1
  %shr.1.i100 = lshr i32 %81, 8
  %conv6.1.i101 = trunc i32 %shr.1.i100 to i8
  %incdec.ptr7.1.i102 = getelementptr i8, ptr %arrayidx.i80, i32 6
  %83 = ptrtoint ptr %incdec.ptr.1.i99 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv6.1.i101, ptr %incdec.ptr.1.i99, align 1
  %shr8.1.i103 = lshr i32 %81, 16
  %conv10.1.i104 = trunc i32 %shr8.1.i103 to i8
  %incdec.ptr11.1.i105 = getelementptr i8, ptr %arrayidx.i80, i32 7
  %84 = ptrtoint ptr %incdec.ptr7.1.i102 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv10.1.i104, ptr %incdec.ptr7.1.i102, align 1
  %shr12.1.i106 = lshr i32 %81, 24
  %conv14.1.i107 = trunc i32 %shr12.1.i106 to i8
  %incdec.ptr15.1.i108 = getelementptr i8, ptr %arrayidx.i80, i32 8
  %85 = ptrtoint ptr %incdec.ptr11.1.i105 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv14.1.i107, ptr %incdec.ptr11.1.i105, align 1
  %86 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regmap, align 4
  %add4.2.i109 = add nuw nsw i32 %mul.i82, 56
  %call.2.i110 = call i32 @regmap_read(ptr noundef %87, i32 noundef %add4.2.i109, ptr noundef nonnull %val.i79) #10
  %88 = ptrtoint ptr %val.i79 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %val.i79, align 4
  %conv.2.i111 = trunc i32 %89 to i8
  %incdec.ptr.2.i112 = getelementptr i8, ptr %arrayidx.i80, i32 9
  %90 = ptrtoint ptr %incdec.ptr15.1.i108 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv.2.i111, ptr %incdec.ptr15.1.i108, align 1
  %shr.2.i113 = lshr i32 %89, 8
  %conv6.2.i114 = trunc i32 %shr.2.i113 to i8
  %incdec.ptr7.2.i115 = getelementptr i8, ptr %arrayidx.i80, i32 10
  %91 = ptrtoint ptr %incdec.ptr.2.i112 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv6.2.i114, ptr %incdec.ptr.2.i112, align 1
  %shr8.2.i116 = lshr i32 %89, 16
  %conv10.2.i117 = trunc i32 %shr8.2.i116 to i8
  %incdec.ptr11.2.i118 = getelementptr i8, ptr %arrayidx.i80, i32 11
  %92 = ptrtoint ptr %incdec.ptr7.2.i115 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv10.2.i117, ptr %incdec.ptr7.2.i115, align 1
  %shr12.2.i119 = lshr i32 %89, 24
  %conv14.2.i120 = trunc i32 %shr12.2.i119 to i8
  %incdec.ptr15.2.i121 = getelementptr i8, ptr %arrayidx.i80, i32 12
  %93 = ptrtoint ptr %incdec.ptr11.2.i118 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv14.2.i120, ptr %incdec.ptr11.2.i118, align 1
  %94 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regmap, align 4
  %add4.3.i122 = add nuw nsw i32 %mul.i82, 60
  %call.3.i123 = call i32 @regmap_read(ptr noundef %95, i32 noundef %add4.3.i122, ptr noundef nonnull %val.i79) #10
  %96 = ptrtoint ptr %val.i79 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %val.i79, align 4
  %conv.3.i124 = trunc i32 %97 to i8
  %incdec.ptr.3.i125 = getelementptr i8, ptr %arrayidx.i80, i32 13
  %98 = ptrtoint ptr %incdec.ptr15.2.i121 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv.3.i124, ptr %incdec.ptr15.2.i121, align 1
  %shr.3.i126 = lshr i32 %97, 8
  %conv6.3.i127 = trunc i32 %shr.3.i126 to i8
  %incdec.ptr7.3.i128 = getelementptr i8, ptr %arrayidx.i80, i32 14
  %99 = ptrtoint ptr %incdec.ptr.3.i125 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv6.3.i127, ptr %incdec.ptr.3.i125, align 1
  %shr8.3.i129 = lshr i32 %97, 16
  %conv10.3.i130 = trunc i32 %shr8.3.i129 to i8
  %incdec.ptr11.3.i131 = getelementptr i8, ptr %arrayidx.i80, i32 15
  %100 = ptrtoint ptr %incdec.ptr7.3.i128 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv10.3.i130, ptr %incdec.ptr7.3.i128, align 1
  %shr12.3.i132 = lshr i32 %97, 24
  %conv14.3.i133 = trunc i32 %shr12.3.i132 to i8
  %incdec.ptr15.3.i134 = getelementptr i8, ptr %arrayidx.i80, i32 16
  %101 = ptrtoint ptr %incdec.ptr11.3.i131 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv14.3.i133, ptr %incdec.ptr11.3.i131, align 1
  %102 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regmap, align 4
  %add4.4.i135 = or i32 %mul.i82, 64
  %call.4.i136 = call i32 @regmap_read(ptr noundef %103, i32 noundef %add4.4.i135, ptr noundef nonnull %val.i79) #10
  %104 = ptrtoint ptr %val.i79 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %val.i79, align 4
  %conv.4.i137 = trunc i32 %105 to i8
  %incdec.ptr.4.i138 = getelementptr i8, ptr %arrayidx.i80, i32 17
  %106 = ptrtoint ptr %incdec.ptr15.3.i134 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv.4.i137, ptr %incdec.ptr15.3.i134, align 1
  %shr.4.i139 = lshr i32 %105, 8
  %conv6.4.i140 = trunc i32 %shr.4.i139 to i8
  %incdec.ptr7.4.i141 = getelementptr i8, ptr %arrayidx.i80, i32 18
  %107 = ptrtoint ptr %incdec.ptr.4.i138 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv6.4.i140, ptr %incdec.ptr.4.i138, align 1
  %shr8.4.i142 = lshr i32 %105, 16
  %conv10.4.i143 = trunc i32 %shr8.4.i142 to i8
  %incdec.ptr11.4.i144 = getelementptr i8, ptr %arrayidx.i80, i32 19
  %108 = ptrtoint ptr %incdec.ptr7.4.i141 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv10.4.i143, ptr %incdec.ptr7.4.i141, align 1
  %shr12.4.i145 = lshr i32 %105, 24
  %conv14.4.i146 = trunc i32 %shr12.4.i145 to i8
  %incdec.ptr15.4.i147 = getelementptr i8, ptr %arrayidx.i80, i32 20
  %109 = ptrtoint ptr %incdec.ptr11.4.i144 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv14.4.i146, ptr %incdec.ptr11.4.i144, align 1
  %110 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regmap, align 4
  %add4.5.i148 = or i32 %mul.i82, 68
  %call.5.i149 = call i32 @regmap_read(ptr noundef %111, i32 noundef %add4.5.i148, ptr noundef nonnull %val.i79) #10
  %112 = ptrtoint ptr %val.i79 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %val.i79, align 4
  %conv.5.i150 = trunc i32 %113 to i8
  %incdec.ptr.5.i151 = getelementptr i8, ptr %arrayidx.i80, i32 21
  %114 = ptrtoint ptr %incdec.ptr15.4.i147 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv.5.i150, ptr %incdec.ptr15.4.i147, align 1
  %shr.5.i152 = lshr i32 %113, 8
  %conv6.5.i153 = trunc i32 %shr.5.i152 to i8
  %incdec.ptr7.5.i154 = getelementptr i8, ptr %arrayidx.i80, i32 22
  %115 = ptrtoint ptr %incdec.ptr.5.i151 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv6.5.i153, ptr %incdec.ptr.5.i151, align 1
  %shr8.5.i155 = lshr i32 %113, 16
  %conv10.5.i156 = trunc i32 %shr8.5.i155 to i8
  %incdec.ptr11.5.i157 = getelementptr i8, ptr %arrayidx.i80, i32 23
  %116 = ptrtoint ptr %incdec.ptr7.5.i154 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv10.5.i156, ptr %incdec.ptr7.5.i154, align 1
  %shr12.5.i158 = lshr i32 %113, 24
  %conv14.5.i159 = trunc i32 %shr12.5.i158 to i8
  %117 = ptrtoint ptr %incdec.ptr11.5.i157 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv14.5.i159, ptr %incdec.ptr11.5.i157, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i79) #10
  %done26 = getelementptr [2 x %struct.mchp_spdifrx_ch_stat], ptr %control, i32 0, i32 %ch.1164, i32 1
  call void @complete(ptr noundef %done26) #10
  %or = or i32 %shl, %idr.0162
  br label %for.inc30

for.inc30:                                        ; preds = %if.then24, %for.body21.for.inc30_crit_edge
  %idr.1 = phi i32 [ %or, %if.then24 ], [ %idr.0162, %for.body21.for.inc30_crit_edge ]
  %ret.2 = phi i32 [ 1, %if.then24 ], [ %ret.1163, %for.body21.for.inc30_crit_edge ]
  br i1 %cmp20, label %for.inc30.for.body21_crit_edge, label %for.end32

for.inc30.for.body21_crit_edge:                   ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body21

for.end32:                                        ; preds = %for.inc30
  %and33 = and i32 %and, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %for.end32.if.end40_crit_edge, label %do.end38

for.end32.if.end40_crit_edge:                     ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

do.end38:                                         ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #12
  %dev39 = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %dev_id, i32 0, i32 4
  %118 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev39, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %119, ptr noundef nonnull @.str.26) #13
  br label %if.end40

if.end40:                                         ; preds = %do.end38, %for.end32.if.end40_crit_edge
  %ret.3 = phi i32 [ 1, %do.end38 ], [ %ret.2, %for.end32.if.end40_crit_edge ]
  %120 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regmap, align 4
  %call42 = call i32 @regmap_write(ptr noundef %121, i32 noundef 20, i32 noundef %idr.1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %if.end40 ], [ 0, %do.end.cleanup_crit_edge ]
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mchp_spdifrx_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 4, label %entry.return_crit_edge1
    i32 16, label %entry.return_crit_edge2
    i32 20, label %entry.return_crit_edge3
    i32 228, label %entry.return_crit_edge4
  ]

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mchp_spdifrx_readable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -4
  %1 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 30)
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %1, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 5, label %entry.return_crit_edge1
    i32 6, label %entry.return_crit_edge2
    i32 7, label %entry.return_crit_edge3
    i32 11, label %entry.return_crit_edge4
    i32 12, label %entry.return_crit_edge5
    i32 13, label %entry.return_crit_edge6
    i32 14, label %entry.return_crit_edge7
    i32 15, label %entry.return_crit_edge8
    i32 16, label %entry.return_crit_edge9
    i32 17, label %entry.return_crit_edge10
    i32 18, label %entry.return_crit_edge11
    i32 19, label %entry.return_crit_edge12
    i32 20, label %entry.return_crit_edge13
    i32 21, label %entry.return_crit_edge14
    i32 22, label %entry.return_crit_edge15
    i32 23, label %entry.return_crit_edge16
    i32 24, label %entry.return_crit_edge17
    i32 25, label %entry.return_crit_edge18
    i32 26, label %entry.return_crit_edge19
    i32 27, label %entry.return_crit_edge20
    i32 28, label %entry.return_crit_edge21
    i32 29, label %entry.return_crit_edge22
    i32 30, label %entry.return_crit_edge23
    i32 31, label %entry.return_crit_edge24
    i32 32, label %entry.return_crit_edge25
    i32 33, label %entry.return_crit_edge26
    i32 34, label %entry.return_crit_edge27
    i32 56, label %entry.return_crit_edge28
    i32 57, label %entry.return_crit_edge29
    i32 62, label %entry.return_crit_edge30
  ]

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mchp_spdifrx_precious_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -28
  %switch.and = and i32 %0, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  ret i1 %switch.selectcmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_spdifrx_dai_probe(ptr noundef %dai) #2 align 64 {
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
  %pclk = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %5) #10
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %dev2 = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.30, i32 noundef %retval.0.i.ph) #13
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %8 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %playback_dma_data.i, align 4
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %9 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %capture_dma_data.i, align 4
  %regmap = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 0, i32 noundef 1) #10
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 4, i32 noundef 258) #10
  %blockend_refcount = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %blockend_refcount to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %blockend_refcount, align 4
  %done = getelementptr %struct.mchp_spdifrx_dev, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr %struct.mchp_spdifrx_dev, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @init_completion.__key) #10
  %done7 = getelementptr %struct.mchp_spdifrx_dev, ptr %3, i32 0, i32 1, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %done7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %done7, align 4
  %wait.i34 = getelementptr %struct.mchp_spdifrx_dev, ptr %3, i32 0, i32 1, i32 1, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i34, ptr noundef nonnull @.str.33, ptr noundef nonnull @init_completion.__key) #10
  %lock = getelementptr %struct.mchp_spdifrx_dev, ptr %3, i32 0, i32 1, i32 1, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.32, ptr noundef nonnull @mchp_spdifrx_dai_probe.__key, i16 noundef signext 3) #10
  %done.1 = getelementptr %struct.mchp_spdifrx_dev, ptr %3, i32 0, i32 1, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %done.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %done.1, align 4
  %wait.i.1 = getelementptr %struct.mchp_spdifrx_dev, ptr %3, i32 0, i32 1, i32 0, i32 1, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.1, ptr noundef nonnull @.str.33, ptr noundef nonnull @init_completion.__key) #10
  %done7.1 = getelementptr %struct.mchp_spdifrx_dev, ptr %3, i32 0, i32 1, i32 1, i32 1, i32 1
  %18 = ptrtoint ptr %done7.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %done7.1, align 4
  %wait.i34.1 = getelementptr %struct.mchp_spdifrx_dev, ptr %3, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i34.1, ptr noundef nonnull @.str.33, ptr noundef nonnull @init_completion.__key) #10
  %lock.1 = getelementptr %struct.mchp_spdifrx_dev, ptr %3, i32 0, i32 1, i32 1, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.1, ptr noundef nonnull @.str.32, ptr noundef nonnull @mchp_spdifrx_dai_probe.__key, i16 noundef signext 3) #10
  %call14 = tail call i32 @snd_soc_add_dai_controls(ptr noundef %dai, ptr noundef nonnull @mchp_spdifrx_ctrls, i32 noundef 9) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_spdifrx_dai_remove(ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %regmap = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 20, i32 noundef 255) #10
  %pclk = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %7) #10
  tail call void @clk_unprepare(ptr noundef %7) #10
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mchp_spdifrx_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #7 align 64 {
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
define internal i32 @mchp_spdifrx_cs1_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uvalue) #2 align 64 {
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
  %regmap.i = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 16, i32 noundef 256) #10
  %done.i = getelementptr %struct.mchp_spdifrx_dev, ptr %5, i32 0, i32 1, i32 0, i32 0, i32 1
  %call3.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %done.i, i32 noundef 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %do.body.i, label %entry.mchp_spdifrx_cs_get.exit_crit_edge

entry.mchp_spdifrx_cs_get.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mchp_spdifrx_cs_get.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mchp_spdifrx_cs_get.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mchp_spdifrx_cs1_get, %if.then7.i)) #10
          to label %mchp_spdifrx_cs_get.exit [label %if.then7.i], !srcloc !158

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev8.i = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev8.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mchp_spdifrx_cs_get.__UNIQUE_ID_ddebug243, ptr noundef %9, ptr noundef nonnull @.str.44, i32 noundef 0) #10
  br label %mchp_spdifrx_cs_get.exit

mchp_spdifrx_cs_get.exit:                         ; preds = %if.then7.i, %do.body.i, %entry.mchp_spdifrx_cs_get.exit_crit_edge
  %control.i = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %5, i32 0, i32 1
  %value.i = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uvalue, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %value.i, ptr %control.i, i32 24)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_spdifrx_cs2_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uvalue) #2 align 64 {
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
  %regmap.i = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 16, i32 noundef 512) #10
  %done.i = getelementptr %struct.mchp_spdifrx_dev, ptr %5, i32 0, i32 1, i32 0, i32 1, i32 1
  %call3.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %done.i, i32 noundef 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %do.body.i, label %entry.mchp_spdifrx_cs_get.exit_crit_edge

entry.mchp_spdifrx_cs_get.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mchp_spdifrx_cs_get.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mchp_spdifrx_cs_get.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mchp_spdifrx_cs2_get, %if.then7.i)) #10
          to label %mchp_spdifrx_cs_get.exit [label %if.then7.i], !srcloc !158

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev8.i = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev8.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mchp_spdifrx_cs_get.__UNIQUE_ID_ddebug243, ptr noundef %9, ptr noundef nonnull @.str.44, i32 noundef 1) #10
  br label %mchp_spdifrx_cs_get.exit

mchp_spdifrx_cs_get.exit:                         ; preds = %if.then7.i, %do.body.i, %entry.mchp_spdifrx_cs_get.exit_crit_edge
  %arrayidx.i = getelementptr %struct.mchp_spdifrx_dev, ptr %5, i32 0, i32 1, i32 0, i32 1
  %value.i = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uvalue, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %value.i, ptr %arrayidx.i, i32 24)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mchp_spdifrx_cs_mask(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uvalue) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uvalue, i32 0, i32 2
  %0 = call ptr @memset(ptr %value, i32 255, i32 24)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_spdifrx_subcode_ch1_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uvalue) #2 align 64 {
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
  %call1 = tail call fastcc i32 @mchp_spdifrx_subcode_ch_get(ptr noundef %5, i32 noundef 0, ptr noundef %uvalue)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_spdifrx_subcode_ch2_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uvalue) #2 align 64 {
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
  %call1 = tail call fastcc i32 @mchp_spdifrx_subcode_ch_get(ptr noundef %5, i32 noundef 1, ptr noundef %uvalue)
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mchp_spdifrx_boolean_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %type, align 8
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
  store i32 1, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_spdifrx_ulock_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uvalue) #2 align 64 {
entry:
  %val = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !157
  %ulock = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %5, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %ulock to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ulock, align 4, !range !159
  %regmap = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %5, i32 0, i32 5
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %10, i32 noundef 32, ptr noundef nonnull %val) #10
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and = and i32 %12, 1
  %13 = trunc i32 %and to i8
  %14 = xor i8 %13, 1
  %15 = ptrtoint ptr %ulock to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %ulock, align 4
  %16 = xor i32 %and, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uvalue, i32 0, i32 2
  %17 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %value, align 8
  %18 = load i8, ptr %ulock, align 4, !range !159
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %18)
  %cmp = icmp ne i8 %8, %18
  %conv12 = zext i1 %cmp to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %conv12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_spdifrx_badf_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uvalue) #2 align 64 {
entry:
  %val = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !157
  %badf = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %5, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %badf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %badf, align 1, !range !159
  %regmap = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %5, i32 0, i32 5
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %10, i32 noundef 32, ptr noundef nonnull %val) #10
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and = lshr i32 %12, 1
  %and.lobit = and i32 %and, 1
  %13 = trunc i32 %and.lobit to i8
  %14 = ptrtoint ptr %badf to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %badf, align 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uvalue, i32 0, i32 2
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and.lobit, ptr %value, align 8
  %16 = load i8, ptr %badf, align 1, !range !159
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %16)
  %cmp = icmp ne i8 %8, %16
  %conv13 = zext i1 %cmp to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %conv13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_spdifrx_signal_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uvalue) #2 align 64 {
entry:
  %val = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !157
  %signal = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %5, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %signal to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %signal, align 2, !range !159
  %regmap = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %5, i32 0, i32 5
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %10, i32 noundef 32, ptr noundef nonnull %val) #10
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and = lshr i32 %12, 3
  %and.lobit = and i32 %and, 1
  %13 = trunc i32 %and.lobit to i8
  %14 = xor i8 %13, 1
  %15 = ptrtoint ptr %signal to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %signal, align 2
  %16 = xor i32 %and.lobit, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uvalue, i32 0, i32 2
  %17 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %value, align 8
  %18 = load i8, ptr %signal, align 2, !range !159
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %18)
  %cmp = icmp ne i8 %8, %18
  %conv12 = zext i1 %cmp to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %conv12
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mchp_spdifrx_rate_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
define internal i32 @mchp_spdifrx_rate_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  %val = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !157
  %regmap = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %5, i32 0, i32 5
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %8, i32 noundef 32, ptr noundef nonnull %val) #10
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %and2 = and i32 %10, 268369920
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %or.cond = or i1 %tobool.not, %tobool3.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %gclk = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %5, i32 0, i32 7
  %11 = ptrtoint ptr %gclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gclk, align 4
  %call4 = call i32 @clk_get_rate(ptr noundef %12) #10
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %15 = lshr i32 %14, 11
  %mul = and i32 %15, 131040
  %div = udiv i32 %call4, %mul
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %div.sink = phi i32 [ %div, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  %16 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div.sink, ptr %16, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mchp_spdifrx_subcode_ch_get(ptr noundef %dev, i32 noundef %channel, ptr nocapture noundef writeonly %uvalue) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %done = getelementptr %struct.mchp_spdifrx_dev, ptr %dev, i32 0, i32 1, i32 1, i32 %channel, i32 1
  %0 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %done, align 4
  %blockend_lock.i = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %dev, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %blockend_lock.i) #10
  %blockend_refcount.i = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %dev, i32 0, i32 3
  %1 = ptrtoint ptr %blockend_refcount.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %blockend_refcount.i, align 4
  %inc.i = add i32 %2, 1
  store i32 %inc.i, ptr %blockend_refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp6.i = icmp eq i32 %2, 0
  br i1 %cmp6.i, label %if.then.i, label %entry.mchp_spdifrx_isr_blockend_en.exit_crit_edge

entry.mchp_spdifrx_isr_blockend_en.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mchp_spdifrx_isr_blockend_en.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %regmap.i = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %dev, i32 0, i32 5
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call8.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 16, i32 noundef 8) #10
  br label %mchp_spdifrx_isr_blockend_en.exit

mchp_spdifrx_isr_blockend_en.exit:                ; preds = %if.then.i, %entry.mchp_spdifrx_isr_blockend_en.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %blockend_lock.i, i32 noundef %call2.i) #10
  %call3 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %done, i32 noundef 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp = icmp slt i32 %call3, 1
  br i1 %cmp, label %do.body, label %do.body11

do.body:                                          ; preds = %mchp_spdifrx_isr_blockend_en.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mchp_spdifrx_subcode_ch_get.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mchp_spdifrx_subcode_ch_get, %if.then7)) #10
          to label %cleanup [label %if.then7], !srcloc !158

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev8 = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %dev, i32 0, i32 4
  %5 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mchp_spdifrx_subcode_ch_get.__UNIQUE_ID_ddebug244, ptr noundef %6, ptr noundef nonnull @.str.46, i32 noundef %channel) #10
  br label %cleanup

do.body11:                                        ; preds = %mchp_spdifrx_isr_blockend_en.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.mchp_spdifrx_dev, ptr %dev, i32 0, i32 1, i32 1, i32 %channel
  %lock = getelementptr %struct.mchp_spdifrx_dev, ptr %dev, i32 0, i32 1, i32 1, i32 %channel, i32 2
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %subcode = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uvalue, i32 0, i32 2, i32 0, i32 0, i32 3
  %7 = call ptr @memcpy(ptr %subcode, ptr %arrayidx, i32 24)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call15) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body11, %if.then7, %do.body
  %retval.0 = phi i32 [ 0, %do.body11 ], [ %call3, %if.then7 ], [ %call3, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_spdifrx_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  store i32 -1, ptr %mr, align 4, !annotation !157
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mchp_spdifrx_hw_params.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mchp_spdifrx_hw_params, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !158

if.then:                                          ; preds = %entry
  %dev4 = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev4, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i128 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx.i.i128 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %params_format.exit

for.inc.i.i:                                      ; preds = %if.then
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.1.i.i = icmp eq i32 %12, 0
  %13 = tail call i32 @llvm.cttz.i32(i32 %12, i1 true) #10, !range !160
  %add.i.i179 = or i32 %13, 32
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_width.exit_crit_edge, label %for.inc.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.if.then.i.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

for.inc.i.i.params_width.exit_crit_edge:          ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_width.exit

params_format.exit:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %14 = tail call i32 @llvm.cttz.i32(i32 %10, i1 true) #10, !range !160
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %params_format.exit, %for.inc.i.i.if.then.i.i.i_crit_edge
  %.pre-phi = phi i32 [ %14, %params_format.exit ], [ %13, %for.inc.i.i.if.then.i.i.i_crit_edge ]
  %retval.0.i.i173 = phi i32 [ %14, %params_format.exit ], [ %add.i.i179, %for.inc.i.i.if.then.i.i.i_crit_edge ]
  %i.09.lcssa.i.i.i = phi i32 [ 0, %params_format.exit ], [ 32, %for.inc.i.i.if.then.i.i.i_crit_edge ]
  %add.i.i.i = or i32 %.pre-phi, %i.09.lcssa.i.i.i
  br label %params_width.exit

params_width.exit:                                ; preds = %if.then.i.i.i, %for.inc.i.i.params_width.exit_crit_edge
  %retval.0.i.i174 = phi i32 [ %retval.0.i.i173, %if.then.i.i.i ], [ 0, %for.inc.i.i.params_width.exit_crit_edge ]
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #10
  %arrayidx.i.i129 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %arrayidx.i.i129 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i129, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mchp_spdifrx_hw_params.__UNIQUE_ID_ddebug241, ptr noundef %6, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47, i32 noundef %8, i32 noundef %retval.0.i.i174, i32 noundef %call1.i, i32 noundef %16) #10
  br label %do.end

do.end:                                           ; preds = %params_width.exit, %entry
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %17 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %do.end12, label %if.end14

do.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev13 = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %3, i32 0, i32 4
  %19 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.49) #13
  br label %cleanup

if.end14:                                         ; preds = %do.end
  %regmap = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %3, i32 0, i32 5
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call15 = call i32 @regmap_read(ptr noundef %22, i32 noundef 4, ptr noundef nonnull %mr) #10
  %23 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mr, align 4
  %and = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end22, label %do.end20

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %dev21 = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %3, i32 0, i32 4
  %25 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.51) #13
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %arrayidx.i.i130 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %27 = ptrtoint ptr %arrayidx.i.i130 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp24.not = icmp eq i32 %28, 2
  br i1 %cmp24.not, label %if.end31, label %do.end28

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %dev29 = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %3, i32 0, i32 4
  %29 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev29, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.54, i32 noundef %28) #13
  br label %cleanup

if.end31:                                         ; preds = %if.end22
  %arrayidx.i.i132 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %arrayidx.i.i132 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i.i133 = icmp eq i32 %32, 0
  br i1 %tobool.not.i.i133, label %for.inc.i.i140, label %if.end31.params_format.exit142_crit_edge

if.end31.params_format.exit142_crit_edge:         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_format.exit142

for.inc.i.i140:                                   ; preds = %if.end31
  %arrayidx.1.i.i138 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx.1.i.i138 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.1.i.i138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.1.i.i139 = icmp eq i32 %34, 0
  br i1 %tobool.not.1.i.i139, label %do.end39.thread, label %for.inc.i.i140.params_format.exit142_crit_edge

for.inc.i.i140.params_format.exit142_crit_edge:   ; preds = %for.inc.i.i140
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_format.exit142

do.end39.thread:                                  ; preds = %for.inc.i.i140
  call void @__sanitizer_cov_trace_pc() #12
  %dev40181 = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %3, i32 0, i32 4
  %35 = ptrtoint ptr %dev40181 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev40181, align 4
  br label %for.inc.i.i163

params_format.exit142:                            ; preds = %for.inc.i.i140.params_format.exit142_crit_edge, %if.end31.params_format.exit142_crit_edge
  %i.09.lcssa.i.i134 = phi i32 [ 0, %if.end31.params_format.exit142_crit_edge ], [ 32, %for.inc.i.i140.params_format.exit142_crit_edge ]
  %.lcssa.i.i135 = phi i32 [ %32, %if.end31.params_format.exit142_crit_edge ], [ %34, %for.inc.i.i140.params_format.exit142_crit_edge ]
  %37 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i135, i1 true) #10, !range !160
  %add.i.i136 = or i32 %37, %i.09.lcssa.i.i134
  %38 = zext i32 %add.i.i136 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %add.i.i136, label %do.end39 [
    i32 3, label %params_format.exit142.sw.bb_crit_edge
    i32 37, label %params_format.exit142.sw.bb_crit_edge186
    i32 33, label %params_format.exit142.sw.bb_crit_edge187
    i32 7, label %params_format.exit142.sw.bb_crit_edge188
    i32 2, label %params_format.exit142.sw.bb33_crit_edge
    i32 36, label %params_format.exit142.sw.bb33_crit_edge189
    i32 32, label %params_format.exit142.sw.bb33_crit_edge190
    i32 6, label %params_format.exit142.sw.bb33_crit_edge191
  ]

params_format.exit142.sw.bb33_crit_edge191:       ; preds = %params_format.exit142
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb33

params_format.exit142.sw.bb33_crit_edge190:       ; preds = %params_format.exit142
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb33

params_format.exit142.sw.bb33_crit_edge189:       ; preds = %params_format.exit142
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb33

params_format.exit142.sw.bb33_crit_edge:          ; preds = %params_format.exit142
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb33

params_format.exit142.sw.bb_crit_edge188:         ; preds = %params_format.exit142
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

params_format.exit142.sw.bb_crit_edge187:         ; preds = %params_format.exit142
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

params_format.exit142.sw.bb_crit_edge186:         ; preds = %params_format.exit142
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

params_format.exit142.sw.bb_crit_edge:            ; preds = %params_format.exit142
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %params_format.exit142.sw.bb_crit_edge, %params_format.exit142.sw.bb_crit_edge186, %params_format.exit142.sw.bb_crit_edge187, %params_format.exit142.sw.bb_crit_edge188
  %or = or i32 %24, 4
  %39 = ptrtoint ptr %mr to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or, ptr %mr, align 4
  br label %sw.bb33

sw.bb33:                                          ; preds = %sw.bb, %params_format.exit142.sw.bb33_crit_edge, %params_format.exit142.sw.bb33_crit_edge189, %params_format.exit142.sw.bb33_crit_edge190, %params_format.exit142.sw.bb33_crit_edge191
  br i1 %tobool.not.i.i133, label %for.inc.i.i.i151, label %sw.bb33.if.then.i.i.i148_crit_edge

sw.bb33.if.then.i.i.i148_crit_edge:               ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i148

if.then.i.i.i148:                                 ; preds = %for.inc.i.i.i151.if.then.i.i.i148_crit_edge, %sw.bb33.if.then.i.i.i148_crit_edge
  %i.09.lcssa.i.i.i145 = phi i32 [ 0, %sw.bb33.if.then.i.i.i148_crit_edge ], [ 32, %for.inc.i.i.i151.if.then.i.i.i148_crit_edge ]
  %.lcssa.i.i.i146 = phi i32 [ %32, %sw.bb33.if.then.i.i.i148_crit_edge ], [ %42, %for.inc.i.i.i151.if.then.i.i.i148_crit_edge ]
  %40 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i146, i1 true) #10, !range !160
  %add.i.i.i147 = or i32 %40, %i.09.lcssa.i.i.i145
  br label %params_width.exit154

for.inc.i.i.i151:                                 ; preds = %sw.bb33
  %arrayidx.1.i.i.i149 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %41 = ptrtoint ptr %arrayidx.1.i.i.i149 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.1.i.i.i149, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.1.i.i.i150 = icmp eq i32 %42, 0
  br i1 %tobool.not.1.i.i.i150, label %for.inc.i.i.i151.params_width.exit154_crit_edge, label %for.inc.i.i.i151.if.then.i.i.i148_crit_edge

for.inc.i.i.i151.if.then.i.i.i148_crit_edge:      ; preds = %for.inc.i.i.i151
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i148

for.inc.i.i.i151.params_width.exit154_crit_edge:  ; preds = %for.inc.i.i.i151
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_width.exit154

params_width.exit154:                             ; preds = %for.inc.i.i.i151.params_width.exit154_crit_edge, %if.then.i.i.i148
  %retval.0.i.i.i152 = phi i32 [ %add.i.i.i147, %if.then.i.i.i148 ], [ 0, %for.inc.i.i.i151.params_width.exit154_crit_edge ]
  %call1.i153 = call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i152) #10
  %div.neg = sdiv i32 %call1.i153, -4
  %sub = shl i32 %div.neg, 4
  %shl = add i32 %sub, 32
  %and35 = and i32 %shl, 48
  %43 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mr, align 4
  %or36 = or i32 %and35, %44
  store i32 %or36, ptr %mr, align 4
  %gclk_enabled = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %3, i32 0, i32 9
  %45 = ptrtoint ptr %gclk_enabled to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load = load i8, ptr %gclk_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool42.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool42.not, label %params_width.exit154.if.end46_crit_edge, label %if.then43

params_width.exit154.if.end46_crit_edge:          ; preds = %params_width.exit154
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

do.end39:                                         ; preds = %params_format.exit142
  %dev40 = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %3, i32 0, i32 4
  %46 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev40, align 4
  br i1 %tobool.not.i.i133, label %do.end39.for.inc.i.i163_crit_edge, label %do.end39.if.then.i.i160_crit_edge

do.end39.if.then.i.i160_crit_edge:                ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i160

do.end39.for.inc.i.i163_crit_edge:                ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i163

if.then.i.i160:                                   ; preds = %for.inc.i.i163.if.then.i.i160_crit_edge, %do.end39.if.then.i.i160_crit_edge
  %48 = phi ptr [ %47, %do.end39.if.then.i.i160_crit_edge ], [ %50, %for.inc.i.i163.if.then.i.i160_crit_edge ]
  %i.09.lcssa.i.i157 = phi i32 [ 0, %do.end39.if.then.i.i160_crit_edge ], [ 32, %for.inc.i.i163.if.then.i.i160_crit_edge ]
  %.lcssa.i.i158 = phi i32 [ %32, %do.end39.if.then.i.i160_crit_edge ], [ %52, %for.inc.i.i163.if.then.i.i160_crit_edge ]
  %49 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i158, i1 true) #10, !range !160
  %add.i.i159 = or i32 %49, %i.09.lcssa.i.i157
  br label %params_format.exit165

for.inc.i.i163:                                   ; preds = %do.end39.for.inc.i.i163_crit_edge, %do.end39.thread
  %50 = phi ptr [ %36, %do.end39.thread ], [ %47, %do.end39.for.inc.i.i163_crit_edge ]
  %arrayidx.1.i.i161 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %51 = ptrtoint ptr %arrayidx.1.i.i161 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.1.i.i161, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.1.i.i162 = icmp eq i32 %52, 0
  br i1 %tobool.not.1.i.i162, label %for.inc.i.i163.params_format.exit165_crit_edge, label %for.inc.i.i163.if.then.i.i160_crit_edge

for.inc.i.i163.if.then.i.i160_crit_edge:          ; preds = %for.inc.i.i163
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i160

for.inc.i.i163.params_format.exit165_crit_edge:   ; preds = %for.inc.i.i163
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_format.exit165

params_format.exit165:                            ; preds = %for.inc.i.i163.params_format.exit165_crit_edge, %if.then.i.i160
  %53 = phi ptr [ %48, %if.then.i.i160 ], [ %50, %for.inc.i.i163.params_format.exit165_crit_edge ]
  %retval.0.i.i164 = phi i32 [ %add.i.i159, %if.then.i.i160 ], [ 0, %for.inc.i.i163.params_format.exit165_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.57, i32 noundef %retval.0.i.i164) #13
  br label %cleanup

if.then43:                                        ; preds = %params_width.exit154
  call void @__sanitizer_cov_trace_pc() #12
  %gclk = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %3, i32 0, i32 7
  %54 = ptrtoint ptr %gclk to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %gclk, align 4
  call void @clk_disable(ptr noundef %55) #10
  call void @clk_unprepare(ptr noundef %55) #10
  %56 = ptrtoint ptr %gclk_enabled to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load45 = load i8, ptr %gclk_enabled, align 4
  %bf.clear = and i8 %bf.load45, 127
  store i8 %bf.clear, ptr %gclk_enabled, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %params_width.exit154.if.end46_crit_edge
  %gclk47 = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %3, i32 0, i32 7
  %57 = ptrtoint ptr %gclk47 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %gclk47, align 4
  %arrayidx.i.i166 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %59 = ptrtoint ptr %arrayidx.i.i166 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i.i166, align 4
  %mul = mul i32 %60, 768
  %add = or i32 %mul, 1
  %call49 = call i32 @clk_set_min_rate(ptr noundef %58, i32 noundef %add) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end57, label %do.end54

do.end54:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %dev55 = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %3, i32 0, i32 4
  %61 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev55, align 4
  %63 = ptrtoint ptr %arrayidx.i.i166 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i.i166, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.60, i32 noundef %64, i32 noundef 768) #13
  br label %cleanup

if.end57:                                         ; preds = %if.end46
  %65 = ptrtoint ptr %gclk47 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %gclk47, align 4
  %call.i = call i32 @clk_prepare(ptr noundef %66) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end57.do.end64_crit_edge

if.end57.do.end64_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end64

if.end.i:                                         ; preds = %if.end57
  %call1.i168 = call i32 @clk_enable(ptr noundef %66) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i168)
  %tobool2.not.i = icmp eq i32 %call1.i168, 0
  br i1 %tobool2.not.i, label %if.end66, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @clk_unprepare(ptr noundef %66) #10
  br label %do.end64

do.end64:                                         ; preds = %if.then3.i, %if.end57.do.end64_crit_edge
  %retval.0.i169.ph = phi i32 [ %call1.i168, %if.then3.i ], [ %call.i, %if.end57.do.end64_crit_edge ]
  %dev65 = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %3, i32 0, i32 4
  %67 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev65, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.63, i32 noundef %retval.0.i169.ph) #13
  br label %cleanup

if.end66:                                         ; preds = %if.end.i
  %69 = ptrtoint ptr %gclk_enabled to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load68 = load i8, ptr %gclk_enabled, align 4
  %bf.set70 = or i8 %bf.load68, -128
  store i8 %bf.set70, ptr %gclk_enabled, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mchp_spdifrx_hw_params.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mchp_spdifrx_hw_params, %if.then83)) #10
          to label %do.end90 [label %if.then83], !srcloc !158

if.then83:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %dev84 = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %3, i32 0, i32 4
  %70 = ptrtoint ptr %dev84 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev84, align 4
  %72 = ptrtoint ptr %arrayidx.i.i166 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i.i166, align 4
  %mul86 = mul i32 %73, 768
  %add87 = or i32 %mul86, 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mchp_spdifrx_hw_params.__UNIQUE_ID_ddebug242, ptr noundef %71, ptr noundef nonnull @.str.65, i32 noundef %add87) #10
  br label %do.end90

do.end90:                                         ; preds = %if.then83, %if.end66
  %74 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regmap, align 4
  %76 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %mr, align 4
  %call92 = call i32 @regmap_write(ptr noundef %75, i32 noundef 4, i32 noundef %77) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end90, %do.end64, %do.end54, %params_format.exit165, %do.end28, %do.end20, %do.end12
  %retval.0 = phi i32 [ -22, %do.end12 ], [ -16, %do.end20 ], [ -22, %do.end28 ], [ -22, %params_format.exit165 ], [ %call49, %do.end54 ], [ %retval.0.i169.ph, %do.end64 ], [ %call92, %do.end90 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mr) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_spdifrx_hw_free(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %gclk_enabled = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %gclk_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %gclk_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %gclk = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %gclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gclk, align 4
  tail call void @clk_disable(ptr noundef %6) #10
  tail call void @clk_unprepare(ptr noundef %6) #10
  %7 = ptrtoint ptr %gclk_enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load2 = load i8, ptr %gclk_enabled, align 4
  %bf.clear = and i8 %bf.load2, 127
  store i8 %bf.clear, ptr %gclk_enabled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_spdifrx_trigger(ptr nocapture noundef readnone %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  store i32 -1, ptr %mr, align 4, !annotation !157
  %regmap = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %3, i32 0, i32 5
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
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge32
    i32 4, label %entry.sw.bb_crit_edge33
    i32 0, label %entry.sw.bb7_crit_edge
    i32 5, label %entry.sw.bb7_crit_edge34
    i32 3, label %entry.sw.bb7_crit_edge35
  ]

entry.sw.bb7_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb_crit_edge33:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge32:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge32, %entry.sw.bb_crit_edge33
  br i1 %tobool.not, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %8, 1
  br label %sw.epilog.sink.split

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge34, %entry.sw.bb7_crit_edge35
  br i1 %tobool.not, label %sw.bb7.sw.epilog_crit_edge, label %if.then9

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then9:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  %and10 = and i32 %8, -2
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then9, %if.then
  %storemerge = phi i32 [ %and10, %if.then9 ], [ %or, %if.then ]
  %.sink31 = phi i32 [ 20, %if.then9 ], [ 16, %if.then ]
  %10 = ptrtoint ptr %mr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %storemerge, ptr %mr, align 4
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call13 = call i32 @regmap_write(ptr noundef %12, i32 noundef %.sink31, i32 noundef 64) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb7.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %15 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mr, align 4
  %call16 = call i32 @regmap_write(ptr noundef %14, i32 noundef 4, i32 noundef %16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %sw.epilog.cleanup_crit_edge, label %do.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %dev19 = getelementptr inbounds %struct.mchp_spdifrx_dev, ptr %3, i32 0, i32 4
  %17 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev19, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.66, i32 noundef %call16) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mr) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_min_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !32, !33, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !65, !67, !69, !71, !72, !73, !74, !76, !77, !79, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !103, !104, !106, !107, !108, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !143, !144, !145, !146}
!llvm.module.flags = !{!148, !149, !150, !151, !152, !153, !154, !155}
!llvm.ident = !{!156}

!0 = !{ptr @__initcall__kmod_snd_soc_mchp_spdifrx__245_949_mchp_spdifrx_driver_init6, !1, !"__initcall__kmod_snd_soc_mchp_spdifrx__245_949_mchp_spdifrx_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 949, i32 1}
!2 = !{ptr @__exitcall_mchp_spdifrx_driver_exit, !1, !"__exitcall_mchp_spdifrx_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author246, !4, !"__UNIQUE_ID_author246", i1 false, i1 false}
!4 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 951, i32 1}
!5 = !{ptr @__UNIQUE_ID_description247, !6, !"__UNIQUE_ID_description247", i1 false, i1 false}
!6 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 952, i32 1}
!7 = !{ptr @__UNIQUE_ID_file248, !8, !"__UNIQUE_ID_file248", i1 false, i1 false}
!8 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 953, i32 1}
!9 = !{ptr @__UNIQUE_ID_license249, !8, !"__UNIQUE_ID_license249", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 944, i32 11}
!12 = !{ptr @mchp_spdifrx_driver, !13, !"mchp_spdifrx_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 941, i32 31}
!14 = !{ptr @mchp_spdifrx_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 880, i32 11}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 896, i32 39}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 899, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mchp_spdifrx_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @mchp_spdifrx_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 905, i32 39}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 908, i32 3}
!31 = !{ptr @mchp_spdifrx_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @mchp_spdifrx_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @mchp_spdifrx_probe.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 912, i32 2}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 923, i32 3}
!38 = !{ptr @mchp_spdifrx_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mchp_spdifrx_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 931, i32 3}
!42 = !{ptr @mchp_spdifrx_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mchp_spdifrx_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 936, i32 2}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @mchp_spdifrx_probe._entry.19, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @mchp_spdifrx_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @mchp_spdifrx_regmap_config, !50, !"mchp_spdifrx_regmap_config", i1 false, i1 false}
!50 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 195, i32 35}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 313, i32 2}
!53 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @mchp_spdif_interrupt.__UNIQUE_ID_ddebug240, !52, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 341, i32 3}
!58 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @mchp_spdif_interrupt._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @mchp_spdif_interrupt._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 849, i32 11}
!63 = !{ptr @mchp_spdifrx_component, !64, !"mchp_spdifrx_component", i1 false, i1 false}
!64 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 848, i32 46}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 839, i32 18}
!67 = !{ptr @mchp_spdifrx_dai, !68, !"mchp_spdifrx_dai", i1 false, i1 false}
!68 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 834, i32 34}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 791, i32 3}
!71 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @mchp_spdifrx_dai_probe._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @mchp_spdifrx_dai_probe._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @mchp_spdifrx_dai_probe.__key, !75, !"__key", i1 false, i1 false}
!75 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 812, i32 3}
!76 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @init_completion.__key, !78, !"__key", i1 false, i1 false}
!78 = !{!"../include/linux/completion.h", i32 87, i32 2}
!79 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 704, i32 11}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 713, i32 11}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 722, i32 11}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 730, i32 11}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 738, i32 11}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 747, i32 11}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 756, i32 11}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 765, i32 11}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 774, i32 11}
!98 = !{ptr @mchp_spdifrx_ctrls, !99, !"mchp_spdifrx_ctrls", i1 false, i1 false}
!99 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 700, i32 32}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 524, i32 3}
!102 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @mchp_spdifrx_cs_get.__UNIQUE_ID_ddebug243, !101, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 576, i32 3}
!106 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @mchp_spdifrx_subcode_ch_get.__UNIQUE_ID_ddebug244, !105, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!108 = !{ptr @mchp_spdifrx_dai_ops, !109, !"mchp_spdifrx_dai_ops", i1 false, i1 false}
!109 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 483, i32 37}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 405, i32 2}
!112 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @mchp_spdifrx_hw_params.__UNIQUE_ID_ddebug241, !111, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!114 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 410, i32 3}
!116 = !{ptr @mchp_spdifrx_hw_params._entry, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @mchp_spdifrx_hw_params._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 417, i32 3}
!120 = !{ptr @mchp_spdifrx_hw_params._entry.50, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @mchp_spdifrx_hw_params._entry_ptr.52, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 422, i32 3}
!124 = !{ptr @mchp_spdifrx_hw_params._entry.53, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @mchp_spdifrx_hw_params._entry_ptr.55, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 441, i32 3}
!128 = !{ptr @mchp_spdifrx_hw_params._entry.56, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @mchp_spdifrx_hw_params._entry_ptr.58, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 453, i32 3}
!132 = !{ptr @mchp_spdifrx_hw_params._entry.59, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @mchp_spdifrx_hw_params._entry_ptr.61, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 460, i32 3}
!136 = !{ptr @mchp_spdifrx_hw_params._entry.62, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @mchp_spdifrx_hw_params._entry_ptr.64, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 465, i32 2}
!140 = !{ptr @mchp_spdifrx_hw_params.__UNIQUE_ID_ddebug242, !139, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!141 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 390, i32 3}
!143 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @mchp_spdifrx_trigger._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @mchp_spdifrx_trigger._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @mchp_spdifrx_dt_ids, !147, !"mchp_spdifrx_dt_ids", i1 false, i1 false}
!147 = !{!"../sound/soc/atmel/mchp-spdifrx.c", i32 852, i32 34}
!148 = !{i32 1, !"wchar_size", i32 2}
!149 = !{i32 1, !"min_enum_size", i32 4}
!150 = !{i32 8, !"branch-target-enforcement", i32 0}
!151 = !{i32 8, !"sign-return-address", i32 0}
!152 = !{i32 8, !"sign-return-address-all", i32 0}
!153 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!154 = !{i32 7, !"uwtable", i32 1}
!155 = !{i32 7, !"frame-pointer", i32 2}
!156 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!157 = !{!"auto-init"}
!158 = !{i64 2148745958, i64 2148745963, i64 2148745976, i64 2148746020, i64 2148746054, i64 2148746075}
!159 = !{i8 0, i8 2}
!160 = !{i32 0, i32 33}
