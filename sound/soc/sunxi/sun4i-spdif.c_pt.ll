; ModuleID = '/llk/IR_all_yes/sound/soc/sunxi/sun4i-spdif.c_pt.bc'
source_filename = "../sound/soc/sunxi/sun4i-spdif.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.86, i32 }
%union.anon.86 = type { ptr }
%struct.sun4i_spdif_quirks = type { i32, i8, i32 }
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
%struct.sun4i_spdif_dev = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dai_driver, ptr, %struct.snd_dmaengine_dai_dma_data, ptr, %struct.spinlock }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.82, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.82 = type { %struct.anon.85, [40 x i8] }
%struct.anon.85 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.76, [128 x i8] }
%union.anon.76 = type { %union.anon.78 }
%union.anon.78 = type { [64 x i64] }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.81, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.81 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }

@__initcall__kmod_sun4i_spdif__242_729_sun4i_spdif_driver_init6 = internal global ptr @sun4i_spdif_driver_init, section ".initcall6.init", align 4
@sun4i_spdif_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun4i_spdif_probe, ptr @sun4i_spdif_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun4i_spdif_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_spdif_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun4i_spdif_driver_exit = internal global ptr @sun4i_spdif_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author243 = internal constant [56 x i8] c"sun4i_spdif.author=Marcus Cooper <codekipper@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author244 = internal constant [59 x i8] c"sun4i_spdif.author=Andrea Venturi <be17068@iperbole.bo.it>\00", section ".modinfo", align 1
@__UNIQUE_ID_description245 = internal constant [60 x i8] c"sun4i_spdif.description=Allwinner sun4i SPDIF SoC Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file246 = internal constant [45 x i8] c"sun4i_spdif.file=sound/soc/sunxi/sun4i-spdif\00", section ".modinfo", align 1
@__UNIQUE_ID_license247 = internal constant [24 x i8] c"sun4i_spdif.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias248 = internal constant [39 x i8] c"sun4i_spdif.alias=platform:sun4i-spdif\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sun4i-spdif\00", [20 x i8] zeroinitializer }, align 32
@sun4i_spdif_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-spdif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_spdif_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-spdif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_a31_spdif_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-spdif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_h3_spdif_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-spdif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h6_spdif_quirks }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@sun4i_spdif_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_spdif_runtime_suspend, ptr @sun4i_spdif_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@sun4i_spdif_probe.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sun4i_spdif\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sun4i_spdif_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/soc/sunxi/sun4i-spdif.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Entered %s\0A\00", [20 x i8] zeroinitializer }, align 32
@sun4i_spdif_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&host->lock\00", [20 x i8] zeroinitializer }, align 32
@sun4i_spdif_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.14, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @sun4i_spdif_soc_dai_probe, ptr null, ptr null, ptr null, ptr @sun4i_spdif_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr null, i64 38, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@sun4i_spdif_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 642, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to determine the quirks to use\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun4i_spdif_probe._entry_ptr = internal global ptr @sun4i_spdif_probe._entry, section ".printk_index", align 4
@sun4i_spdif_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sun4i_spdif_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 56, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"sun4i_spdif:648:(&sun4i_spdif_regmap_config)->lock\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"apb\00", [28 x i8] zeroinitializer }, align 32
@sun4i_spdif_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 653, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get a apb clock.\0A\00", [36 x i8] zeroinitializer }, align 32
@sun4i_spdif_probe._entry_ptr.13 = internal global ptr @sun4i_spdif_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"spdif\00", [26 x i8] zeroinitializer }, align 32
@sun4i_spdif_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 659, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get a spdif clock.\0A\00", [34 x i8] zeroinitializer }, align 32
@sun4i_spdif_probe._entry_ptr.17 = internal global ptr @sun4i_spdif_probe._entry.15, section ".printk_index", align 4
@sun4i_spdif_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 674, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get reset: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@sun4i_spdif_probe._entry_ptr.20 = internal global ptr @sun4i_spdif_probe._entry.18, section ".printk_index", align 4
@sun4i_spdif_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@sun4i_spdif_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_spdif_startup, ptr null, ptr @sun4i_spdif_hw_params, ptr null, ptr null, ptr @sun4i_spdif_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sun4i_spdif_controls = internal global { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.21, i32 0, i32 1, i32 0, ptr @sun4i_spdif_info, ptr @sun4i_spdif_get_status_mask, ptr null, %union.anon.86 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.22, i32 0, i32 0, i32 0, ptr @sun4i_spdif_info, ptr @sun4i_spdif_get_status, ptr @sun4i_spdif_set_status, %union.anon.86 zeroinitializer, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IEC958 Playback Mask\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 Playback Default\00", [40 x i8] zeroinitializer }, align 32
@sun4i_spdif_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 321, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Setting SPDIF clock rate for %d Hz failed!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sun4i_spdif_hw_params\00", [42 x i8] zeroinitializer }, align 32
@sun4i_spdif_hw_params._entry_ptr = internal global ptr @sun4i_spdif_hw_params._entry, section ".printk_index", align 4
@sun4i_a10_spdif_quirks = internal constant { %struct.sun4i_spdif_quirks, [20 x i8] } { %struct.sun4i_spdif_quirks { i32 12, i8 0, i32 131072 }, [20 x i8] zeroinitializer }, align 32
@sun6i_a31_spdif_quirks = internal constant { %struct.sun4i_spdif_quirks, [20 x i8] } { %struct.sun4i_spdif_quirks { i32 12, i8 1, i32 131072 }, [20 x i8] zeroinitializer }, align 32
@sun8i_h3_spdif_quirks = internal constant { %struct.sun4i_spdif_quirks, [20 x i8] } { %struct.sun4i_spdif_quirks { i32 32, i8 1, i32 131072 }, [20 x i8] zeroinitializer }, align 32
@sun50i_h6_spdif_quirks = internal constant { %struct.sun4i_spdif_quirks, [20 x i8] } { %struct.sun4i_spdif_quirks { i32 32, i8 1, i32 1073741824 }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 6, i64 36]
@__sancov_gen_cov_switch_values.26 = internal global [11 x i64] [i64 9, i64 32, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.27 = internal global [11 x i64] [i64 9, i64 32, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.28 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.29 = private unnamed_addr constant [19 x i8] c"sun4i_spdif_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 719, i32 31 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 721, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant [21 x i8] c"sun4i_spdif_of_match\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 564, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant [15 x i8] c"sun4i_spdif_pm\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 714, i32 32 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 622, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 629, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [16 x i8] c"sun4i_spdif_dai\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 529, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 642, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [26 x i8] c"sun4i_spdif_regmap_config\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 516, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 647, i32 17 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 651, i32 43 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 653, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 657, i32 45 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 659, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 674, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant [22 x i8] c"sun4i_spdif_component\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 585, i32 46 }
@___asan_gen_.110 = private unnamed_addr constant [20 x i8] c"sun4i_spdif_dai_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 510, i32 37 }
@___asan_gen_.113 = private unnamed_addr constant [21 x i8] c"sun4i_spdif_controls\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 482, i32 32 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 486, i32 11 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 492, i32 11 }
@___asan_gen_.122 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 320, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [23 x i8] c"sun4i_a10_spdif_quirks\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 541, i32 40 }
@___asan_gen_.134 = private unnamed_addr constant [23 x i8] c"sun6i_a31_spdif_quirks\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 546, i32 40 }
@___asan_gen_.137 = private unnamed_addr constant [22 x i8] c"sun8i_h3_spdif_quirks\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 552, i32 40 }
@___asan_gen_.140 = private unnamed_addr constant [23 x i8] c"sun50i_h6_spdif_quirks\00", align 1
@___asan_gen_.141 = private constant [33 x i8] c"../sound/soc/sunxi/sun4i-spdif.c\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 558, i32 40 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_alias248, ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_author244, ptr @__UNIQUE_ID_description245, ptr @__UNIQUE_ID_file246, ptr @__UNIQUE_ID_license247, ptr @__exitcall_sun4i_spdif_driver_exit, ptr @__initcall__kmod_sun4i_spdif__242_729_sun4i_spdif_driver_init6, ptr @sun4i_spdif_driver_exit, ptr @sun4i_spdif_hw_params._entry, ptr @sun4i_spdif_hw_params._entry_ptr, ptr @sun4i_spdif_probe._entry, ptr @sun4i_spdif_probe._entry.11, ptr @sun4i_spdif_probe._entry.15, ptr @sun4i_spdif_probe._entry.18, ptr @sun4i_spdif_probe._entry_ptr, ptr @sun4i_spdif_probe._entry_ptr.13, ptr @sun4i_spdif_probe._entry_ptr.17, ptr @sun4i_spdif_probe._entry_ptr.20, ptr @sun4i_spdif_driver, ptr @.str, ptr @sun4i_spdif_of_match, ptr @sun4i_spdif_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sun4i_spdif_probe.__key, ptr @.str.5, ptr @sun4i_spdif_dai, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @sun4i_spdif_probe._key, ptr @sun4i_spdif_regmap_config, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @sun4i_spdif_component, ptr @sun4i_spdif_dai_ops, ptr @sun4i_spdif_controls, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @sun4i_a10_spdif_quirks, ptr @sun6i_a31_spdif_quirks, ptr @sun8i_h3_spdif_quirks, ptr @sun50i_h6_spdif_quirks], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_spdif_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_spdif_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_spdif_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_spdif_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_spdif_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_spdif_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_spdif_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_spdif_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_spdif_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_spdif_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_spdif_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_spdif_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_spdif_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_spdif_controls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_spdif_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_a10_spdif_quirks to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_a31_spdif_quirks to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_h3_spdif_quirks to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h6_spdif_quirks to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_spdif_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun4i_spdif_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_spdif_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun4i_spdif_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_spdif_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #7
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !92
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun4i_spdif_probe.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun4i_spdif_probe, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !93

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun4i_spdif_probe.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev3, i32 noundef 272, i32 noundef 3520) #7
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %call.i, align 8
  %lock = getelementptr inbounds %struct.sun4i_spdif_dev, ptr %call.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @sun4i_spdif_probe.__key, i16 noundef signext 3) #7
  %cpu_dai_drv = getelementptr inbounds %struct.sun4i_spdif_dev, ptr %call.i, i32 0, i32 4
  %2 = call ptr @memcpy(ptr %cpu_dai_drv, ptr @sun4i_spdif_dai, i32 168)
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %3 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.dev_name.exit_crit_edge

if.end7.dev_name.exit_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end7.dev_name.exit_crit_edge
  %retval.0.i163 = phi ptr [ %6, %if.end.i ], [ %4, %if.end7.dev_name.exit_crit_edge ]
  %7 = ptrtoint ptr %cpu_dai_drv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %retval.0.i163, ptr %cpu_dai_drv, align 8
  %call16 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #7
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end20

if.then18:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end20:                                         ; preds = %dev_name.exit
  %call22 = call ptr @of_device_get_match_data(ptr noundef %dev3) #7
  %cmp = icmp eq ptr %call22, null
  br i1 %cmp, label %do.end26, label %if.end28

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.6) #10
  br label %cleanup

if.end28:                                         ; preds = %if.end20
  %quirks29 = getelementptr inbounds %struct.sun4i_spdif_dev, ptr %call.i, i32 0, i32 7
  %9 = ptrtoint ptr %quirks29 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call22, ptr %quirks29, align 8
  %call32 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev3, ptr noundef null, ptr noundef %call16, ptr noundef nonnull @sun4i_spdif_regmap_config, ptr noundef nonnull @sun4i_spdif_probe._key, ptr noundef nonnull @.str.9) #7
  %regmap = getelementptr inbounds %struct.sun4i_spdif_dev, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call32, ptr %regmap, align 8
  %call34 = call ptr @devm_clk_get(ptr noundef %dev3, ptr noundef nonnull @.str.10) #7
  %apb_clk = getelementptr inbounds %struct.sun4i_spdif_dev, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %apb_clk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call34, ptr %apb_clk, align 8
  %cmp.i164 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i164, label %do.end40, label %if.end44

do.end40:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.12) #10
  %12 = ptrtoint ptr %apb_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %apb_clk, align 8
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup

if.end44:                                         ; preds = %if.end28
  %call46 = call ptr @devm_clk_get(ptr noundef %dev3, ptr noundef nonnull @.str.14) #7
  %spdif_clk = getelementptr inbounds %struct.sun4i_spdif_dev, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %spdif_clk to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call46, ptr %spdif_clk, align 4
  %cmp.i165 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i165, label %do.end52, label %if.end56

do.end52:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.16) #10
  %16 = ptrtoint ptr %spdif_clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %spdif_clk, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %cleanup

if.end56:                                         ; preds = %if.end44
  %19 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %res, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %23 = ptrtoint ptr %call22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call22, align 4
  %add = add i32 %24, %22
  %dma_params_tx = getelementptr inbounds %struct.sun4i_spdif_dev, ptr %call.i, i32 0, i32 6
  %25 = ptrtoint ptr %dma_params_tx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add, ptr %dma_params_tx, align 4
  %maxburst = getelementptr inbounds %struct.sun4i_spdif_dev, ptr %call.i, i32 0, i32 6, i32 2
  %26 = ptrtoint ptr %maxburst to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 8, ptr %maxburst, align 4
  %addr_width = getelementptr inbounds %struct.sun4i_spdif_dev, ptr %call.i, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %addr_width to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %addr_width, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %has_reset = getelementptr inbounds %struct.sun4i_spdif_quirks, ptr %call22, i32 0, i32 1
  %29 = ptrtoint ptr %has_reset to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %has_reset, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool59.not = icmp eq i8 %30, 0
  br i1 %tobool59.not, label %if.end56.if.end78_crit_edge, label %if.then60

if.end56.if.end78_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.then60:                                        ; preds = %if.end56
  %call.i166 = call ptr @__devm_reset_control_get(ptr noundef %dev3, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #7
  %rst = getelementptr inbounds %struct.sun4i_spdif_dev, ptr %call.i, i32 0, i32 3
  %31 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i166, ptr %rst, align 4
  %cmp65 = icmp eq ptr %call.i166, inttoptr (i32 -517 to ptr)
  br i1 %cmp65, label %if.then66, label %if.end71

if.then66:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.19, i32 noundef -517) #10
  br label %cleanup

if.end71:                                         ; preds = %if.then60
  %cmp.i167 = icmp ugt ptr %call.i166, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i167, label %if.end71.if.end78_crit_edge, label %if.then74

if.end71.if.end78_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  %call76 = call i32 @reset_control_deassert(ptr noundef %call.i166) #7
  br label %if.end78

if.end78:                                         ; preds = %if.then74, %if.end71.if.end78_crit_edge, %if.end56.if.end78_crit_edge
  %call80 = call i32 @devm_snd_soc_register_component(ptr noundef %dev3, ptr noundef nonnull @sun4i_spdif_component, ptr noundef nonnull @sun4i_spdif_dai, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.end78.cleanup_crit_edge

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end83:                                         ; preds = %if.end78
  call void @pm_runtime_enable(ptr noundef %dev3) #7
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %32 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i168 = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i168, label %if.end83.if.end93_crit_edge, label %if.then87

if.end83.if.end93_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.then87:                                        ; preds = %if.end83
  %call89 = call i32 @sun4i_spdif_runtime_resume(ptr noundef %dev3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.then87.if.end93_crit_edge, label %if.then87.err_unregister_crit_edge

if.then87.err_unregister_crit_edge:               ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unregister

if.then87.if.end93_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.end93:                                         ; preds = %if.then87.if.end93_crit_edge, %if.end83.if.end93_crit_edge
  %call95 = call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %dev3, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end93.cleanup_crit_edge, label %err_suspend

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_suspend:                                      ; preds = %if.end93
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 18
  %33 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp.i169 = icmp eq i32 %34, 2
  br i1 %cmp.i169, label %err_suspend.err_unregister_crit_edge, label %if.then101

err_suspend.err_unregister_crit_edge:             ; preds = %err_suspend
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unregister

if.then101:                                       ; preds = %err_suspend
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver_data.i.i, align 4
  %spdif_clk.i = getelementptr inbounds %struct.sun4i_spdif_dev, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %spdif_clk.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %spdif_clk.i, align 4
  call void @clk_disable(ptr noundef %38) #7
  call void @clk_unprepare(ptr noundef %38) #7
  %apb_clk.i = getelementptr inbounds %struct.sun4i_spdif_dev, ptr %36, i32 0, i32 2
  %39 = ptrtoint ptr %apb_clk.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %apb_clk.i, align 8
  call void @clk_disable(ptr noundef %40) #7
  call void @clk_unprepare(ptr noundef %40) #7
  br label %err_unregister

err_unregister:                                   ; preds = %if.then101, %err_suspend.err_unregister_crit_edge, %if.then87.err_unregister_crit_edge
  %ret.0 = phi i32 [ %call95, %err_suspend.err_unregister_crit_edge ], [ %call95, %if.then101 ], [ %call89, %if.then87.err_unregister_crit_edge ]
  call void @__pm_runtime_disable(ptr noundef %dev3, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %err_unregister, %if.end93.cleanup_crit_edge, %if.end78.cleanup_crit_edge, %if.then66, %do.end52, %do.end40, %do.end26, %if.then18, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then18 ], [ -19, %do.end26 ], [ %14, %do.end40 ], [ %18, %do.end52 ], [ -517, %if.then66 ], [ %ret.0, %err_unregister ], [ -12, %do.end.cleanup_crit_edge ], [ %call80, %if.end78.cleanup_crit_edge ], [ 0, %if.end93.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_spdif_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 18
  %0 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %spdif_clk.i = getelementptr inbounds %struct.sun4i_spdif_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %spdif_clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spdif_clk.i, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  %apb_clk.i = getelementptr inbounds %struct.sun4i_spdif_dev, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %apb_clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %apb_clk.i, align 8
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_spdif_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %spdif_clk = getelementptr inbounds %struct.sun4i_spdif_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %spdif_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spdif_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %apb_clk = getelementptr inbounds %struct.sun4i_spdif_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %apb_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apb_clk, align 8
  %call.i13 = tail call i32 @clk_prepare(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %tobool.not.i14 = icmp eq i32 %call.i13, 0
  br i1 %tobool.not.i14, label %if.end.i17, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.end.i17:                                       ; preds = %if.end
  %call1.i15 = tail call i32 @clk_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15)
  %tobool2.not.i16 = icmp eq i32 %call1.i15, 0
  br i1 %tobool2.not.i16, label %if.end.i17.cleanup_crit_edge, label %if.then3.i18

if.end.i17.cleanup_crit_edge:                     ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i18:                                     ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %if.then4

if.then4:                                         ; preds = %if.then3.i18, %if.end.if.then4_crit_edge
  %retval.0.i19.ph = phi i32 [ %call1.i15, %if.then3.i18 ], [ %call.i13, %if.end.if.then4_crit_edge ]
  %6 = ptrtoint ptr %spdif_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spdif_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then4, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %7, %if.then4 ], [ %3, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %retval.0.i19.ph, %if.then4 ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.i17.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_spdif_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %spdif_clk = getelementptr inbounds %struct.sun4i_spdif_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %spdif_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spdif_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  %apb_clk = getelementptr inbounds %struct.sun4i_spdif_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %apb_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apb_clk, align 8
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_spdif_soc_dai_probe(ptr noundef %dai) #2 align 64 {
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
  %dma_params_tx = getelementptr inbounds %struct.sun4i_spdif_dev, ptr %3, i32 0, i32 6
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %4 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dma_params_tx, ptr %playback_dma_data.i, align 4
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %5 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %capture_dma_data.i, align 4
  %call1 = tail call i32 @snd_soc_add_dai_controls(ptr noundef %dai, ptr noundef nonnull @sun4i_spdif_controls, i32 noundef 2) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_dai_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sun4i_spdif_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #5 align 64 {
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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sun4i_spdif_get_status_mask(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %arrayidx6 = getelementptr i8, ptr %value, i32 5
  %0 = call ptr @memset(ptr %value, i32 255, i32 5)
  %1 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 3, ptr %arrayidx6, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_spdif_get_status(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reg, align 4, !annotation !92
  %lock = getelementptr inbounds %struct.sun4i_spdif_dev, ptr %5, i32 0, i32 8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %regmap = getelementptr inbounds %struct.sun4i_spdif_dev, ptr %5, i32 0, i32 5
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 8
  %call7 = call i32 @regmap_read(ptr noundef %8, i32 noundef 44, ptr noundef nonnull %reg) #7
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg, align 4
  %conv8 = trunc i32 %10 to i8
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv8, ptr %value, align 1
  %shr = lshr i32 %10, 8
  %conv10 = trunc i32 %shr to i8
  %arrayidx11 = getelementptr i8, ptr %value, i32 1
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv10, ptr %arrayidx11, align 1
  %shr12 = lshr i32 %10, 16
  %conv14 = trunc i32 %shr12 to i8
  %arrayidx15 = getelementptr i8, ptr %value, i32 2
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv14, ptr %arrayidx15, align 1
  %shr16 = lshr i32 %10, 24
  %conv18 = trunc i32 %shr16 to i8
  %arrayidx19 = getelementptr i8, ptr %value, i32 3
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv18, ptr %arrayidx19, align 1
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 8
  %call21 = call i32 @regmap_read(ptr noundef %16, i32 noundef 48, ptr noundef nonnull %reg) #7
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg, align 4
  %conv23 = trunc i32 %18 to i8
  %arrayidx24 = getelementptr i8, ptr %value, i32 4
  %19 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv23, ptr %arrayidx24, align 1
  %shr25 = lshr i32 %18, 8
  %20 = trunc i32 %shr25 to i8
  %conv27 = and i8 %20, 3
  %arrayidx28 = getelementptr i8, ptr %value, i32 5
  %21 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv27, ptr %arrayidx28, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_spdif_set_status(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  %chg0 = alloca i8, align 1
  %chg1 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %chg0) #7
  %6 = ptrtoint ptr %chg0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %chg0, align 1, !annotation !92
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %chg1) #7
  %7 = ptrtoint ptr %chg1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %chg1, align 1, !annotation !92
  %lock = getelementptr inbounds %struct.sun4i_spdif_dev, ptr %5, i32 0, i32 8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %arrayidx = getelementptr i8, ptr %value, i32 3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv7 = zext i8 %9 to i32
  %shl = shl nuw i32 %conv7, 24
  %arrayidx8 = getelementptr i8, ptr %value, i32 2
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %11 to i32
  %shl10 = shl nuw nsw i32 %conv9, 16
  %or = or i32 %shl10, %shl
  %arrayidx11 = getelementptr i8, ptr %value, i32 1
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %13 to i32
  %shl13 = shl nuw nsw i32 %conv12, 8
  %or14 = or i32 %or, %shl13
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %value, align 1
  %conv16 = zext i8 %15 to i32
  %or17 = or i32 %or14, %conv16
  %regmap = getelementptr inbounds %struct.sun4i_spdif_dev, ptr %5, i32 0, i32 5
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 8
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 44, i32 noundef -1, i32 noundef %or17, ptr noundef nonnull %chg0, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %arrayidx19 = getelementptr i8, ptr %value, i32 5
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %19 to i32
  %shl21 = shl nuw nsw i32 %conv20, 8
  %arrayidx22 = getelementptr i8, ptr %value, i32 4
  %20 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %21 to i32
  %or24 = or i32 %shl21, %conv23
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 8
  %call.i54 = call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 48, i32 noundef 1023, i32 noundef %or24, ptr noundef nonnull %chg1, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %24 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %value, align 1
  %26 = and i8 %25, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not = icmp eq i8 %26, 0
  %spec.select = select i1 %tobool.not, i32 2, i32 65538
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 8
  %call.i55 = call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 4, i32 noundef 65538, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  %29 = ptrtoint ptr %chg0 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %chg0, align 1, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool33.not = icmp eq i8 %30, 0
  br i1 %tobool33.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %chg1 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %chg1, align 1, !range !94
  %33 = zext i8 %32 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %34 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ %33, %lor.rhs ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %chg1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %chg0) #7
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_spdif_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dais, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %quirks1.i = getelementptr inbounds %struct.sun4i_spdif_dev, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %quirks1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %quirks1.i, align 8
  %regmap.i = getelementptr inbounds %struct.sun4i_spdif_dev, ptr %11, i32 0, i32 5
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 8
  %call.i = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 0, i32 noundef 1) #7
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 8
  %val_fctl_ftx.i = getelementptr inbounds %struct.sun4i_spdif_quirks, ptr %13, i32 0, i32 2
  %18 = ptrtoint ptr %val_fctl_ftx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val_fctl_ftx.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 20, i32 noundef %19, i32 noundef %19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 8
  %call6.i = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 36, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_spdif_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %arrayidx.i.i54 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %arrayidx.i.i54 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i54, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %entry.sw.epilog_crit_edge57
    i32 4, label %sw.bb4
  ]

entry.sw.epilog_crit_edge57:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge57
  %fmt.0 = phi i32 [ 65536, %sw.bb4 ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge57 ]
  %arrayidx.i.i55 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx.i.i55 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %sw.epilog.params_format.exit_crit_edge

sw.epilog.params_format.exit_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %sw.epilog
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.1.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %sw.epilog.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %sw.epilog.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %12, %sw.epilog.params_format.exit_crit_edge ], [ %14, %for.inc.i.i.params_format.exit_crit_edge ]
  %15 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #7, !range !95
  %add.i.i = or i32 %15, %i.09.lcssa.i.i
  %16 = zext i32 %add.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %add.i.i, label %params_format.exit.cleanup_crit_edge [
    i32 2, label %params_format.exit.sw.epilog12_crit_edge
    i32 36, label %sw.bb7
    i32 6, label %sw.bb9
  ]

params_format.exit.sw.epilog12_crit_edge:         ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog12

params_format.exit.cleanup_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb7:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  %or8 = or i32 %fmt.0, 4
  br label %sw.epilog12

sw.bb9:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  %or10 = or i32 %fmt.0, 8
  br label %sw.epilog12

sw.epilog12:                                      ; preds = %sw.bb9, %sw.bb7, %params_format.exit.sw.epilog12_crit_edge
  %fmt.1 = phi i32 [ %or10, %sw.bb9 ], [ %or8, %sw.bb7 ], [ %fmt.0, %params_format.exit.sw.epilog12_crit_edge ]
  %17 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %1, label %sw.epilog12.cleanup_crit_edge [
    i32 22050, label %sw.epilog12.sw.epilog16_crit_edge
    i32 44100, label %sw.epilog12.sw.epilog16_crit_edge58
    i32 88200, label %sw.epilog12.sw.epilog16_crit_edge59
    i32 176400, label %sw.epilog12.sw.epilog16_crit_edge60
    i32 24000, label %sw.epilog12.sw.bb14_crit_edge
    i32 32000, label %sw.epilog12.sw.bb14_crit_edge61
    i32 48000, label %sw.epilog12.sw.bb14_crit_edge62
    i32 96000, label %sw.epilog12.sw.bb14_crit_edge63
    i32 192000, label %sw.epilog12.sw.bb14_crit_edge64
  ]

sw.epilog12.sw.bb14_crit_edge64:                  ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14

sw.epilog12.sw.bb14_crit_edge63:                  ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14

sw.epilog12.sw.bb14_crit_edge62:                  ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14

sw.epilog12.sw.bb14_crit_edge61:                  ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14

sw.epilog12.sw.bb14_crit_edge:                    ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14

sw.epilog12.sw.epilog16_crit_edge60:              ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog16

sw.epilog12.sw.epilog16_crit_edge59:              ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog16

sw.epilog12.sw.epilog16_crit_edge58:              ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog16

sw.epilog12.sw.epilog16_crit_edge:                ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog16

sw.epilog12.cleanup_crit_edge:                    ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb14:                                          ; preds = %sw.epilog12.sw.bb14_crit_edge, %sw.epilog12.sw.bb14_crit_edge61, %sw.epilog12.sw.bb14_crit_edge62, %sw.epilog12.sw.bb14_crit_edge63, %sw.epilog12.sw.bb14_crit_edge64
  br label %sw.epilog16

sw.epilog16:                                      ; preds = %sw.bb14, %sw.epilog12.sw.epilog16_crit_edge, %sw.epilog12.sw.epilog16_crit_edge58, %sw.epilog12.sw.epilog16_crit_edge59, %sw.epilog12.sw.epilog16_crit_edge60
  %mclk.0 = phi i32 [ 24576000, %sw.bb14 ], [ 22579200, %sw.epilog12.sw.epilog16_crit_edge ], [ 22579200, %sw.epilog12.sw.epilog16_crit_edge58 ], [ 22579200, %sw.epilog12.sw.epilog16_crit_edge59 ], [ 22579200, %sw.epilog12.sw.epilog16_crit_edge60 ]
  %spdif_clk = getelementptr inbounds %struct.sun4i_spdif_dev, ptr %5, i32 0, i32 1
  %18 = ptrtoint ptr %spdif_clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spdif_clk, align 4
  %call17 = tail call i32 @clk_set_rate(ptr noundef %19, i32 noundef %mclk.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %sw.epilog16
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %mclk.0) #10
  br label %cleanup

if.end:                                           ; preds = %sw.epilog16
  %regmap = getelementptr inbounds %struct.sun4i_spdif_dev, ptr %5, i32 0, i32 5
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 20, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %22 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %1, label %if.end.cleanup_crit_edge [
    i32 22050, label %if.end.sw.epilog25_crit_edge
    i32 24000, label %if.end.sw.epilog25_crit_edge65
    i32 32000, label %sw.bb20
    i32 44100, label %if.end.sw.bb21_crit_edge
    i32 48000, label %if.end.sw.bb21_crit_edge66
    i32 88200, label %if.end.sw.bb22_crit_edge
    i32 96000, label %if.end.sw.bb22_crit_edge67
    i32 176400, label %if.end.sw.bb23_crit_edge
    i32 192000, label %if.end.sw.bb23_crit_edge68
  ]

if.end.sw.bb23_crit_edge68:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb23

if.end.sw.bb23_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb23

if.end.sw.bb22_crit_edge67:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb22

if.end.sw.bb22_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb22

if.end.sw.bb21_crit_edge66:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

if.end.sw.bb21_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

if.end.sw.epilog25_crit_edge65:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog25

if.end.sw.epilog25_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog25

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb20:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog25

sw.bb21:                                          ; preds = %if.end.sw.bb21_crit_edge, %if.end.sw.bb21_crit_edge66
  br label %sw.epilog25

sw.bb22:                                          ; preds = %if.end.sw.bb22_crit_edge, %if.end.sw.bb22_crit_edge67
  br label %sw.epilog25

sw.bb23:                                          ; preds = %if.end.sw.bb23_crit_edge, %if.end.sw.bb23_crit_edge68
  br label %sw.epilog25

sw.epilog25:                                      ; preds = %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %if.end.sw.epilog25_crit_edge, %if.end.sw.epilog25_crit_edge65
  %mclk_div.0 = phi i32 [ 0, %sw.bb23 ], [ 16, %sw.bb22 ], [ 48, %sw.bb21 ], [ 80, %sw.bb20 ], [ 112, %if.end.sw.epilog25_crit_edge ], [ 112, %if.end.sw.epilog25_crit_edge65 ]
  %or28 = or i32 %fmt.1, %mclk_div.0
  %or29 = or i32 %or28, 131074
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 8
  %call31 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 4, i32 noundef %or29) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog25, %if.end.cleanup_crit_edge, %do.end, %sw.epilog12.cleanup_crit_edge, %params_format.exit.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %do.end ], [ 0, %sw.epilog25 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %params_format.exit.cleanup_crit_edge ], [ -22, %sw.epilog12.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %for.inc.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_spdif_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 6, label %if.end.sw.bb_crit_edge13
    i32 4, label %if.end.sw.bb_crit_edge14
    i32 0, label %if.end.cleanup.sink.split_crit_edge
    i32 5, label %if.end.cleanup.sink.split_crit_edge15
    i32 3, label %if.end.cleanup.sink.split_crit_edge16
  ]

if.end.cleanup.sink.split_crit_edge16:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.cleanup.sink.split_crit_edge15:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.sw.bb_crit_edge14:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge13:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge13, %if.end.sw.bb_crit_edge14
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %7 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %runtime.i, align 4
  %channels.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channels.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i = icmp eq i32 %10, 1
  br i1 %cmp.i, label %if.then.i, label %sw.bb.cleanup.sink.split_crit_edge

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %regmap.i = getelementptr inbounds %struct.sun4i_spdif_dev, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 4, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then.i, %sw.bb.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge15, %if.end.cleanup.sink.split_crit_edge16
  %.sink11 = phi i32 [ 1, %sw.bb.cleanup.sink.split_crit_edge ], [ 1, %if.then.i ], [ 0, %if.end.cleanup.sink.split_crit_edge ], [ 0, %if.end.cleanup.sink.split_crit_edge15 ], [ 0, %if.end.cleanup.sink.split_crit_edge16 ]
  %.sink9 = phi i32 [ 128, %sw.bb.cleanup.sink.split_crit_edge ], [ 128, %if.then.i ], [ 0, %if.end.cleanup.sink.split_crit_edge ], [ 0, %if.end.cleanup.sink.split_crit_edge15 ], [ 0, %if.end.cleanup.sink.split_crit_edge16 ]
  %.sink8 = phi i32 [ 2, %sw.bb.cleanup.sink.split_crit_edge ], [ 2, %if.then.i ], [ 0, %if.end.cleanup.sink.split_crit_edge ], [ 0, %if.end.cleanup.sink.split_crit_edge15 ], [ 0, %if.end.cleanup.sink.split_crit_edge16 ]
  %regmap.i6 = getelementptr inbounds %struct.sun4i_spdif_dev, ptr %3, i32 0, i32 5
  %13 = ptrtoint ptr %regmap.i6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i6, align 8
  %call.i10.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 4, i32 noundef 1, i32 noundef %.sink11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %15 = ptrtoint ptr %regmap.i6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i6, align 8
  %call.i11.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 28, i32 noundef 128, i32 noundef %.sink9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %17 = ptrtoint ptr %regmap.i6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i6, align 8
  %call.i12.i = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 0, i32 noundef 2, i32 noundef %.sink8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !32, !33, !35, !36, !38, !40, !41, !42, !44, !46, !47, !48, !50, !51, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !69, !71, !73, !75, !77, !79, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_sun4i_spdif__242_729_sun4i_spdif_driver_init6, !1, !"__initcall__kmod_sun4i_spdif__242_729_sun4i_spdif_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/sunxi/sun4i-spdif.c", i32 729, i32 1}
!2 = !{ptr @__exitcall_sun4i_spdif_driver_exit, !1, !"__exitcall_sun4i_spdif_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author243, !4, !"__UNIQUE_ID_author243", i1 false, i1 false}
!4 = !{!"../sound/soc/sunxi/sun4i-spdif.c", i32 731, i32 1}
!5 = !{ptr @__UNIQUE_ID_author244, !6, !"__UNIQUE_ID_author244", i1 false, i1 false}
!6 = !{!"../sound/soc/sunxi/sun4i-spdif.c", i32 732, i32 1}
!7 = !{ptr @__UNIQUE_ID_description245, !8, !"__UNIQUE_ID_description245", i1 false, i1 false}
!8 = !{!"../sound/soc/sunxi/sun4i-spdif.c", i32 733, i32 1}
!9 = !{ptr @__UNIQUE_ID_file246, !10, !"__UNIQUE_ID_file246", i1 false, i1 false}
!10 = !{!"../sound/soc/sunxi/sun4i-spdif.c", i32 734, i32 1}
!11 = !{ptr @__UNIQUE_ID_license247, !10, !"__UNIQUE_ID_license247", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_alias248, !13, !"__UNIQUE_ID_alias248", i1 false, i1 false}
!13 = !{!"../sound/soc/sunxi/sun4i-spdif.c", i32 735, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/sunxi/sun4i-spdif.c", i32 721, i32 11}
!16 = !{ptr @sun4i_spdif_driver, !17, !"sun4i_spdif_driver", i1 false, i1 false}
!17 = !{!"../sound/soc/sunxi/sun4i-spdif.c", i32 719, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/sunxi/sun4i-spdif.c", i32 622, i32 2}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sun4i_spdif_probe.__UNIQUE_ID_ddebug241, !19, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!24 = !{ptr @sun4i_spdif_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../sound/soc/sunxi/sun4i-spdif.c", i32 629, i32 2}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/sunxi/sun4i-spdif.c", i32 642, i32 3}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @sun4i_spdif_probe._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @sun4i_spdif_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @sun4i_spdif_probe._key, !34, !"_key", i1 false, i1 false}
!34 = !{!"../sound/soc/sunxi/sun4i-spdif.c", i32 647, i32 17}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/sunxi/sun4i-spdif.c", i32 651, i32 43}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/sunxi/sun4i-spdif.c", i32 653, i32 3}
!40 = !{ptr @sun4i_spdif_probe._entry.11, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @sun4i_spdif_probe._entry_ptr.13, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/sunxi/sun4i-spdif.c", i32 657, i32 45}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/sunxi/sun4i-spdif.c", i32 659, i32 3}
!46 = !{ptr @sun4i_spdif_probe._entry.15, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @sun4i_spdif_probe._entry_ptr.17, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/sunxi/sun4i-spdif.c", i32 674, i32 4}
!50 = !{ptr @sun4i_spdif_probe._entry.18, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @sun4i_spdif_probe._entry_ptr.20, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @sun4i_spdif_dai, !53, !"sun4i_spdif_dai", i1 false, i1 false}
!53 = !{!"../sound/soc/sunxi/sun4i-spdif.c", i32 529, i32 34}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/sunxi/sun4i-spdif.c", i32 486, i32 11}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/sunxi/sun4i-spdif.c", i32 492, i32 11}
!58 = !{ptr @sun4i_spdif_controls, !59, !"sun4i_spdif_controls", i1 false, i1 false}
!59 = !{!"../sound/soc/sunxi/sun4i-spdif.c", i32 482, i32 32}
!60 = !{ptr @sun4i_spdif_dai_ops, !61, !"sun4i_spdif_dai_ops", i1 false, i1 false}
!61 = !{!"../sound/soc/sunxi/sun4i-spdif.c", i32 510, i32 37}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/sunxi/sun4i-spdif.c", i32 320, i32 3}
!64 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @sun4i_spdif_hw_params._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @sun4i_spdif_hw_params._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @sun4i_spdif_regmap_config, !68, !"sun4i_spdif_regmap_config", i1 false, i1 false}
!68 = !{!"../sound/soc/sunxi/sun4i-spdif.c", i32 516, i32 35}
!69 = !{ptr @sun4i_spdif_component, !70, !"sun4i_spdif_component", i1 false, i1 false}
!70 = !{!"../sound/soc/sunxi/sun4i-spdif.c", i32 585, i32 46}
!71 = !{ptr @sun4i_spdif_of_match, !72, !"sun4i_spdif_of_match", i1 false, i1 false}
!72 = !{!"../sound/soc/sunxi/sun4i-spdif.c", i32 564, i32 34}
!73 = !{ptr @sun4i_a10_spdif_quirks, !74, !"sun4i_a10_spdif_quirks", i1 false, i1 false}
!74 = !{!"../sound/soc/sunxi/sun4i-spdif.c", i32 541, i32 40}
!75 = !{ptr @sun6i_a31_spdif_quirks, !76, !"sun6i_a31_spdif_quirks", i1 false, i1 false}
!76 = !{!"../sound/soc/sunxi/sun4i-spdif.c", i32 546, i32 40}
!77 = !{ptr @sun8i_h3_spdif_quirks, !78, !"sun8i_h3_spdif_quirks", i1 false, i1 false}
!78 = !{!"../sound/soc/sunxi/sun4i-spdif.c", i32 552, i32 40}
!79 = !{ptr @sun50i_h6_spdif_quirks, !80, !"sun50i_h6_spdif_quirks", i1 false, i1 false}
!80 = !{!"../sound/soc/sunxi/sun4i-spdif.c", i32 558, i32 40}
!81 = !{ptr @sun4i_spdif_pm, !82, !"sun4i_spdif_pm", i1 false, i1 false}
!82 = !{!"../sound/soc/sunxi/sun4i-spdif.c", i32 714, i32 32}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{!"auto-init"}
!93 = !{i64 2148739964, i64 2148739969, i64 2148739982, i64 2148740026, i64 2148740060, i64 2148740081}
!94 = !{i8 0, i8 2}
!95 = !{i32 0, i32 33}
