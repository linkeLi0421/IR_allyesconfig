; ModuleID = '/llk/IR_all_yes/sound/soc/ti/davinci-mcasp.c_pt.bc'
source_filename = "../sound/soc/ti/davinci-mcasp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.95, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.95 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.87, i32 }
%union.anon.87 = type { ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.86, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.86 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.davinci_mcasp_pdata = type { i32, i32, i32, i32, i8, i32, i32, ptr, i32, i8, i32, i8, i8, i8, ptr, i8, i8, i8, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.davinci_mcasp = type { [2 x %struct.snd_dmaengine_dai_dma_data], ptr, ptr, i32, ptr, [2 x ptr], i32, i32, i8, i32, [2 x i32], i32, i8, i8, i8, ptr, i8, i8, i32, [2 x i32], i32, i8, i32, i32, i8, i8, i8, i32, i32, [2 x i8], %struct.gpio_chip, %struct.davinci_mcasp_context, [2 x %struct.davinci_mcasp_ruledata], [2 x %struct.snd_pcm_hw_constraint_list] }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.davinci_mcasp_context = type { [14 x i32], [2 x i32], ptr, i8 }
%struct.davinci_mcasp_ruledata = type { ptr, i32 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
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
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_pcm_hw_rule = type { i32, i32, [5 x i32], ptr, ptr }

@__initcall__kmod_snd_soc_davinci_mcasp__247_2540_davinci_mcasp_driver_init6 = internal global ptr @davinci_mcasp_driver_init, section ".initcall6.init", align 4
@davinci_mcasp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @davinci_mcasp_probe, ptr @davinci_mcasp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mcasp_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @davinci_mcasp_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_davinci_mcasp_driver_exit = internal global ptr @davinci_mcasp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [40 x i8] c"snd_soc_davinci_mcasp.author=Steve Chen\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [65 x i8] c"snd_soc_davinci_mcasp.description=TI DAVINCI McASP SoC Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [62 x i8] c"snd_soc_davinci_mcasp.file=sound/soc/ti/snd-soc-davinci-mcasp\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [34 x i8] c"snd_soc_davinci_mcasp.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"davinci-mcasp\00", [18 x i8] zeroinitializer }, align 32
@mcasp_dt_ids = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm646x-mcasp-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dm646x_mcasp_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,da830-mcasp-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @da830_mcasp_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am33xx-mcasp-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am33xx_mcasp_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-mcasp-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra7_mcasp_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-mcasp-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap_mcasp_pdata }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@davinci_mcasp_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @davinci_mcasp_runtime_suspend, ptr @davinci_mcasp_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@davinci_mcasp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2248, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No platform data supplied\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"davinci_mcasp_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/soc/ti/davinci-mcasp.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@davinci_mcasp_probe._entry_ptr = internal global ptr @davinci_mcasp_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mpu\00", [28 x i8] zeroinitializer }, align 32
@davinci_mcasp_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 2260, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\22mpu\22 mem resource not found, using index 0\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@davinci_mcasp_probe._entry_ptr.10 = internal global ptr @davinci_mcasp_probe._entry.7, section ".printk_index", align 4
@davinci_mcasp_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 2263, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no mem resource?\0A\00", [46 x i8] zeroinitializer }, align 32
@davinci_mcasp_probe._entry_ptr.13 = internal global ptr @davinci_mcasp_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"common\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s_common\00", [22 x i8] zeroinitializer }, align 32
@davinci_mcasp_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 2302, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"common IRQ request failed\0A\00", [37 x i8] zeroinitializer }, align 32
@davinci_mcasp_probe._entry_ptr.18 = internal global ptr @davinci_mcasp_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s_rx\00", [26 x i8] zeroinitializer }, align 32
@davinci_mcasp_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 2322, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RX IRQ request failed\0A\00", [41 x i8] zeroinitializer }, align 32
@davinci_mcasp_probe._entry_ptr.23 = internal global ptr @davinci_mcasp_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s_tx\00", [26 x i8] zeroinitializer }, align 32
@davinci_mcasp_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 2341, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TX IRQ request failed\0A\00", [41 x i8] zeroinitializer }, align 32
@davinci_mcasp_probe._entry_ptr.28 = internal global ptr @davinci_mcasp_probe._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dat\00", [28 x i8] zeroinitializer }, align 32
@davinci_mcasp_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@davinci_mcasp_dai = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.91, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @davinci_mcasp_dai_probe, ptr null, ptr null, ptr null, ptr @davinci_mcasp_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.92, i64 21474841943, i32 8190, i32 0, i32 0, i32 1, i32 512, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.93, i64 21474841943, i32 8190, i32 0, i32 0, i32 1, i32 512, i32 0 }, i8 -128, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.94, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @davinci_mcasp_dai_probe, ptr null, ptr null, ptr null, ptr @davinci_mcasp_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.95, i64 68, i32 8190, i32 0, i32 0, i32 1, i32 384, i32 0 }, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@davinci_mcasp_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 2438, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"No DMA controller found (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@davinci_mcasp_probe._entry_ptr.32 = internal global ptr @davinci_mcasp_probe._entry.30, section ".printk_index", align 4
@davinci_mcasp_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 2445, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"register PCM failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@davinci_mcasp_probe._entry_ptr.35 = internal global ptr @davinci_mcasp_probe._entry.33, section ".printk_index", align 4
@davinci_mcasp_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.2, ptr @.str.3, i32 2452, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"gpiochip registration failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@davinci_mcasp_probe._entry_ptr.38 = internal global ptr @davinci_mcasp_probe._entry.36, section ".printk_index", align 4
@davinci_mcasp_get_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 1899, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No compatible match found\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"davinci_mcasp_get_config\00", [39 x i8] zeroinitializer }, align 32
@davinci_mcasp_get_config._entry_ptr = internal global ptr @davinci_mcasp_get_config._entry, section ".printk_index", align 4
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"op-mode\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tdm-slots\00", [22 x i8] zeroinitializer }, align 32
@davinci_mcasp_get_config._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.40, ptr @.str.3, i32 1912, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"tdm-slots must be in rage [2-32]\0A\00", [62 x i8] zeroinitializer }, align 32
@davinci_mcasp_get_config._entry_ptr.45 = internal global ptr @davinci_mcasp_get_config._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"serial-dir\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx-num-evt\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rx-num-evt\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"auxclk-fs-ratio\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dismod\00", [25 x i8] zeroinitializer }, align 32
@davinci_mcasp_get_config._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.40, ptr @.str.3, i32 1954, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid dismod value: %u\0A\00", [38 x i8] zeroinitializer }, align 32
@davinci_mcasp_get_config._entry_ptr.53 = internal global ptr @davinci_mcasp_get_config._entry.51, section ".printk_index", align 4
@davinci_mcasp_get_config.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.54, ptr @.str.40, ptr @.str.3, ptr @.str.55, i8 1, i8 -21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_soc_davinci_mcasp\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Missing DT parameter(s) for audio\0A\00", [61 x i8] zeroinitializer }, align 32
@davinci_mcasp_get_config._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.40, ptr @.str.3, i32 1970, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Insufficient DT parameter(s)\0A\00", [34 x i8] zeroinitializer }, align 32
@davinci_mcasp_get_config._entry_ptr.58 = internal global ptr @davinci_mcasp_get_config._entry.56, section ".printk_index", align 4
@davinci_mcasp_get_config._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.40, ptr @.str.3, i32 1979, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid tdm slots: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@davinci_mcasp_get_config._entry_ptr.61 = internal global ptr @davinci_mcasp_get_config._entry.59, section ".printk_index", align 4
@davinci_mcasp_get_config._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.40, ptr @.str.3, i32 1983, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@davinci_mcasp_get_config._entry_ptr.63 = internal global ptr @davinci_mcasp_get_config._entry.62, section ".printk_index", align 4
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpio-controller\00", [16 x i8] zeroinitializer }, align 32
@davinci_mcasp_rx_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.3, i32 406, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Receive buffer overflow\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"davinci_mcasp_rx_irq_handler\00", [35 x i8] zeroinitializer }, align 32
@davinci_mcasp_rx_irq_handler._entry_ptr = internal global ptr @davinci_mcasp_rx_irq_handler._entry, section ".printk_index", align 4
@davinci_mcasp_rx_irq_handler._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.3, i32 416, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unhandled rx event. rxstat: 0x%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@davinci_mcasp_rx_irq_handler._entry_ptr.69 = internal global ptr @davinci_mcasp_rx_irq_handler._entry.67, section ".printk_index", align 4
@davinci_mcasp_tx_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.3, i32 375, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Transmit buffer underflow\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"davinci_mcasp_tx_irq_handler\00", [35 x i8] zeroinitializer }, align 32
@davinci_mcasp_tx_irq_handler._entry_ptr = internal global ptr @davinci_mcasp_tx_irq_handler._entry, section ".printk_index", align 4
@davinci_mcasp_tx_irq_handler._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.3, i32 385, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unhandled tx event. txstat: 0x%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@davinci_mcasp_tx_irq_handler._entry_ptr.74 = internal global ptr @davinci_mcasp_tx_irq_handler._entry.72, section ".printk_index", align 4
@davinci_mcasp_txdma_offset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.3, i32 2068, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: Only one serializer allowed!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"davinci_mcasp_txdma_offset\00", [37 x i8] zeroinitializer }, align 32
@davinci_mcasp_txdma_offset._entry_ptr = internal global ptr @davinci_mcasp_txdma_offset._entry, section ".printk_index", align 4
@davinci_mcasp_rxdma_offset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.77, ptr @.str.3, i32 2091, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"davinci_mcasp_rxdma_offset\00", [37 x i8] zeroinitializer }, align 32
@davinci_mcasp_rxdma_offset._entry_ptr = internal global ptr @davinci_mcasp_rxdma_offset._entry, section ".printk_index", align 4
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fck_parent\00", [21 x i8] zeroinitializer }, align 32
@mcasp_reparent_fck._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.3, i32 1842, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Update the bindings to use assigned-clocks!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mcasp_reparent_fck\00", [45 x i8] zeroinitializer }, align 32
@mcasp_reparent_fck._entry_ptr = internal global ptr @mcasp_reparent_fck._entry, section ".printk_index", align 4
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@mcasp_reparent_fck._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.80, ptr @.str.3, i32 1846, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to get fck\0A\00", [45 x i8] zeroinitializer }, align 32
@mcasp_reparent_fck._entry_ptr.84 = internal global ptr @mcasp_reparent_fck._entry.82, section ".printk_index", align 4
@mcasp_reparent_fck._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.80, ptr @.str.3, i32 1852, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get parent clock\0A\00", [36 x i8] zeroinitializer }, align 32
@mcasp_reparent_fck._entry_ptr.87 = internal global ptr @mcasp_reparent_fck._entry.85, section ".printk_index", align 4
@mcasp_reparent_fck._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.80, ptr @.str.3, i32 1859, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to reparent fck\0A\00", [40 x i8] zeroinitializer }, align 32
@mcasp_reparent_fck._entry_ptr.90 = internal global ptr @mcasp_reparent_fck._entry.88, section ".printk_index", align 4
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"davinci-mcasp.0\00", [16 x i8] zeroinitializer }, align 32
@davinci_mcasp_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @davinci_mcasp_set_sysclk, ptr null, ptr @davinci_mcasp_set_clkdiv, ptr null, ptr @davinci_mcasp_set_dai_fmt, ptr null, ptr @davinci_mcasp_set_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @davinci_mcasp_startup, ptr @davinci_mcasp_shutdown, ptr @davinci_mcasp_hw_params, ptr null, ptr null, ptr @davinci_mcasp_trigger, ptr null, ptr @davinci_mcasp_delay, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IIS Capture\00", [20 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IIS Playback\00", [19 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"davinci-mcasp.1\00", [16 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DIT Playback\00", [19 x i8] zeroinitializer }, align 32
@davinci_mcasp_iec958_ctls = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.96, i32 0, i32 7, i32 0, ptr @davinci_mcasp_iec958_info, ptr @davinci_mcasp_iec958_get, ptr @davinci_mcasp_iec958_put, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.97, i32 0, i32 1, i32 0, ptr @davinci_mcasp_iec958_info, ptr @davinci_mcasp_iec958_con_mask_get, ptr null, %union.anon.87 zeroinitializer, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 Playback Default\00", [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IEC958 Playback Con Mask\00", [39 x i8] zeroinitializer }, align 32
@davinci_mcasp_set_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.3, i32 691, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid clk id: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"davinci_mcasp_set_sysclk\00", [39 x i8] zeroinitializer }, align 32
@davinci_mcasp_set_sysclk._entry_ptr = internal global ptr @davinci_mcasp_set_sysclk._entry, section ".printk_index", align 4
@__davinci_mcasp_set_clkdiv._entry = internal constant %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.3, i32 648, ptr @.str.9, ptr @.str.5 }, align 1
@.str.100 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s(): BCLK/LRCLK %d is not divisible by %d tdm slots\00", [43 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"__davinci_mcasp_set_clkdiv\00", [37 x i8] zeroinitializer }, align 32
@__davinci_mcasp_set_clkdiv._entry_ptr = internal global ptr @__davinci_mcasp_set_clkdiv._entry, section ".printk_index", align 4
@davinci_mcasp_set_tdm_slot.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.54, ptr @.str.102, ptr @.str.3, ptr @.str.103, i8 0, i8 -65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"davinci_mcasp_set_tdm_slot\00", [37 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s() tx_mask 0x%08x rx_mask 0x%08x slots %d width %d\0A\00", [42 x i8] zeroinitializer }, align 32
@davinci_mcasp_set_tdm_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.102, ptr @.str.3, i32 772, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Bad tdm mask tx: 0x%08x rx: 0x%08x slots %d\0A\00", [51 x i8] zeroinitializer }, align 32
@davinci_mcasp_set_tdm_slot._entry_ptr = internal global ptr @davinci_mcasp_set_tdm_slot._entry, section ".printk_index", align 4
@davinci_mcasp_set_tdm_slot._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.102, ptr @.str.3, i32 779, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Unsupported slot_width %d\0A\00", [33 x i8] zeroinitializer }, align 32
@davinci_mcasp_set_tdm_slot._entry_ptr.107 = internal global ptr @davinci_mcasp_set_tdm_slot._entry.105, section ".printk_index", align 4
@davinci_mcasp_dai_rates = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 8000, i32 11025, i32 16000, i32 22050, i32 32000, i32 44100, i32 48000, i32 64000, i32 88200, i32 96000, i32 176400, i32 192000], [48 x i8] zeroinitializer }, align 32
@davinci_mcasp_hw_rule_rate.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.54, ptr @.str.108, ptr @.str.3, ptr @.str.109, i8 1, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"davinci_mcasp_hw_rule_rate\00", [37 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Frequencies %d-%d -> %d-%d for %d sbits and %d tdm slots\0A\00", [38 x i8] zeroinitializer }, align 32
@davinci_mcasp_calc_clk_div._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.3, i32 1144, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Too fast reference clock (%u)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"davinci_mcasp_calc_clk_div\00", [37 x i8] zeroinitializer }, align 32
@davinci_mcasp_calc_clk_div._entry_ptr = internal global ptr @davinci_mcasp_calc_clk_div._entry, section ".printk_index", align 4
@davinci_mcasp_calc_clk_div._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.111, ptr @.str.3, i32 1162, ptr @.str.114, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Sample-rate is off by %d PPM\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@davinci_mcasp_calc_clk_div._entry_ptr.115 = internal global ptr @davinci_mcasp_calc_clk_div._entry.112, section ".printk_index", align 4
@davinci_mcasp_hw_rule_format.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.54, ptr @.str.116, ptr @.str.3, ptr @.str.117, i8 1, i8 110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"davinci_mcasp_hw_rule_format\00", [35 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%d possible sample format for %d Hz and %d tdm slots\0A\00", [42 x i8] zeroinitializer }, align 32
@davinci_mcasp_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.3, i32 1246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014davinci-mcasp: unsupported PCM format\00", [56 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"davinci_mcasp_hw_params\00", [40 x i8] zeroinitializer }, align 32
@davinci_mcasp_hw_params._entry_ptr = internal global ptr @davinci_mcasp_hw_params._entry, section ".printk_index", align 4
@mcasp_common_hw_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.3, i32 931, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"stream has more channels (%d) than are enabled in mcasp (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mcasp_common_hw_param\00", [42 x i8] zeroinitializer }, align 32
@mcasp_common_hw_param._entry_ptr = internal global ptr @mcasp_common_hw_param._entry, section ".printk_index", align 4
@mcasp_common_hw_param._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.3, i32 956, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Invalid combination of period words and active serializers: %d, %d\0A\00", [60 x i8] zeroinitializer }, align 32
@mcasp_common_hw_param._entry_ptr.124 = internal global ptr @mcasp_common_hw_param._entry.122, section ".printk_index", align 4
@mcasp_dit_hw_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.3, i32 1110, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unsupported sampling rate: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mcasp_dit_hw_param\00", [45 x i8] zeroinitializer }, align 32
@mcasp_dit_hw_param._entry_ptr = internal global ptr @mcasp_dit_hw_param._entry, section ".printk_index", align 4
@mcasp_set_ctl_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.3, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013GBLCTL write error\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mcasp_set_ctl_reg\00", [46 x i8] zeroinitializer }, align 32
@mcasp_set_ctl_reg._entry_ptr = internal global ptr @mcasp_set_ctl_reg._entry, section ".printk_index", align 4
@.str.129 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Can't verify DMA configuration\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compatible\00", [21 x i8] zeroinitializer }, align 32
@davinci_mcasp_get_dma_type.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.54, ptr @.str.131, ptr @.str.3, ptr @.str.132, i8 1, i8 -3, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"davinci_mcasp_get_dma_type\00", [37 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DMA controller has no of-node\0A\00", [33 x i8] zeroinitializer }, align 32
@davinci_mcasp_get_dma_type.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.54, ptr @.str.131, ptr @.str.3, ptr @.str.133, i8 1, i8 -1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DMA controller compatible = \22%s\22\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"udmap\00", [26 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ti,omap\00", [24 x i8] zeroinitializer }, align 32
@davinci_mcasp_template_chip = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @davinci_mcasp_gpio_request, ptr @davinci_mcasp_gpio_free, ptr @davinci_mcasp_gpio_get_direction, ptr @davinci_mcasp_gpio_direction_in, ptr @davinci_mcasp_gpio_direction_out, ptr @davinci_mcasp_gpio_get, ptr null, ptr @davinci_mcasp_gpio_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -1, i16 32, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, [68 x i8] zeroinitializer }, align 32
@davinci_mcasp_init_gpiochip.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@davinci_mcasp_init_gpiochip.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@davinci_mcasp_gpio_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.3, i32 2107, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AXR%u pin is  used for audio\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"davinci_mcasp_gpio_request\00", [37 x i8] zeroinitializer }, align 32
@davinci_mcasp_gpio_request._entry_ptr = internal global ptr @davinci_mcasp_gpio_request._entry, section ".printk_index", align 4
@dm646x_mcasp_pdata = internal global { %struct.davinci_mcasp_pdata, [32 x i8] } { %struct.davinci_mcasp_pdata { i32 1024, i32 1024, i32 0, i32 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i8 0, i8 0, i8 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@da830_mcasp_pdata = internal global { %struct.davinci_mcasp_pdata, [32 x i8] } { %struct.davinci_mcasp_pdata { i32 8192, i32 8192, i32 0, i32 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i8 1, i8 0, i8 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@am33xx_mcasp_pdata = internal global { %struct.davinci_mcasp_pdata, [32 x i8] } { %struct.davinci_mcasp_pdata { i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i8 2, i8 0, i8 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@dra7_mcasp_pdata = internal global { %struct.davinci_mcasp_pdata, [32 x i8] } { %struct.davinci_mcasp_pdata { i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i8 3, i8 0, i8 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@omap_mcasp_pdata = internal global { %struct.davinci_mcasp_pdata, [32 x i8] } { %struct.davinci_mcasp_pdata { i32 512, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i8 4, i8 0, i8 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4294966779]
@__sancov_gen_cov_switch_values.138 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.141 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.142 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.143 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.144 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.145 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 32, i64 34]
@__sancov_gen_cov_switch_values.146 = internal global [11 x i64] [i64 9, i64 32, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.148 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.149 = private unnamed_addr constant [21 x i8] c"davinci_mcasp_driver\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 2530, i32 31 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 2534, i32 11 }
@___asan_gen_.155 = private unnamed_addr constant [13 x i8] c"mcasp_dt_ids\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1803, i32 34 }
@___asan_gen_.158 = private unnamed_addr constant [21 x i8] c"davinci_mcasp_pm_ops\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 2524, i32 32 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 2248, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 2257, i32 59 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 2259, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 2263, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 2289, i32 47 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 2291, i32 53 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 2302, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 2310, i32 47 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 2312, i32 53 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 2322, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 2329, i32 47 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 2331, i32 53 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 2341, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 2348, i32 59 }
@___asan_gen_.236 = private unnamed_addr constant [24 x i8] c"davinci_mcasp_component\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1767, i32 46 }
@___asan_gen_.239 = private unnamed_addr constant [18 x i8] c"davinci_mcasp_dai\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1729, i32 34 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 2438, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 2445, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 2452, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1899, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1903, i32 31 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1910, i32 31 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1912, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1922, i32 40 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1941, i32 31 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1944, i32 31 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1947, i32 31 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1950, i32 31 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1954, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1966, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1970, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1978, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1982, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1873, i32 52 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 406, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 415, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 375, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 384, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 2067, i32 5 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 2090, i32 5 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1838, i32 38 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1842, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1844, i32 30 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1846, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1852, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1859, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1731, i32 12 }
@___asan_gen_.407 = private unnamed_addr constant [22 x i8] c"davinci_mcasp_dai_ops\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1617, i32 37 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1741, i32 19 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1734, i32 19 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1752, i32 12 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1755, i32 19 }
@___asan_gen_.422 = private unnamed_addr constant [26 x i8] c"davinci_mcasp_iec958_ctls\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1672, i32 38 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1677, i32 11 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1684, i32 11 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 691, i32 4 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 646, i32 4 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 765, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 770, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 778, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant [24 x i8] c"davinci_mcasp_dai_rates\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1370, i32 27 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1419, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1143, i32 4 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1161, i32 4 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1463, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1246, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 929, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 954, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1110, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 179, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 2029, i32 10 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 2037, i32 12 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 2039, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 2045, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 2048, i32 23 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 2014, i32 34 }
@___asan_gen_.560 = private unnamed_addr constant [28 x i8] c"davinci_mcasp_template_chip\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 2206, i32 31 }
@___asan_gen_.563 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.566 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 2228, i32 9 }
@___asan_gen_.569 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.575 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 2107, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant [19 x i8] c"dm646x_mcasp_pdata\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1772, i32 35 }
@___asan_gen_.581 = private unnamed_addr constant [18 x i8] c"da830_mcasp_pdata\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1778, i32 35 }
@___asan_gen_.584 = private unnamed_addr constant [19 x i8] c"am33xx_mcasp_pdata\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1784, i32 35 }
@___asan_gen_.587 = private unnamed_addr constant [17 x i8] c"dra7_mcasp_pdata\00", align 1
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1790, i32 35 }
@___asan_gen_.590 = private unnamed_addr constant [17 x i8] c"omap_mcasp_pdata\00", align 1
@___asan_gen_.591 = private constant [32 x i8] c"../sound/soc/ti/davinci-mcasp.c\00", align 1
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 1797, i32 35 }
@llvm.compiler.used = appending global [193 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__davinci_mcasp_set_clkdiv._entry, ptr @__davinci_mcasp_set_clkdiv._entry_ptr, ptr @__exitcall_davinci_mcasp_driver_exit, ptr @__initcall__kmod_snd_soc_davinci_mcasp__247_2540_davinci_mcasp_driver_init6, ptr @davinci_mcasp_calc_clk_div._entry, ptr @davinci_mcasp_calc_clk_div._entry.112, ptr @davinci_mcasp_calc_clk_div._entry_ptr, ptr @davinci_mcasp_calc_clk_div._entry_ptr.115, ptr @davinci_mcasp_driver_exit, ptr @davinci_mcasp_get_config._entry, ptr @davinci_mcasp_get_config._entry.43, ptr @davinci_mcasp_get_config._entry.51, ptr @davinci_mcasp_get_config._entry.56, ptr @davinci_mcasp_get_config._entry.59, ptr @davinci_mcasp_get_config._entry.62, ptr @davinci_mcasp_get_config._entry_ptr, ptr @davinci_mcasp_get_config._entry_ptr.45, ptr @davinci_mcasp_get_config._entry_ptr.53, ptr @davinci_mcasp_get_config._entry_ptr.58, ptr @davinci_mcasp_get_config._entry_ptr.61, ptr @davinci_mcasp_get_config._entry_ptr.63, ptr @davinci_mcasp_gpio_request._entry, ptr @davinci_mcasp_gpio_request._entry_ptr, ptr @davinci_mcasp_hw_params._entry, ptr @davinci_mcasp_hw_params._entry_ptr, ptr @davinci_mcasp_probe._entry, ptr @davinci_mcasp_probe._entry.11, ptr @davinci_mcasp_probe._entry.16, ptr @davinci_mcasp_probe._entry.21, ptr @davinci_mcasp_probe._entry.26, ptr @davinci_mcasp_probe._entry.30, ptr @davinci_mcasp_probe._entry.33, ptr @davinci_mcasp_probe._entry.36, ptr @davinci_mcasp_probe._entry.7, ptr @davinci_mcasp_probe._entry_ptr, ptr @davinci_mcasp_probe._entry_ptr.10, ptr @davinci_mcasp_probe._entry_ptr.13, ptr @davinci_mcasp_probe._entry_ptr.18, ptr @davinci_mcasp_probe._entry_ptr.23, ptr @davinci_mcasp_probe._entry_ptr.28, ptr @davinci_mcasp_probe._entry_ptr.32, ptr @davinci_mcasp_probe._entry_ptr.35, ptr @davinci_mcasp_probe._entry_ptr.38, ptr @davinci_mcasp_rx_irq_handler._entry, ptr @davinci_mcasp_rx_irq_handler._entry.67, ptr @davinci_mcasp_rx_irq_handler._entry_ptr, ptr @davinci_mcasp_rx_irq_handler._entry_ptr.69, ptr @davinci_mcasp_rxdma_offset._entry, ptr @davinci_mcasp_rxdma_offset._entry_ptr, ptr @davinci_mcasp_set_sysclk._entry, ptr @davinci_mcasp_set_sysclk._entry_ptr, ptr @davinci_mcasp_set_tdm_slot._entry, ptr @davinci_mcasp_set_tdm_slot._entry.105, ptr @davinci_mcasp_set_tdm_slot._entry_ptr, ptr @davinci_mcasp_set_tdm_slot._entry_ptr.107, ptr @davinci_mcasp_tx_irq_handler._entry, ptr @davinci_mcasp_tx_irq_handler._entry.72, ptr @davinci_mcasp_tx_irq_handler._entry_ptr, ptr @davinci_mcasp_tx_irq_handler._entry_ptr.74, ptr @davinci_mcasp_txdma_offset._entry, ptr @davinci_mcasp_txdma_offset._entry_ptr, ptr @mcasp_common_hw_param._entry, ptr @mcasp_common_hw_param._entry.122, ptr @mcasp_common_hw_param._entry_ptr, ptr @mcasp_common_hw_param._entry_ptr.124, ptr @mcasp_dit_hw_param._entry, ptr @mcasp_dit_hw_param._entry_ptr, ptr @mcasp_reparent_fck._entry, ptr @mcasp_reparent_fck._entry.82, ptr @mcasp_reparent_fck._entry.85, ptr @mcasp_reparent_fck._entry.88, ptr @mcasp_reparent_fck._entry_ptr, ptr @mcasp_reparent_fck._entry_ptr.84, ptr @mcasp_reparent_fck._entry_ptr.87, ptr @mcasp_reparent_fck._entry_ptr.90, ptr @mcasp_set_ctl_reg._entry, ptr @mcasp_set_ctl_reg._entry_ptr, ptr @davinci_mcasp_driver, ptr @.str, ptr @mcasp_dt_ids, ptr @davinci_mcasp_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @davinci_mcasp_component, ptr @davinci_mcasp_dai, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.91, ptr @davinci_mcasp_dai_ops, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @davinci_mcasp_iec958_ctls, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @davinci_mcasp_dai_rates, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.114, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @davinci_mcasp_template_chip, ptr @davinci_mcasp_init_gpiochip.lock_key, ptr @davinci_mcasp_init_gpiochip.request_key, ptr @.str.136, ptr @.str.137, ptr @dm646x_mcasp_pdata, ptr @da830_mcasp_pdata, ptr @am33xx_mcasp_pdata, ptr @dra7_mcasp_pdata, ptr @omap_mcasp_pdata], section "llvm.metadata"
@0 = internal global [148 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcasp_dt_ids to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_dai to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_get_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_get_config._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_get_config._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_get_config._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_get_config._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_get_config._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_rx_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_rx_irq_handler._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_tx_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_tx_irq_handler._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_txdma_offset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_rxdma_offset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcasp_reparent_fck._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcasp_reparent_fck._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcasp_reparent_fck._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcasp_reparent_fck._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_iec958_ctls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_set_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_set_tdm_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_set_tdm_slot._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_dai_rates to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_calc_clk_div._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_calc_clk_div._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcasp_common_hw_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcasp_common_hw_param._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcasp_dit_hw_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcasp_set_ctl_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_template_chip to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_init_gpiochip.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_init_gpiochip.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcasp_gpio_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm646x_mcasp_pdata to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da830_mcasp_pdata to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_mcasp_pdata to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7_mcasp_pdata to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcasp_pdata to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mcasp_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @davinci_mcasp_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @davinci_mcasp_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @davinci_mcasp_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mcasp_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 640, i32 noundef 3520) #10
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.6) #10
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end13, label %if.end7.if.end23_crit_edge

if.end7.if.end23_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.end13:                                         ; preds = %if.end7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.8) #13
  %call15 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %do.end20, label %do.end13.if.end23_crit_edge

do.end13.if.end23_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.end20:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #13
  br label %cleanup

if.end23:                                         ; preds = %do.end13.if.end23_crit_edge, %if.end7.if.end23_crit_edge
  %mem.0 = phi ptr [ %call8, %if.end7.if.end23_crit_edge ], [ %call15, %do.end13.if.end23_crit_edge ]
  %call25 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %mem.0) #10
  %base = getelementptr inbounds %struct.davinci_mcasp, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call25, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %call25 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end23
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev) #10
  %dev35 = getelementptr inbounds %struct.davinci_mcasp, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %dev35 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %dev35, align 4
  %call36 = tail call fastcc i32 @davinci_mcasp_get_config(ptr noundef nonnull %call.i, ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end31.err_crit_edge

if.end31.err_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end39:                                         ; preds = %if.end31
  %8 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev35, align 4
  %call.i359 = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #10
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !303
  %12 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev35, align 4
  %call.i360 = tail call i32 @__pm_runtime_idle(ptr noundef %13, i32 noundef 5) #10
  %missing_audio_param = getelementptr inbounds %struct.davinci_mcasp, ptr %call.i, i32 0, i32 8
  %14 = ptrtoint ptr %missing_audio_param to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %missing_audio_param, align 4, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool44.not = icmp eq i8 %15, 0
  br i1 %tobool44.not, label %if.end46, label %if.end39.no_audio_crit_edge

if.end39.no_audio_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_audio

if.end46:                                         ; preds = %if.end39
  %call47 = tail call i32 @platform_get_irq_byname_optional(ptr noundef %pdev, ptr noundef nonnull @.str.14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp = icmp sgt i32 %call47, 0
  br i1 %cmp, label %if.then48, label %if.end46.if.end67_crit_edge

if.end46.if.end67_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then48:                                        ; preds = %if.end46
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then48.dev_name.exit_crit_edge

if.then48.dev_name.exit_crit_edge:                ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then48.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %19, %if.end.i ], [ %17, %if.then48.dev_name.exit_crit_edge ]
  %call52 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.15, ptr noundef %retval.0.i) #10
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %dev_name.exit.err_crit_edge, label %if.end55

dev_name.exit.err_crit_edge:                      ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end55:                                         ; preds = %dev_name.exit
  %call57 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call47, ptr noundef null, ptr noundef nonnull @davinci_mcasp_common_irq_handler, i32 noundef 8320, ptr noundef nonnull %call52, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end64, label %do.end62

do.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #13
  br label %err

if.end64:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  %irq_request = getelementptr inbounds %struct.davinci_mcasp, ptr %call.i, i32 0, i32 19
  %20 = ptrtoint ptr %irq_request to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %irq_request, align 4
  %arrayidx66 = getelementptr %struct.davinci_mcasp, ptr %call.i, i32 0, i32 19, i32 1
  %21 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %arrayidx66, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.end64, %if.end46.if.end67_crit_edge
  %call68 = tail call i32 @platform_get_irq_byname_optional(ptr noundef %pdev, ptr noundef nonnull @.str.19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp sgt i32 %call68, 0
  br i1 %cmp69, label %if.then70, label %if.end67.if.end89_crit_edge

if.end67.if.end89_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

if.then70:                                        ; preds = %if.end67
  %init_name.i361 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %init_name.i361 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i361, align 8
  %tobool.not.i362 = icmp eq ptr %23, null
  br i1 %tobool.not.i362, label %if.end.i363, label %if.then70.dev_name.exit365_crit_edge

if.then70.dev_name.exit365_crit_edge:             ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit365

if.end.i363:                                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  br label %dev_name.exit365

dev_name.exit365:                                 ; preds = %if.end.i363, %if.then70.dev_name.exit365_crit_edge
  %retval.0.i364 = phi ptr [ %25, %if.end.i363 ], [ %23, %if.then70.dev_name.exit365_crit_edge ]
  %call74 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.20, ptr noundef %retval.0.i364) #10
  %tobool75.not = icmp eq ptr %call74, null
  br i1 %tobool75.not, label %dev_name.exit365.err_crit_edge, label %if.end77

dev_name.exit365.err_crit_edge:                   ; preds = %dev_name.exit365
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end77:                                         ; preds = %dev_name.exit365
  %call79 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call68, ptr noundef null, ptr noundef nonnull @davinci_mcasp_rx_irq_handler, i32 noundef 8192, ptr noundef nonnull %call74, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end86, label %do.end84

do.end84:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #13
  br label %err

if.end86:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx88 = getelementptr %struct.davinci_mcasp, ptr %call.i, i32 0, i32 19, i32 1
  %26 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %arrayidx88, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.end86, %if.end67.if.end89_crit_edge
  %call90 = tail call i32 @platform_get_irq_byname_optional(ptr noundef %pdev, ptr noundef nonnull @.str.24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp sgt i32 %call90, 0
  br i1 %cmp91, label %if.then92, label %if.end89.if.end111_crit_edge

if.end89.if.end111_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

if.then92:                                        ; preds = %if.end89
  %init_name.i366 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %27 = ptrtoint ptr %init_name.i366 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i366, align 8
  %tobool.not.i367 = icmp eq ptr %28, null
  br i1 %tobool.not.i367, label %if.end.i368, label %if.then92.dev_name.exit370_crit_edge

if.then92.dev_name.exit370_crit_edge:             ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit370

if.end.i368:                                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  br label %dev_name.exit370

dev_name.exit370:                                 ; preds = %if.end.i368, %if.then92.dev_name.exit370_crit_edge
  %retval.0.i369 = phi ptr [ %30, %if.end.i368 ], [ %28, %if.then92.dev_name.exit370_crit_edge ]
  %call96 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.25, ptr noundef %retval.0.i369) #10
  %tobool97.not = icmp eq ptr %call96, null
  br i1 %tobool97.not, label %dev_name.exit370.err_crit_edge, label %if.end99

dev_name.exit370.err_crit_edge:                   ; preds = %dev_name.exit370
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end99:                                         ; preds = %dev_name.exit370
  %call101 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call90, ptr noundef null, ptr noundef nonnull @davinci_mcasp_tx_irq_handler, i32 noundef 8192, ptr noundef nonnull %call96, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end108, label %do.end106

do.end106:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #13
  br label %err

if.end108:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  %irq_request109 = getelementptr inbounds %struct.davinci_mcasp, ptr %call.i, i32 0, i32 19
  %31 = ptrtoint ptr %irq_request109 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %irq_request109, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.end108, %if.end89.if.end111_crit_edge
  %call112 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.29) #10
  %tobool113.not = icmp eq ptr %call112, null
  br i1 %tobool113.not, label %if.end131.thread, label %if.then114

if.then114:                                       ; preds = %if.end111
  %dat_port = getelementptr inbounds %struct.davinci_mcasp, ptr %call.i, i32 0, i32 26
  %32 = ptrtoint ptr %dat_port to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %dat_port, align 2
  %filter_data.c = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %call.i, i32 0, i32 3
  %33 = ptrtoint ptr %filter_data.c to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.24, ptr %filter_data.c, align 4
  %34 = ptrtoint ptr %call112 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %call112, align 4
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %call.i, align 4
  %version = getelementptr inbounds %struct.davinci_mcasp, ptr %call.i, i32 0, i32 16
  %37 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %38)
  %cmp120 = icmp eq i8 %38, 4
  br i1 %cmp120, label %if.then122, label %if.then114.if.end131_crit_edge

if.then114.if.end131_crit_edge:                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131

if.then122:                                       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #12
  %pdata = getelementptr inbounds %struct.davinci_mcasp, ptr %call.i, i32 0, i32 1
  %39 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdata, align 4
  %call123 = tail call fastcc i32 @davinci_mcasp_txdma_offset(ptr noundef %40)
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %call.i, align 4
  %add = add i32 %42, %call123
  store i32 %add, ptr %call.i, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.then122, %if.then114.if.end131_crit_edge
  %op_mode = getelementptr inbounds %struct.davinci_mcasp, ptr %call.i, i32 0, i32 12
  %43 = ptrtoint ptr %op_mode to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %op_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %44)
  %cmp133.not = icmp eq i8 %44, 1
  br i1 %cmp133.not, label %if.end131.if.end150_crit_edge, label %if.then140

if.end131.if.end150_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150

if.end131.thread:                                 ; preds = %if.end111
  %filter_data.c358 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %call.i, i32 0, i32 3
  %45 = ptrtoint ptr %filter_data.c358 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.24, ptr %filter_data.c358, align 4
  %46 = ptrtoint ptr %mem.0 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mem.0, align 4
  %pdata127 = getelementptr inbounds %struct.davinci_mcasp, ptr %call.i, i32 0, i32 1
  %48 = ptrtoint ptr %pdata127 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdata127, align 4
  %call128 = tail call fastcc i32 @davinci_mcasp_txdma_offset(ptr noundef %49)
  %add129 = add i32 %call128, %47
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add129, ptr %call.i, align 4
  %op_mode379 = getelementptr inbounds %struct.davinci_mcasp, ptr %call.i, i32 0, i32 12
  %51 = ptrtoint ptr %op_mode379 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %op_mode379, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %52)
  %cmp133.not380 = icmp eq i8 %52, 1
  br i1 %cmp133.not380, label %if.end131.thread.if.end150_crit_edge, label %if.else143

if.end131.thread.if.end150_crit_edge:             ; preds = %if.end131.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150

if.then140:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  %filter_data138 = getelementptr [2 x %struct.snd_dmaengine_dai_dma_data], ptr %call.i, i32 0, i32 1, i32 3
  %53 = ptrtoint ptr %filter_data138 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.19, ptr %filter_data138, align 4
  %arrayidx137 = getelementptr [2 x %struct.snd_dmaengine_dai_dma_data], ptr %call.i, i32 0, i32 1
  %54 = ptrtoint ptr %call112 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %call112, align 4
  %56 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %arrayidx137, align 4
  br label %if.end150

if.else143:                                       ; preds = %if.end131.thread
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx137384 = getelementptr [2 x %struct.snd_dmaengine_dai_dma_data], ptr %call.i, i32 0, i32 1
  %filter_data138385 = getelementptr [2 x %struct.snd_dmaengine_dai_dma_data], ptr %call.i, i32 0, i32 1, i32 3
  %57 = ptrtoint ptr %filter_data138385 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.19, ptr %filter_data138385, align 4
  %58 = ptrtoint ptr %mem.0 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mem.0, align 4
  %pdata145 = getelementptr inbounds %struct.davinci_mcasp, ptr %call.i, i32 0, i32 1
  %60 = ptrtoint ptr %pdata145 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pdata145, align 4
  %call146 = tail call fastcc i32 @davinci_mcasp_rxdma_offset(ptr noundef %61)
  %add147 = add i32 %call146, %59
  %62 = ptrtoint ptr %arrayidx137384 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add147, ptr %arrayidx137384, align 4
  br label %if.end150

if.end150:                                        ; preds = %if.else143, %if.then140, %if.end131.thread.if.end150_crit_edge, %if.end131.if.end150_crit_edge
  %op_mode382 = phi ptr [ %op_mode379, %if.end131.thread.if.end150_crit_edge ], [ %op_mode, %if.then140 ], [ %op_mode379, %if.else143 ], [ %op_mode, %if.end131.if.end150_crit_edge ]
  %version151 = getelementptr inbounds %struct.davinci_mcasp, ptr %call.i, i32 0, i32 16
  %63 = ptrtoint ptr %version151 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %version151, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %64)
  %cmp153 = icmp ult i8 %64, 2
  br i1 %cmp153, label %if.then155, label %if.end150.if.end159_crit_edge

if.end150.if.end159_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end159

if.then155:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  %dat_port156 = getelementptr inbounds %struct.davinci_mcasp, ptr %call.i, i32 0, i32 26
  %65 = ptrtoint ptr %dat_port156 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %dat_port156, align 2
  br label %if.end159

if.end159:                                        ; preds = %if.then155, %if.end150.if.end159_crit_edge
  %.sink = phi i32 [ 4112, %if.then155 ], [ 4096, %if.end150.if.end159_crit_edge ]
  %66 = getelementptr inbounds %struct.davinci_mcasp, ptr %call.i, i32 0, i32 3
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %.sink, ptr %66, align 4
  %num_serializer = getelementptr inbounds %struct.davinci_mcasp, ptr %call.i, i32 0, i32 14
  %68 = ptrtoint ptr %num_serializer to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %num_serializer, align 2
  %conv161 = zext i8 %69 to i32
  %sub = shl nuw nsw i32 %conv161, 2
  %70 = add nuw nsw i32 %sub, 124
  %71 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev35, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %72, i32 noundef %70, i32 noundef 3520) #10
  %chconstr = getelementptr inbounds %struct.davinci_mcasp, ptr %call.i, i32 0, i32 33
  %73 = ptrtoint ptr %chconstr to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call5.i.i, ptr %chconstr, align 4
  %74 = ptrtoint ptr %num_serializer to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %num_serializer, align 2
  %conv167 = zext i8 %75 to i32
  %sub169 = shl nuw nsw i32 %conv167, 2
  %76 = add nuw nsw i32 %sub169, 124
  %77 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev35, align 4
  %call5.i.i371 = tail call noalias ptr @devm_kmalloc(ptr noundef %78, i32 noundef %76, i32 noundef 3520) #10
  %arrayidx172 = getelementptr %struct.davinci_mcasp, ptr %call.i, i32 0, i32 33, i32 1
  %79 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call5.i.i371, ptr %arrayidx172, align 4
  %80 = ptrtoint ptr %chconstr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %chconstr, align 4
  %tobool177.not = icmp eq ptr %81, null
  %tobool181.not = icmp eq ptr %call5.i.i371, null
  %or.cond = select i1 %tobool177.not, i1 true, i1 %tobool181.not
  br i1 %or.cond, label %if.end159.err_crit_edge, label %if.end183

if.end159.err_crit_edge:                          ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end183:                                        ; preds = %if.end159
  tail call fastcc void @davinci_mcasp_set_ch_constraints(ptr noundef nonnull %call.i)
  tail call fastcc void @mcasp_reparent_fck(ptr noundef %pdev)
  %82 = ptrtoint ptr %op_mode382 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %op_mode382, align 4
  %idxprom = zext i8 %83 to i32
  %arrayidx191 = getelementptr [2 x %struct.snd_soc_dai_driver], ptr @davinci_mcasp_dai, i32 0, i32 %idxprom
  %call192 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @davinci_mcasp_component, ptr noundef %arrayidx191, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192)
  %cmp193.not = icmp eq i32 %call192, 0
  br i1 %cmp193.not, label %if.end196, label %if.end183.err_crit_edge

if.end183.err_crit_edge:                          ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end196:                                        ; preds = %if.end183
  %call197 = tail call fastcc i32 @davinci_mcasp_get_dma_type(ptr noundef nonnull %call.i)
  %84 = zext i32 %call197 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call197, label %do.end217 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb200
    i32 2, label %sw.bb212
    i32 -517, label %if.end196.err_crit_edge
  ]

if.end196.err_crit_edge:                          ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

sw.bb:                                            ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #12
  %call199 = tail call i32 @edma_pcm_platform_register(ptr noundef %dev) #10
  br label %sw.epilog

sw.bb200:                                         ; preds = %if.end196
  %85 = ptrtoint ptr %op_mode382 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %op_mode382, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp203 = icmp eq i8 %86, 0
  br i1 %cmp203, label %if.then205, label %if.else208

if.then205:                                       ; preds = %sw.bb200
  call void @__sanitizer_cov_trace_pc() #12
  %call207 = tail call i32 @sdma_pcm_platform_register(ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.19) #10
  br label %sw.epilog

if.else208:                                       ; preds = %sw.bb200
  call void @__sanitizer_cov_trace_pc() #12
  %call210 = tail call i32 @sdma_pcm_platform_register(ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef null) #10
  br label %sw.epilog

sw.bb212:                                         ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #12
  %call214 = tail call i32 @udma_pcm_platform_register(ptr noundef %dev) #10
  br label %sw.epilog

do.end217:                                        ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %call197) #13
  br label %err

sw.epilog:                                        ; preds = %sw.bb212, %if.else208, %if.then205, %sw.bb
  %ret.0 = phi i32 [ %call214, %sw.bb212 ], [ %call207, %if.then205 ], [ %call210, %if.else208 ], [ %call199, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool220.not = icmp eq i32 %ret.0, 0
  br i1 %tobool220.not, label %sw.epilog.no_audio_crit_edge, label %do.end224

sw.epilog.no_audio_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_audio

do.end224:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %ret.0) #13
  br label %err

no_audio:                                         ; preds = %sw.epilog.no_audio_crit_edge, %if.end39.no_audio_crit_edge
  %87 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev35, align 4
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %88, i32 0, i32 27
  %89 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %of_node.i.i, align 8
  %call.i.i.i = tail call ptr @of_find_property(ptr noundef %90, ptr noundef nonnull @.str.64, ptr noundef null) #10
  %tobool.i.i.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.i.i.not.i, label %no_audio.cleanup_crit_edge, label %if.end.i375

no_audio.cleanup_crit_edge:                       ; preds = %no_audio
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i375:                                      ; preds = %no_audio
  %gpio_chip.i = getelementptr inbounds %struct.davinci_mcasp, ptr %call.i, i32 0, i32 30
  %91 = call ptr @memcpy(ptr %gpio_chip.i, ptr @davinci_mcasp_template_chip, i32 348)
  %92 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev35, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %95, null
  br i1 %tobool.not.i.i, label %if.end.i.i376, label %if.end.i375.davinci_mcasp_init_gpiochip.exit_crit_edge

if.end.i375.davinci_mcasp_init_gpiochip.exit_crit_edge: ; preds = %if.end.i375
  call void @__sanitizer_cov_trace_pc() #12
  br label %davinci_mcasp_init_gpiochip.exit

if.end.i.i376:                                    ; preds = %if.end.i375
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %93, align 4
  br label %davinci_mcasp_init_gpiochip.exit

davinci_mcasp_init_gpiochip.exit:                 ; preds = %if.end.i.i376, %if.end.i375.davinci_mcasp_init_gpiochip.exit_crit_edge
  %retval.0.i.i377 = phi ptr [ %97, %if.end.i.i376 ], [ %95, %if.end.i375.davinci_mcasp_init_gpiochip.exit_crit_edge ]
  %98 = ptrtoint ptr %gpio_chip.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %retval.0.i.i377, ptr %gpio_chip.i, align 4
  %parent.i = getelementptr inbounds %struct.davinci_mcasp, ptr %call.i, i32 0, i32 30, i32 2
  %99 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %93, ptr %parent.i, align 4
  %call7.i = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %93, ptr noundef %gpio_chip.i, ptr noundef nonnull %call.i, ptr noundef nonnull @davinci_mcasp_init_gpiochip.lock_key, ptr noundef nonnull @davinci_mcasp_init_gpiochip.request_key) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool228.not = icmp eq i32 %call7.i, 0
  br i1 %tobool228.not, label %davinci_mcasp_init_gpiochip.exit.cleanup_crit_edge, label %do.end232

davinci_mcasp_init_gpiochip.exit.cleanup_crit_edge: ; preds = %davinci_mcasp_init_gpiochip.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end232:                                        ; preds = %davinci_mcasp_init_gpiochip.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %call7.i) #13
  br label %err

err:                                              ; preds = %do.end232, %do.end224, %do.end217, %if.end196.err_crit_edge, %if.end183.err_crit_edge, %if.end159.err_crit_edge, %do.end106, %dev_name.exit370.err_crit_edge, %do.end84, %dev_name.exit365.err_crit_edge, %do.end62, %dev_name.exit.err_crit_edge, %if.end31.err_crit_edge
  %ret.1 = phi i32 [ %call36, %if.end31.err_crit_edge ], [ %call7.i, %do.end232 ], [ %call57, %do.end62 ], [ %call79, %do.end84 ], [ %call101, %do.end106 ], [ %call192, %if.end183.err_crit_edge ], [ %call197, %do.end217 ], [ %call197, %if.end196.err_crit_edge ], [ %ret.0, %do.end224 ], [ -12, %dev_name.exit.err_crit_edge ], [ -12, %dev_name.exit365.err_crit_edge ], [ -12, %dev_name.exit370.err_crit_edge ], [ -12, %if.end159.err_crit_edge ]
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  br label %cleanup

cleanup:                                          ; preds = %err, %davinci_mcasp_init_gpiochip.exit.cleanup_crit_edge, %no_audio.cleanup_crit_edge, %if.then28, %do.end20, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %5, %if.then28 ], [ %ret.1, %err ], [ -19, %do.end20 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %davinci_mcasp_init_gpiochip.exit.cleanup_crit_edge ], [ 0, %no_audio.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mcasp_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @davinci_mcasp_get_config(ptr nocapture noundef %mcasp, ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @mcasp_dt_ids, ptr noundef %dev) #10
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !305
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %3 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dismod = getelementptr inbounds %struct.davinci_mcasp_pdata, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %dismod to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 8, ptr %dismod, align 1
  br label %out

if.else:                                          ; preds = %entry
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %do.end, label %if.then6

if.then6:                                         ; preds = %if.else
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %call8 = tail call ptr @devm_kmemdup(ptr noundef %dev, ptr noundef %7, i32 noundef 64, i32 noundef 3264) #10
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then6.cleanup179_crit_edge, label %if.end14

if.then6.cleanup179_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup179

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #13
  br label %cleanup179

if.end14:                                         ; preds = %if.then6
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.41, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp = icmp sgt i32 %call.i.i, -1
  br i1 %cmp, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.end14
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %conv = trunc i32 %9 to i8
  %op_mode = getelementptr inbounds %struct.davinci_mcasp_pdata, ptr %call8, i32 0, i32 11
  %10 = ptrtoint ptr %op_mode to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %op_mode, align 4
  %call.i.i261 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.42, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i261)
  %cmp20 = icmp sgt i32 %call.i.i261, -1
  br i1 %cmp20, label %if.then22, label %if.else33

if.else17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %missing_audio_param = getelementptr inbounds %struct.davinci_mcasp, ptr %mcasp, i32 0, i32 8
  %11 = ptrtoint ptr %missing_audio_param to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %missing_audio_param, align 4
  br label %out

if.then22:                                        ; preds = %if.then16
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %14 = add i32 %13, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %14)
  %15 = icmp ult i32 %14, -31
  br i1 %15, label %do.end30, label %if.end32

do.end30:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44) #13
  br label %cleanup179

if.end32:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %tdm_slots = getelementptr inbounds %struct.davinci_mcasp_pdata, ptr %call8, i32 0, i32 10
  %16 = ptrtoint ptr %tdm_slots to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %tdm_slots, align 4
  br label %if.end41

if.else33:                                        ; preds = %if.then16
  %17 = ptrtoint ptr %op_mode to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %op_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp36 = icmp eq i8 %18, 0
  br i1 %cmp36, label %if.then38, label %if.else33.if.end41_crit_edge

if.else33.if.end41_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then38:                                        ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #12
  %missing_audio_param39 = getelementptr inbounds %struct.davinci_mcasp, ptr %mcasp, i32 0, i32 8
  %19 = ptrtoint ptr %missing_audio_param39 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %missing_audio_param39, align 4
  br label %out

if.end41:                                         ; preds = %if.else33.if.end41_crit_edge, %if.end32
  %call42 = call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.46, ptr noundef nonnull %val) #10
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  %div260 = lshr i32 %21, 2
  store i32 %div260, ptr %val, align 4
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.else56, label %if.then44

if.then44:                                        ; preds = %if.end41
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %div260, i32 noundef 3520) #10
  %tobool47.not = icmp eq ptr %call.i, null
  br i1 %tobool47.not, label %if.then44.cleanup179_crit_edge, label %for.cond.preheader

if.then44.cleanup179_crit_edge:                   ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup179

for.cond.preheader:                               ; preds = %if.then44
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp50271.not = icmp eq i32 %23, 0
  br i1 %cmp50271.not, label %for.cond.preheader.if.end58_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end58_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0272 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %call42, i32 %i.0272
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %conv53 = trunc i32 %25 to i8
  %arrayidx54 = getelementptr i8, ptr %call.i, i32 %i.0272
  %26 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv53, ptr %arrayidx54, align 1
  %inc = add nuw i32 %i.0272, 1
  %exitcond.not = icmp eq i32 %inc, %23
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %conv55 = trunc i32 %23 to i8
  br label %if.end58

if.else56:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %missing_audio_param57 = getelementptr inbounds %struct.davinci_mcasp, ptr %mcasp, i32 0, i32 8
  %27 = ptrtoint ptr %missing_audio_param57 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %missing_audio_param57, align 4
  br label %out

if.end58:                                         ; preds = %for.end, %for.cond.preheader.if.end58_crit_edge
  %conv55.sink = phi i8 [ %conv55, %for.end ], [ 0, %for.cond.preheader.if.end58_crit_edge ]
  %num_serializer = getelementptr inbounds %struct.davinci_mcasp_pdata, ptr %call8, i32 0, i32 13
  %28 = ptrtoint ptr %num_serializer to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv55.sink, ptr %num_serializer, align 2
  %serial_dir = getelementptr inbounds %struct.davinci_mcasp_pdata, ptr %call8, i32 0, i32 14
  %29 = ptrtoint ptr %serial_dir to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %serial_dir, align 4
  %call.i.i262 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.47, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i262)
  %cmp60 = icmp sgt i32 %call.i.i262, -1
  br i1 %cmp60, label %if.then62, label %if.end58.if.end64_crit_edge

if.end58.if.end64_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val, align 4
  %conv63 = trunc i32 %31 to i8
  %txnumevt = getelementptr inbounds %struct.davinci_mcasp_pdata, ptr %call8, i32 0, i32 16
  %32 = ptrtoint ptr %txnumevt to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv63, ptr %txnumevt, align 1
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end58.if.end64_crit_edge
  %call.i.i263 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.48, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i263)
  %cmp66 = icmp sgt i32 %call.i.i263, -1
  br i1 %cmp66, label %if.then68, label %if.end64.if.end70_crit_edge

if.end64.if.end70_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then68:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val, align 4
  %conv69 = trunc i32 %34 to i8
  %rxnumevt = getelementptr inbounds %struct.davinci_mcasp_pdata, ptr %call8, i32 0, i32 17
  %35 = ptrtoint ptr %rxnumevt to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv69, ptr %rxnumevt, align 2
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end64.if.end70_crit_edge
  %call.i.i264 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.49, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i264)
  %cmp72 = icmp sgt i32 %call.i.i264, -1
  br i1 %cmp72, label %if.then74, label %if.end70.if.end75_crit_edge

if.end70.if.end75_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val, align 4
  %auxclk_fs_ratio = getelementptr inbounds %struct.davinci_mcasp, ptr %mcasp, i32 0, i32 22
  %38 = ptrtoint ptr %auxclk_fs_ratio to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %auxclk_fs_ratio, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.end70.if.end75_crit_edge
  %call.i.i265 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.50, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i265)
  %cmp77 = icmp sgt i32 %call.i.i265, -1
  br i1 %cmp77, label %if.then79, label %if.else98

if.then79:                                        ; preds = %if.end75
  %39 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %40, label %do.end94 [
    i32 0, label %if.then79.if.then88_crit_edge
    i32 2, label %if.then79.if.then88_crit_edge273
    i32 3, label %if.then79.if.then88_crit_edge274
  ]

if.then79.if.then88_crit_edge274:                 ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then88

if.then79.if.then88_crit_edge273:                 ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then88

if.then79.if.then88_crit_edge:                    ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then88

if.then88:                                        ; preds = %if.then79.if.then88_crit_edge, %if.then79.if.then88_crit_edge273, %if.then79.if.then88_crit_edge274
  %.tr = trunc i32 %40 to i8
  %conv89 = shl nuw nsw i8 %.tr, 2
  %dismod90 = getelementptr inbounds %struct.davinci_mcasp_pdata, ptr %call8, i32 0, i32 12
  %42 = ptrtoint ptr %dismod90 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv89, ptr %dismod90, align 1
  br label %out

do.end94:                                         ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.52, i32 noundef %40) #13
  %dismod96 = getelementptr inbounds %struct.davinci_mcasp_pdata, ptr %call8, i32 0, i32 12
  %43 = ptrtoint ptr %dismod96 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 8, ptr %dismod96, align 1
  br label %out

if.else98:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  %dismod99 = getelementptr inbounds %struct.davinci_mcasp_pdata, ptr %call8, i32 0, i32 12
  %44 = ptrtoint ptr %dismod99 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 8, ptr %dismod99, align 1
  br label %out

out:                                              ; preds = %if.else98, %do.end94, %if.then88, %if.else56, %if.then38, %if.else17, %if.then
  %pdata.0 = phi ptr [ %4, %if.then ], [ %call8, %if.then88 ], [ %call8, %do.end94 ], [ %call8, %if.else98 ], [ %call8, %if.else56 ], [ %call8, %if.then38 ], [ %call8, %if.else17 ]
  %pdata101 = getelementptr inbounds %struct.davinci_mcasp, ptr %mcasp, i32 0, i32 1
  %45 = ptrtoint ptr %pdata101 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %pdata.0, ptr %pdata101, align 4
  %missing_audio_param102 = getelementptr inbounds %struct.davinci_mcasp, ptr %mcasp, i32 0, i32 8
  %46 = ptrtoint ptr %missing_audio_param102 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %missing_audio_param102, align 4, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool103.not = icmp eq i8 %47, 0
  br i1 %tobool103.not, label %if.end122, label %if.then104

if.then104:                                       ; preds = %out
  %dev.i = getelementptr inbounds %struct.davinci_mcasp, ptr %mcasp, i32 0, i32 4
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 27
  %50 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %of_node.i, align 8
  %call.i.i266 = call ptr @of_find_property(ptr noundef %51, ptr noundef nonnull @.str.64, ptr noundef null) #10
  %tobool.i.i.not = icmp eq ptr %call.i.i266, null
  br i1 %tobool.i.i.not, label %do.end120, label %do.body107

do.body107:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @davinci_mcasp_get_config.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@davinci_mcasp_get_config, %if.then112)) #10
          to label %cleanup179 [label %if.then112], !srcloc !306

if.then112:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @davinci_mcasp_get_config.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.55) #10
  br label %cleanup179

do.end120:                                        ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.57) #13
  br label %cleanup179

if.end122:                                        ; preds = %out
  %op_mode123 = getelementptr inbounds %struct.davinci_mcasp_pdata, ptr %pdata.0, i32 0, i32 11
  %52 = ptrtoint ptr %op_mode123 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %op_mode123, align 4
  %op_mode124 = getelementptr inbounds %struct.davinci_mcasp, ptr %mcasp, i32 0, i32 12
  %54 = ptrtoint ptr %op_mode124 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %op_mode124, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp127 = icmp eq i8 %53, 0
  br i1 %cmp127, label %if.then129, label %if.end122.if.end158_crit_edge

if.end122.if.end158_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end158

if.then129:                                       ; preds = %if.end122
  %tdm_slots130 = getelementptr inbounds %struct.davinci_mcasp_pdata, ptr %pdata.0, i32 0, i32 10
  %55 = ptrtoint ptr %tdm_slots130 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tdm_slots130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp131 = icmp slt i32 %56, 2
  br i1 %cmp131, label %if.then129.if.end158.sink.split_crit_edge, label %if.else140

if.then129.if.end158.sink.split_crit_edge:        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end158.sink.split

if.else140:                                       ; preds = %if.then129
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %56)
  %cmp142 = icmp ugt i32 %56, 32
  br i1 %cmp142, label %if.else140.if.end158.sink.split_crit_edge, label %if.else140.if.end158_crit_edge

if.else140.if.end158_crit_edge:                   ; preds = %if.else140
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end158

if.else140.if.end158.sink.split_crit_edge:        ; preds = %if.else140
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end158.sink.split

if.end158.sink.split:                             ; preds = %if.else140.if.end158.sink.split_crit_edge, %if.then129.if.end158.sink.split_crit_edge
  %.sink.ph = phi i32 [ 2, %if.then129.if.end158.sink.split_crit_edge ], [ 32, %if.else140.if.end158.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.60, i32 noundef %56) #13
  br label %if.end158

if.end158:                                        ; preds = %if.end158.sink.split, %if.else140.if.end158_crit_edge, %if.end122.if.end158_crit_edge
  %.sink = phi i32 [ %56, %if.else140.if.end158_crit_edge ], [ 32, %if.end122.if.end158_crit_edge ], [ %.sink.ph, %if.end158.sink.split ]
  %tdm_slots139 = getelementptr inbounds %struct.davinci_mcasp, ptr %mcasp, i32 0, i32 9
  %57 = ptrtoint ptr %tdm_slots139 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %.sink, ptr %tdm_slots139, align 4
  %num_serializer159 = getelementptr inbounds %struct.davinci_mcasp_pdata, ptr %pdata.0, i32 0, i32 13
  %58 = ptrtoint ptr %num_serializer159 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %num_serializer159, align 2
  %num_serializer160 = getelementptr inbounds %struct.davinci_mcasp, ptr %mcasp, i32 0, i32 14
  %60 = ptrtoint ptr %num_serializer160 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %num_serializer160, align 2
  %conv163 = zext i8 %59 to i32
  %61 = shl nuw nsw i32 %conv163, 2
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %61, i32 noundef 3520) #10
  %xrsr_regs = getelementptr inbounds %struct.davinci_mcasp, ptr %mcasp, i32 0, i32 31, i32 2
  %62 = ptrtoint ptr %xrsr_regs to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call5.i.i, ptr %xrsr_regs, align 4
  %tobool167.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool167.not, label %if.end158.cleanup179_crit_edge, label %if.end169

if.end158.cleanup179_crit_edge:                   ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup179

if.end169:                                        ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #12
  %serial_dir170 = getelementptr inbounds %struct.davinci_mcasp_pdata, ptr %pdata.0, i32 0, i32 14
  %63 = ptrtoint ptr %serial_dir170 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %serial_dir170, align 4
  %serial_dir171 = getelementptr inbounds %struct.davinci_mcasp, ptr %mcasp, i32 0, i32 15
  %65 = ptrtoint ptr %serial_dir171 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %serial_dir171, align 4
  %version = getelementptr inbounds %struct.davinci_mcasp_pdata, ptr %pdata.0, i32 0, i32 15
  %66 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %version, align 4
  %version172 = getelementptr inbounds %struct.davinci_mcasp, ptr %mcasp, i32 0, i32 16
  %68 = ptrtoint ptr %version172 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %version172, align 4
  %txnumevt173 = getelementptr inbounds %struct.davinci_mcasp_pdata, ptr %pdata.0, i32 0, i32 16
  %69 = ptrtoint ptr %txnumevt173 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %txnumevt173, align 1
  %txnumevt174 = getelementptr inbounds %struct.davinci_mcasp, ptr %mcasp, i32 0, i32 24
  %71 = ptrtoint ptr %txnumevt174 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %txnumevt174, align 4
  %rxnumevt175 = getelementptr inbounds %struct.davinci_mcasp_pdata, ptr %pdata.0, i32 0, i32 17
  %72 = ptrtoint ptr %rxnumevt175 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %rxnumevt175, align 2
  %rxnumevt176 = getelementptr inbounds %struct.davinci_mcasp, ptr %mcasp, i32 0, i32 25
  %74 = ptrtoint ptr %rxnumevt176 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %rxnumevt176, align 1
  %dismod177 = getelementptr inbounds %struct.davinci_mcasp_pdata, ptr %pdata.0, i32 0, i32 12
  %75 = ptrtoint ptr %dismod177 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %dismod177, align 1
  %dismod178 = getelementptr inbounds %struct.davinci_mcasp, ptr %mcasp, i32 0, i32 13
  %77 = ptrtoint ptr %dismod178 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %dismod178, align 1
  br label %cleanup179

cleanup179:                                       ; preds = %if.end169, %if.end158.cleanup179_crit_edge, %do.end120, %if.then112, %do.body107, %if.then44.cleanup179_crit_edge, %do.end30, %do.end, %if.then6.cleanup179_crit_edge
  %retval.1 = phi i32 [ -19, %do.end120 ], [ 0, %if.end169 ], [ -22, %do.end30 ], [ -22, %do.end ], [ -12, %if.then6.cleanup179_crit_edge ], [ 0, %if.then112 ], [ -12, %if.end158.cleanup179_crit_edge ], [ -12, %if.then44.cleanup179_crit_edge ], [ 0, %do.body107 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mcasp_common_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %substreams = getelementptr inbounds %struct.davinci_mcasp, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %substreams to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substreams, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %irq_request.i = getelementptr inbounds %struct.davinci_mcasp, ptr %data, i32 0, i32 19
  %2 = ptrtoint ptr %irq_request.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_request.i, align 4
  %base.i.i = getelementptr inbounds %struct.davinci_mcasp, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 192
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !307
  %and.i = and i32 %3, 1
  %and1.i = and i32 %and.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  %dev12.i = getelementptr inbounds %struct.davinci_mcasp, ptr %data, i32 0, i32 4
  %7 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev12.i, align 4
  br i1 %tobool.not.i, label %do.end11.i, label %do.end.i

do.end.i:                                         ; preds = %if.then
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.70) #13
  %9 = ptrtoint ptr %substreams to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %substreams, align 4
  %tobool3.not.i = icmp eq ptr %10, null
  br i1 %tobool3.not.i, label %do.end.i.davinci_mcasp_tx_irq_handler.exit_crit_edge, label %if.then4.i

do.end.i.davinci_mcasp_tx_irq_handler.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %davinci_mcasp_tx_irq_handler.exit

if.then4.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 @snd_pcm_stop_xrun(ptr noundef nonnull %10) #10
  br label %davinci_mcasp_tx_irq_handler.exit

do.end11.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.73, i32 noundef %6) #13
  br label %davinci_mcasp_tx_irq_handler.exit

davinci_mcasp_tx_irq_handler.exit:                ; preds = %do.end11.i, %if.then4.i, %do.end.i.davinci_mcasp_tx_irq_handler.exit_crit_edge
  %handled_mask.035.i = phi i32 [ 0, %do.end11.i ], [ 1, %do.end.i.davinci_mcasp_tx_irq_handler.exit_crit_edge ], [ 1, %if.then4.i ]
  %and14.i = and i32 %6, 256
  %11 = or i32 %handled_mask.035.i, %and14.i
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %13, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.i, i32 %11) #10, !srcloc !303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool19.not.i = icmp ne i32 %11, 0
  %cond.i = zext i1 %tobool19.not.i to i32
  br label %if.end

if.end:                                           ; preds = %davinci_mcasp_tx_irq_handler.exit, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %cond.i, %davinci_mcasp_tx_irq_handler.exit ], [ 0, %entry.if.end_crit_edge ]
  %arrayidx2 = getelementptr %struct.davinci_mcasp, ptr %data, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %15, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %if.end
  %arrayidx.i = getelementptr %struct.davinci_mcasp, ptr %data, i32 0, i32 19, i32 1
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %base.i.i12 = getelementptr inbounds %struct.davinci_mcasp, ptr %data, i32 0, i32 2
  %18 = ptrtoint ptr %base.i.i12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i12, align 4
  %add.ptr.i.i13 = getelementptr i8, ptr %19, i32 128
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13) #10, !srcloc !307
  %and.i14 = and i32 %17, 1
  %and1.i15 = and i32 %and.i14, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i15)
  %tobool.not.i16 = icmp eq i32 %and1.i15, 0
  %dev12.i17 = getelementptr inbounds %struct.davinci_mcasp, ptr %data, i32 0, i32 4
  %21 = ptrtoint ptr %dev12.i17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev12.i17, align 4
  br i1 %tobool.not.i16, label %do.end11.i22, label %do.end.i19

do.end.i19:                                       ; preds = %if.then4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.65) #13
  %23 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not.i18 = icmp eq ptr %24, null
  br i1 %tobool3.not.i18, label %do.end.i19.davinci_mcasp_rx_irq_handler.exit_crit_edge, label %if.then4.i21

do.end.i19.davinci_mcasp_rx_irq_handler.exit_crit_edge: ; preds = %do.end.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %davinci_mcasp_rx_irq_handler.exit

if.then4.i21:                                     ; preds = %do.end.i19
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i20 = tail call i32 @snd_pcm_stop_xrun(ptr noundef nonnull %24) #10
  br label %davinci_mcasp_rx_irq_handler.exit

do.end11.i22:                                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.68, i32 noundef %20) #13
  br label %davinci_mcasp_rx_irq_handler.exit

davinci_mcasp_rx_irq_handler.exit:                ; preds = %do.end11.i22, %if.then4.i21, %do.end.i19.davinci_mcasp_rx_irq_handler.exit_crit_edge
  %handled_mask.035.i23 = phi i32 [ 0, %do.end11.i22 ], [ 1, %do.end.i19.davinci_mcasp_rx_irq_handler.exit_crit_edge ], [ 1, %if.then4.i21 ]
  %and14.i24 = and i32 %20, 256
  %25 = or i32 %handled_mask.035.i23, %and14.i24
  %26 = ptrtoint ptr %base.i.i12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i.i12, align 4
  %add.ptr.i33.i25 = getelementptr i8, ptr %27, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.i25, i32 %25) #10, !srcloc !303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool19.not.i26 = icmp ne i32 %25, 0
  %cond.i27 = zext i1 %tobool19.not.i26 to i32
  %or = or i32 %ret.0, %cond.i27
  br label %if.end6

if.end6:                                          ; preds = %davinci_mcasp_rx_irq_handler.exit, %if.end.if.end6_crit_edge
  %ret.1 = phi i32 [ %or, %davinci_mcasp_rx_irq_handler.exit ], [ %ret.0, %if.end.if.end6_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mcasp_rx_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.davinci_mcasp, ptr %data, i32 0, i32 19, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %base.i = getelementptr inbounds %struct.davinci_mcasp, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 128
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !307
  %and = and i32 %1, 1
  %and1 = and i32 %and, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  %dev12 = getelementptr inbounds %struct.davinci_mcasp, ptr %data, i32 0, i32 4
  %5 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev12, align 4
  br i1 %tobool.not, label %do.end11, label %do.end

do.end:                                           ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.65) #13
  %arrayidx2 = getelementptr %struct.davinci_mcasp, ptr %data, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %do.end.if.end13_crit_edge, label %if.then4

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @snd_pcm_stop_xrun(ptr noundef nonnull %8) #10
  br label %if.end13

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.68, i32 noundef %4) #13
  br label %if.end13

if.end13:                                         ; preds = %do.end11, %if.then4, %do.end.if.end13_crit_edge
  %handled_mask.035 = phi i32 [ 0, %do.end11 ], [ 1, %do.end.if.end13_crit_edge ], [ 1, %if.then4 ]
  %and14 = and i32 %4, 256
  %9 = or i32 %handled_mask.035, %and14
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %11, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %9) #10, !srcloc !303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool19.not = icmp ne i32 %9, 0
  %cond = zext i1 %tobool19.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mcasp_tx_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_request = getelementptr inbounds %struct.davinci_mcasp, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %irq_request to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_request, align 4
  %base.i = getelementptr inbounds %struct.davinci_mcasp, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 192
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !307
  %and = and i32 %1, 1
  %and1 = and i32 %and, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  %dev12 = getelementptr inbounds %struct.davinci_mcasp, ptr %data, i32 0, i32 4
  %5 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev12, align 4
  br i1 %tobool.not, label %do.end11, label %do.end

do.end:                                           ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.70) #13
  %substreams = getelementptr inbounds %struct.davinci_mcasp, ptr %data, i32 0, i32 5
  %7 = ptrtoint ptr %substreams to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %substreams, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %do.end.if.end13_crit_edge, label %if.then4

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @snd_pcm_stop_xrun(ptr noundef nonnull %8) #10
  br label %if.end13

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.73, i32 noundef %4) #13
  br label %if.end13

if.end13:                                         ; preds = %do.end11, %if.then4, %do.end.if.end13_crit_edge
  %handled_mask.035 = phi i32 [ 0, %do.end11 ], [ 1, %do.end.if.end13_crit_edge ], [ 1, %if.then4 ]
  %and14 = and i32 %4, 256
  %9 = or i32 %handled_mask.035, %and14
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %11, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %9) #10, !srcloc !303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool19.not = icmp ne i32 %9, 0
  %cond = zext i1 %tobool19.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @davinci_mcasp_txdma_offset(ptr nocapture noundef readonly %pdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr inbounds %struct.davinci_mcasp_pdata, ptr %pdata, i32 0, i32 15
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp.not = icmp eq i8 %1, 3
  br i1 %cmp.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %num_serializer = getelementptr inbounds %struct.davinci_mcasp_pdata, ptr %pdata, i32 0, i32 13
  %2 = ptrtoint ptr %num_serializer to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_serializer, align 2
  %conv2 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp321.not = icmp eq i8 %3, 0
  br i1 %cmp321.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %serial_dir = getelementptr inbounds %struct.davinci_mcasp_pdata, ptr %pdata, i32 0, i32 14
  %4 = ptrtoint ptr %serial_dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serial_dir, align 4
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pdata, align 4
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %offset.024 = phi i32 [ 0, %for.body.lr.ph ], [ %offset.1, %for.inc.for.body_crit_edge ]
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %5, i32 %i.022
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp6 = icmp eq i8 %9, 1
  br i1 %cmp6, label %if.then8, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.024)
  %tobool.not = icmp eq i32 %offset.024, 0
  br i1 %tobool.not, label %if.then9, label %do.end

if.then9:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %shl = shl i32 %i.022, 2
  %add = add nuw nsw i32 %shl, 512
  br label %for.inc

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76) #13
  br label %cleanup

for.inc:                                          ; preds = %if.then9, %for.body.for.inc_crit_edge
  %offset.1 = phi i32 [ %add, %if.then9 ], [ %offset.024, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, %conv2
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %if.then, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then ], [ %offset.024, %do.end ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %offset.1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @davinci_mcasp_rxdma_offset(ptr nocapture noundef readonly %pdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr inbounds %struct.davinci_mcasp_pdata, ptr %pdata, i32 0, i32 15
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp.not = icmp eq i8 %1, 3
  br i1 %cmp.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %num_serializer = getelementptr inbounds %struct.davinci_mcasp_pdata, ptr %pdata, i32 0, i32 13
  %2 = ptrtoint ptr %num_serializer to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_serializer, align 2
  %conv2 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp321.not = icmp eq i8 %3, 0
  br i1 %cmp321.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %serial_dir = getelementptr inbounds %struct.davinci_mcasp_pdata, ptr %pdata, i32 0, i32 14
  %4 = ptrtoint ptr %serial_dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serial_dir, align 4
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rx_dma_offset = getelementptr inbounds %struct.davinci_mcasp_pdata, ptr %pdata, i32 0, i32 1
  %6 = ptrtoint ptr %rx_dma_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_dma_offset, align 4
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %offset.024 = phi i32 [ 0, %for.body.lr.ph ], [ %offset.1, %for.inc.for.body_crit_edge ]
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %5, i32 %i.022
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp6 = icmp eq i8 %9, 2
  br i1 %cmp6, label %if.then8, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.024)
  %tobool.not = icmp eq i32 %offset.024, 0
  br i1 %tobool.not, label %if.then9, label %do.end

if.then9:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %shl = shl i32 %i.022, 2
  %add = add nuw nsw i32 %shl, 640
  br label %for.inc

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.77) #13
  br label %cleanup

for.inc:                                          ; preds = %if.then9, %for.body.for.inc_crit_edge
  %offset.1 = phi i32 [ %add, %if.then9 ], [ %offset.024, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, %conv2
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %if.then, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then ], [ %offset.024, %do.end ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %offset.1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @davinci_mcasp_set_ch_constraints(ptr nocapture noundef %mcasp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_serializer = getelementptr inbounds %struct.davinci_mcasp, ptr %mcasp, i32 0, i32 14
  %0 = ptrtoint ptr %num_serializer to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_serializer, align 2
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp123.not = icmp eq i8 %1, 0
  br i1 %cmp123.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %serial_dir = getelementptr inbounds %struct.davinci_mcasp, ptr %mcasp, i32 0, i32 15
  %2 = ptrtoint ptr %serial_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serial_dir, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0126 = phi i32 [ 0, %for.body.lr.ph ], [ %inc13, %for.inc.for.body_crit_edge ]
  %tx_serializers.0125 = phi i32 [ 0, %for.body.lr.ph ], [ %tx_serializers.1, %for.inc.for.body_crit_edge ]
  %rx_serializers.0124 = phi i32 [ 0, %for.body.lr.ph ], [ %rx_serializers.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %3, i32 %i.0126
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.139)
  switch i8 %5, label %for.body.for.inc_crit_edge [
    i8 1, label %if.then
    i8 2, label %if.then10
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add i32 %tx_serializers.0125, 1
  br label %for.inc

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %inc11 = add i32 %rx_serializers.0124, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.then, %for.body.for.inc_crit_edge
  %rx_serializers.1 = phi i32 [ %rx_serializers.0124, %if.then ], [ %inc11, %if.then10 ], [ %rx_serializers.0124, %for.body.for.inc_crit_edge ]
  %tx_serializers.1 = phi i32 [ %inc, %if.then ], [ %tx_serializers.0125, %if.then10 ], [ %tx_serializers.0125, %for.body.for.inc_crit_edge ]
  %inc13 = add nuw nsw i32 %i.0126, 1
  %exitcond.not = icmp eq i32 %inc13, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %rx_serializers.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %rx_serializers.1, %for.inc.for.end_crit_edge ]
  %tx_serializers.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %tx_serializers.1, %for.inc.for.end_crit_edge ]
  %arrayidx.i = getelementptr %struct.davinci_mcasp, ptr %mcasp, i32 0, i32 33, i32 0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %tdm_slots.i = getelementptr inbounds %struct.davinci_mcasp, ptr %mcasp, i32 0, i32 9
  %9 = ptrtoint ptr %tdm_slots.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tdm_slots.i, align 4
  %arrayidx2.i = getelementptr %struct.davinci_mcasp, ptr %mcasp, i32 0, i32 10, i32 0
  %11 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %for.end.if.end.i_crit_edge, label %cond.false.i

for.end.if.end.i_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

cond.false.i:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 @__sw_hweight32(i32 noundef %12) #10
  br label %if.end.i

if.end.i:                                         ; preds = %cond.false.i, %for.end.if.end.i_crit_edge
  %slots.0.i = phi i32 [ %10, %for.end.if.end.i_crit_edge ], [ %call.i.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %slots.0.i)
  %cmp.not4.i = icmp slt i32 %slots.0.i, 1
  br i1 %cmp.not4.i, label %if.end.i.for.cond354.preheader.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.cond354.preheader.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond354.preheader.i

for.cond354.preheader.i:                          ; preds = %for.body.i.for.cond354.preheader.i_crit_edge, %if.end.i.for.cond354.preheader.i_crit_edge
  %count.0.lcssa.i = phi i32 [ 0, %if.end.i.for.cond354.preheader.i_crit_edge ], [ %inc.i, %for.body.i.for.cond354.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %tx_serializers.0.lcssa)
  %cmp355.not7.i = icmp slt i32 %tx_serializers.0.lcssa, 2
  br i1 %cmp355.not7.i, label %for.cond354.preheader.i.davinci_mcasp_ch_constraint.exit_crit_edge, label %for.cond354.preheader.i.for.body357.i_crit_edge

for.cond354.preheader.i.for.body357.i_crit_edge:  ; preds = %for.cond354.preheader.i
  br label %for.body357.i

for.cond354.preheader.i.davinci_mcasp_ch_constraint.exit_crit_edge: ; preds = %for.cond354.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %davinci_mcasp_ch_constraint.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %count.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %i.05.i = phi i32 [ %inc353.i, %for.body.i.for.body.i_crit_edge ], [ 1, %if.end.i.for.body.i_crit_edge ]
  %inc.i = add i32 %count.06.i, 1
  %arrayidx352.i = getelementptr i32, ptr %8, i32 %count.06.i
  %13 = ptrtoint ptr %arrayidx352.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %i.05.i, ptr %arrayidx352.i, align 4
  %inc353.i = add i32 %i.05.i, 1
  %cmp.not.i = icmp sgt i32 %inc353.i, %slots.0.i
  br i1 %cmp.not.i, label %for.body.i.for.cond354.preheader.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.for.cond354.preheader.i_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond354.preheader.i

for.body357.i:                                    ; preds = %for.body357.i.for.body357.i_crit_edge, %for.cond354.preheader.i.for.body357.i_crit_edge
  %count.19.i = phi i32 [ %inc358.i, %for.body357.i.for.body357.i_crit_edge ], [ %count.0.lcssa.i, %for.cond354.preheader.i.for.body357.i_crit_edge ]
  %i.18.i = phi i32 [ %inc361.i, %for.body357.i.for.body357.i_crit_edge ], [ 2, %for.cond354.preheader.i.for.body357.i_crit_edge ]
  %mul.i = mul i32 %i.18.i, %slots.0.i
  %inc358.i = add i32 %count.19.i, 1
  %arrayidx359.i = getelementptr i32, ptr %8, i32 %count.19.i
  %14 = ptrtoint ptr %arrayidx359.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul.i, ptr %arrayidx359.i, align 4
  %inc361.i = add i32 %i.18.i, 1
  %cmp355.not.i = icmp sgt i32 %inc361.i, %tx_serializers.0.lcssa
  br i1 %cmp355.not.i, label %for.body357.i.davinci_mcasp_ch_constraint.exit_crit_edge, label %for.body357.i.for.body357.i_crit_edge

for.body357.i.for.body357.i_crit_edge:            ; preds = %for.body357.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body357.i

for.body357.i.davinci_mcasp_ch_constraint.exit_crit_edge: ; preds = %for.body357.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %davinci_mcasp_ch_constraint.exit

davinci_mcasp_ch_constraint.exit:                 ; preds = %for.body357.i.davinci_mcasp_ch_constraint.exit_crit_edge, %for.cond354.preheader.i.davinci_mcasp_ch_constraint.exit_crit_edge
  %count.1.lcssa.i = phi i32 [ %count.0.lcssa.i, %for.cond354.preheader.i.davinci_mcasp_ch_constraint.exit_crit_edge ], [ %inc358.i, %for.body357.i.davinci_mcasp_ch_constraint.exit_crit_edge ]
  %count363.i = getelementptr %struct.davinci_mcasp, ptr %mcasp, i32 0, i32 33, i32 0, i32 1
  %15 = ptrtoint ptr %count363.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %count.1.lcssa.i, ptr %count363.i, align 4
  %arrayidx.i1 = getelementptr %struct.davinci_mcasp, ptr %mcasp, i32 0, i32 33, i32 1
  %16 = ptrtoint ptr %arrayidx.i1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i1, align 4
  %18 = ptrtoint ptr %tdm_slots.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tdm_slots.i, align 4
  %arrayidx2.i3 = getelementptr %struct.davinci_mcasp, ptr %mcasp, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %arrayidx2.i3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx2.i3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i4 = icmp eq i32 %21, 0
  br i1 %tobool.not.i4, label %davinci_mcasp_ch_constraint.exit.if.end.i101_crit_edge, label %cond.false.i98

davinci_mcasp_ch_constraint.exit.if.end.i101_crit_edge: ; preds = %davinci_mcasp_ch_constraint.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i101

cond.false.i98:                                   ; preds = %davinci_mcasp_ch_constraint.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i97 = tail call i32 @__sw_hweight32(i32 noundef %21) #10
  br label %if.end.i101

if.end.i101:                                      ; preds = %cond.false.i98, %davinci_mcasp_ch_constraint.exit.if.end.i101_crit_edge
  %slots.0.i99 = phi i32 [ %19, %davinci_mcasp_ch_constraint.exit.if.end.i101_crit_edge ], [ %call.i.i97, %cond.false.i98 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %slots.0.i99)
  %cmp.not4.i100 = icmp slt i32 %slots.0.i99, 1
  br i1 %cmp.not4.i100, label %if.end.i101.for.cond354.preheader.i104_crit_edge, label %if.end.i101.for.body.i111_crit_edge

if.end.i101.for.body.i111_crit_edge:              ; preds = %if.end.i101
  br label %for.body.i111

if.end.i101.for.cond354.preheader.i104_crit_edge: ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond354.preheader.i104

for.cond354.preheader.i104:                       ; preds = %for.body.i111.for.cond354.preheader.i104_crit_edge, %if.end.i101.for.cond354.preheader.i104_crit_edge
  %count.0.lcssa.i102 = phi i32 [ 0, %if.end.i101.for.cond354.preheader.i104_crit_edge ], [ %inc.i107, %for.body.i111.for.cond354.preheader.i104_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rx_serializers.0.lcssa)
  %cmp355.not7.i103 = icmp slt i32 %rx_serializers.0.lcssa, 2
  br i1 %cmp355.not7.i103, label %for.cond354.preheader.i104.davinci_mcasp_ch_constraint.exit122_crit_edge, label %for.cond354.preheader.i104.for.body357.i119_crit_edge

for.cond354.preheader.i104.for.body357.i119_crit_edge: ; preds = %for.cond354.preheader.i104
  br label %for.body357.i119

for.cond354.preheader.i104.davinci_mcasp_ch_constraint.exit122_crit_edge: ; preds = %for.cond354.preheader.i104
  call void @__sanitizer_cov_trace_pc() #12
  br label %davinci_mcasp_ch_constraint.exit122

for.body.i111:                                    ; preds = %for.body.i111.for.body.i111_crit_edge, %if.end.i101.for.body.i111_crit_edge
  %count.06.i105 = phi i32 [ %inc.i107, %for.body.i111.for.body.i111_crit_edge ], [ 0, %if.end.i101.for.body.i111_crit_edge ]
  %i.05.i106 = phi i32 [ %inc353.i109, %for.body.i111.for.body.i111_crit_edge ], [ 1, %if.end.i101.for.body.i111_crit_edge ]
  %inc.i107 = add i32 %count.06.i105, 1
  %arrayidx352.i108 = getelementptr i32, ptr %17, i32 %count.06.i105
  %22 = ptrtoint ptr %arrayidx352.i108 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %i.05.i106, ptr %arrayidx352.i108, align 4
  %inc353.i109 = add i32 %i.05.i106, 1
  %cmp.not.i110 = icmp sgt i32 %inc353.i109, %slots.0.i99
  br i1 %cmp.not.i110, label %for.body.i111.for.cond354.preheader.i104_crit_edge, label %for.body.i111.for.body.i111_crit_edge

for.body.i111.for.body.i111_crit_edge:            ; preds = %for.body.i111
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i111

for.body.i111.for.cond354.preheader.i104_crit_edge: ; preds = %for.body.i111
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond354.preheader.i104

for.body357.i119:                                 ; preds = %for.body357.i119.for.body357.i119_crit_edge, %for.cond354.preheader.i104.for.body357.i119_crit_edge
  %count.19.i112 = phi i32 [ %inc358.i115, %for.body357.i119.for.body357.i119_crit_edge ], [ %count.0.lcssa.i102, %for.cond354.preheader.i104.for.body357.i119_crit_edge ]
  %i.18.i113 = phi i32 [ %inc361.i117, %for.body357.i119.for.body357.i119_crit_edge ], [ 2, %for.cond354.preheader.i104.for.body357.i119_crit_edge ]
  %mul.i114 = mul i32 %i.18.i113, %slots.0.i99
  %inc358.i115 = add i32 %count.19.i112, 1
  %arrayidx359.i116 = getelementptr i32, ptr %17, i32 %count.19.i112
  %23 = ptrtoint ptr %arrayidx359.i116 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul.i114, ptr %arrayidx359.i116, align 4
  %inc361.i117 = add i32 %i.18.i113, 1
  %cmp355.not.i118 = icmp sgt i32 %inc361.i117, %rx_serializers.0.lcssa
  br i1 %cmp355.not.i118, label %for.body357.i119.davinci_mcasp_ch_constraint.exit122_crit_edge, label %for.body357.i119.for.body357.i119_crit_edge

for.body357.i119.for.body357.i119_crit_edge:      ; preds = %for.body357.i119
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body357.i119

for.body357.i119.davinci_mcasp_ch_constraint.exit122_crit_edge: ; preds = %for.body357.i119
  call void @__sanitizer_cov_trace_pc() #12
  br label %davinci_mcasp_ch_constraint.exit122

davinci_mcasp_ch_constraint.exit122:              ; preds = %for.body357.i119.davinci_mcasp_ch_constraint.exit122_crit_edge, %for.cond354.preheader.i104.davinci_mcasp_ch_constraint.exit122_crit_edge
  %count.1.lcssa.i120 = phi i32 [ %count.0.lcssa.i102, %for.cond354.preheader.i104.davinci_mcasp_ch_constraint.exit122_crit_edge ], [ %inc358.i115, %for.body357.i119.davinci_mcasp_ch_constraint.exit122_crit_edge ]
  %count363.i121 = getelementptr %struct.davinci_mcasp, ptr %mcasp, i32 0, i32 33, i32 1, i32 1
  %24 = ptrtoint ptr %count363.i121 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %count.1.lcssa.i120, ptr %count363.i121, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mcasp_reparent_fck(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @of_get_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.78, ptr noundef null) #10
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.79) #13
  %call6 = tail call ptr @clk_get(ptr noundef %dev, ptr noundef nonnull @.str.81) #10
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end11, label %if.end14

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.83) #13
  br label %cleanup

if.end14:                                         ; preds = %do.end
  %call15 = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull %call) #10
  %cmp.i1 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1, label %do.end20, label %if.end23

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.86) #13
  br label %err1

if.end23:                                         ; preds = %if.end14
  %call24 = tail call i32 @clk_set_parent(ptr noundef %call6, ptr noundef %call15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end23.err2_crit_edge, label %do.end29

if.end23.err2_crit_edge:                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %err2

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.89) #13
  br label %err2

err2:                                             ; preds = %do.end29, %if.end23.err2_crit_edge
  tail call void @clk_put(ptr noundef %call15) #10
  br label %err1

err1:                                             ; preds = %err2, %do.end20
  tail call void @clk_put(ptr noundef %call6) #10
  br label %cleanup

cleanup:                                          ; preds = %err1, %do.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @davinci_mcasp_get_dma_type(ptr nocapture noundef readonly %mcasp) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #10
  %dev = getelementptr inbounds %struct.davinci_mcasp, ptr %mcasp, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %filter_data = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %mcasp, i32 0, i32 3
  %4 = ptrtoint ptr %filter_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %filter_data, align 4
  %6 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %tmp, align 4
  %call = tail call ptr @dma_request_chan(ptr noundef %1, ptr noundef %5) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %call to i32
  %call6 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %8, i32 noundef %9, ptr noundef nonnull @.str.129) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %if.end7.do.end_crit_edge, label %lor.rhs

if.end7.do.end_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.rhs:                                          ; preds = %if.end7
  %dev10 = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev10, align 4
  %tobool11.not = icmp eq ptr %13, null
  br i1 %tobool11.not, label %lor.rhs.do.end_crit_edge, label %if.end37, !prof !308

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %if.end7.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2030, i32 noundef 9, ptr noundef null) #10
  tail call void @dma_release_channel(ptr noundef %call) #10
  br label %cleanup

if.end37:                                         ; preds = %lor.rhs
  %of_node40 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %of_node40 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node40, align 8
  %tobool41.not = icmp eq ptr %15, null
  br i1 %tobool41.not, label %do.body47, label %if.then42

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %call46 = call i32 @of_property_read_string(ptr noundef nonnull %15, ptr noundef nonnull @.str.130, ptr noundef nonnull %tmp) #10
  br label %if.end62

do.body47:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @davinci_mcasp_get_dma_type.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@davinci_mcasp_get_dma_type, %if.end62.thread)) #10
          to label %if.end62 [label %if.end62.thread], !srcloc !306

if.end62.thread:                                  ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @davinci_mcasp_get_dma_type.__UNIQUE_ID_ddebug245, ptr noundef %17, ptr noundef nonnull @.str.132) #10
  tail call void @dma_release_channel(ptr noundef %call) #10
  br label %do.body66

if.end62:                                         ; preds = %do.body47, %if.then42
  %ret.0 = phi i32 [ %call46, %if.then42 ], [ 0, %do.body47 ]
  call void @dma_release_channel(ptr noundef %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool63.not = icmp eq i32 %ret.0, 0
  br i1 %tobool63.not, label %if.end62.do.body66_crit_edge, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end62.do.body66_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body66

do.body66:                                        ; preds = %if.end62.do.body66_crit_edge, %if.end62.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @davinci_mcasp_get_dma_type.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@davinci_mcasp_get_dma_type, %if.then78)) #10
          to label %do.end82 [label %if.then78], !srcloc !306

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %20 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tmp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @davinci_mcasp_get_dma_type.__UNIQUE_ID_ddebug246, ptr noundef %19, ptr noundef nonnull @.str.133, ptr noundef %21) #10
  br label %do.end82

do.end82:                                         ; preds = %if.then78, %do.body66
  %22 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tmp, align 4
  %call84 = call i32 @strncmp(ptr noundef %23, ptr noundef nonnull dereferenceable(8) @.str.135, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %do.end82.cleanup_crit_edge, label %if.else87

do.end82.cleanup_crit_edge:                       ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else87:                                        ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #12
  %call88 = call ptr @strstr(ptr noundef %23, ptr noundef nonnull @.str.134)
  %tobool89.not = icmp eq ptr %call88, null
  %. = select i1 %tobool89.not, i32 0, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.else87, %do.end82.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %do.end, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then3 ], [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %if.end62.cleanup_crit_edge ], [ 1, %do.end82.cleanup_crit_edge ], [ %., %if.else87 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edma_pcm_platform_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdma_pcm_platform_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udma_pcm_platform_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop_xrun(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mcasp_dai_probe(ptr noundef %dai) #2 align 64 {
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
  %playback_dma_data = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %4 = ptrtoint ptr %playback_dma_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %playback_dma_data, align 4
  %arrayidx2 = getelementptr [2 x %struct.snd_dmaengine_dai_dma_data], ptr %3, i32 0, i32 1
  %capture_dma_data = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %5 = ptrtoint ptr %capture_dma_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx2, ptr %capture_dma_data, align 4
  %op_mode = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %op_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %op_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp eq i8 %7, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %iec958_status.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %iec958_status.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %iec958_status.i, align 1
  %arrayidx1.i = getelementptr i8, ptr %iec958_status.i, i32 1
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %iec958_status.i, i32 2
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx2.i, align 1
  %arrayidx3.i = getelementptr i8, ptr %iec958_status.i, i32 3
  %11 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx3.i, align 1
  %call4 = tail call i32 @snd_soc_add_dai_controls(ptr noundef %dai, ptr noundef nonnull @davinci_mcasp_iec958_ctls, i32 noundef 2) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_dai_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @davinci_mcasp_iec958_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #5 align 64 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @davinci_mcasp_iec958_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uctl) #6 align 64 {
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uctl, i32 0, i32 2
  %iec958_status = getelementptr inbounds %struct.davinci_mcasp, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %iec958_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iec958_status, align 4
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @davinci_mcasp_iec958_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %uctl) #6 align 64 {
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
  %iec958_status = getelementptr inbounds %struct.davinci_mcasp, ptr %5, i32 0, i32 7
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uctl, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  %8 = ptrtoint ptr %iec958_status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %iec958_status, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @davinci_mcasp_iec958_con_mask_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mcasp_set_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
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
  %dev = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp = icmp eq i32 %dir, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = zext i32 %clk_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %clk_id, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %base.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 180
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !307
  %and.i = and i32 %9, -32769
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %and.i) #10, !srcloc !303
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %11, i32 116
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #10, !srcloc !307
  %and.i23 = and i32 %12, -32769
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %and.i23) #10, !srcloc !303
  %pdir = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 23
  tail call void @_clear_bit(i32 noundef 27, ptr noundef %pdir) #10
  br label %if.end

sw.bb2:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %base.i24 = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %base.i24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i24, align 4
  %add.ptr.i25 = getelementptr i8, ptr %14, i32 180
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #10, !srcloc !307
  %or.i = or i32 %15, 32768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %or.i) #10, !srcloc !303
  %16 = ptrtoint ptr %base.i24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i24, align 4
  %add.ptr.i27 = getelementptr i8, ptr %17, i32 116
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #10, !srcloc !307
  %or.i28 = or i32 %18, 32768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %or.i28) #10, !srcloc !303
  %pdir3 = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 23
  tail call void @_set_bit(i32 noundef 27, ptr noundef %pdir3) #10
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.98, i32 noundef %clk_id) #13
  br label %out

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %base.i29 = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 2
  %21 = ptrtoint ptr %base.i29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i29, align 4
  %add.ptr.i30 = getelementptr i8, ptr %22, i32 180
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30) #10, !srcloc !307
  %or.i31 = or i32 %23, 32768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %or.i31) #10, !srcloc !303
  %24 = ptrtoint ptr %base.i29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i29, align 4
  %add.ptr.i33 = getelementptr i8, ptr %25, i32 116
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #10, !srcloc !307
  %or.i34 = or i32 %26, 32768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %or.i34) #10, !srcloc !303
  %pdir5 = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 23
  tail call void @_set_bit(i32 noundef 27, ptr noundef %pdir5) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %sw.bb2, %sw.bb
  %sysclk_freq = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 20
  %27 = ptrtoint ptr %sysclk_freq to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %freq, ptr %sysclk_freq, align 4
  br label %out

out:                                              ; preds = %if.end, %do.end
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %call.i35 = tail call i32 @__pm_runtime_idle(ptr noundef %29, i32 noundef 5) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mcasp_set_clkdiv(ptr nocapture noundef readonly %dai, i32 noundef %div_id, i32 noundef %div) #2 align 64 {
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
  %dev.i2 = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev.i2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i2, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #10
  %6 = zext i32 %div_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %div_id, label %entry.__davinci_mcasp_set_clkdiv.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb5.i
  ]

entry.__davinci_mcasp_set_clkdiv.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__davinci_mcasp_set_clkdiv.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = add i32 %div, -1
  %base.i.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 180
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !307
  %and.i.i = and i32 %9, -4096
  %or.i.i = or i32 %and.i.i, %sub.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or.i.i) #10, !srcloc !303
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %11, i32 116
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34.i) #10, !srcloc !307
  %and.i35.i = and i32 %12, -4096
  %or.i36.i = or i32 %and.i35.i, %sub.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 %or.i36.i) #10, !srcloc !303
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub3.i = add i32 %div, -1
  %base.i37.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %base.i37.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i37.i, align 4
  %add.ptr.i38.i = getelementptr i8, ptr %14, i32 176
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38.i) #10, !srcloc !307
  %and.i39.i = and i32 %15, -32
  %or.i40.i = or i32 %and.i39.i, %sub3.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38.i, i32 %or.i40.i) #10, !srcloc !303
  %16 = ptrtoint ptr %base.i37.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i37.i, align 4
  %add.ptr.i42.i = getelementptr i8, ptr %17, i32 112
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42.i) #10, !srcloc !307
  %and.i43.i = and i32 %18, -32
  %or.i44.i = or i32 %and.i43.i, %sub3.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42.i, i32 %or.i44.i) #10, !srcloc !303
  %conv.i = trunc i32 %div to i8
  %bclk_div.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 17
  %19 = ptrtoint ptr %bclk_div.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.i, ptr %bclk_div.i, align 1
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %entry
  %tdm_slots.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 9
  %20 = ptrtoint ptr %tdm_slots.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tdm_slots.i, align 4
  %.frozen = freeze i32 %21
  %div6.i = sdiv i32 %div, %.frozen
  %slot_width.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 11
  %22 = ptrtoint ptr %slot_width.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div6.i, ptr %slot_width.i, align 4
  %23 = mul i32 %div6.i, %.frozen
  %rem.i.decomposed = sub i32 %div, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool8.not.i = icmp eq i32 %rem.i.decomposed, 0
  br i1 %tobool8.not.i, label %sw.bb5.i.sw.epilog.i_crit_edge, label %do.end.i

sw.bb5.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

do.end.i:                                         ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %dev.i2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, i32 noundef %div, i32 noundef %21) #13
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end.i, %sw.bb5.i.sw.epilog.i_crit_edge, %sw.bb2.i, %sw.bb.i
  %26 = ptrtoint ptr %dev.i2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i2, align 4
  %call.i45.i = tail call i32 @__pm_runtime_idle(ptr noundef %27, i32 noundef 5) #10
  br label %__davinci_mcasp_set_clkdiv.exit

__davinci_mcasp_set_clkdiv.exit:                  ; preds = %sw.epilog.i, %entry.__davinci_mcasp_set_clkdiv.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.epilog.i ], [ -22, %entry.__davinci_mcasp_set_clkdiv.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mcasp_set_dai_fmt(ptr nocapture noundef readonly %cpu_dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fmt)
  %tobool.not = icmp eq i32 %fmt, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #10
  %and = and i32 %fmt, 15
  %6 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %and, label %if.end.out_crit_edge [
    i32 4, label %sw.bb
    i32 5, label %if.end.sw.bb2_crit_edge
    i32 6, label %if.end.sw.bb2_crit_edge231
    i32 1, label %sw.bb3
    i32 2, label %if.end.sw.bb4_crit_edge
    i32 3, label %if.end.sw.bb4_crit_edge232
  ]

if.end.sw.bb4_crit_edge232:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

if.end.sw.bb2_crit_edge231:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %base.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 172
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !307
  %and.i = and i32 %9, -17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %and.i) #10, !srcloc !303
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i119 = getelementptr i8, ptr %11, i32 108
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119) #10, !srcloc !307
  %and.i120 = and i32 %12, -17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 %and.i120) #10, !srcloc !303
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end.sw.bb2_crit_edge, %if.end.sw.bb2_crit_edge231
  %base.i121 = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %base.i121 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i121, align 4
  %add.ptr.i122 = getelementptr i8, ptr %14, i32 172
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122) #10, !srcloc !307
  %and.i123 = and i32 %15, -17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 %and.i123) #10, !srcloc !303
  %16 = ptrtoint ptr %base.i121 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i121, align 4
  %add.ptr.i125 = getelementptr i8, ptr %17, i32 108
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i125) #10, !srcloc !307
  %and.i126 = and i32 %18, -17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125, i32 %and.i126) #10, !srcloc !303
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %base.i127 = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %base.i127 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i127, align 4
  %add.ptr.i128 = getelementptr i8, ptr %20, i32 172
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i128) #10, !srcloc !307
  %or.i = or i32 %21, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 %or.i) #10, !srcloc !303
  %22 = ptrtoint ptr %base.i127 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i127, align 4
  %add.ptr.i130 = getelementptr i8, ptr %23, i32 108
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130) #10, !srcloc !307
  %or.i131 = or i32 %24, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 %or.i131) #10, !srcloc !303
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end.sw.bb4_crit_edge, %if.end.sw.bb4_crit_edge232
  %base.i132 = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 2
  %25 = ptrtoint ptr %base.i132 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i132, align 4
  %add.ptr.i133 = getelementptr i8, ptr %26, i32 172
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i133) #10, !srcloc !307
  %or.i134 = or i32 %27, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133, i32 %or.i134) #10, !srcloc !303
  %28 = ptrtoint ptr %base.i132 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i132, align 4
  %add.ptr.i136 = getelementptr i8, ptr %29, i32 108
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i136) #10, !srcloc !307
  %or.i137 = or i32 %30, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136, i32 %or.i137) #10, !srcloc !303
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb
  %data_delay.0 = phi i32 [ 0, %sw.bb4 ], [ 65536, %sw.bb3 ], [ 0, %sw.bb2 ], [ 65536, %sw.bb ]
  %inv_fs.0.off0 = phi i1 [ false, %sw.bb4 ], [ true, %sw.bb3 ], [ false, %sw.bb2 ], [ false, %sw.bb ]
  %base.i138 = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 2
  %31 = ptrtoint ptr %base.i138 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i138, align 4
  %add.ptr.i139 = getelementptr i8, ptr %32, i32 168
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i139) #10, !srcloc !307
  %and.i140 = and i32 %33, -196609
  %or.i141 = or i32 %and.i140, %data_delay.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139, i32 %or.i141) #10, !srcloc !303
  %34 = ptrtoint ptr %base.i138 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i138, align 4
  %add.ptr.i143 = getelementptr i8, ptr %35, i32 104
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i143) #10, !srcloc !307
  %and.i144 = and i32 %36, -196609
  %or.i145 = or i32 %and.i144, %data_delay.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143, i32 %or.i145) #10, !srcloc !303
  %and6 = and i32 %fmt, 61440
  %37 = add nsw i32 %and6, -4096
  %38 = lshr exact i32 %37, 12
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %38, label %sw.epilog.out_crit_edge [
    i32 3, label %sw.bb7
    i32 1, label %sw.bb11
    i32 2, label %sw.bb17
    i32 0, label %sw.bb23
  ]

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

sw.bb7:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %base.i138 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i138, align 4
  %add.ptr.i147 = getelementptr i8, ptr %41, i32 176
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i147) #10, !srcloc !307
  %or.i148 = or i32 %42, 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147, i32 %or.i148) #10, !srcloc !303
  %43 = ptrtoint ptr %base.i138 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i138, align 4
  %add.ptr.i150 = getelementptr i8, ptr %44, i32 172
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i150) #10, !srcloc !307
  %or.i151 = or i32 %45, 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150, i32 %or.i151) #10, !srcloc !303
  %46 = ptrtoint ptr %base.i138 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i138, align 4
  %add.ptr.i153 = getelementptr i8, ptr %47, i32 112
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i153) #10, !srcloc !307
  %or.i154 = or i32 %48, 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153, i32 %or.i154) #10, !srcloc !303
  %49 = ptrtoint ptr %base.i138 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i138, align 4
  %add.ptr.i156 = getelementptr i8, ptr %50, i32 108
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i156) #10, !srcloc !307
  %or.i157 = or i32 %51, 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156, i32 %or.i157) #10, !srcloc !303
  %pdir = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 23
  tail call void @_set_bit(i32 noundef 26, ptr noundef %pdir) #10
  tail call void @_set_bit(i32 noundef 29, ptr noundef %pdir) #10
  tail call void @_set_bit(i32 noundef 28, ptr noundef %pdir) #10
  tail call void @_set_bit(i32 noundef 31, ptr noundef %pdir) #10
  br label %sw.epilog30

sw.bb11:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %base.i138 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i138, align 4
  %add.ptr.i159 = getelementptr i8, ptr %53, i32 176
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i159) #10, !srcloc !307
  %or.i160 = or i32 %54, 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159, i32 %or.i160) #10, !srcloc !303
  %55 = ptrtoint ptr %base.i138 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i138, align 4
  %add.ptr.i162 = getelementptr i8, ptr %56, i32 172
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i162) #10, !srcloc !307
  %and.i163 = and i32 %57, -3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162, i32 %and.i163) #10, !srcloc !303
  %58 = ptrtoint ptr %base.i138 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i138, align 4
  %add.ptr.i165 = getelementptr i8, ptr %59, i32 112
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i165) #10, !srcloc !307
  %or.i166 = or i32 %60, 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i165, i32 %or.i166) #10, !srcloc !303
  %61 = ptrtoint ptr %base.i138 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i138, align 4
  %add.ptr.i168 = getelementptr i8, ptr %62, i32 108
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i168) #10, !srcloc !307
  %and.i169 = and i32 %63, -3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168, i32 %and.i169) #10, !srcloc !303
  %pdir12 = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 23
  tail call void @_set_bit(i32 noundef 26, ptr noundef %pdir12) #10
  tail call void @_set_bit(i32 noundef 29, ptr noundef %pdir12) #10
  tail call void @_clear_bit(i32 noundef 28, ptr noundef %pdir12) #10
  tail call void @_clear_bit(i32 noundef 31, ptr noundef %pdir12) #10
  br label %sw.epilog30

sw.bb17:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %base.i138 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i138, align 4
  %add.ptr.i171 = getelementptr i8, ptr %65, i32 176
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i171) #10, !srcloc !307
  %and.i172 = and i32 %66, -33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171, i32 %and.i172) #10, !srcloc !303
  %67 = ptrtoint ptr %base.i138 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i138, align 4
  %add.ptr.i174 = getelementptr i8, ptr %68, i32 172
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i174) #10, !srcloc !307
  %or.i175 = or i32 %69, 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i174, i32 %or.i175) #10, !srcloc !303
  %70 = ptrtoint ptr %base.i138 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i138, align 4
  %add.ptr.i177 = getelementptr i8, ptr %71, i32 112
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i177) #10, !srcloc !307
  %and.i178 = and i32 %72, -33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i177, i32 %and.i178) #10, !srcloc !303
  %73 = ptrtoint ptr %base.i138 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i138, align 4
  %add.ptr.i180 = getelementptr i8, ptr %74, i32 108
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i180) #10, !srcloc !307
  %or.i181 = or i32 %75, 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180, i32 %or.i181) #10, !srcloc !303
  %pdir18 = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 23
  tail call void @_clear_bit(i32 noundef 26, ptr noundef %pdir18) #10
  tail call void @_clear_bit(i32 noundef 29, ptr noundef %pdir18) #10
  tail call void @_set_bit(i32 noundef 28, ptr noundef %pdir18) #10
  tail call void @_set_bit(i32 noundef 31, ptr noundef %pdir18) #10
  br label %sw.epilog30

sw.bb23:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %base.i138 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i138, align 4
  %add.ptr.i183 = getelementptr i8, ptr %77, i32 176
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i183) #10, !srcloc !307
  %and.i184 = and i32 %78, -33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i183, i32 %and.i184) #10, !srcloc !303
  %79 = ptrtoint ptr %base.i138 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base.i138, align 4
  %add.ptr.i186 = getelementptr i8, ptr %80, i32 172
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i186) #10, !srcloc !307
  %and.i187 = and i32 %81, -3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i186, i32 %and.i187) #10, !srcloc !303
  %82 = ptrtoint ptr %base.i138 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i138, align 4
  %add.ptr.i189 = getelementptr i8, ptr %83, i32 112
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i189) #10, !srcloc !307
  %and.i190 = and i32 %84, -33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i189, i32 %and.i190) #10, !srcloc !303
  %85 = ptrtoint ptr %base.i138 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base.i138, align 4
  %add.ptr.i192 = getelementptr i8, ptr %86, i32 108
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i192) #10, !srcloc !307
  %and.i193 = and i32 %87, -3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i192, i32 %and.i193) #10, !srcloc !303
  %pdir24 = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 23
  tail call void @_clear_bit(i32 noundef 26, ptr noundef %pdir24) #10
  tail call void @_clear_bit(i32 noundef 29, ptr noundef %pdir24) #10
  tail call void @_clear_bit(i32 noundef 28, ptr noundef %pdir24) #10
  tail call void @_clear_bit(i32 noundef 31, ptr noundef %pdir24) #10
  br label %sw.epilog30

sw.epilog30:                                      ; preds = %sw.bb23, %sw.bb17, %sw.bb11, %sw.bb7
  %.sink = phi i8 [ 0, %sw.bb23 ], [ 0, %sw.bb17 ], [ 1, %sw.bb11 ], [ 1, %sw.bb7 ]
  %bclk_master28 = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 21
  %88 = ptrtoint ptr %bclk_master28 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %.sink, ptr %bclk_master28, align 4
  %and31 = lshr i32 %fmt, 8
  %89 = and i32 %and31, 15
  %90 = zext i32 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %89, label %sw.epilog30.out_crit_edge [
    i32 3, label %sw.bb32
    i32 2, label %sw.bb33
    i32 4, label %sw.bb34
    i32 0, label %sw.bb35
  ]

sw.epilog30.out_crit_edge:                        ; preds = %sw.epilog30
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

sw.bb32:                                          ; preds = %sw.epilog30
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %base.i138 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base.i138, align 4
  %add.ptr.i195 = getelementptr i8, ptr %92, i32 176
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i195) #10, !srcloc !307
  %and.i196 = and i32 %93, -129
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i195, i32 %and.i196) #10, !srcloc !303
  %94 = ptrtoint ptr %base.i138 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base.i138, align 4
  %add.ptr.i198 = getelementptr i8, ptr %95, i32 112
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i198) #10, !srcloc !307
  %and.i199 = and i32 %96, -129
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i198, i32 %and.i199) #10, !srcloc !303
  br label %sw.epilog37

sw.bb33:                                          ; preds = %sw.epilog30
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %base.i138 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base.i138, align 4
  %add.ptr.i201 = getelementptr i8, ptr %98, i32 176
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i201) #10, !srcloc !307
  %or.i202 = or i32 %99, 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i201, i32 %or.i202) #10, !srcloc !303
  %100 = ptrtoint ptr %base.i138 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base.i138, align 4
  %add.ptr.i204 = getelementptr i8, ptr %101, i32 112
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i204) #10, !srcloc !307
  %or.i205 = or i32 %102, 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i204, i32 %or.i205) #10, !srcloc !303
  br label %sw.epilog37.thr_comm

sw.bb34:                                          ; preds = %sw.epilog30
  call void @__sanitizer_cov_trace_pc() #12
  %103 = ptrtoint ptr %base.i138 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base.i138, align 4
  %add.ptr.i207 = getelementptr i8, ptr %104, i32 176
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i207) #10, !srcloc !307
  %and.i208 = and i32 %105, -129
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i207, i32 %and.i208) #10, !srcloc !303
  %106 = ptrtoint ptr %base.i138 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %base.i138, align 4
  %add.ptr.i210 = getelementptr i8, ptr %107, i32 112
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i210) #10, !srcloc !307
  %and.i211 = and i32 %108, -129
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i210, i32 %and.i211) #10, !srcloc !303
  br label %sw.epilog37.thr_comm

sw.bb35:                                          ; preds = %sw.epilog30
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %base.i138 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %base.i138, align 4
  %add.ptr.i213 = getelementptr i8, ptr %110, i32 176
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i213) #10, !srcloc !307
  %or.i214 = or i32 %111, 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i213, i32 %or.i214) #10, !srcloc !303
  %112 = ptrtoint ptr %base.i138 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base.i138, align 4
  %add.ptr.i216 = getelementptr i8, ptr %113, i32 112
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i216) #10, !srcloc !307
  %or.i217 = or i32 %114, 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i216, i32 %or.i217) #10, !srcloc !303
  br label %sw.epilog37

sw.epilog37.thr_comm:                             ; preds = %sw.bb34, %sw.bb33
  br i1 %inv_fs.0.off0, label %sw.epilog37.thr_comm.if.then43_crit_edge, label %sw.epilog37.thr_comm.if.else_crit_edge

sw.epilog37.thr_comm.if.else_crit_edge:           ; preds = %sw.epilog37.thr_comm
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

sw.epilog37.thr_comm.if.then43_crit_edge:         ; preds = %sw.epilog37.thr_comm
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

sw.epilog37:                                      ; preds = %sw.bb35, %sw.bb32
  br i1 %inv_fs.0.off0, label %sw.epilog37.if.else_crit_edge, label %sw.epilog37.if.then43_crit_edge

sw.epilog37.if.then43_crit_edge:                  ; preds = %sw.epilog37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

sw.epilog37.if.else_crit_edge:                    ; preds = %sw.epilog37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then43:                                        ; preds = %sw.epilog37.if.then43_crit_edge, %sw.epilog37.thr_comm.if.then43_crit_edge
  %115 = ptrtoint ptr %base.i138 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %base.i138, align 4
  %add.ptr.i219 = getelementptr i8, ptr %116, i32 172
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i219) #10, !srcloc !307
  %and.i220 = and i32 %117, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i219, i32 %and.i220) #10, !srcloc !303
  %118 = ptrtoint ptr %base.i138 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %base.i138, align 4
  %add.ptr.i222 = getelementptr i8, ptr %119, i32 108
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i222) #10, !srcloc !307
  %and.i223 = and i32 %120, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i222, i32 %and.i223) #10, !srcloc !303
  br label %if.end44

if.else:                                          ; preds = %sw.epilog37.if.else_crit_edge, %sw.epilog37.thr_comm.if.else_crit_edge
  %121 = ptrtoint ptr %base.i138 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %base.i138, align 4
  %add.ptr.i225 = getelementptr i8, ptr %122, i32 172
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i225) #10, !srcloc !307
  %or.i226 = or i32 %123, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i225, i32 %or.i226) #10, !srcloc !303
  %124 = ptrtoint ptr %base.i138 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %base.i138, align 4
  %add.ptr.i228 = getelementptr i8, ptr %125, i32 108
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i228) #10, !srcloc !307
  %or.i229 = or i32 %126, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i228, i32 %or.i229) #10, !srcloc !303
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then43
  %dai_fmt = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 6
  %127 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %fmt, ptr %dai_fmt, align 4
  br label %out

out:                                              ; preds = %if.end44, %sw.epilog30.out_crit_edge, %sw.epilog.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end44 ], [ -22, %if.end.out_crit_edge ], [ -22, %sw.epilog.out_crit_edge ], [ -22, %sw.epilog30.out_crit_edge ]
  %128 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev, align 4
  %call.i230 = tail call i32 @__pm_runtime_idle(ptr noundef %129, i32 noundef 5) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mcasp_set_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #2 align 64 {
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
  %op_mode = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %op_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %op_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @davinci_mcasp_set_tdm_slot.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@davinci_mcasp_set_tdm_slot, %if.then5)) #10
          to label %do.end [label %if.then5], !srcloc !306

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @davinci_mcasp_set_tdm_slot.__UNIQUE_ID_ddebug241, ptr noundef %7, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.102, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #10
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %shl = shl nuw i32 1, %slots
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %tx_mask)
  %cmp7.not = icmp ugt i32 %shl, %tx_mask
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %rx_mask)
  %cmp10.not = icmp ugt i32 %shl, %rx_mask
  %or.cond = and i1 %cmp7.not, %cmp10.not
  br i1 %or.cond, label %if.end17, label %do.end15

do.end15:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev16 = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.104, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots) #13
  br label %cleanup

if.end17:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot_width)
  %tobool18.not = icmp eq i32 %slot_width, 0
  br i1 %tobool18.not, label %if.end17.if.end32_crit_edge, label %land.lhs.true

if.end17.if.end32_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end17
  %10 = add i32 %slot_width, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %10)
  %11 = icmp ult i32 %10, 25
  %12 = and i32 %slot_width, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp25.not = icmp eq i32 %12, 0
  %or.cond62 = and i1 %11, %cmp25.not
  br i1 %or.cond62, label %land.lhs.true.if.end32_crit_edge, label %do.end30

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

do.end30:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %dev31 = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.102, i32 noundef %slot_width) #13
  br label %cleanup

if.end32:                                         ; preds = %land.lhs.true.if.end32_crit_edge, %if.end17.if.end32_crit_edge
  %tdm_slots = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 9
  %15 = ptrtoint ptr %tdm_slots to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %slots, ptr %tdm_slots, align 4
  %tdm_mask = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 10
  %16 = ptrtoint ptr %tdm_mask to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %tx_mask, ptr %tdm_mask, align 4
  %arrayidx34 = getelementptr %struct.davinci_mcasp, ptr %3, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %rx_mask, ptr %arrayidx34, align 4
  %slot_width35 = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 11
  %18 = ptrtoint ptr %slot_width35 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %slot_width, ptr %slot_width35, align 4
  tail call fastcc void @davinci_mcasp_set_ch_constraints(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end30, %do.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end15 ], [ -22, %do.end30 ], [ 0, %if.end32 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mcasp_startup(ptr noundef %substream, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
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
  %arrayidx = getelementptr %struct.davinci_mcasp, ptr %3, i32 0, i32 32, i32 %5
  %arrayidx4 = getelementptr %struct.davinci_mcasp, ptr %3, i32 0, i32 5, i32 %5
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tdm_slots2 = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %tdm_slots2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tdm_slots2, align 4
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %substream, ptr %arrayidx4, align 4
  %11 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stream, align 4
  %arrayidx9 = getelementptr %struct.davinci_mcasp, ptr %3, i32 0, i32 10, i32 %12
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool10.not = icmp eq i32 %14, 0
  br i1 %tobool10.not, label %if.end.if.end395_crit_edge, label %cond.false

if.end.if.end395_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end395

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %14) #10
  br label %if.end395

if.end395:                                        ; preds = %cond.false, %if.end.if.end395_crit_edge
  %tdm_slots.0 = phi i32 [ %9, %if.end.if.end395_crit_edge ], [ %call.i, %cond.false ]
  %op_mode = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 12
  %15 = ptrtoint ptr %op_mode to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %op_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp = icmp eq i8 %16, 1
  br i1 %cmp, label %if.end395.cleanup_crit_edge, label %if.end399

if.end395.cleanup_crit_edge:                      ; preds = %if.end395
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end399:                                        ; preds = %if.end395
  %17 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp401 = icmp eq i32 %18, 0
  %. = select i1 %cmp401, i32 1, i32 2
  %num_serializer = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 14
  %19 = ptrtoint ptr %num_serializer to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_serializer, align 2
  %conv405 = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp406607.not = icmp eq i8 %20, 0
  br i1 %cmp406607.not, label %if.end399.for.end_crit_edge, label %for.body.lr.ph

if.end399.for.end_crit_edge:                      ; preds = %if.end399
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end399
  %serial_dir = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 15
  %21 = ptrtoint ptr %serial_dir to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %serial_dir, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0609 = phi i32 [ 0, %for.body.lr.ph ], [ %inc414, %for.body.for.body_crit_edge ]
  %max_channels.0608 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %for.body.for.body_crit_edge ]
  %arrayidx408 = getelementptr i8, ptr %22, i32 %i.0609
  %23 = ptrtoint ptr %arrayidx408 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx408, align 1
  %conv409 = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %., i32 %conv409)
  %cmp410 = icmp eq i32 %., %conv409
  %inc = zext i1 %cmp410 to i32
  %spec.select = add i32 %max_channels.0608, %inc
  %inc414 = add nuw nsw i32 %i.0609, 1
  %exitcond.not = icmp eq i32 %inc414, %conv405
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end399.for.end_crit_edge
  %max_channels.0.lcssa = phi i32 [ 0, %if.end399.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  %serializers = getelementptr %struct.davinci_mcasp, ptr %3, i32 0, i32 32, i32 %5, i32 1
  %25 = ptrtoint ptr %serializers to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %max_channels.0.lcssa, ptr %serializers, align 4
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %3, ptr %arrayidx, align 4
  %mul = mul i32 %max_channels.0.lcssa, %tdm_slots.0
  %channels = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 27
  %27 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool416.not = icmp ne i32 %28, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %mul)
  %cmp418 = icmp ult i32 %28, %mul
  %or.cond = select i1 %tobool416.not, i1 %cmp418, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %max_channels.0.lcssa)
  %cmp422 = icmp eq i32 %max_channels.0.lcssa, 1
  %29 = select i1 %or.cond, i1 %cmp422, i1 false
  %max_channels.2 = select i1 %29, i32 %28, i32 %mul
  %30 = tail call i32 @llvm.umax.i32(i32 %max_channels.2, i32 %tdm_slots.0)
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %31 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %runtime, align 4
  %call431 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %32, i32 noundef 10, i32 noundef 0, i32 noundef %30) #10
  %33 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %runtime, align 4
  %35 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %stream, align 4
  %arrayidx434 = getelementptr %struct.davinci_mcasp, ptr %3, i32 0, i32 33, i32 %36
  %call435 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %34, i32 noundef 0, i32 noundef 10, ptr noundef %arrayidx434) #10
  %max_format_width = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 28
  %37 = ptrtoint ptr %max_format_width to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_format_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool436.not = icmp eq i32 %38, 0
  br i1 %tobool436.not, label %if.else443, label %if.then437

if.then437:                                       ; preds = %for.end
  %39 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %runtime, align 4
  %call439 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %40, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @davinci_mcasp_hw_rule_format_width, ptr noundef %arrayidx, i32 noundef 1, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call439)
  %tobool440.not = icmp eq i32 %call439, 0
  br i1 %tobool440.not, label %if.then437.if.end452_crit_edge, label %if.then437.cleanup_crit_edge

if.then437.cleanup_crit_edge:                     ; preds = %if.then437
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then437.if.end452_crit_edge:                   ; preds = %if.then437
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end452

if.else443:                                       ; preds = %for.end
  %slot_width = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 11
  %41 = ptrtoint ptr %slot_width to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %slot_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool444.not = icmp eq i32 %42, 0
  br i1 %tobool444.not, label %if.else443.if.end452_crit_edge, label %if.then445

if.else443.if.end452_crit_edge:                   ; preds = %if.else443
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end452

if.then445:                                       ; preds = %if.else443
  %43 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %runtime, align 4
  %call447 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %44, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @davinci_mcasp_hw_rule_slot_width, ptr noundef %arrayidx, i32 noundef 1, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call447)
  %tobool448.not = icmp eq i32 %call447, 0
  br i1 %tobool448.not, label %if.then445.if.end452_crit_edge, label %if.then445.cleanup_crit_edge

if.then445.cleanup_crit_edge:                     ; preds = %if.then445
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then445.if.end452_crit_edge:                   ; preds = %if.then445
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end452

if.end452:                                        ; preds = %if.then445.if.end452_crit_edge, %if.else443.if.end452_crit_edge, %if.then437.if.end452_crit_edge
  %bclk_master = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 21
  %45 = ptrtoint ptr %bclk_master to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %bclk_master, align 4, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool453.not = icmp eq i8 %46, 0
  br i1 %tobool453.not, label %if.end452.if.end472_crit_edge, label %land.lhs.true455

if.end452.if.end472_crit_edge:                    ; preds = %if.end452
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end472

land.lhs.true455:                                 ; preds = %if.end452
  %bclk_div = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 17
  %47 = ptrtoint ptr %bclk_div to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bclk_div, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp457 = icmp eq i8 %48, 0
  br i1 %cmp457, label %land.lhs.true459, label %land.lhs.true455.if.end472_crit_edge

land.lhs.true455.if.end472_crit_edge:             ; preds = %land.lhs.true455
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end472

land.lhs.true459:                                 ; preds = %land.lhs.true455
  %sysclk_freq = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 20
  %49 = ptrtoint ptr %sysclk_freq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sysclk_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool460.not = icmp eq i32 %50, 0
  br i1 %tobool460.not, label %land.lhs.true459.if.end472_crit_edge, label %if.then461

land.lhs.true459.if.end472_crit_edge:             ; preds = %land.lhs.true459
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end472

if.then461:                                       ; preds = %land.lhs.true459
  %51 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %runtime, align 4
  %call463 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %52, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @davinci_mcasp_hw_rule_rate, ptr noundef %arrayidx, i32 noundef 1, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call463)
  %tobool464.not = icmp eq i32 %call463, 0
  br i1 %tobool464.not, label %if.end466, label %if.then461.cleanup_crit_edge

if.then461.cleanup_crit_edge:                     ; preds = %if.then461
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end466:                                        ; preds = %if.then461
  %53 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %runtime, align 4
  %call468 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %54, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @davinci_mcasp_hw_rule_format, ptr noundef %arrayidx, i32 noundef 11, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call468)
  %tobool469.not = icmp eq i32 %call468, 0
  br i1 %tobool469.not, label %if.end466.if.end472_crit_edge, label %if.end466.cleanup_crit_edge

if.end466.cleanup_crit_edge:                      ; preds = %if.end466
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end466.if.end472_crit_edge:                    ; preds = %if.end466
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end472

if.end472:                                        ; preds = %if.end466.if.end472_crit_edge, %land.lhs.true459.if.end472_crit_edge, %land.lhs.true455.if.end472_crit_edge, %if.end452.if.end472_crit_edge
  %55 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %runtime, align 4
  %call474 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %56, i32 noundef 0, i32 noundef 13, ptr noundef nonnull @davinci_mcasp_hw_rule_min_periodsize, ptr noundef null, i32 noundef 13, i32 noundef -1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end472, %if.end466.cleanup_crit_edge, %if.then461.cleanup_crit_edge, %if.then445.cleanup_crit_edge, %if.then437.cleanup_crit_edge, %if.end395.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end472 ], [ -16, %entry.cleanup_crit_edge ], [ 0, %if.end395.cleanup_crit_edge ], [ %call439, %if.then437.cleanup_crit_edge ], [ %call447, %if.then445.cleanup_crit_edge ], [ %call463, %if.then461.cleanup_crit_edge ], [ %call468, %if.end466.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @davinci_mcasp_shutdown(ptr nocapture noundef readonly %substream, ptr noundef %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
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
  %arrayidx = getelementptr %struct.davinci_mcasp, ptr %3, i32 0, i32 5, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx, align 4
  %7 = load i32, ptr %stream, align 4
  %arrayidx2 = getelementptr %struct.davinci_mcasp, ptr %3, i32 0, i32 29, i32 %7
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx2, align 1
  %op_mode = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 12
  %9 = ptrtoint ptr %op_mode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %op_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp = icmp eq i8 %10, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @snd_soc_dai_active(ptr noundef %cpu_dai) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %channels = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 27
  %11 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %channels, align 4
  %max_format_width = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 28
  %12 = ptrtoint ptr %max_format_width to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %max_format_width, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mcasp_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i101 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 5
  %6 = ptrtoint ptr %arrayidx.i.i101 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i101, align 4
  %arrayidx.i.i102 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i102 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.params_format.exit_crit_edge

entry.params_format.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.1.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.sw.epilog_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_format.exit

for.inc.i.i.sw.epilog_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %entry.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %9, %entry.params_format.exit_crit_edge ], [ %11, %for.inc.i.i.params_format.exit_crit_edge ]
  %12 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #10, !range !309
  %add.i.i = or i32 %12, %i.09.lcssa.i.i
  %13 = zext i32 %add.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %add.i.i, label %do.end [
    i32 1, label %params_format.exit.sw.epilog_crit_edge
    i32 0, label %params_format.exit.sw.epilog_crit_edge161
    i32 4, label %params_format.exit.sw.bb4_crit_edge
    i32 2, label %params_format.exit.sw.bb4_crit_edge162
    i32 34, label %params_format.exit.sw.bb5_crit_edge
    i32 32, label %params_format.exit.sw.bb5_crit_edge163
    i32 8, label %params_format.exit.sw.bb6_crit_edge
    i32 6, label %params_format.exit.sw.bb6_crit_edge164
    i32 12, label %params_format.exit.sw.bb7_crit_edge
    i32 10, label %params_format.exit.sw.bb7_crit_edge165
  ]

params_format.exit.sw.bb7_crit_edge165:           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

params_format.exit.sw.bb7_crit_edge:              ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

params_format.exit.sw.bb6_crit_edge164:           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6

params_format.exit.sw.bb6_crit_edge:              ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6

params_format.exit.sw.bb5_crit_edge163:           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

params_format.exit.sw.bb5_crit_edge:              ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

params_format.exit.sw.bb4_crit_edge162:           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

params_format.exit.sw.bb4_crit_edge:              ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

params_format.exit.sw.epilog_crit_edge161:        ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

params_format.exit.sw.epilog_crit_edge:           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb4:                                           ; preds = %params_format.exit.sw.bb4_crit_edge, %params_format.exit.sw.bb4_crit_edge162
  br label %sw.epilog

sw.bb5:                                           ; preds = %params_format.exit.sw.bb5_crit_edge, %params_format.exit.sw.bb5_crit_edge163
  br label %sw.epilog

sw.bb6:                                           ; preds = %params_format.exit.sw.bb6_crit_edge, %params_format.exit.sw.bb6_crit_edge164
  br label %sw.epilog

sw.bb7:                                           ; preds = %params_format.exit.sw.bb7_crit_edge, %params_format.exit.sw.bb7_crit_edge165
  br label %sw.epilog

do.end:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %params_format.exit.sw.epilog_crit_edge, %params_format.exit.sw.epilog_crit_edge161, %for.inc.i.i.sw.epilog_crit_edge
  %word_length.0 = phi i32 [ 32, %sw.bb7 ], [ 24, %sw.bb6 ], [ 24, %sw.bb5 ], [ 16, %sw.bb4 ], [ 8, %params_format.exit.sw.epilog_crit_edge ], [ 8, %params_format.exit.sw.epilog_crit_edge161 ], [ 8, %for.inc.i.i.sw.epilog_crit_edge ]
  %dai_fmt = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 6
  %14 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dai_fmt, align 4
  %call9 = tail call i32 @davinci_mcasp_set_dai_fmt(ptr noundef %cpu_dai, i32 noundef %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %bclk_master = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 21
  %16 = ptrtoint ptr %bclk_master to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bclk_master, align 4, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool10.not = icmp eq i8 %17, 0
  br i1 %tobool10.not, label %if.end.if.end30_crit_edge, label %land.lhs.true

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end
  %bclk_div = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 17
  %18 = ptrtoint ptr %bclk_div to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bclk_div, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp = icmp eq i8 %19, 0
  br i1 %cmp, label %land.lhs.true12, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

land.lhs.true12:                                  ; preds = %land.lhs.true
  %sysclk_freq = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 20
  %20 = ptrtoint ptr %sysclk_freq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sysclk_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool13.not = icmp eq i32 %21, 0
  br i1 %tobool13.not, label %land.lhs.true12.if.end30_crit_edge, label %if.then14

land.lhs.true12.if.end30_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then14:                                        ; preds = %land.lhs.true12
  %tdm_slots = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 9
  %22 = ptrtoint ptr %tdm_slots to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tdm_slots, align 4
  %arrayidx.i.i103 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %arrayidx.i.i103 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i103, align 4
  %26 = ptrtoint ptr %arrayidx.i.i102 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.then14.if.then.i.i.i_crit_edge

if.then14.if.then.i.i.i_crit_edge:                ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.then14.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.then14.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %27, %if.then14.if.then.i.i.i_crit_edge ], [ %30, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %28 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #10, !range !309
  %add.i.i.i = or i32 %28, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.then14
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.1.i.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #10
  %slot_width = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 11
  %31 = ptrtoint ptr %slot_width to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %slot_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool17.not = icmp eq i32 %32, 0
  %spec.select = select i1 %tobool17.not, i32 %call1.i, i32 %32
  %op_mode = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 12
  %33 = ptrtoint ptr %op_mode to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %op_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp22 = icmp eq i8 %34, 0
  %mul = mul i32 %25, %23
  %mul25 = mul i32 %mul, %spec.select
  %mul26 = shl i32 %25, 7
  %bclk_target.0 = select i1 %cmp22, i32 %mul25, i32 %mul26
  %35 = ptrtoint ptr %sysclk_freq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sysclk_freq, align 4
  %call29 = tail call fastcc i32 @davinci_mcasp_calc_clk_div(ptr noundef %3, i32 noundef %36, i32 noundef %bclk_target.0, i1 noundef zeroext true)
  br label %if.end30

if.end30:                                         ; preds = %params_width.exit, %land.lhs.true12.if.end30_crit_edge, %land.lhs.true.if.end30_crit_edge, %if.end.if.end30_crit_edge
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %37 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %stream, align 4
  %mul31 = mul i32 %7, %5
  %tdm_slots.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 9
  %39 = ptrtoint ptr %tdm_slots.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tdm_slots.i, align 4
  %op_mode.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 12
  %41 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %op_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %42)
  %cmp.i = icmp eq i8 %42, 1
  br i1 %cmp.i, label %if.end30.if.end.i_crit_edge, label %if.else.i

if.end30.if.end.i_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.else.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %conv4.i = and i32 %40, 255
  %add.i = add i32 %5, -1
  %sub.i = add i32 %add.i, %conv4.i
  %div.i = sdiv i32 %sub.i, %conv4.i
  %conv6.i = trunc i32 %div.i to i8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.end30.if.end.i_crit_edge
  %max_active_serializers.0.i = phi i8 [ %conv6.i, %if.else.i ], [ 1, %if.end30.if.end.i_crit_edge ]
  %version.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 16
  %43 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %44)
  %cmp8.i = icmp ult i8 %44, 2
  br i1 %cmp8.i, label %if.then10.i, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %base.i.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 2
  %45 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %46, i32 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !307
  %or.i.i = or i32 %47, 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or.i.i) #10, !srcloc !303
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %if.end.i.if.end11.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp12.i = icmp eq i32 %38, 0
  %base.i218.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 2
  %48 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i218.i, align 4
  br i1 %cmp12.i, label %if.then14.i, label %if.else17.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i219.i = getelementptr i8, ptr %49, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i219.i, i32 -1) #10, !srcloc !303
  %50 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i221.i = getelementptr i8, ptr %51, i32 204
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i221.i) #10, !srcloc !307
  %and.i.i = and i32 %52, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i221.i, i32 %and.i.i) #10, !srcloc !303
  %arrayidx16.i = getelementptr %struct.davinci_mcasp, ptr %3, i32 0, i32 29, i32 1
  %53 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx16.i, align 1
  br label %if.end20.i

if.else17.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i223.i = getelementptr i8, ptr %49, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i223.i, i32 -1) #10, !srcloc !303
  %55 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i225.i = getelementptr i8, ptr %56, i32 140
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i225.i) #10, !srcloc !307
  %and.i226.i = and i32 %57, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i225.i, i32 %and.i226.i) #10, !srcloc !303
  %active_serializers18.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 29
  %58 = ptrtoint ptr %active_serializers18.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %active_serializers18.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else17.i, %if.then14.i
  %max_rx_serializers.0.i = phi i8 [ %54, %if.then14.i ], [ %max_active_serializers.0.i, %if.else17.i ]
  %max_tx_serializers.0.i = phi i8 [ %max_active_serializers.0.i, %if.then14.i ], [ %59, %if.else17.i ]
  %num_serializer.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 14
  %60 = ptrtoint ptr %num_serializer.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %num_serializer.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp22250.not.i = icmp eq i8 %61, 0
  br i1 %cmp22250.not.i, label %if.end20.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end20.i.for.end.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end20.i
  %serial_dir.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 15
  %dismod65.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 13
  %pdir68.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 23
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %rx_ser.0254.i = phi i8 [ 0, %for.body.lr.ph.i ], [ %rx_ser.1.i, %for.inc.i.for.body.i_crit_edge ]
  %tx_ser.0253.i = phi i8 [ 0, %for.body.lr.ph.i ], [ %tx_ser.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0251.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc71.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl i32 %i.0251.i, 2
  %add24.i = add nuw nsw i32 %shl.i, 384
  %62 = ptrtoint ptr %serial_dir.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %serial_dir.i, align 4
  %arrayidx25.i = getelementptr i8, ptr %63, i32 %i.0251.i
  %64 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx25.i, align 1
  %conv26.i = zext i8 %65 to i32
  %66 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i228.i = getelementptr i8, ptr %67, i32 %add24.i
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i228.i) #10, !srcloc !307
  %or.i229.i = or i32 %68, %conv26.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i228.i, i32 %or.i229.i) #10, !srcloc !303
  %69 = ptrtoint ptr %serial_dir.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %serial_dir.i, align 4
  %arrayidx28.i = getelementptr i8, ptr %70, i32 %i.0251.i
  %71 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx28.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %72)
  %cmp30.i = icmp eq i8 %72, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %tx_ser.0253.i, i8 %max_tx_serializers.0.i)
  %cmp34.i = icmp ult i8 %tx_ser.0253.i, %max_tx_serializers.0.i
  %or.cond.i = select i1 %cmp30.i, i1 %cmp34.i, i1 false
  br i1 %or.cond.i, label %if.then36.i, label %if.else40.i

if.then36.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %dismod65.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %dismod65.i, align 1
  %conv39.i = zext i8 %74 to i32
  %75 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i231.i = getelementptr i8, ptr %76, i32 %add24.i
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i231.i) #10, !srcloc !307
  %and.i232.i = and i32 %77, -13
  %or.i233.i = or i32 %and.i232.i, %conv39.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i231.i, i32 %or.i233.i) #10, !srcloc !303
  tail call void @_set_bit(i32 noundef %i.0251.i, ptr noundef %pdir68.i) #10
  %inc.i = add nuw i8 %tx_ser.0253.i, 1
  br label %for.inc.i

if.else40.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %72)
  %cmp44.i = icmp eq i8 %72, 2
  call void @__sanitizer_cov_trace_cmp1(i8 %rx_ser.0254.i, i8 %max_rx_serializers.0.i)
  %cmp49.i = icmp ult i8 %rx_ser.0254.i, %max_rx_serializers.0.i
  %or.cond216.i = select i1 %cmp44.i, i1 %cmp49.i, i1 false
  br i1 %or.cond216.i, label %if.then51.i, label %if.else54.i

if.then51.i:                                      ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef %i.0251.i, ptr noundef %pdir68.i) #10
  %inc53.i = add nuw i8 %rx_ser.0254.i, 1
  br label %for.inc.i

if.else54.i:                                      ; preds = %if.else40.i
  %78 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i235.i = getelementptr i8, ptr %79, i32 %add24.i
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i235.i) #10, !srcloc !307
  %and.i236.i = and i32 %80, -4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i235.i, i32 %and.i236.i) #10, !srcloc !303
  %81 = ptrtoint ptr %serial_dir.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %serial_dir.i, align 4
  %arrayidx58.i = getelementptr i8, ptr %82, i32 %i.0251.i
  %83 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx58.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %cmp60.not.i = icmp eq i8 %84, 0
  br i1 %cmp60.not.i, label %if.else54.i.if.end67.i_crit_edge, label %if.then62.i

if.else54.i.if.end67.i_crit_edge:                 ; preds = %if.else54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67.i

if.then62.i:                                      ; preds = %if.else54.i
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %dismod65.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %dismod65.i, align 1
  %conv66.i = zext i8 %86 to i32
  %87 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i238.i = getelementptr i8, ptr %88, i32 %add24.i
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i238.i) #10, !srcloc !307
  %and.i239.i = and i32 %89, -13
  %or.i240.i = or i32 %and.i239.i, %conv66.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i238.i, i32 %or.i240.i) #10, !srcloc !303
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then62.i, %if.else54.i.if.end67.i_crit_edge
  tail call void @_clear_bit(i32 noundef %i.0251.i, ptr noundef %pdir68.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end67.i, %if.then51.i, %if.then36.i
  %tx_ser.1.i = phi i8 [ %inc.i, %if.then36.i ], [ %tx_ser.0253.i, %if.then51.i ], [ %tx_ser.0253.i, %if.end67.i ]
  %rx_ser.1.i = phi i8 [ %rx_ser.0254.i, %if.then36.i ], [ %inc53.i, %if.then51.i ], [ %rx_ser.0254.i, %if.end67.i ]
  %inc71.i = add nuw nsw i32 %i.0251.i, 1
  %90 = ptrtoint ptr %num_serializer.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %num_serializer.i, align 2
  %conv21.i = zext i8 %91 to i32
  %cmp22.i = icmp ult i32 %inc71.i, %conv21.i
  br i1 %cmp22.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end20.i.for.end.i_crit_edge
  %tx_ser.0.lcssa.i = phi i8 [ 0, %if.end20.i.for.end.i_crit_edge ], [ %tx_ser.1.i, %for.inc.i.for.end.i_crit_edge ]
  %rx_ser.0.lcssa.i = phi i8 [ 0, %if.end20.i.for.end.i_crit_edge ], [ %rx_ser.1.i, %for.inc.i.for.end.i_crit_edge ]
  br i1 %cmp12.i, label %if.then74.i, label %if.else78.i

if.then74.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %txnumevt.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 24
  %fifo_base.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 3
  %92 = ptrtoint ptr %fifo_base.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %fifo_base.i, align 4
  br label %if.end83.i

if.else78.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %rxnumevt.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 25
  %fifo_base81.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 3
  %94 = ptrtoint ptr %fifo_base81.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %fifo_base81.i, align 4
  %add82.i = add i32 %95, 8
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.else78.i, %if.then74.i
  %active_serializers.0.in.i = phi i8 [ %tx_ser.0.lcssa.i, %if.then74.i ], [ %rx_ser.0.lcssa.i, %if.else78.i ]
  %numevt.0.in.in.i = phi ptr [ %txnumevt.i, %if.then74.i ], [ %rxnumevt.i, %if.else78.i ]
  %reg.0.i = phi i32 [ %93, %if.then74.i ], [ %add82.i, %if.else78.i ]
  %96 = ptrtoint ptr %numevt.0.in.in.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %numevt.0.in.i = load i8, ptr %numevt.0.in.in.i, align 1
  %active_serializers.0.i = zext i8 %active_serializers.0.in.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %active_serializers.0.in.i, i8 %max_active_serializers.0.i)
  %cmp85.i = icmp ult i8 %active_serializers.0.in.i, %max_active_serializers.0.i
  br i1 %cmp85.i, label %do.end.i, label %if.end89.i

do.end.i:                                         ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i104 = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 4
  %97 = ptrtoint ptr %dev.i104 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev.i104, align 4
  %conv88.i = and i32 %40, 255
  %mul.i = mul nuw nsw i32 %conv88.i, %active_serializers.0.i
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %98, ptr noundef nonnull @.str.120, i32 noundef %5, i32 noundef %mul.i) #13
  br label %cleanup

if.end89.i:                                       ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %numevt.0.in.i)
  %tobool.not.i = icmp eq i8 %numevt.0.in.i, 0
  br i1 %tobool.not.i, label %if.then90.i, label %if.end97.i

if.then90.i:                                      ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %active_serializers.0.in.i)
  %cmp91.i = icmp ugt i8 %active_serializers.0.in.i, 1
  %maxburst.i = getelementptr [2 x %struct.snd_dmaengine_dai_dma_data], ptr %3, i32 0, i32 %38, i32 2
  br i1 %cmp91.i, label %if.then93.i, label %if.else94.i

if.then93.i:                                      ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #12
  %99 = ptrtoint ptr %maxburst.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %active_serializers.0.i, ptr %maxburst.i, align 4
  br label %if.end35

if.else94.i:                                      ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #12
  %100 = ptrtoint ptr %maxburst.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %maxburst.i, align 4
  br label %if.end35

if.end97.i:                                       ; preds = %if.end89.i
  %rem.i = srem i32 %mul31, %active_serializers.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool98.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool98.not.i, label %if.end104.i, label %do.end102.i

do.end102.i:                                      ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev103.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 4
  %101 = ptrtoint ptr %dev103.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev103.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.123, i32 noundef %mul31, i32 noundef %active_serializers.0.i) #13
  br label %cleanup

if.end104.i:                                      ; preds = %if.end97.i
  %103 = udiv i8 %numevt.0.in.i, %active_serializers.0.in.i
  %div105.i = zext i8 %103 to i32
  %mul106.i = mul nuw nsw i32 %div105.i, %active_serializers.0.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end104.i
  %numevt.1.i = phi i32 [ %mul106.i, %if.end104.i ], [ %sub111.i, %while.cond.i.while.cond.i_crit_edge ]
  %rem107.i = srem i32 %mul31, %numevt.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem107.i)
  %tobool108.not.i = icmp ne i32 %rem107.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %numevt.1.i)
  %cmp109.i = icmp sgt i32 %numevt.1.i, 0
  %or.cond217.i = and i1 %cmp109.i, %tobool108.not.i
  %sub111.i = sub i32 %numevt.1.i, %active_serializers.0.i
  br i1 %or.cond217.i, label %while.cond.i.while.cond.i_crit_edge, label %while.end.i

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %numevt.1.i)
  %cmp112.i = icmp slt i32 %numevt.1.i, 1
  %spec.select.i = select i1 %cmp112.i, i32 %active_serializers.0.i, i32 %numevt.1.i
  %104 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i242.i = getelementptr i8, ptr %105, i32 %reg.0.i
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i242.i) #10, !srcloc !307
  %and.i243.i = and i32 %106, -256
  %or.i244.i = or i32 %and.i243.i, %active_serializers.0.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i242.i, i32 %or.i244.i) #10, !srcloc !303
  %and.i = shl i32 %spec.select.i, 8
  %shl116.i = and i32 %and.i, 65280
  %107 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i246.i = getelementptr i8, ptr %108, i32 %reg.0.i
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i246.i) #10, !srcloc !307
  %and.i247.i = and i32 %109, -65281
  %or.i248.i = or i32 %and.i247.i, %shl116.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i246.i, i32 %or.i248.i) #10, !srcloc !303
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.i)
  %cmp117.i = icmp eq i32 %spec.select.i, 1
  %spec.store.select.i = select i1 %cmp117.i, i32 0, i32 %spec.select.i
  %maxburst121.i = getelementptr [2 x %struct.snd_dmaengine_dai_dma_data], ptr %3, i32 0, i32 %38, i32 2
  %110 = ptrtoint ptr %maxburst121.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %spec.store.select.i, ptr %maxburst121.i, align 4
  br label %if.end35

if.end35:                                         ; preds = %while.end.i, %if.else94.i, %if.then93.i
  %arrayidx124.i = getelementptr %struct.davinci_mcasp, ptr %3, i32 0, i32 29, i32 %38
  %111 = ptrtoint ptr %arrayidx124.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %active_serializers.0.in.i, ptr %arrayidx124.i, align 1
  %112 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %op_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %113)
  %cmp38 = icmp eq i8 %113, 1
  br i1 %cmp38, label %if.then40, label %if.else43

if.then40:                                        ; preds = %if.end35
  %arrayidx.i.i105 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %114 = ptrtoint ptr %arrayidx.i.i105 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx.i.i105, align 4
  %iec958_status.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 7
  %dat_port.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 26
  %116 = ptrtoint ptr %dat_port.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %dat_port.i, align 2, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i106 = icmp eq i8 %117, 0
  %118 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i.i108 = getelementptr i8, ptr %119, i32 168
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i108) #10
  br i1 %tobool.not.i106, label %if.then.i, label %if.else.i111

if.then.i:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  %or.i.i109 = or i32 %120, 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i108, i32 %or.i.i109) #10, !srcloc !303
  br label %if.end.i112

if.else.i111:                                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i110 = and i32 %120, -9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i108, i32 %and.i.i110) #10, !srcloc !303
  br label %if.end.i112

if.end.i112:                                      ; preds = %if.else.i111, %if.then.i
  %121 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i74.i = getelementptr i8, ptr %122, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74.i, i32 49154) #10, !srcloc !303
  %123 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i76.i = getelementptr i8, ptr %124, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76.i, i32 65535) #10, !srcloc !303
  %125 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i78.i = getelementptr i8, ptr %126, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78.i, i32 -1) #10, !srcloc !303
  %127 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i80.i = getelementptr i8, ptr %128, i32 176
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80.i) #10, !srcloc !307
  %or.i81.i = or i32 %129, 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80.i, i32 %or.i81.i) #10, !srcloc !303
  %130 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i83.i = getelementptr i8, ptr %131, i32 204
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i83.i) #10, !srcloc !307
  %and.i84.i = and i32 %132, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83.i, i32 %and.i84.i) #10, !srcloc !303
  %arrayidx.i = getelementptr i8, ptr %iec958_status.i, i32 3
  %133 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx.i, align 1
  %135 = and i8 %134, -16
  store i8 %135, ptr %arrayidx.i, align 1
  %136 = zext i32 %115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %115, label %if.end46 [
    i32 22050, label %if.end.i112.sw.epilog.sink.split.i_crit_edge
    i32 24000, label %sw.bb5.i
    i32 32000, label %sw.bb10.i
    i32 44100, label %if.end.i112.sw.epilog.i_crit_edge
    i32 48000, label %sw.bb20.i
    i32 88200, label %sw.bb25.i
    i32 96000, label %sw.bb30.i
    i32 176400, label %sw.bb35.i
    i32 192000, label %sw.bb40.i
  ]

if.end.i112.sw.epilog.i_crit_edge:                ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end.i112.sw.epilog.sink.split.i_crit_edge:     ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i

sw.bb5.i:                                         ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i

sw.bb10.i:                                        ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i

sw.bb20.i:                                        ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i

sw.bb25.i:                                        ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i

sw.bb30.i:                                        ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i

sw.bb35.i:                                        ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i

sw.bb40.i:                                        ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb40.i, %sw.bb35.i, %sw.bb30.i, %sw.bb25.i, %sw.bb20.i, %sw.bb10.i, %sw.bb5.i, %if.end.i112.sw.epilog.sink.split.i_crit_edge
  %.sink92.i = phi i8 [ 14, %sw.bb40.i ], [ 12, %sw.bb35.i ], [ 10, %sw.bb30.i ], [ 8, %sw.bb25.i ], [ 2, %sw.bb20.i ], [ 3, %sw.bb10.i ], [ 6, %sw.bb5.i ], [ 4, %if.end.i112.sw.epilog.sink.split.i_crit_edge ]
  %137 = or i8 %.sink92.i, %135
  %138 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %137, ptr %arrayidx.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %if.end.i112.sw.epilog.i_crit_edge
  %139 = ptrtoint ptr %iec958_status.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %iec958_status.i, align 4
  %141 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i86.i = getelementptr i8, ptr %142, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86.i, i32 %140) #10, !srcloc !303
  %143 = ptrtoint ptr %iec958_status.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %iec958_status.i, align 4
  %145 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i88.i = getelementptr i8, ptr %146, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88.i, i32 %144) #10, !srcloc !303
  %147 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i90.i = getelementptr i8, ptr %148, i32 80
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i90.i) #10, !srcloc !307
  %or.i91.i = or i32 %149, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90.i, i32 %or.i91.i) #10, !srcloc !303
  br label %if.end49

if.else43:                                        ; preds = %if.end35
  %150 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %stream, align 4
  %152 = ptrtoint ptr %tdm_slots.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %tdm_slots.i, align 4
  %arrayidx.i117 = getelementptr %struct.davinci_mcasp, ptr %3, i32 0, i32 10, i32 %151
  %154 = ptrtoint ptr %arrayidx.i117 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx.i117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool.not.i118 = icmp eq i32 %155, 0
  br i1 %tobool.not.i118, label %if.else.i131, label %cond.false.i

cond.false.i:                                     ; preds = %if.else43
  %call.i.i = tail call i32 @__sw_hweight32(i32 noundef %155) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %cmp35228.i = icmp sgt i32 %153, 0
  br i1 %cmp35228.i, label %for.body.lr.ph.i126, label %cond.false.i.if.end382.i_crit_edge

cond.false.i.if.end382.i_crit_edge:               ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end382.i

for.body.lr.ph.i126:                              ; preds = %cond.false.i
  %add349.i = add i32 %5, -1
  %sub.i122 = add i32 %add349.i, %call.i.i
  %div.i123 = sdiv i32 %sub.i122, %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div.i123)
  %cmp.i124 = icmp eq i32 %div.i123, 1
  %spec.select.i125 = select i1 %cmp.i124, i32 %5, i32 %call.i.i
  %156 = ptrtoint ptr %arrayidx.i117 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx.i117, align 4
  br label %for.body.i128

for.body.i128:                                    ; preds = %for.inc.i130.for.body.i128_crit_edge, %for.body.lr.ph.i126
  %mask.031.i = phi i32 [ 0, %for.body.lr.ph.i126 ], [ %mask.1.i, %for.inc.i130.for.body.i128_crit_edge ]
  %active_slots.130.i = phi i32 [ %spec.select.i125, %for.body.lr.ph.i126 ], [ %active_slots.2.i, %for.inc.i130.for.body.i128_crit_edge ]
  %i.029.i = phi i32 [ 0, %for.body.lr.ph.i126 ], [ %inc.i129, %for.inc.i130.for.body.i128_crit_edge ]
  %shl.i127 = shl nuw i32 1, %i.029.i
  %and356.i = and i32 %shl.i127, %157
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and356.i)
  %tobool357.not.i = icmp eq i32 %and356.i, 0
  br i1 %tobool357.not.i, label %for.body.i128.for.inc.i130_crit_edge, label %if.then358.i

for.body.i128.for.inc.i130_crit_edge:             ; preds = %for.body.i128
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i130

if.then358.i:                                     ; preds = %for.body.i128
  %or.i = or i32 %shl.i127, %mask.031.i
  %dec.i = add i32 %active_slots.130.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp360.i = icmp slt i32 %dec.i, 1
  br i1 %cmp360.i, label %if.then358.i.if.end382.i_crit_edge, label %if.then358.i.for.inc.i130_crit_edge

if.then358.i.for.inc.i130_crit_edge:              ; preds = %if.then358.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i130

if.then358.i.if.end382.i_crit_edge:               ; preds = %if.then358.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end382.i

for.inc.i130:                                     ; preds = %if.then358.i.for.inc.i130_crit_edge, %for.body.i128.for.inc.i130_crit_edge
  %active_slots.2.i = phi i32 [ %dec.i, %if.then358.i.for.inc.i130_crit_edge ], [ %active_slots.130.i, %for.body.i128.for.inc.i130_crit_edge ]
  %mask.1.i = phi i32 [ %or.i, %if.then358.i.for.inc.i130_crit_edge ], [ %mask.031.i, %for.body.i128.for.inc.i130_crit_edge ]
  %inc.i129 = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i129, %153
  br i1 %exitcond.not.i, label %for.inc.i130.if.end382.i_crit_edge, label %for.inc.i130.for.body.i128_crit_edge

for.inc.i130.for.body.i128_crit_edge:             ; preds = %for.inc.i130
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i128

for.inc.i130.if.end382.i_crit_edge:               ; preds = %for.inc.i130
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end382.i

if.else.i131:                                     ; preds = %if.else43
  %add365.i = add i32 %5, -1
  %sub366.i = add i32 %add365.i, %153
  %div367.i = sdiv i32 %sub366.i, %153
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div367.i)
  %cmp368.i = icmp eq i32 %div367.i, 1
  %channels..i = select i1 %cmp368.i, i32 %5, i32 %153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channels..i)
  %cmp37433.i = icmp sgt i32 %channels..i, 0
  br i1 %cmp37433.i, label %if.else.i131.for.body376.i_crit_edge, label %if.else.i131.if.end382.i_crit_edge

if.else.i131.if.end382.i_crit_edge:               ; preds = %if.else.i131
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end382.i

if.else.i131.for.body376.i_crit_edge:             ; preds = %if.else.i131
  br label %for.body376.i

for.body376.i:                                    ; preds = %for.body376.i.for.body376.i_crit_edge, %if.else.i131.for.body376.i_crit_edge
  %mask.235.i = phi i32 [ %or378.i, %for.body376.i.for.body376.i_crit_edge ], [ 0, %if.else.i131.for.body376.i_crit_edge ]
  %i.134.i = phi i32 [ %inc380.i, %for.body376.i.for.body376.i_crit_edge ], [ 0, %if.else.i131.for.body376.i_crit_edge ]
  %shl377.i = shl nuw i32 1, %i.134.i
  %or378.i = or i32 %shl377.i, %mask.235.i
  %inc380.i = add nuw nsw i32 %i.134.i, 1
  %exitcond38.not.i = icmp eq i32 %inc380.i, %channels..i
  br i1 %exitcond38.not.i, label %for.body376.i.if.end382.i_crit_edge, label %for.body376.i.for.body376.i_crit_edge

for.body376.i.for.body376.i_crit_edge:            ; preds = %for.body376.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body376.i

for.body376.i.if.end382.i_crit_edge:              ; preds = %for.body376.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end382.i

if.end382.i:                                      ; preds = %for.body376.i.if.end382.i_crit_edge, %if.else.i131.if.end382.i_crit_edge, %for.inc.i130.if.end382.i_crit_edge, %if.then358.i.if.end382.i_crit_edge, %cond.false.i.if.end382.i_crit_edge
  %mask.3.i = phi i32 [ 0, %if.else.i131.if.end382.i_crit_edge ], [ 0, %cond.false.i.if.end382.i_crit_edge ], [ %or378.i, %for.body376.i.if.end382.i_crit_edge ], [ %mask.1.i, %for.inc.i130.if.end382.i_crit_edge ], [ %or.i, %if.then358.i.if.end382.i_crit_edge ]
  %158 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i.i133 = getelementptr i8, ptr %159, i32 176
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i133) #10, !srcloc !307
  %and.i.i134 = and i32 %160, -65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i133, i32 %and.i.i134) #10, !srcloc !303
  %dat_port.i135 = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 26
  %161 = ptrtoint ptr %dat_port.i135 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %dat_port.i135, align 2, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool383.not.i = icmp eq i8 %162, 0
  %spec.select4.i = select i1 %tobool383.not.i, i32 32776, i32 32768
  %163 = zext i32 %151 to i64
  call void @__sanitizer_cov_trace_switch(i64 %163, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %151, label %if.end382.i.if.end49_crit_edge [
    i32 0, label %if.then388.i
    i32 1, label %if.then394.i
  ]

if.end382.i.if.end49_crit_edge:                   ; preds = %if.end382.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then388.i:                                     ; preds = %if.end382.i
  call void @__sanitizer_cov_trace_pc() #12
  %164 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %165, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %mask.3.i) #10, !srcloc !303
  %166 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %167, i32 168
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #10, !srcloc !307
  %or.i.i136 = or i32 %168, %spec.select4.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %or.i.i136) #10, !srcloc !303
  %shl390.i = shl i32 %153, 7
  %169 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %170, i32 172
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #10, !srcloc !307
  %and.i11.i = and i32 %171, -65409
  %or.i12.i = or i32 %and.i11.i, %shl390.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %or.i12.i) #10, !srcloc !303
  br label %if.end49

if.then394.i:                                     ; preds = %if.end382.i
  %172 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %173, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %mask.3.i) #10, !srcloc !303
  %174 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %175, i32 104
  %176 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i) #10, !srcloc !307
  %or.i17.i = or i32 %176, %spec.select4.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 %or.i17.i) #10, !srcloc !303
  %shl396.i = shl i32 %153, 7
  %177 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %178, i32 108
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i) #10, !srcloc !307
  %and.i20.i = and i32 %179, -65409
  %or.i21.i = or i32 %and.i20.i, %shl396.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 %or.i21.i) #10, !srcloc !303
  %180 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %181, i32 108
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !307
  %183 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %184, i32 176
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i.i) #10, !srcloc !307
  %and.i22.i = and i32 %185, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i22.i)
  %tobool.not.i.i137 = icmp eq i32 %and.i22.i, 0
  %and2.i.i = and i32 %182, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0
  %186 = select i1 %tobool.not.i.i137, i1 %tobool3.i.i, i1 false
  br i1 %186, label %land.lhs.true.i, label %if.then394.i.if.end49_crit_edge

if.then394.i.if.end49_crit_edge:                  ; preds = %if.then394.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

land.lhs.true.i:                                  ; preds = %if.then394.i
  %channels399.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 27
  %187 = ptrtoint ptr %channels399.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %channels399.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool400.not.i = icmp eq i32 %188, 0
  br i1 %tobool400.not.i, label %if.then401.i, label %land.lhs.true.i.if.end49_crit_edge

land.lhs.true.i.if.end49_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then401.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %189 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %190, i32 172
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i) #10, !srcloc !307
  %and.i25.i = and i32 %191, -65409
  %or.i26.i = or i32 %and.i25.i, %shl396.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %or.i26.i) #10, !srcloc !303
  br label %if.end49

if.end46:                                         ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i113 = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 4
  %192 = ptrtoint ptr %dev.i113 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %dev.i113, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %193, ptr noundef nonnull @.str.125, i32 noundef %115) #13
  br label %cleanup

if.end49:                                         ; preds = %if.then401.i, %land.lhs.true.i.if.end49_crit_edge, %if.then394.i.if.end49_crit_edge, %if.then388.i, %if.end382.i.if.end49_crit_edge, %sw.epilog.i
  %sh_prom.i = zext i32 %word_length.0 to i64
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %194 = trunc i64 %notmask.i to i32
  %conv.i = xor i32 %194, -1
  %slot_width1.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 11
  %195 = ptrtoint ptr %slot_width1.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %slot_width1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool.not.i138 = icmp eq i32 %196, 0
  br i1 %tobool.not.i138, label %if.else.i139, label %if.end49.if.end7.i_crit_edge

if.end49.if.end7.i_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.else.i139:                                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %max_format_width.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 28
  %197 = ptrtoint ptr %max_format_width.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %max_format_width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool3.not.i = icmp eq i32 %198, 0
  %sample_width..i = select i1 %tobool3.not.i, i32 %word_length.0, i32 %198
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i139, %if.end49.if.end7.i_crit_edge
  %slot_width.0.i = phi i32 [ %196, %if.end49.if.end7.i_crit_edge ], [ %sample_width..i, %if.else.i139 ]
  %div12.i155 = lshr exact i32 %word_length.0, 2
  %199 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %op_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %200)
  %cmp19.not.i = icmp eq i8 %200, 1
  br i1 %cmp19.not.i, label %if.else24.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %201 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %dai_fmt, align 4
  %and.i141 = and i32 %202, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i141)
  %cmp.i142 = icmp eq i32 %and.i141, 2
  %sub14.i = sub i32 %slot_width.0.i, %word_length.0
  %div151.i = lshr i32 %sub14.i, 2
  %rx_rotate.0.i = select i1 %cmp.i142, i32 0, i32 %div151.i
  %div2.i = lshr i32 %slot_width.0.i, 2
  %tx_rotate.0.in.i = select i1 %cmp.i142, i32 %div2.i, i32 %div12.i155
  %tx_rotate.0.i = and i32 %tx_rotate.0.in.i, 7
  %203 = shl i32 %slot_width.0.i, 3
  %204 = add i32 %203, -16
  %shl22.i = and i32 %204, -16
  %205 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i.i144 = getelementptr i8, ptr %206, i32 104
  %207 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i144) #10, !srcloc !307
  %and.i.i145 = and i32 %207, -241
  %or.i.i146 = or i32 %and.i.i145, %shl22.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i144, i32 %or.i.i146) #10, !srcloc !303
  %208 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %209, i32 168
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #10, !srcloc !307
  %and.i5.i = and i32 %210, -241
  %or.i6.i = or i32 %and.i5.i, %shl22.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %or.i6.i) #10, !srcloc !303
  %211 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i8.i147 = getelementptr i8, ptr %212, i32 168
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i147) #10, !srcloc !307
  %and.i9.i = and i32 %213, -8
  %or.i10.i = or i32 %and.i9.i, %tx_rotate.0.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i147, i32 %or.i10.i) #10, !srcloc !303
  %214 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %215, i32 104
  %216 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #10, !srcloc !307
  %and.i13.i = and i32 %216, -8
  %or.i14.i = or i32 %and.i13.i, %rx_rotate.0.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %or.i14.i) #10, !srcloc !303
  %217 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i16.i148 = getelementptr i8, ptr %218, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i148, i32 %conv.i) #10, !srcloc !303
  br label %davinci_config_channel_size.exit

if.else24.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i149 = add nuw nsw i32 %div12.i155, 2
  %and26.i = and i32 %add.i149, 6
  %219 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %220, i32 168
  %221 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #10, !srcloc !307
  %and.i19.i = and i32 %221, -8
  %or.i20.i = or i32 %and.i19.i, %and26.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %or.i20.i) #10, !srcloc !303
  %222 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %223, i32 168
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i) #10, !srcloc !307
  %or.i24.i = or i32 %224, 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %or.i24.i) #10, !srcloc !303
  br label %davinci_config_channel_size.exit

davinci_config_channel_size.exit:                 ; preds = %if.else24.i, %if.then21.i
  %225 = ptrtoint ptr %base.i218.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %base.i218.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %226, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %conv.i) #10, !srcloc !303
  %227 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %op_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %228)
  %cmp53 = icmp eq i8 %228, 0
  br i1 %cmp53, label %if.then55, label %davinci_config_channel_size.exit.cleanup_crit_edge

davinci_config_channel_size.exit.cleanup_crit_edge: ; preds = %davinci_config_channel_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then55:                                        ; preds = %davinci_config_channel_size.exit
  %channels56 = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 27
  %229 = ptrtoint ptr %channels56 to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %5, ptr %channels56, align 4
  %max_format_width = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 28
  %230 = ptrtoint ptr %max_format_width to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %max_format_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %tobool57.not = icmp eq i32 %231, 0
  br i1 %tobool57.not, label %if.then58, label %if.then55.cleanup_crit_edge

if.then55.cleanup_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then58:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  %232 = ptrtoint ptr %max_format_width to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %word_length.0, ptr %max_format_width, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %if.then55.cleanup_crit_edge, %davinci_config_channel_size.exit.cleanup_crit_edge, %if.end46, %do.end102.i, %do.end.i, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call9, %sw.epilog.cleanup_crit_edge ], [ -22, %if.end46 ], [ 0, %if.then55.cleanup_crit_edge ], [ 0, %if.then58 ], [ 0, %davinci_config_channel_size.exit.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end102.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mcasp_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 6, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge41
    i32 4, label %entry.sw.bb_crit_edge42
    i32 5, label %entry.sw.bb1_crit_edge
    i32 0, label %entry.sw.bb1_crit_edge43
    i32 3, label %entry.sw.bb1_crit_edge44
  ]

entry.sw.bb1_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb_crit_edge42:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge41:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge41, %entry.sw.bb_crit_edge42
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %5 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stream, align 4
  %streams.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 18
  %7 = ptrtoint ptr %streams.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %streams.i, align 4
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %streams.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb
  %txnumevt.i.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 24
  %9 = ptrtoint ptr %txnumevt.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %txnumevt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %fifo_base.i.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %fifo_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fifo_base.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 %12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !307
  %and.i.i.i = and i32 %15, -65537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %and.i.i.i) #10, !srcloc !303
  %16 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i19.i.i = getelementptr i8, ptr %17, i32 %12
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i.i) #10, !srcloc !307
  %or.i.i.i = or i32 %18, 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i.i, i32 %or.i.i.i) #10, !srcloc !303
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %base.i.i.i.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %20, i32 160
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #10, !srcloc !307
  %or.i.i.i.i = or i32 %21, 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %or.i.i.i.i) #10, !srcloc !303
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.i
  %i.025.i.i.i = phi i32 [ 0, %if.end.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %22 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i20.i.i.i = getelementptr i8, ptr %23, i32 160
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i.i.i) #10, !srcloc !307
  %and.i20.i.i = and i32 %24, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i)
  %cmp1.i.not.i.i = icmp eq i32 %and.i20.i.i, 0
  br i1 %cmp1.i.not.i.i, label %for.inc.i.i.i, label %for.body.i.i.i.mcasp_set_ctl_reg.exit.i.i_crit_edge

for.body.i.i.i.mcasp_set_ctl_reg.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcasp_set_ctl_reg.exit.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.025.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 1000
  br i1 %exitcond.not.i.i.i, label %land.lhs.true.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.inc.i.i.i
  %25 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i22.i.i.i = getelementptr i8, ptr %26, i32 160
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i.i.i) #10, !srcloc !307
  %and4.i.i.i = and i32 %27, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i)
  %cmp5.not.i.not.i.i = icmp eq i32 %and4.i.i.i, 0
  br i1 %cmp5.not.i.not.i.i, label %do.end.i.i.i, label %land.lhs.true.i.i.i.mcasp_set_ctl_reg.exit.i.i_crit_edge

land.lhs.true.i.i.i.mcasp_set_ctl_reg.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcasp_set_ctl_reg.exit.i.i

do.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #13
  br label %mcasp_set_ctl_reg.exit.i.i

mcasp_set_ctl_reg.exit.i.i:                       ; preds = %do.end.i.i.i, %land.lhs.true.i.i.i.mcasp_set_ctl_reg.exit.i.i_crit_edge, %for.body.i.i.i.mcasp_set_ctl_reg.exit.i.i_crit_edge
  %28 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i22.i.i = getelementptr i8, ptr %29, i32 160
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i22.i.i) #10, !srcloc !307
  %or.i.i23.i.i = or i32 %30, 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i22.i.i, i32 %or.i.i23.i.i) #10, !srcloc !303
  br label %for.body.i28.i.i

for.body.i28.i.i:                                 ; preds = %for.inc.i31.i.i.for.body.i28.i.i_crit_edge, %mcasp_set_ctl_reg.exit.i.i
  %i.025.i24.i.i = phi i32 [ 0, %mcasp_set_ctl_reg.exit.i.i ], [ %inc.i29.i.i, %for.inc.i31.i.i.for.body.i28.i.i_crit_edge ]
  %31 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i20.i25.i.i = getelementptr i8, ptr %32, i32 160
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i25.i.i) #10, !srcloc !307
  %and.i26.i.i = and i32 %33, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26.i.i)
  %cmp1.i27.not.i.i = icmp eq i32 %and.i26.i.i, 0
  br i1 %cmp1.i27.not.i.i, label %for.inc.i31.i.i, label %for.body.i28.i.i.mcasp_set_ctl_reg.exit38.i.i_crit_edge

for.body.i28.i.i.mcasp_set_ctl_reg.exit38.i.i_crit_edge: ; preds = %for.body.i28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcasp_set_ctl_reg.exit38.i.i

for.inc.i31.i.i:                                  ; preds = %for.body.i28.i.i
  %inc.i29.i.i = add nuw nsw i32 %i.025.i24.i.i, 1
  %exitcond.not.i30.i.i = icmp eq i32 %inc.i29.i.i, 1000
  br i1 %exitcond.not.i30.i.i, label %land.lhs.true.i35.i.i, label %for.inc.i31.i.i.for.body.i28.i.i_crit_edge

for.inc.i31.i.i.for.body.i28.i.i_crit_edge:       ; preds = %for.inc.i31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i28.i.i

land.lhs.true.i35.i.i:                            ; preds = %for.inc.i31.i.i
  %34 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i22.i32.i.i = getelementptr i8, ptr %35, i32 160
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i32.i.i) #10, !srcloc !307
  %and4.i33.i.i = and i32 %36, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i33.i.i)
  %cmp5.not.i34.not.i.i = icmp eq i32 %and4.i33.i.i, 0
  br i1 %cmp5.not.i34.not.i.i, label %do.end.i37.i.i, label %land.lhs.true.i35.i.i.mcasp_set_ctl_reg.exit38.i.i_crit_edge

land.lhs.true.i35.i.i.mcasp_set_ctl_reg.exit38.i.i_crit_edge: ; preds = %land.lhs.true.i35.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcasp_set_ctl_reg.exit38.i.i

do.end.i37.i.i:                                   ; preds = %land.lhs.true.i35.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i36.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #13
  br label %mcasp_set_ctl_reg.exit38.i.i

mcasp_set_ctl_reg.exit38.i.i:                     ; preds = %do.end.i37.i.i, %land.lhs.true.i35.i.i.mcasp_set_ctl_reg.exit38.i.i_crit_edge, %for.body.i28.i.i.mcasp_set_ctl_reg.exit38.i.i_crit_edge
  %pdir.i.i.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 23
  %call.i.i.i = tail call i32 @_find_next_bit_be(ptr noundef %pdir.i.i.i, i32 noundef 32, i32 noundef 25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i.i.i)
  %cmp13.i.i.i = icmp ult i32 %call.i.i.i, 32
  br i1 %cmp13.i.i.i, label %mcasp_set_ctl_reg.exit38.i.i.for.body.i40.i.i_crit_edge, label %mcasp_set_ctl_reg.exit38.i.i.mcasp_set_clk_pdir.exit.i.i_crit_edge

mcasp_set_ctl_reg.exit38.i.i.mcasp_set_clk_pdir.exit.i.i_crit_edge: ; preds = %mcasp_set_ctl_reg.exit38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcasp_set_clk_pdir.exit.i.i

mcasp_set_ctl_reg.exit38.i.i.for.body.i40.i.i_crit_edge: ; preds = %mcasp_set_ctl_reg.exit38.i.i
  br label %for.body.i40.i.i

for.body.i40.i.i:                                 ; preds = %for.body.i40.i.i.for.body.i40.i.i_crit_edge, %mcasp_set_ctl_reg.exit38.i.i.for.body.i40.i.i_crit_edge
  %bit.014.i.i.i = phi i32 [ %call3.i.i.i, %for.body.i40.i.i.for.body.i40.i.i_crit_edge ], [ %call.i.i.i, %mcasp_set_ctl_reg.exit38.i.i.for.body.i40.i.i_crit_edge ]
  %shl.i.i.i = shl nuw i32 1, %bit.014.i.i.i
  %37 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i39.i.i = getelementptr i8, ptr %38, i32 20
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i39.i.i) #10
  %or.i.i41.i.i = or i32 %39, %shl.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i39.i.i, i32 %or.i.i41.i.i) #10, !srcloc !303
  %add.i.i.i = add nuw nsw i32 %bit.014.i.i.i, 1
  %call3.i.i.i = tail call i32 @_find_next_bit_be(ptr noundef %pdir.i.i.i, i32 noundef 32, i32 noundef %add.i.i.i) #10
  %cmp.i.i.i = icmp ult i32 %call3.i.i.i, 32
  br i1 %cmp.i.i.i, label %for.body.i40.i.i.for.body.i40.i.i_crit_edge, label %for.body.i40.i.i.mcasp_set_clk_pdir.exit.i.i_crit_edge

for.body.i40.i.i.mcasp_set_clk_pdir.exit.i.i_crit_edge: ; preds = %for.body.i40.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcasp_set_clk_pdir.exit.i.i

for.body.i40.i.i.for.body.i40.i.i_crit_edge:      ; preds = %for.body.i40.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i40.i.i

mcasp_set_clk_pdir.exit.i.i:                      ; preds = %for.body.i40.i.i.mcasp_set_clk_pdir.exit.i.i_crit_edge, %mcasp_set_ctl_reg.exit38.i.i.mcasp_set_clk_pdir.exit.i.i_crit_edge
  %40 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i44.i.i = getelementptr i8, ptr %41, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i.i, i32 -1) #10, !srcloc !303
  %42 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i46.i.i = getelementptr i8, ptr %43, i32 160
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i46.i.i) #10, !srcloc !307
  %or.i.i47.i.i = or i32 %44, 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i46.i.i, i32 %or.i.i47.i.i) #10, !srcloc !303
  br label %for.body.i52.i.i

for.body.i52.i.i:                                 ; preds = %for.inc.i55.i.i.for.body.i52.i.i_crit_edge, %mcasp_set_clk_pdir.exit.i.i
  %i.025.i48.i.i = phi i32 [ 0, %mcasp_set_clk_pdir.exit.i.i ], [ %inc.i53.i.i, %for.inc.i55.i.i.for.body.i52.i.i_crit_edge ]
  %45 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i20.i49.i.i = getelementptr i8, ptr %46, i32 160
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i49.i.i) #10, !srcloc !307
  %and.i50.i.i = and i32 %47, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i50.i.i)
  %cmp1.i51.not.i.i = icmp eq i32 %and.i50.i.i, 0
  br i1 %cmp1.i51.not.i.i, label %for.inc.i55.i.i, label %for.body.i52.i.i.while.cond.i.i.preheader_crit_edge

for.body.i52.i.i.while.cond.i.i.preheader_crit_edge: ; preds = %for.body.i52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i.preheader

for.inc.i55.i.i:                                  ; preds = %for.body.i52.i.i
  %inc.i53.i.i = add nuw nsw i32 %i.025.i48.i.i, 1
  %exitcond.not.i54.i.i = icmp eq i32 %inc.i53.i.i, 1000
  br i1 %exitcond.not.i54.i.i, label %land.lhs.true.i59.i.i, label %for.inc.i55.i.i.for.body.i52.i.i_crit_edge

for.inc.i55.i.i.for.body.i52.i.i_crit_edge:       ; preds = %for.inc.i55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i52.i.i

land.lhs.true.i59.i.i:                            ; preds = %for.inc.i55.i.i
  %48 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i22.i56.i.i = getelementptr i8, ptr %49, i32 160
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i56.i.i) #10, !srcloc !307
  %and4.i57.i.i = and i32 %50, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i57.i.i)
  %cmp5.not.i58.not.i.i = icmp eq i32 %and4.i57.i.i, 0
  br i1 %cmp5.not.i58.not.i.i, label %do.end.i61.i.i, label %land.lhs.true.i59.i.i.while.cond.i.i.preheader_crit_edge

land.lhs.true.i59.i.i.while.cond.i.i.preheader_crit_edge: ; preds = %land.lhs.true.i59.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i.preheader

do.end.i61.i.i:                                   ; preds = %land.lhs.true.i59.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i60.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #13
  br label %while.cond.i.i.preheader

while.cond.i.i.preheader:                         ; preds = %do.end.i61.i.i, %land.lhs.true.i59.i.i.while.cond.i.i.preheader_crit_edge, %for.body.i52.i.i.while.cond.i.i.preheader_crit_edge
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %while.cond.i.i.preheader
  %cnt.0.i.i = phi i32 [ %inc.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ], [ 0, %while.cond.i.i.preheader ]
  %51 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i64.i.i = getelementptr i8, ptr %52, i32 192
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64.i.i) #10, !srcloc !307
  %and.i.i = and i32 %53, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp ne i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %cnt.0.i.i)
  %cmp.i.i = icmp ult i32 %cnt.0.i.i, 100000
  %or.cond.i.i = select i1 %tobool1.not.i.i, i1 %cmp.i.i, i1 false
  %inc.i.i = add nuw nsw i32 %cnt.0.i.i, 1
  br i1 %or.cond.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge, label %while.end.i.i

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %call.i66.i.i = tail call i32 @_find_next_bit_be(ptr noundef %pdir.i.i.i, i32 noundef 25, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %call.i66.i.i)
  %cmp12.i.i.i = icmp ult i32 %call.i66.i.i, 25
  br i1 %cmp12.i.i.i, label %while.end.i.i.for.body.i70.i.i_crit_edge, label %while.end.i.i.mcasp_set_axr_pdir.exit.i.i_crit_edge

while.end.i.i.mcasp_set_axr_pdir.exit.i.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcasp_set_axr_pdir.exit.i.i

while.end.i.i.for.body.i70.i.i_crit_edge:         ; preds = %while.end.i.i
  br label %for.body.i70.i.i

for.body.i70.i.i:                                 ; preds = %for.body.i70.i.i.for.body.i70.i.i_crit_edge, %while.end.i.i.for.body.i70.i.i_crit_edge
  %bit.013.i.i.i = phi i32 [ %call3.i73.i.i, %for.body.i70.i.i.for.body.i70.i.i_crit_edge ], [ %call.i66.i.i, %while.end.i.i.for.body.i70.i.i_crit_edge ]
  %shl.i68.i.i = shl nuw nsw i32 1, %bit.013.i.i.i
  %54 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i69.i.i = getelementptr i8, ptr %55, i32 20
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i69.i.i) #10
  %or.i.i71.i.i = or i32 %56, %shl.i68.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i69.i.i, i32 %or.i.i71.i.i) #10, !srcloc !303
  %add.i72.i.i = add nuw nsw i32 %bit.013.i.i.i, 1
  %call3.i73.i.i = tail call i32 @_find_next_bit_be(ptr noundef %pdir.i.i.i, i32 noundef 25, i32 noundef %add.i72.i.i) #10
  %cmp.i74.i.i = icmp ult i32 %call3.i73.i.i, 25
  br i1 %cmp.i74.i.i, label %for.body.i70.i.i.for.body.i70.i.i_crit_edge, label %for.body.i70.i.i.mcasp_set_axr_pdir.exit.i.i_crit_edge

for.body.i70.i.i.mcasp_set_axr_pdir.exit.i.i_crit_edge: ; preds = %for.body.i70.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcasp_set_axr_pdir.exit.i.i

for.body.i70.i.i.for.body.i70.i.i_crit_edge:      ; preds = %for.body.i70.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i70.i.i

mcasp_set_axr_pdir.exit.i.i:                      ; preds = %for.body.i70.i.i.mcasp_set_axr_pdir.exit.i.i_crit_edge, %while.end.i.i.mcasp_set_axr_pdir.exit.i.i_crit_edge
  %57 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i77.i.i = getelementptr i8, ptr %58, i32 160
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i77.i.i) #10, !srcloc !307
  %or.i.i78.i.i = or i32 %59, 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i77.i.i, i32 %or.i.i78.i.i) #10, !srcloc !303
  br label %for.body.i83.i.i

for.body.i83.i.i:                                 ; preds = %for.inc.i86.i.i.for.body.i83.i.i_crit_edge, %mcasp_set_axr_pdir.exit.i.i
  %i.025.i79.i.i = phi i32 [ 0, %mcasp_set_axr_pdir.exit.i.i ], [ %inc.i84.i.i, %for.inc.i86.i.i.for.body.i83.i.i_crit_edge ]
  %60 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i20.i80.i.i = getelementptr i8, ptr %61, i32 160
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i80.i.i) #10, !srcloc !307
  %and.i81.i.i = and i32 %62, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i81.i.i)
  %cmp1.i82.not.i.i = icmp eq i32 %and.i81.i.i, 0
  br i1 %cmp1.i82.not.i.i, label %for.inc.i86.i.i, label %for.body.i83.i.i.mcasp_set_ctl_reg.exit93.i.i_crit_edge

for.body.i83.i.i.mcasp_set_ctl_reg.exit93.i.i_crit_edge: ; preds = %for.body.i83.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcasp_set_ctl_reg.exit93.i.i

for.inc.i86.i.i:                                  ; preds = %for.body.i83.i.i
  %inc.i84.i.i = add nuw nsw i32 %i.025.i79.i.i, 1
  %exitcond.not.i85.i.i = icmp eq i32 %inc.i84.i.i, 1000
  br i1 %exitcond.not.i85.i.i, label %land.lhs.true.i90.i.i, label %for.inc.i86.i.i.for.body.i83.i.i_crit_edge

for.inc.i86.i.i.for.body.i83.i.i_crit_edge:       ; preds = %for.inc.i86.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i83.i.i

land.lhs.true.i90.i.i:                            ; preds = %for.inc.i86.i.i
  %63 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i22.i87.i.i = getelementptr i8, ptr %64, i32 160
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i87.i.i) #10, !srcloc !307
  %and4.i88.i.i = and i32 %65, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i88.i.i)
  %cmp5.not.i89.not.i.i = icmp eq i32 %and4.i88.i.i, 0
  br i1 %cmp5.not.i89.not.i.i, label %do.end.i92.i.i, label %land.lhs.true.i90.i.i.mcasp_set_ctl_reg.exit93.i.i_crit_edge

land.lhs.true.i90.i.i.mcasp_set_ctl_reg.exit93.i.i_crit_edge: ; preds = %land.lhs.true.i90.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcasp_set_ctl_reg.exit93.i.i

do.end.i92.i.i:                                   ; preds = %land.lhs.true.i90.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i91.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #13
  br label %mcasp_set_ctl_reg.exit93.i.i

mcasp_set_ctl_reg.exit93.i.i:                     ; preds = %do.end.i92.i.i, %land.lhs.true.i90.i.i.mcasp_set_ctl_reg.exit93.i.i_crit_edge, %for.body.i83.i.i.mcasp_set_ctl_reg.exit93.i.i_crit_edge
  %66 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i95.i.i = getelementptr i8, ptr %67, i32 160
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i95.i.i) #10, !srcloc !307
  %or.i.i96.i.i = or i32 %68, 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i95.i.i, i32 %or.i.i96.i.i) #10, !srcloc !303
  br label %for.body.i101.i.i

for.body.i101.i.i:                                ; preds = %for.inc.i104.i.i.for.body.i101.i.i_crit_edge, %mcasp_set_ctl_reg.exit93.i.i
  %i.025.i97.i.i = phi i32 [ 0, %mcasp_set_ctl_reg.exit93.i.i ], [ %inc.i102.i.i, %for.inc.i104.i.i.for.body.i101.i.i_crit_edge ]
  %69 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i20.i98.i.i = getelementptr i8, ptr %70, i32 160
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i98.i.i) #10, !srcloc !307
  %and.i99.i.i = and i32 %71, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i99.i.i)
  %cmp1.i100.not.i.i = icmp eq i32 %and.i99.i.i, 0
  br i1 %cmp1.i100.not.i.i, label %for.inc.i104.i.i, label %for.body.i101.i.i.mcasp_start_tx.exit.i_crit_edge

for.body.i101.i.i.mcasp_start_tx.exit.i_crit_edge: ; preds = %for.body.i101.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcasp_start_tx.exit.i

for.inc.i104.i.i:                                 ; preds = %for.body.i101.i.i
  %inc.i102.i.i = add nuw nsw i32 %i.025.i97.i.i, 1
  %exitcond.not.i103.i.i = icmp eq i32 %inc.i102.i.i, 1000
  br i1 %exitcond.not.i103.i.i, label %land.lhs.true.i108.i.i, label %for.inc.i104.i.i.for.body.i101.i.i_crit_edge

for.inc.i104.i.i.for.body.i101.i.i_crit_edge:     ; preds = %for.inc.i104.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i101.i.i

land.lhs.true.i108.i.i:                           ; preds = %for.inc.i104.i.i
  %72 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i22.i105.i.i = getelementptr i8, ptr %73, i32 160
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i105.i.i) #10, !srcloc !307
  %and4.i106.i.i = and i32 %74, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i106.i.i)
  %cmp5.not.i107.not.i.i = icmp eq i32 %and4.i106.i.i, 0
  br i1 %cmp5.not.i107.not.i.i, label %do.end.i110.i.i, label %land.lhs.true.i108.i.i.mcasp_start_tx.exit.i_crit_edge

land.lhs.true.i108.i.i.mcasp_start_tx.exit.i_crit_edge: ; preds = %land.lhs.true.i108.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcasp_start_tx.exit.i

do.end.i110.i.i:                                  ; preds = %land.lhs.true.i108.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i109.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #13
  br label %mcasp_start_tx.exit.i

mcasp_start_tx.exit.i:                            ; preds = %do.end.i110.i.i, %land.lhs.true.i108.i.i.mcasp_start_tx.exit.i_crit_edge, %for.body.i101.i.i.mcasp_start_tx.exit.i_crit_edge
  %irq_request.i.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 19
  %75 = ptrtoint ptr %irq_request.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %irq_request.i.i, align 4
  %77 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i113.i.i = getelementptr i8, ptr %78, i32 188
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113.i.i) #10, !srcloc !307
  %or.i114.i.i = or i32 %79, %76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113.i.i, i32 %or.i114.i.i) #10, !srcloc !303
  br label %sw.epilog

if.else.i:                                        ; preds = %sw.bb
  %rxnumevt.i.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 25
  %80 = ptrtoint ptr %rxnumevt.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %rxnumevt.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i3.i = icmp eq i8 %81, 0
  br i1 %tobool.not.i3.i, label %if.else.i.if.end.i13.i_crit_edge, label %if.then.i9.i

if.else.i.if.end.i13.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i13.i

if.then.i9.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %fifo_base.i4.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 3
  %82 = ptrtoint ptr %fifo_base.i4.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %fifo_base.i4.i, align 4
  %add.i.i = add i32 %83, 8
  %base.i.i5.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 2
  %84 = ptrtoint ptr %base.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base.i.i5.i, align 4
  %add.ptr.i.i6.i = getelementptr i8, ptr %85, i32 %add.i.i
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i6.i) #10, !srcloc !307
  %and.i.i7.i = and i32 %86, -65537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i6.i, i32 %and.i.i7.i) #10, !srcloc !303
  %87 = ptrtoint ptr %base.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base.i.i5.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %88, i32 %add.i.i
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25.i.i) #10, !srcloc !307
  %or.i.i8.i = or i32 %89, 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 %or.i.i8.i) #10, !srcloc !303
  br label %if.end.i13.i

if.end.i13.i:                                     ; preds = %if.then.i9.i, %if.else.i.if.end.i13.i_crit_edge
  %base.i.i.i10.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 2
  %90 = ptrtoint ptr %base.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base.i.i.i10.i, align 4
  %add.ptr.i.i.i11.i = getelementptr i8, ptr %91, i32 96
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i11.i) #10, !srcloc !307
  %or.i.i.i12.i = or i32 %92, 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i11.i, i32 %or.i.i.i12.i) #10, !srcloc !303
  br label %for.body.i.i18.i

for.body.i.i18.i:                                 ; preds = %for.inc.i.i21.i.for.body.i.i18.i_crit_edge, %if.end.i13.i
  %i.025.i.i14.i = phi i32 [ 0, %if.end.i13.i ], [ %inc.i.i19.i, %for.inc.i.i21.i.for.body.i.i18.i_crit_edge ]
  %93 = ptrtoint ptr %base.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %base.i.i.i10.i, align 4
  %add.ptr.i20.i.i15.i = getelementptr i8, ptr %94, i32 96
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i.i15.i) #10, !srcloc !307
  %and.i26.i16.i = and i32 %95, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26.i16.i)
  %cmp1.i.not.i17.i = icmp eq i32 %and.i26.i16.i, 0
  br i1 %cmp1.i.not.i17.i, label %for.inc.i.i21.i, label %for.body.i.i18.i.mcasp_set_ctl_reg.exit.i28.i_crit_edge

for.body.i.i18.i.mcasp_set_ctl_reg.exit.i28.i_crit_edge: ; preds = %for.body.i.i18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcasp_set_ctl_reg.exit.i28.i

for.inc.i.i21.i:                                  ; preds = %for.body.i.i18.i
  %inc.i.i19.i = add nuw nsw i32 %i.025.i.i14.i, 1
  %exitcond.not.i.i20.i = icmp eq i32 %inc.i.i19.i, 1000
  br i1 %exitcond.not.i.i20.i, label %land.lhs.true.i.i25.i, label %for.inc.i.i21.i.for.body.i.i18.i_crit_edge

for.inc.i.i21.i.for.body.i.i18.i_crit_edge:       ; preds = %for.inc.i.i21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i18.i

land.lhs.true.i.i25.i:                            ; preds = %for.inc.i.i21.i
  %96 = ptrtoint ptr %base.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base.i.i.i10.i, align 4
  %add.ptr.i22.i.i22.i = getelementptr i8, ptr %97, i32 96
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i.i22.i) #10, !srcloc !307
  %and4.i.i23.i = and i32 %98, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i23.i)
  %cmp5.not.i.not.i24.i = icmp eq i32 %and4.i.i23.i, 0
  br i1 %cmp5.not.i.not.i24.i, label %do.end.i.i27.i, label %land.lhs.true.i.i25.i.mcasp_set_ctl_reg.exit.i28.i_crit_edge

land.lhs.true.i.i25.i.mcasp_set_ctl_reg.exit.i28.i_crit_edge: ; preds = %land.lhs.true.i.i25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcasp_set_ctl_reg.exit.i28.i

do.end.i.i27.i:                                   ; preds = %land.lhs.true.i.i25.i
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i.i26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #13
  br label %mcasp_set_ctl_reg.exit.i28.i

mcasp_set_ctl_reg.exit.i28.i:                     ; preds = %do.end.i.i27.i, %land.lhs.true.i.i25.i.mcasp_set_ctl_reg.exit.i28.i_crit_edge, %for.body.i.i18.i.mcasp_set_ctl_reg.exit.i28.i_crit_edge
  %99 = ptrtoint ptr %base.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %base.i.i.i10.i, align 4
  %add.ptr.i.i28.i.i = getelementptr i8, ptr %100, i32 96
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i28.i.i) #10, !srcloc !307
  %or.i.i29.i.i = or i32 %101, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i28.i.i, i32 %or.i.i29.i.i) #10, !srcloc !303
  br label %for.body.i34.i.i

for.body.i34.i.i:                                 ; preds = %for.inc.i37.i.i.for.body.i34.i.i_crit_edge, %mcasp_set_ctl_reg.exit.i28.i
  %i.025.i30.i.i = phi i32 [ 0, %mcasp_set_ctl_reg.exit.i28.i ], [ %inc.i35.i.i, %for.inc.i37.i.i.for.body.i34.i.i_crit_edge ]
  %102 = ptrtoint ptr %base.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base.i.i.i10.i, align 4
  %add.ptr.i20.i31.i.i = getelementptr i8, ptr %103, i32 96
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i31.i.i) #10, !srcloc !307
  %and.i32.i.i = and i32 %104, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i.i)
  %cmp1.i33.not.i.i = icmp eq i32 %and.i32.i.i, 0
  br i1 %cmp1.i33.not.i.i, label %for.inc.i37.i.i, label %for.body.i34.i.i.mcasp_set_ctl_reg.exit44.i.i_crit_edge

for.body.i34.i.i.mcasp_set_ctl_reg.exit44.i.i_crit_edge: ; preds = %for.body.i34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcasp_set_ctl_reg.exit44.i.i

for.inc.i37.i.i:                                  ; preds = %for.body.i34.i.i
  %inc.i35.i.i = add nuw nsw i32 %i.025.i30.i.i, 1
  %exitcond.not.i36.i.i = icmp eq i32 %inc.i35.i.i, 1000
  br i1 %exitcond.not.i36.i.i, label %land.lhs.true.i41.i.i, label %for.inc.i37.i.i.for.body.i34.i.i_crit_edge

for.inc.i37.i.i.for.body.i34.i.i_crit_edge:       ; preds = %for.inc.i37.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i34.i.i

land.lhs.true.i41.i.i:                            ; preds = %for.inc.i37.i.i
  %105 = ptrtoint ptr %base.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %base.i.i.i10.i, align 4
  %add.ptr.i22.i38.i.i = getelementptr i8, ptr %106, i32 96
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i38.i.i) #10, !srcloc !307
  %and4.i39.i.i = and i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i39.i.i)
  %cmp5.not.i40.not.i.i = icmp eq i32 %and4.i39.i.i, 0
  br i1 %cmp5.not.i40.not.i.i, label %do.end.i43.i.i, label %land.lhs.true.i41.i.i.mcasp_set_ctl_reg.exit44.i.i_crit_edge

land.lhs.true.i41.i.i.mcasp_set_ctl_reg.exit44.i.i_crit_edge: ; preds = %land.lhs.true.i41.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcasp_set_ctl_reg.exit44.i.i

do.end.i43.i.i:                                   ; preds = %land.lhs.true.i41.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i42.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #13
  br label %mcasp_set_ctl_reg.exit44.i.i

mcasp_set_ctl_reg.exit44.i.i:                     ; preds = %do.end.i43.i.i, %land.lhs.true.i41.i.i.mcasp_set_ctl_reg.exit44.i.i_crit_edge, %for.body.i34.i.i.mcasp_set_ctl_reg.exit44.i.i_crit_edge
  %108 = ptrtoint ptr %base.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %base.i.i.i10.i, align 4
  %add.ptr.i.i46.i29.i = getelementptr i8, ptr %109, i32 108
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i46.i29.i) #10, !srcloc !307
  %111 = ptrtoint ptr %base.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %base.i.i.i10.i, align 4
  %add.ptr.i6.i.i.i = getelementptr i8, ptr %112, i32 176
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i.i.i) #10, !srcloc !307
  %and.i47.i.i = and i32 %113, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i47.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i47.i.i, 0
  %and2.i.i.i = and i32 %110, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.i.i.i = icmp ne i32 %and2.i.i.i, 0
  %114 = select i1 %tobool.not.i.i.i, i1 %tobool3.i.i.i, i1 false
  br i1 %114, label %if.then1.i.i, label %mcasp_set_ctl_reg.exit44.i.i.if.end2.i.i_crit_edge

mcasp_set_ctl_reg.exit44.i.i.if.end2.i.i_crit_edge: ; preds = %mcasp_set_ctl_reg.exit44.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2.i.i

if.then1.i.i:                                     ; preds = %mcasp_set_ctl_reg.exit44.i.i
  %115 = ptrtoint ptr %base.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %base.i.i.i10.i, align 4
  %add.ptr.i.i49.i.i = getelementptr i8, ptr %116, i32 160
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i49.i.i) #10, !srcloc !307
  %or.i.i50.i.i = or i32 %117, 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i49.i.i, i32 %or.i.i50.i.i) #10, !srcloc !303
  br label %for.body.i55.i.i

for.body.i55.i.i:                                 ; preds = %for.inc.i58.i.i.for.body.i55.i.i_crit_edge, %if.then1.i.i
  %i.025.i51.i.i = phi i32 [ 0, %if.then1.i.i ], [ %inc.i56.i.i, %for.inc.i58.i.i.for.body.i55.i.i_crit_edge ]
  %118 = ptrtoint ptr %base.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %base.i.i.i10.i, align 4
  %add.ptr.i20.i52.i.i = getelementptr i8, ptr %119, i32 160
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i52.i.i) #10, !srcloc !307
  %and.i53.i.i = and i32 %120, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53.i.i)
  %cmp1.i54.not.i.i = icmp eq i32 %and.i53.i.i, 0
  br i1 %cmp1.i54.not.i.i, label %for.inc.i58.i.i, label %for.body.i55.i.i.mcasp_set_ctl_reg.exit65.i.i_crit_edge

for.body.i55.i.i.mcasp_set_ctl_reg.exit65.i.i_crit_edge: ; preds = %for.body.i55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcasp_set_ctl_reg.exit65.i.i

for.inc.i58.i.i:                                  ; preds = %for.body.i55.i.i
  %inc.i56.i.i = add nuw nsw i32 %i.025.i51.i.i, 1
  %exitcond.not.i57.i.i = icmp eq i32 %inc.i56.i.i, 1000
  br i1 %exitcond.not.i57.i.i, label %land.lhs.true.i62.i.i, label %for.inc.i58.i.i.for.body.i55.i.i_crit_edge

for.inc.i58.i.i.for.body.i55.i.i_crit_edge:       ; preds = %for.inc.i58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i55.i.i

land.lhs.true.i62.i.i:                            ; preds = %for.inc.i58.i.i
  %121 = ptrtoint ptr %base.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %base.i.i.i10.i, align 4
  %add.ptr.i22.i59.i.i = getelementptr i8, ptr %122, i32 160
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i59.i.i) #10, !srcloc !307
  %and4.i60.i.i = and i32 %123, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i60.i.i)
  %cmp5.not.i61.not.i.i = icmp eq i32 %and4.i60.i.i, 0
  br i1 %cmp5.not.i61.not.i.i, label %do.end.i64.i.i, label %land.lhs.true.i62.i.i.mcasp_set_ctl_reg.exit65.i.i_crit_edge

land.lhs.true.i62.i.i.mcasp_set_ctl_reg.exit65.i.i_crit_edge: ; preds = %land.lhs.true.i62.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcasp_set_ctl_reg.exit65.i.i

do.end.i64.i.i:                                   ; preds = %land.lhs.true.i62.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i63.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #13
  br label %mcasp_set_ctl_reg.exit65.i.i

mcasp_set_ctl_reg.exit65.i.i:                     ; preds = %do.end.i64.i.i, %land.lhs.true.i62.i.i.mcasp_set_ctl_reg.exit65.i.i_crit_edge, %for.body.i55.i.i.mcasp_set_ctl_reg.exit65.i.i_crit_edge
  %124 = ptrtoint ptr %base.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %base.i.i.i10.i, align 4
  %add.ptr.i.i67.i.i = getelementptr i8, ptr %125, i32 160
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i67.i.i) #10, !srcloc !307
  %or.i.i68.i.i = or i32 %126, 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i67.i.i, i32 %or.i.i68.i.i) #10, !srcloc !303
  br label %for.body.i73.i.i

for.body.i73.i.i:                                 ; preds = %for.inc.i76.i.i.for.body.i73.i.i_crit_edge, %mcasp_set_ctl_reg.exit65.i.i
  %i.025.i69.i.i = phi i32 [ 0, %mcasp_set_ctl_reg.exit65.i.i ], [ %inc.i74.i.i, %for.inc.i76.i.i.for.body.i73.i.i_crit_edge ]
  %127 = ptrtoint ptr %base.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %base.i.i.i10.i, align 4
  %add.ptr.i20.i70.i.i = getelementptr i8, ptr %128, i32 160
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i70.i.i) #10, !srcloc !307
  %and.i71.i.i = and i32 %129, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i71.i.i)
  %cmp1.i72.not.i.i = icmp eq i32 %and.i71.i.i, 0
  br i1 %cmp1.i72.not.i.i, label %for.inc.i76.i.i, label %for.body.i73.i.i.mcasp_set_ctl_reg.exit83.i.i_crit_edge

for.body.i73.i.i.mcasp_set_ctl_reg.exit83.i.i_crit_edge: ; preds = %for.body.i73.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcasp_set_ctl_reg.exit83.i.i

for.inc.i76.i.i:                                  ; preds = %for.body.i73.i.i
  %inc.i74.i.i = add nuw nsw i32 %i.025.i69.i.i, 1
  %exitcond.not.i75.i.i = icmp eq i32 %inc.i74.i.i, 1000
  br i1 %exitcond.not.i75.i.i, label %land.lhs.true.i80.i.i, label %for.inc.i76.i.i.for.body.i73.i.i_crit_edge

for.inc.i76.i.i.for.body.i73.i.i_crit_edge:       ; preds = %for.inc.i76.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i73.i.i

land.lhs.true.i80.i.i:                            ; preds = %for.inc.i76.i.i
  %130 = ptrtoint ptr %base.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %base.i.i.i10.i, align 4
  %add.ptr.i22.i77.i.i = getelementptr i8, ptr %131, i32 160
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i77.i.i) #10, !srcloc !307
  %and4.i78.i.i = and i32 %132, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i78.i.i)
  %cmp5.not.i79.not.i.i = icmp eq i32 %and4.i78.i.i, 0
  br i1 %cmp5.not.i79.not.i.i, label %do.end.i82.i.i, label %land.lhs.true.i80.i.i.mcasp_set_ctl_reg.exit83.i.i_crit_edge

land.lhs.true.i80.i.i.mcasp_set_ctl_reg.exit83.i.i_crit_edge: ; preds = %land.lhs.true.i80.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcasp_set_ctl_reg.exit83.i.i

do.end.i82.i.i:                                   ; preds = %land.lhs.true.i80.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i81.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #13
  br label %mcasp_set_ctl_reg.exit83.i.i

mcasp_set_ctl_reg.exit83.i.i:                     ; preds = %do.end.i82.i.i, %land.lhs.true.i80.i.i.mcasp_set_ctl_reg.exit83.i.i_crit_edge, %for.body.i73.i.i.mcasp_set_ctl_reg.exit83.i.i_crit_edge
  %pdir.i.i30.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 23
  %call.i.i31.i = tail call i32 @_find_next_bit_be(ptr noundef %pdir.i.i30.i, i32 noundef 32, i32 noundef 25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i.i31.i)
  %cmp13.i.i32.i = icmp ult i32 %call.i.i31.i, 32
  br i1 %cmp13.i.i32.i, label %mcasp_set_ctl_reg.exit83.i.i.for.body.i85.i.i_crit_edge, label %mcasp_set_ctl_reg.exit83.i.i.if.end2.i.i_crit_edge

mcasp_set_ctl_reg.exit83.i.i.if.end2.i.i_crit_edge: ; preds = %mcasp_set_ctl_reg.exit83.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2.i.i

mcasp_set_ctl_reg.exit83.i.i.for.body.i85.i.i_crit_edge: ; preds = %mcasp_set_ctl_reg.exit83.i.i
  br label %for.body.i85.i.i

for.body.i85.i.i:                                 ; preds = %for.body.i85.i.i.for.body.i85.i.i_crit_edge, %mcasp_set_ctl_reg.exit83.i.i.for.body.i85.i.i_crit_edge
  %bit.014.i.i33.i = phi i32 [ %call3.i.i36.i, %for.body.i85.i.i.for.body.i85.i.i_crit_edge ], [ %call.i.i31.i, %mcasp_set_ctl_reg.exit83.i.i.for.body.i85.i.i_crit_edge ]
  %shl.i.i34.i = shl nuw i32 1, %bit.014.i.i33.i
  %133 = ptrtoint ptr %base.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %base.i.i.i10.i, align 4
  %add.ptr.i.i84.i.i = getelementptr i8, ptr %134, i32 20
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i84.i.i) #10
  %or.i.i86.i.i = or i32 %135, %shl.i.i34.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i84.i.i, i32 %or.i.i86.i.i) #10, !srcloc !303
  %add.i.i35.i = add nuw nsw i32 %bit.014.i.i33.i, 1
  %call3.i.i36.i = tail call i32 @_find_next_bit_be(ptr noundef %pdir.i.i30.i, i32 noundef 32, i32 noundef %add.i.i35.i) #10
  %cmp.i.i37.i = icmp ult i32 %call3.i.i36.i, 32
  br i1 %cmp.i.i37.i, label %for.body.i85.i.i.for.body.i85.i.i_crit_edge, label %for.body.i85.i.i.if.end2.i.i_crit_edge

for.body.i85.i.i.if.end2.i.i_crit_edge:           ; preds = %for.body.i85.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2.i.i

for.body.i85.i.i.for.body.i85.i.i_crit_edge:      ; preds = %for.body.i85.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i85.i.i

if.end2.i.i:                                      ; preds = %for.body.i85.i.i.if.end2.i.i_crit_edge, %mcasp_set_ctl_reg.exit83.i.i.if.end2.i.i_crit_edge, %mcasp_set_ctl_reg.exit44.i.i.if.end2.i.i_crit_edge
  %136 = ptrtoint ptr %base.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %base.i.i.i10.i, align 4
  %add.ptr.i89.i.i = getelementptr i8, ptr %137, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89.i.i, i32 -1) #10, !srcloc !303
  %138 = ptrtoint ptr %base.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %base.i.i.i10.i, align 4
  %add.ptr.i.i91.i.i = getelementptr i8, ptr %139, i32 96
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i91.i.i) #10, !srcloc !307
  %or.i.i92.i.i = or i32 %140, 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i91.i.i, i32 %or.i.i92.i.i) #10, !srcloc !303
  br label %for.body.i97.i.i

for.body.i97.i.i:                                 ; preds = %for.inc.i100.i.i.for.body.i97.i.i_crit_edge, %if.end2.i.i
  %i.025.i93.i.i = phi i32 [ 0, %if.end2.i.i ], [ %inc.i98.i.i, %for.inc.i100.i.i.for.body.i97.i.i_crit_edge ]
  %141 = ptrtoint ptr %base.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %base.i.i.i10.i, align 4
  %add.ptr.i20.i94.i.i = getelementptr i8, ptr %142, i32 96
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i94.i.i) #10, !srcloc !307
  %and.i95.i.i = and i32 %143, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i95.i.i)
  %cmp1.i96.not.i.i = icmp eq i32 %and.i95.i.i, 0
  br i1 %cmp1.i96.not.i.i, label %for.inc.i100.i.i, label %for.body.i97.i.i.mcasp_set_ctl_reg.exit107.i.i_crit_edge

for.body.i97.i.i.mcasp_set_ctl_reg.exit107.i.i_crit_edge: ; preds = %for.body.i97.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcasp_set_ctl_reg.exit107.i.i

for.inc.i100.i.i:                                 ; preds = %for.body.i97.i.i
  %inc.i98.i.i = add nuw nsw i32 %i.025.i93.i.i, 1
  %exitcond.not.i99.i.i = icmp eq i32 %inc.i98.i.i, 1000
  br i1 %exitcond.not.i99.i.i, label %land.lhs.true.i104.i.i, label %for.inc.i100.i.i.for.body.i97.i.i_crit_edge

for.inc.i100.i.i.for.body.i97.i.i_crit_edge:      ; preds = %for.inc.i100.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i97.i.i

land.lhs.true.i104.i.i:                           ; preds = %for.inc.i100.i.i
  %144 = ptrtoint ptr %base.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %base.i.i.i10.i, align 4
  %add.ptr.i22.i101.i.i = getelementptr i8, ptr %145, i32 96
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i101.i.i) #10, !srcloc !307
  %and4.i102.i.i = and i32 %146, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i102.i.i)
  %cmp5.not.i103.not.i.i = icmp eq i32 %and4.i102.i.i, 0
  br i1 %cmp5.not.i103.not.i.i, label %do.end.i106.i.i, label %land.lhs.true.i104.i.i.mcasp_set_ctl_reg.exit107.i.i_crit_edge

land.lhs.true.i104.i.i.mcasp_set_ctl_reg.exit107.i.i_crit_edge: ; preds = %land.lhs.true.i104.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcasp_set_ctl_reg.exit107.i.i

do.end.i106.i.i:                                  ; preds = %land.lhs.true.i104.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i105.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #13
  br label %mcasp_set_ctl_reg.exit107.i.i

mcasp_set_ctl_reg.exit107.i.i:                    ; preds = %do.end.i106.i.i, %land.lhs.true.i104.i.i.mcasp_set_ctl_reg.exit107.i.i_crit_edge, %for.body.i97.i.i.mcasp_set_ctl_reg.exit107.i.i_crit_edge
  %147 = ptrtoint ptr %base.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %base.i.i.i10.i, align 4
  %add.ptr.i.i109.i.i = getelementptr i8, ptr %148, i32 96
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i109.i.i) #10, !srcloc !307
  %or.i.i110.i.i = or i32 %149, 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i109.i.i, i32 %or.i.i110.i.i) #10, !srcloc !303
  br label %for.body.i115.i.i

for.body.i115.i.i:                                ; preds = %for.inc.i118.i.i.for.body.i115.i.i_crit_edge, %mcasp_set_ctl_reg.exit107.i.i
  %i.025.i111.i.i = phi i32 [ 0, %mcasp_set_ctl_reg.exit107.i.i ], [ %inc.i116.i.i, %for.inc.i118.i.i.for.body.i115.i.i_crit_edge ]
  %150 = ptrtoint ptr %base.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %base.i.i.i10.i, align 4
  %add.ptr.i20.i112.i.i = getelementptr i8, ptr %151, i32 96
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i112.i.i) #10, !srcloc !307
  %and.i113.i.i = and i32 %152, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i113.i.i)
  %cmp1.i114.not.i.i = icmp eq i32 %and.i113.i.i, 0
  br i1 %cmp1.i114.not.i.i, label %for.inc.i118.i.i, label %for.body.i115.i.i.mcasp_set_ctl_reg.exit125.i.i_crit_edge

for.body.i115.i.i.mcasp_set_ctl_reg.exit125.i.i_crit_edge: ; preds = %for.body.i115.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcasp_set_ctl_reg.exit125.i.i

for.inc.i118.i.i:                                 ; preds = %for.body.i115.i.i
  %inc.i116.i.i = add nuw nsw i32 %i.025.i111.i.i, 1
  %exitcond.not.i117.i.i = icmp eq i32 %inc.i116.i.i, 1000
  br i1 %exitcond.not.i117.i.i, label %land.lhs.true.i122.i.i, label %for.inc.i118.i.i.for.body.i115.i.i_crit_edge

for.inc.i118.i.i.for.body.i115.i.i_crit_edge:     ; preds = %for.inc.i118.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i115.i.i

land.lhs.true.i122.i.i:                           ; preds = %for.inc.i118.i.i
  %153 = ptrtoint ptr %base.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %base.i.i.i10.i, align 4
  %add.ptr.i22.i119.i.i = getelementptr i8, ptr %154, i32 96
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i119.i.i) #10, !srcloc !307
  %and4.i120.i.i = and i32 %155, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i120.i.i)
  %cmp5.not.i121.not.i.i = icmp eq i32 %and4.i120.i.i, 0
  br i1 %cmp5.not.i121.not.i.i, label %do.end.i124.i.i, label %land.lhs.true.i122.i.i.mcasp_set_ctl_reg.exit125.i.i_crit_edge

land.lhs.true.i122.i.i.mcasp_set_ctl_reg.exit125.i.i_crit_edge: ; preds = %land.lhs.true.i122.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcasp_set_ctl_reg.exit125.i.i

do.end.i124.i.i:                                  ; preds = %land.lhs.true.i122.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i123.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #13
  br label %mcasp_set_ctl_reg.exit125.i.i

mcasp_set_ctl_reg.exit125.i.i:                    ; preds = %do.end.i124.i.i, %land.lhs.true.i122.i.i.mcasp_set_ctl_reg.exit125.i.i_crit_edge, %for.body.i115.i.i.mcasp_set_ctl_reg.exit125.i.i_crit_edge
  %156 = ptrtoint ptr %base.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %base.i.i.i10.i, align 4
  %add.ptr.i.i127.i.i = getelementptr i8, ptr %157, i32 96
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i127.i.i) #10, !srcloc !307
  %or.i.i128.i.i = or i32 %158, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i127.i.i, i32 %or.i.i128.i.i) #10, !srcloc !303
  br label %for.body.i133.i.i

for.body.i133.i.i:                                ; preds = %for.inc.i136.i.i.for.body.i133.i.i_crit_edge, %mcasp_set_ctl_reg.exit125.i.i
  %i.025.i129.i.i = phi i32 [ 0, %mcasp_set_ctl_reg.exit125.i.i ], [ %inc.i134.i.i, %for.inc.i136.i.i.for.body.i133.i.i_crit_edge ]
  %159 = ptrtoint ptr %base.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %base.i.i.i10.i, align 4
  %add.ptr.i20.i130.i.i = getelementptr i8, ptr %160, i32 96
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i130.i.i) #10, !srcloc !307
  %and.i131.i.i = and i32 %161, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i131.i.i)
  %cmp1.i132.not.i.i = icmp eq i32 %and.i131.i.i, 0
  br i1 %cmp1.i132.not.i.i, label %for.inc.i136.i.i, label %for.body.i133.i.i.mcasp_set_ctl_reg.exit143.i.i_crit_edge

for.body.i133.i.i.mcasp_set_ctl_reg.exit143.i.i_crit_edge: ; preds = %for.body.i133.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcasp_set_ctl_reg.exit143.i.i

for.inc.i136.i.i:                                 ; preds = %for.body.i133.i.i
  %inc.i134.i.i = add nuw nsw i32 %i.025.i129.i.i, 1
  %exitcond.not.i135.i.i = icmp eq i32 %inc.i134.i.i, 1000
  br i1 %exitcond.not.i135.i.i, label %land.lhs.true.i140.i.i, label %for.inc.i136.i.i.for.body.i133.i.i_crit_edge

for.inc.i136.i.i.for.body.i133.i.i_crit_edge:     ; preds = %for.inc.i136.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i133.i.i

land.lhs.true.i140.i.i:                           ; preds = %for.inc.i136.i.i
  %162 = ptrtoint ptr %base.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %base.i.i.i10.i, align 4
  %add.ptr.i22.i137.i.i = getelementptr i8, ptr %163, i32 96
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i137.i.i) #10, !srcloc !307
  %and4.i138.i.i = and i32 %164, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i138.i.i)
  %cmp5.not.i139.not.i.i = icmp eq i32 %and4.i138.i.i, 0
  br i1 %cmp5.not.i139.not.i.i, label %do.end.i142.i.i, label %land.lhs.true.i140.i.i.mcasp_set_ctl_reg.exit143.i.i_crit_edge

land.lhs.true.i140.i.i.mcasp_set_ctl_reg.exit143.i.i_crit_edge: ; preds = %land.lhs.true.i140.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcasp_set_ctl_reg.exit143.i.i

do.end.i142.i.i:                                  ; preds = %land.lhs.true.i140.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i141.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #13
  br label %mcasp_set_ctl_reg.exit143.i.i

mcasp_set_ctl_reg.exit143.i.i:                    ; preds = %do.end.i142.i.i, %land.lhs.true.i140.i.i.mcasp_set_ctl_reg.exit143.i.i_crit_edge, %for.body.i133.i.i.mcasp_set_ctl_reg.exit143.i.i_crit_edge
  %165 = ptrtoint ptr %base.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %base.i.i.i10.i, align 4
  %add.ptr.i.i145.i.i = getelementptr i8, ptr %166, i32 108
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i145.i.i) #10, !srcloc !307
  %168 = ptrtoint ptr %base.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %base.i.i.i10.i, align 4
  %add.ptr.i6.i146.i.i = getelementptr i8, ptr %169, i32 176
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i146.i.i) #10, !srcloc !307
  %and.i147.i.i = and i32 %170, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i147.i.i)
  %tobool.not.i148.i.i = icmp eq i32 %and.i147.i.i, 0
  %and2.i149.i.i = and i32 %167, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i149.i.i)
  %tobool3.i150.i.i = icmp ne i32 %and2.i149.i.i, 0
  %171 = select i1 %tobool.not.i148.i.i, i1 %tobool3.i150.i.i, i1 false
  br i1 %171, label %if.then4.i.i, label %mcasp_set_ctl_reg.exit143.i.i.mcasp_start_rx.exit.i_crit_edge

mcasp_set_ctl_reg.exit143.i.i.mcasp_start_rx.exit.i_crit_edge: ; preds = %mcasp_set_ctl_reg.exit143.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcasp_start_rx.exit.i

if.then4.i.i:                                     ; preds = %mcasp_set_ctl_reg.exit143.i.i
  %172 = ptrtoint ptr %base.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %base.i.i.i10.i, align 4
  %add.ptr.i.i152.i.i = getelementptr i8, ptr %173, i32 160
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i152.i.i) #10, !srcloc !307
  %or.i.i153.i.i = or i32 %174, 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i152.i.i, i32 %or.i.i153.i.i) #10, !srcloc !303
  br label %for.body.i158.i.i

for.body.i158.i.i:                                ; preds = %for.inc.i161.i.i.for.body.i158.i.i_crit_edge, %if.then4.i.i
  %i.025.i154.i.i = phi i32 [ 0, %if.then4.i.i ], [ %inc.i159.i.i, %for.inc.i161.i.i.for.body.i158.i.i_crit_edge ]
  %175 = ptrtoint ptr %base.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %base.i.i.i10.i, align 4
  %add.ptr.i20.i155.i.i = getelementptr i8, ptr %176, i32 160
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i155.i.i) #10, !srcloc !307
  %and.i156.i.i = and i32 %177, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i156.i.i)
  %cmp1.i157.not.i.i = icmp eq i32 %and.i156.i.i, 0
  br i1 %cmp1.i157.not.i.i, label %for.inc.i161.i.i, label %for.body.i158.i.i.mcasp_start_rx.exit.i_crit_edge

for.body.i158.i.i.mcasp_start_rx.exit.i_crit_edge: ; preds = %for.body.i158.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcasp_start_rx.exit.i

for.inc.i161.i.i:                                 ; preds = %for.body.i158.i.i
  %inc.i159.i.i = add nuw nsw i32 %i.025.i154.i.i, 1
  %exitcond.not.i160.i.i = icmp eq i32 %inc.i159.i.i, 1000
  br i1 %exitcond.not.i160.i.i, label %land.lhs.true.i165.i.i, label %for.inc.i161.i.i.for.body.i158.i.i_crit_edge

for.inc.i161.i.i.for.body.i158.i.i_crit_edge:     ; preds = %for.inc.i161.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i158.i.i

land.lhs.true.i165.i.i:                           ; preds = %for.inc.i161.i.i
  %178 = ptrtoint ptr %base.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %base.i.i.i10.i, align 4
  %add.ptr.i22.i162.i.i = getelementptr i8, ptr %179, i32 160
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i162.i.i) #10, !srcloc !307
  %and4.i163.i.i = and i32 %180, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i163.i.i)
  %cmp5.not.i164.not.i.i = icmp eq i32 %and4.i163.i.i, 0
  br i1 %cmp5.not.i164.not.i.i, label %do.end.i167.i.i, label %land.lhs.true.i165.i.i.mcasp_start_rx.exit.i_crit_edge

land.lhs.true.i165.i.i.mcasp_start_rx.exit.i_crit_edge: ; preds = %land.lhs.true.i165.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcasp_start_rx.exit.i

do.end.i167.i.i:                                  ; preds = %land.lhs.true.i165.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i166.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #13
  br label %mcasp_start_rx.exit.i

mcasp_start_rx.exit.i:                            ; preds = %do.end.i167.i.i, %land.lhs.true.i165.i.i.mcasp_start_rx.exit.i_crit_edge, %for.body.i158.i.i.mcasp_start_rx.exit.i_crit_edge, %mcasp_set_ctl_reg.exit143.i.i.mcasp_start_rx.exit.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.davinci_mcasp, ptr %3, i32 0, i32 19, i32 1
  %181 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx.i.i, align 4
  %183 = ptrtoint ptr %base.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %base.i.i.i10.i, align 4
  %add.ptr.i170.i.i = getelementptr i8, ptr %184, i32 124
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i170.i.i) #10, !srcloc !307
  %or.i171.i.i = or i32 %185, %182
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170.i.i, i32 %or.i171.i.i) #10, !srcloc !303
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge43, %entry.sw.bb1_crit_edge44
  %stream2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %186 = ptrtoint ptr %stream2 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %stream2, align 4
  %streams.i5 = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 18
  %188 = ptrtoint ptr %streams.i5 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %streams.i5, align 4
  %dec.i = add i32 %189, -1
  store i32 %dec.i, ptr %streams.i5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %cmp.i6 = icmp eq i32 %187, 0
  br i1 %cmp.i6, label %if.then.i16, label %if.else.i36

if.then.i16:                                      ; preds = %sw.bb1
  %irq_request.i.i7 = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 19
  %190 = ptrtoint ptr %irq_request.i.i7 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %irq_request.i.i7, align 4
  %base.i.i.i8 = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 2
  %192 = ptrtoint ptr %base.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %base.i.i.i8, align 4
  %add.ptr.i.i.i9 = getelementptr i8, ptr %193, i32 188
  %194 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i9) #10, !srcloc !307
  %neg.i.i.i = xor i32 %191, -1
  %and.i.i.i10 = and i32 %194, %neg.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i9, i32 %and.i.i.i10) #10, !srcloc !303
  %195 = ptrtoint ptr %base.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %base.i.i.i8, align 4
  %add.ptr.i.i.i.i11 = getelementptr i8, ptr %196, i32 108
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i11) #10, !srcloc !307
  %198 = ptrtoint ptr %base.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %base.i.i.i8, align 4
  %add.ptr.i6.i.i.i12 = getelementptr i8, ptr %199, i32 176
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i.i.i12) #10, !srcloc !307
  %and.i14.i.i = and i32 %200, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i14.i.i)
  %tobool.not.i.i.i13 = icmp eq i32 %and.i14.i.i, 0
  %and2.i.i.i14 = and i32 %197, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i14)
  %tobool3.i.i.i15 = icmp ne i32 %and2.i.i.i14, 0
  %201 = select i1 %tobool.not.i.i.i13, i1 %tobool3.i.i.i15, i1 false
  br i1 %201, label %land.lhs.true.i.i, label %if.then.i16.if.else.i.i_crit_edge

if.then.i16.if.else.i.i_crit_edge:                ; preds = %if.then.i16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i16
  %202 = ptrtoint ptr %streams.i5 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %streams.i5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %tobool.not.i.i17 = icmp eq i32 %203, 0
  br i1 %tobool.not.i.i17, label %land.lhs.true.i.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i.if.end.i.i30_crit_edge

land.lhs.true.i.i.if.end.i.i30_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i30

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.then.i16.if.else.i.i_crit_edge
  %pdir.i.i.i18 = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 23
  %call.i.i.i19 = tail call i32 @_find_next_bit_be(ptr noundef %pdir.i.i.i18, i32 noundef 32, i32 noundef 25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i.i.i19)
  %cmp13.i.i.i20 = icmp ult i32 %call.i.i.i19, 32
  br i1 %cmp13.i.i.i20, label %if.else.i.i.for.body.i.i.i26_crit_edge, label %if.else.i.i.if.end.i.i30_crit_edge

if.else.i.i.if.end.i.i30_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i30

if.else.i.i.for.body.i.i.i26_crit_edge:           ; preds = %if.else.i.i
  br label %for.body.i.i.i26

for.body.i.i.i26:                                 ; preds = %for.body.i.i.i26.for.body.i.i.i26_crit_edge, %if.else.i.i.for.body.i.i.i26_crit_edge
  %bit.014.i.i.i21 = phi i32 [ %call3.i.i.i24, %for.body.i.i.i26.for.body.i.i.i26_crit_edge ], [ %call.i.i.i19, %if.else.i.i.for.body.i.i.i26_crit_edge ]
  %shl.i.i.i22 = shl nuw i32 1, %bit.014.i.i.i21
  %204 = ptrtoint ptr %base.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %base.i.i.i8, align 4
  %add.ptr.i.i15.i.i = getelementptr i8, ptr %205, i32 20
  %206 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i15.i.i) #10
  %neg.i.i.i.i = xor i32 %shl.i.i.i22, -1
  %and.i.i.i.i = and i32 %206, %neg.i.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i15.i.i, i32 %and.i.i.i.i) #10, !srcloc !303
  %add.i.i.i23 = add nuw nsw i32 %bit.014.i.i.i21, 1
  %call3.i.i.i24 = tail call i32 @_find_next_bit_be(ptr noundef %pdir.i.i.i18, i32 noundef 32, i32 noundef %add.i.i.i23) #10
  %cmp.i.i.i25 = icmp ult i32 %call3.i.i.i24, 32
  br i1 %cmp.i.i.i25, label %for.body.i.i.i26.for.body.i.i.i26_crit_edge, label %for.body.i.i.i26.if.end.i.i30_crit_edge

for.body.i.i.i26.if.end.i.i30_crit_edge:          ; preds = %for.body.i.i.i26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i30

for.body.i.i.i26.for.body.i.i.i26_crit_edge:      ; preds = %for.body.i.i.i26
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i26

if.end.i.i30:                                     ; preds = %for.body.i.i.i26.if.end.i.i30_crit_edge, %if.else.i.i.if.end.i.i30_crit_edge, %land.lhs.true.i.i.if.end.i.i30_crit_edge
  %val.0.i.i = phi i32 [ 4864, %land.lhs.true.i.i.if.end.i.i30_crit_edge ], [ 0, %if.else.i.i.if.end.i.i30_crit_edge ], [ 0, %for.body.i.i.i26.if.end.i.i30_crit_edge ]
  %207 = ptrtoint ptr %base.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %base.i.i.i8, align 4
  %add.ptr.i17.i.i = getelementptr i8, ptr %208, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i.i, i32 %val.0.i.i) #10, !srcloc !303
  %209 = ptrtoint ptr %base.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %base.i.i.i8, align 4
  %add.ptr.i19.i.i27 = getelementptr i8, ptr %210, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i.i27, i32 -1) #10, !srcloc !303
  %txnumevt.i.i28 = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 24
  %211 = ptrtoint ptr %txnumevt.i.i28 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %txnumevt.i.i28, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %212)
  %tobool1.not.i.i29 = icmp eq i8 %212, 0
  br i1 %tobool1.not.i.i29, label %if.end.i.i30.if.end3.i.i_crit_edge, label %if.then2.i.i

if.end.i.i30.if.end3.i.i_crit_edge:               ; preds = %if.end.i.i30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i30
  call void @__sanitizer_cov_trace_pc() #12
  %fifo_base.i.i31 = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 3
  %213 = ptrtoint ptr %fifo_base.i.i31 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %fifo_base.i.i31, align 4
  %215 = ptrtoint ptr %base.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %base.i.i.i8, align 4
  %add.ptr.i21.i.i = getelementptr i8, ptr %216, i32 %214
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i.i) #10, !srcloc !307
  %and.i22.i.i = and i32 %217, -65537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i.i, i32 %and.i22.i.i) #10, !srcloc !303
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.then2.i.i, %if.end.i.i30.if.end3.i.i_crit_edge
  %pdir.i23.i.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 23
  %call.i24.i.i = tail call i32 @_find_next_bit_be(ptr noundef %pdir.i23.i.i, i32 noundef 25, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %call.i24.i.i)
  %cmp12.i.i.i32 = icmp ult i32 %call.i24.i.i, 25
  br i1 %cmp12.i.i.i32, label %if.end3.i.i.for.body.i28.i.i34_crit_edge, label %if.end3.i.i.sw.epilog_crit_edge

if.end3.i.i.sw.epilog_crit_edge:                  ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end3.i.i.for.body.i28.i.i34_crit_edge:         ; preds = %if.end3.i.i
  br label %for.body.i28.i.i34

for.body.i28.i.i34:                               ; preds = %for.body.i28.i.i34.for.body.i28.i.i34_crit_edge, %if.end3.i.i.for.body.i28.i.i34_crit_edge
  %bit.013.i.i.i33 = phi i32 [ %call3.i32.i.i, %for.body.i28.i.i34.for.body.i28.i.i34_crit_edge ], [ %call.i24.i.i, %if.end3.i.i.for.body.i28.i.i34_crit_edge ]
  %shl.i26.i.i = shl nuw nsw i32 1, %bit.013.i.i.i33
  %218 = ptrtoint ptr %base.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %base.i.i.i8, align 4
  %add.ptr.i.i27.i.i = getelementptr i8, ptr %219, i32 20
  %220 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i27.i.i) #10
  %neg.i.i29.i.i = xor i32 %shl.i26.i.i, -1
  %and.i.i30.i.i = and i32 %220, %neg.i.i29.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i27.i.i, i32 %and.i.i30.i.i) #10, !srcloc !303
  %add.i31.i.i = add nuw nsw i32 %bit.013.i.i.i33, 1
  %call3.i32.i.i = tail call i32 @_find_next_bit_be(ptr noundef %pdir.i23.i.i, i32 noundef 25, i32 noundef %add.i31.i.i) #10
  %cmp.i33.i.i = icmp ult i32 %call3.i32.i.i, 25
  br i1 %cmp.i33.i.i, label %for.body.i28.i.i34.for.body.i28.i.i34_crit_edge, label %for.body.i28.i.i34.sw.epilog_crit_edge

for.body.i28.i.i34.sw.epilog_crit_edge:           ; preds = %for.body.i28.i.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.body.i28.i.i34.for.body.i28.i.i34_crit_edge:  ; preds = %for.body.i28.i.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i28.i.i34

if.else.i36:                                      ; preds = %sw.bb1
  %arrayidx.i.i35 = getelementptr %struct.davinci_mcasp, ptr %3, i32 0, i32 19, i32 1
  %221 = ptrtoint ptr %arrayidx.i.i35 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %arrayidx.i.i35, align 4
  %base.i.i3.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 2
  %223 = ptrtoint ptr %base.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %base.i.i3.i, align 4
  %add.ptr.i.i4.i = getelementptr i8, ptr %224, i32 124
  %225 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i4.i) #10, !srcloc !307
  %neg.i.i5.i = xor i32 %222, -1
  %and.i.i6.i = and i32 %225, %neg.i.i5.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i4.i, i32 %and.i.i6.i) #10, !srcloc !303
  %226 = ptrtoint ptr %base.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %base.i.i3.i, align 4
  %add.ptr.i.i.i7.i = getelementptr i8, ptr %227, i32 108
  %228 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i7.i) #10, !srcloc !307
  %229 = ptrtoint ptr %base.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %base.i.i3.i, align 4
  %add.ptr.i6.i.i8.i = getelementptr i8, ptr %230, i32 176
  %231 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i.i8.i) #10, !srcloc !307
  %and.i14.i9.i = and i32 %231, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i14.i9.i)
  %tobool.not.i.i10.i = icmp eq i32 %and.i14.i9.i, 0
  %and2.i.i11.i = and i32 %228, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i11.i)
  %tobool3.i.i12.i = icmp ne i32 %and2.i.i11.i, 0
  %232 = select i1 %tobool.not.i.i10.i, i1 %tobool3.i.i12.i, i1 false
  br i1 %232, label %land.lhs.true.i15.i, label %if.else.i36.if.end.i32.i_crit_edge

if.else.i36.if.end.i32.i_crit_edge:               ; preds = %if.else.i36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i32.i

land.lhs.true.i15.i:                              ; preds = %if.else.i36
  %233 = ptrtoint ptr %streams.i5 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %streams.i5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %234)
  %tobool.not.i14.i = icmp eq i32 %234, 0
  br i1 %tobool.not.i14.i, label %if.then.i.i37, label %land.lhs.true.i15.i.if.end.i32.i_crit_edge

land.lhs.true.i15.i.if.end.i32.i_crit_edge:       ; preds = %land.lhs.true.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i32.i

if.then.i.i37:                                    ; preds = %land.lhs.true.i15.i
  %pdir.i.i16.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 23
  %call.i.i17.i = tail call i32 @_find_next_bit_be(ptr noundef %pdir.i.i16.i, i32 noundef 32, i32 noundef 25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i.i17.i)
  %cmp13.i.i18.i = icmp ult i32 %call.i.i17.i, 32
  br i1 %cmp13.i.i18.i, label %if.then.i.i37.for.body.i.i27.i_crit_edge, label %if.then.i.i37.mcasp_set_clk_pdir.exit.i.i38_crit_edge

if.then.i.i37.mcasp_set_clk_pdir.exit.i.i38_crit_edge: ; preds = %if.then.i.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcasp_set_clk_pdir.exit.i.i38

if.then.i.i37.for.body.i.i27.i_crit_edge:         ; preds = %if.then.i.i37
  br label %for.body.i.i27.i

for.body.i.i27.i:                                 ; preds = %for.body.i.i27.i.for.body.i.i27.i_crit_edge, %if.then.i.i37.for.body.i.i27.i_crit_edge
  %bit.014.i.i19.i = phi i32 [ %call3.i.i25.i, %for.body.i.i27.i.for.body.i.i27.i_crit_edge ], [ %call.i.i17.i, %if.then.i.i37.for.body.i.i27.i_crit_edge ]
  %shl.i.i20.i = shl nuw i32 1, %bit.014.i.i19.i
  %235 = ptrtoint ptr %base.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %base.i.i3.i, align 4
  %add.ptr.i.i15.i21.i = getelementptr i8, ptr %236, i32 20
  %237 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i15.i21.i) #10
  %neg.i.i.i22.i = xor i32 %shl.i.i20.i, -1
  %and.i.i.i23.i = and i32 %237, %neg.i.i.i22.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i15.i21.i, i32 %and.i.i.i23.i) #10, !srcloc !303
  %add.i.i24.i = add nuw nsw i32 %bit.014.i.i19.i, 1
  %call3.i.i25.i = tail call i32 @_find_next_bit_be(ptr noundef %pdir.i.i16.i, i32 noundef 32, i32 noundef %add.i.i24.i) #10
  %cmp.i.i26.i = icmp ult i32 %call3.i.i25.i, 32
  br i1 %cmp.i.i26.i, label %for.body.i.i27.i.for.body.i.i27.i_crit_edge, label %for.body.i.i27.i.mcasp_set_clk_pdir.exit.i.i38_crit_edge

for.body.i.i27.i.mcasp_set_clk_pdir.exit.i.i38_crit_edge: ; preds = %for.body.i.i27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcasp_set_clk_pdir.exit.i.i38

for.body.i.i27.i.for.body.i.i27.i_crit_edge:      ; preds = %for.body.i.i27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i27.i

mcasp_set_clk_pdir.exit.i.i38:                    ; preds = %for.body.i.i27.i.mcasp_set_clk_pdir.exit.i.i38_crit_edge, %if.then.i.i37.mcasp_set_clk_pdir.exit.i.i38_crit_edge
  %238 = ptrtoint ptr %base.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %base.i.i3.i, align 4
  %add.ptr.i17.i28.i = getelementptr i8, ptr %239, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i28.i, i32 0) #10, !srcloc !303
  br label %if.end.i32.i

if.end.i32.i:                                     ; preds = %mcasp_set_clk_pdir.exit.i.i38, %land.lhs.true.i15.i.if.end.i32.i_crit_edge, %if.else.i36.if.end.i32.i_crit_edge
  %240 = ptrtoint ptr %base.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %base.i.i3.i, align 4
  %add.ptr.i19.i29.i = getelementptr i8, ptr %241, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i29.i, i32 0) #10, !srcloc !303
  %242 = ptrtoint ptr %base.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %base.i.i3.i, align 4
  %add.ptr.i21.i30.i = getelementptr i8, ptr %243, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i30.i, i32 -1) #10, !srcloc !303
  %rxnumevt.i.i39 = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 25
  %244 = ptrtoint ptr %rxnumevt.i.i39 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %rxnumevt.i.i39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %245)
  %tobool1.not.i31.i = icmp eq i8 %245, 0
  br i1 %tobool1.not.i31.i, label %if.end.i32.i.sw.epilog_crit_edge, label %if.then2.i34.i

if.end.i32.i.sw.epilog_crit_edge:                 ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then2.i34.i:                                   ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #12
  %fifo_base.i33.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 3
  %246 = ptrtoint ptr %fifo_base.i33.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %fifo_base.i33.i, align 4
  %add.i.i40 = add i32 %247, 8
  %248 = ptrtoint ptr %base.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %base.i.i3.i, align 4
  %add.ptr.i23.i.i = getelementptr i8, ptr %249, i32 %add.i.i40
  %250 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i.i) #10, !srcloc !307
  %and.i24.i.i = and i32 %250, -65537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i.i, i32 %and.i24.i.i) #10, !srcloc !303
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then2.i34.i, %if.end.i32.i.sw.epilog_crit_edge, %for.body.i28.i.i34.sw.epilog_crit_edge, %if.end3.i.i.sw.epilog_crit_edge, %mcasp_start_rx.exit.i, %mcasp_start_tx.exit.i, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ 0, %mcasp_start_tx.exit.i ], [ 0, %mcasp_start_rx.exit.i ], [ 0, %if.end3.i.i.sw.epilog_crit_edge ], [ 0, %if.end.i32.i.sw.epilog_crit_edge ], [ 0, %if.then2.i34.i ], [ 0, %for.body.i28.i.i34.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mcasp_delay(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
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
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %txnumevt.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 24
  %6 = ptrtoint ptr %txnumevt.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %txnumevt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %fifo_base.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %fifo_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fifo_base.i, align 4
  %add.i = add i32 %9, 4
  %base.i.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %add.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !307
  br label %if.end

if.else:                                          ; preds = %entry
  %rxnumevt.i = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 25
  %13 = ptrtoint ptr %rxnumevt.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rxnumevt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i5 = icmp eq i8 %14, 0
  br i1 %tobool.not.i5, label %if.else.if.end_crit_edge, label %if.end.i10

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i10:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %fifo_base.i6 = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %fifo_base.i6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fifo_base.i6, align 4
  %add.i7 = add i32 %16, 12
  %base.i.i8 = getelementptr inbounds %struct.davinci_mcasp, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %base.i.i8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i8, align 4
  %add.ptr.i.i9 = getelementptr i8, ptr %18, i32 %add.i7
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9) #10, !srcloc !307
  br label %if.end

if.end:                                           ; preds = %if.end.i10, %if.else.if.end_crit_edge, %if.end.i, %if.then.if.end_crit_edge
  %fifo_use.0 = phi i32 [ %12, %if.end.i ], [ 0, %if.then.if.end_crit_edge ], [ %19, %if.end.i10 ], [ 0, %if.else.if.end_crit_edge ]
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %20 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %runtime, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 15
  %22 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channels, align 8
  %div = udiv i32 %fifo_use.0, %23
  ret i32 %div
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mcasp_hw_rule_format_width(ptr nocapture noundef %params, ptr nocapture noundef readonly %rule) #2 align 64 {
entry:
  %old.i = alloca %struct.snd_mask, align 4
  %nfmt = alloca %struct.snd_mask, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nfmt) #10
  %2 = getelementptr inbounds [8 x i32], ptr %nfmt, i32 0, i32 1
  %3 = call ptr @memset(ptr %nfmt, i32 0, i32 32)
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %max_format_width = getelementptr inbounds %struct.davinci_mcasp, ptr %5, i32 0, i32 28
  %6 = ptrtoint ptr %max_format_width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_format_width, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.017 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %shr.i = lshr i32 %i.017, 5
  %arrayidx.i12 = getelementptr [8 x i32], ptr %arrayidx.i, i32 0, i32 %shr.i
  %8 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i12, align 4
  %and.i = and i32 %i.017, 31
  %shl.i = shl nuw i32 1, %and.i
  %and1.i = and i32 %9, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  %call2 = tail call i32 @snd_pcm_format_width(i32 noundef %i.017) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %7)
  %cmp3 = icmp eq i32 %call2, %7
  br i1 %cmp3, label %if.then4, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i16 = getelementptr [8 x i32], ptr %nfmt, i32 0, i32 %shr.i
  %10 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i16, align 4
  %or.i = or i32 %11, %shl.i
  store i32 %or.i, ptr %arrayidx.i16, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, 53
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %old.i) #10
  %12 = call ptr @memcpy(ptr %old.i, ptr %arrayidx.i, i32 32)
  %13 = ptrtoint ptr %nfmt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nfmt, align 4
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %and.i.i = and i32 %16, %14
  store i32 %and.i.i, ptr %arrayidx.i, align 4
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %2, align 4
  %arrayidx2.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx2.1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx2.1.i.i, align 4
  %and.1.i.i = and i32 %20, %18
  store i32 %and.1.i.i, ptr %arrayidx2.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool.not.1.i.not.i = icmp eq i32 %and.1.i.i, 0
  %or.cond.i = select i1 %tobool.not.i.i, i1 %tobool.not.1.i.not.i, i1 false
  br i1 %or.cond.i, label %for.end.snd_mask_refine.exit_crit_edge, label %if.end.i

for.end.snd_mask_refine.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_mask_refine.exit

if.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(8) %arrayidx.i, ptr noundef nonnull dereferenceable(8) %old.i, i32 8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i7.i = icmp ne i32 %bcmp.i.i, 0
  %lnot.ext.i = zext i1 %tobool.not.i7.i to i32
  br label %snd_mask_refine.exit

snd_mask_refine.exit:                             ; preds = %if.end.i, %for.end.snd_mask_refine.exit_crit_edge
  %retval.0.i = phi i32 [ %lnot.ext.i, %if.end.i ], [ -22, %for.end.snd_mask_refine.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %old.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nfmt) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mcasp_hw_rule_slot_width(ptr nocapture noundef %params, ptr nocapture noundef readonly %rule) #2 align 64 {
entry:
  %old.i = alloca %struct.snd_mask, align 4
  %nfmt = alloca %struct.snd_mask, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nfmt) #10
  %2 = getelementptr inbounds [8 x i32], ptr %nfmt, i32 0, i32 1
  %3 = call ptr @memset(ptr %nfmt, i32 0, i32 32)
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %slot_width1 = getelementptr inbounds %struct.davinci_mcasp, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %slot_width1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slot_width1, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.018 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %shr.i = lshr i32 %i.018, 5
  %arrayidx.i13 = getelementptr [8 x i32], ptr %arrayidx.i, i32 0, i32 %shr.i
  %8 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i13, align 4
  %and.i = and i32 %i.018, 31
  %shl.i = shl nuw i32 1, %and.i
  %and1.i = and i32 %9, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  %call3 = tail call i32 @snd_pcm_format_width(i32 noundef %i.018) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %7)
  %cmp4.not = icmp sgt i32 %call3, %7
  br i1 %cmp4.not, label %if.then.for.inc_crit_edge, label %if.then5

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i17 = getelementptr [8 x i32], ptr %nfmt, i32 0, i32 %shr.i
  %10 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i17, align 4
  %or.i = or i32 %11, %shl.i
  store i32 %or.i, ptr %arrayidx.i17, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, 53
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %old.i) #10
  %12 = call ptr @memcpy(ptr %old.i, ptr %arrayidx.i, i32 32)
  %13 = ptrtoint ptr %nfmt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nfmt, align 4
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %and.i.i = and i32 %16, %14
  store i32 %and.i.i, ptr %arrayidx.i, align 4
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %2, align 4
  %arrayidx2.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx2.1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx2.1.i.i, align 4
  %and.1.i.i = and i32 %20, %18
  store i32 %and.1.i.i, ptr %arrayidx2.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool.not.1.i.not.i = icmp eq i32 %and.1.i.i, 0
  %or.cond.i = select i1 %tobool.not.i.i, i1 %tobool.not.1.i.not.i, i1 false
  br i1 %or.cond.i, label %for.end.snd_mask_refine.exit_crit_edge, label %if.end.i

for.end.snd_mask_refine.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_mask_refine.exit

if.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(8) %arrayidx.i, ptr noundef nonnull dereferenceable(8) %old.i, i32 8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i7.i = icmp ne i32 %bcmp.i.i, 0
  %lnot.ext.i = zext i1 %tobool.not.i7.i to i32
  br label %snd_mask_refine.exit

snd_mask_refine.exit:                             ; preds = %if.end.i, %for.end.snd_mask_refine.exit_crit_edge
  %retval.0.i = phi i32 [ %lnot.ext.i, %if.end.i ], [ -22, %for.end.snd_mask_refine.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %old.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nfmt) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mcasp_hw_rule_rate(ptr noundef %params, ptr nocapture noundef readonly %rule) #2 align 64 {
entry:
  %remainder.i.i = alloca i32, align 4
  %range = alloca %struct.snd_interval, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %3, %entry.if.then.i.i.i_crit_edge ], [ %6, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %4 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #10, !range !309
  %add.i.i.i = or i32 %4, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.1.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %tdm_slots = getelementptr inbounds %struct.davinci_mcasp, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %tdm_slots to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tdm_slots, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %range) #10
  %11 = getelementptr inbounds i8, ptr %range, i32 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %slot_width = getelementptr inbounds %struct.davinci_mcasp, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %slot_width to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %slot_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  %spec.select = select i1 %tobool.not, i32 %call1.i, i32 %16
  %17 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %range, align 4
  %openmin.i = getelementptr inbounds %struct.snd_interval, ptr %range, i32 0, i32 2
  %max.i = getelementptr inbounds %struct.snd_interval, ptr %range, i32 0, i32 1
  %18 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %max.i, align 4
  %19 = ptrtoint ptr %openmin.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 31, ptr %openmin.i, align 4
  %openmin.i76 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 2
  %max.i78 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 1
  %mul = mul i32 %spec.select, %10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %params_width.exit
  %i.088 = phi i32 [ 0, %params_width.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [12 x i32], ptr @davinci_mcasp_dai_rates, i32 0, i32 %i.088
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %21)
  %cmp.i = icmp ugt i32 %23, %21
  br i1 %cmp.i, label %for.body.for.inc_crit_edge, label %lor.lhs.false.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %21)
  %cmp2.i = icmp eq i32 %23, %21
  br i1 %cmp2.i, label %land.lhs.true.i, label %lor.lhs.false.i.lor.lhs.false3.i_crit_edge

lor.lhs.false.i.lor.lhs.false3.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false3.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %24 = ptrtoint ptr %openmin.i76 to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i77 = load i8, ptr %openmin.i76, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i77)
  %tobool.not.i = icmp sgt i8 %bf.load.i77, -1
  br i1 %tobool.not.i, label %land.lhs.true.i.lor.lhs.false3.i_crit_edge, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.i.lor.lhs.false3.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false3.i

lor.lhs.false3.i:                                 ; preds = %land.lhs.true.i.lor.lhs.false3.i_crit_edge, %lor.lhs.false.i.lor.lhs.false3.i_crit_edge
  %25 = ptrtoint ptr %max.i78 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max.i78, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %21)
  %cmp4.i = icmp ult i32 %26, %21
  br i1 %cmp4.i, label %lor.lhs.false3.i.for.inc_crit_edge, label %lor.rhs.i

lor.lhs.false3.i.for.inc_crit_edge:               ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.rhs.i:                                        ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %21)
  %cmp6.i = icmp eq i32 %26, %21
  br i1 %cmp6.i, label %snd_interval_test.exit, label %lor.rhs.i.if.then7_crit_edge

lor.rhs.i.if.then7_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

snd_interval_test.exit:                           ; preds = %lor.rhs.i
  %27 = ptrtoint ptr %openmin.i76 to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load7.i = load i8, ptr %openmin.i76, align 4
  %28 = and i8 %bf.load7.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool6.not.not = icmp eq i8 %28, 0
  br i1 %tobool6.not.not, label %snd_interval_test.exit.if.then7_crit_edge, label %snd_interval_test.exit.for.inc_crit_edge

snd_interval_test.exit.for.inc_crit_edge:         ; preds = %snd_interval_test.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

snd_interval_test.exit.if.then7_crit_edge:        ; preds = %snd_interval_test.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.then7:                                         ; preds = %snd_interval_test.exit.if.then7_crit_edge, %lor.rhs.i.if.then7_crit_edge
  %mul9 = mul i32 %mul, %21
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %auxclk_fs_ratio = getelementptr inbounds %struct.davinci_mcasp, ptr %30, i32 0, i32 22
  %31 = ptrtoint ptr %auxclk_fs_ratio to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %auxclk_fs_ratio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool11.not = icmp eq i32 %32, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %mul16 = mul i32 %32, %21
  br label %if.end19

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %sysclk_freq18 = getelementptr inbounds %struct.davinci_mcasp, ptr %30, i32 0, i32 20
  %33 = ptrtoint ptr %sysclk_freq18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sysclk_freq18, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then12
  %sysclk_freq.0 = phi i32 [ %mul16, %if.then12 ], [ %34, %if.else ]
  %base.i.i = getelementptr inbounds %struct.davinci_mcasp, ptr %30, i32 0, i32 2
  %35 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 180
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !307
  %div1.i = udiv i32 %sysclk_freq.0, %mul9
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %div1.i)
  %cmp.i79 = icmp slt i32 %div1.i, 33
  %and.i = and i32 %37, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i80 = icmp eq i32 %and.i, 0
  %or.cond = select i1 %cmp.i79, i1 true, i1 %tobool.not.i80
  br i1 %or.cond, label %if.end19.if.end15.i_crit_edge, label %if.then3.i

if.end19.if.end15.i_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then3.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %div48889.i = lshr i32 %div1.i, 5
  %38 = and i32 %div1.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool6.not.i = icmp ne i32 %38, 0
  %inc.i = zext i1 %tobool6.not.i to i32
  %spec.select.i = add nuw nsw i32 %div48889.i, %inc.i
  %div8.i = udiv i32 %sysclk_freq.0, %spec.select.i
  %div9.i = udiv i32 %div8.i, %mul9
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then3.i, %if.end19.if.end15.i_crit_edge
  %sysclk_freq.addr.0.i = phi i32 [ %div8.i, %if.then3.i ], [ %sysclk_freq.0, %if.end19.if.end15.i_crit_edge ]
  %div.0.i = phi i32 [ %div9.i, %if.then3.i ], [ %div1.i, %if.end19.if.end15.i_crit_edge ]
  %rem.0.i = urem i32 %sysclk_freq.addr.0.i, %mul9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.0.i)
  %cmp16.not.i = icmp eq i32 %rem.0.i, 0
  br i1 %cmp16.not.i, label %if.end15.i.davinci_mcasp_calc_clk_div.exit_crit_edge, label %if.then17.i

if.end15.i.davinci_mcasp_calc_clk_div.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %davinci_mcasp_calc_clk_div.exit

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.0.i)
  %cmp18.i = icmp eq i32 %div.0.i, 0
  br i1 %cmp18.i, label %if.then17.i.if.then23.i_crit_edge, label %lor.lhs.false.i81

if.then17.i.if.then23.i_crit_edge:                ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23.i

lor.lhs.false.i81:                                ; preds = %if.then17.i
  %div19.i = udiv i32 %sysclk_freq.addr.0.i, %div.0.i
  %sub.i = sub i32 %div19.i, %mul9
  %add.i = add i32 %div.0.i, 1
  %div20.i = udiv i32 %sysclk_freq.addr.0.i, %add.i
  %sub21.i = sub i32 %mul9, %div20.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub21.i)
  %cmp22.i = icmp ugt i32 %sub.i, %sub21.i
  br i1 %cmp22.i, label %lor.lhs.false.i81.if.then23.i_crit_edge, label %lor.lhs.false.i81.davinci_mcasp_calc_clk_div.exit_crit_edge

lor.lhs.false.i81.davinci_mcasp_calc_clk_div.exit_crit_edge: ; preds = %lor.lhs.false.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %davinci_mcasp_calc_clk_div.exit

lor.lhs.false.i81.if.then23.i_crit_edge:          ; preds = %lor.lhs.false.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23.i

if.then23.i:                                      ; preds = %lor.lhs.false.i81.if.then23.i_crit_edge, %if.then17.i.if.then23.i_crit_edge
  %inc24.pre-phi.i = phi i32 [ %add.i, %lor.lhs.false.i81.if.then23.i_crit_edge ], [ 1, %if.then17.i.if.then23.i_crit_edge ]
  %sub25.i = sub i32 %rem.0.i, %mul9
  br label %davinci_mcasp_calc_clk_div.exit

davinci_mcasp_calc_clk_div.exit:                  ; preds = %if.then23.i, %lor.lhs.false.i81.davinci_mcasp_calc_clk_div.exit_crit_edge, %if.end15.i.davinci_mcasp_calc_clk_div.exit_crit_edge
  %div.1.i = phi i32 [ %inc24.pre-phi.i, %if.then23.i ], [ %div.0.i, %lor.lhs.false.i81.davinci_mcasp_calc_clk_div.exit_crit_edge ], [ %div.0.i, %if.end15.i.davinci_mcasp_calc_clk_div.exit_crit_edge ]
  %rem.1.i = phi i32 [ %sub25.i, %if.then23.i ], [ %rem.0.i, %lor.lhs.false.i81.davinci_mcasp_calc_clk_div.exit_crit_edge ], [ 0, %if.end15.i.davinci_mcasp_calc_clk_div.exit_crit_edge ]
  %mul.i = mul i32 %div.1.i, 1000000
  %conv.i = sext i32 %rem.1.i to i64
  %mul28.i = mul nsw i64 %conv.i, 1000000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #10
  %39 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !305
  %call.i.i = call i64 @div_s64_rem(i64 noundef %mul28.i, i32 noundef %mul9, ptr noundef nonnull %remainder.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #10
  %conv30.i = trunc i64 %call.i.i to i32
  %add31.i = add i32 %mul.i, %conv30.i
  %div32.i = sdiv i32 %add31.i, %div.1.i
  %sub33.i = add i32 %div32.i, -1000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub33.i)
  %cmp22 = icmp slt i32 %sub33.i, 0
  %sub = sub i32 1000000, %div32.i
  %cond = select i1 %cmp22, i32 %sub, i32 %sub33.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %cond)
  %cmp23 = icmp slt i32 %cond, 1000
  br i1 %cmp23, label %if.then24, label %davinci_mcasp_calc_clk_div.exit.for.inc_crit_edge

davinci_mcasp_calc_clk_div.exit.for.inc_crit_edge: ; preds = %davinci_mcasp_calc_clk_div.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then24:                                        ; preds = %davinci_mcasp_calc_clk_div.exit
  %40 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load26 = load i8, ptr %openmin.i, align 4
  %41 = and i8 %bf.load26, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool28.not = icmp eq i8 %41, 0
  br i1 %tobool28.not, label %if.then24.if.end35_crit_edge, label %if.then29

if.then24.if.end35_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then29:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %21, ptr %range, align 4
  %bf.clear33 = and i8 %bf.load26, -17
  %43 = ptrtoint ptr %openmin.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %bf.clear33, ptr %openmin.i, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %if.then24.if.end35_crit_edge
  %44 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %21, ptr %max.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end35, %davinci_mcasp_calc_clk_div.exit.for.inc_crit_edge, %snd_interval_test.exit.for.inc_crit_edge, %lor.lhs.false3.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.088, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %do.body, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.body:                                          ; preds = %for.inc
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @davinci_mcasp_hw_rule_rate.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@davinci_mcasp_hw_rule_rate, %if.then44)) #10
          to label %do.end [label %if.then44], !srcloc !306

if.then44:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.davinci_mcasp, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i, align 4
  %51 = ptrtoint ptr %max.i78 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %max.i78, align 4
  %53 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %range, align 4
  %55 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %max.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @davinci_mcasp_hw_rule_rate.__UNIQUE_ID_ddebug242, ptr noundef %48, ptr noundef nonnull @.str.109, i32 noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef %spec.select, i32 noundef %10) #10
  br label %do.end

do.end:                                           ; preds = %if.then44, %do.body
  %var = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 1
  %57 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %var, align 4
  %sub.i82 = add i32 %58, -8
  %arrayidx.i83 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 %sub.i82
  %call52 = call i32 @snd_interval_refine(ptr noundef %arrayidx.i83, ptr noundef nonnull %range) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %range) #10
  ret i32 %call52
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mcasp_hw_rule_format(ptr nocapture noundef %params, ptr nocapture noundef readonly %rule) #2 align 64 {
entry:
  %old.i = alloca %struct.snd_mask, align 4
  %remainder.i.i = alloca i32, align 4
  %nfmt = alloca %struct.snd_mask, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nfmt) #10
  %2 = getelementptr inbounds [8 x i32], ptr %nfmt, i32 0, i32 1
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %tdm_slots = getelementptr inbounds %struct.davinci_mcasp, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %tdm_slots to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tdm_slots, align 4
  %9 = call ptr @memset(ptr %nfmt, i32 0, i32 32)
  %mul18 = mul i32 %8, %4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %count.066 = phi i32 [ 0, %entry ], [ %count.2, %for.inc.for.body_crit_edge ]
  %i.064 = phi i32 [ 0, %entry ], [ %inc26, %for.inc.for.body_crit_edge ]
  %shr.i = lshr i32 %i.064, 5
  %arrayidx.i56 = getelementptr [8 x i32], ptr %arrayidx.i, i32 0, i32 %shr.i
  %10 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i56, align 4
  %and.i = and i32 %i.064, 31
  %shl.i = shl nuw i32 1, %and.i
  %and1.i = and i32 %11, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  %call3 = call i32 @snd_pcm_format_width(i32 noundef %i.064) #10
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %auxclk_fs_ratio = getelementptr inbounds %struct.davinci_mcasp, ptr %13, i32 0, i32 22
  %14 = ptrtoint ptr %auxclk_fs_ratio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %auxclk_fs_ratio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool5.not = icmp eq i32 %15, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %mul = mul i32 %15, %4
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %sysclk_freq10 = getelementptr inbounds %struct.davinci_mcasp, ptr %13, i32 0, i32 20
  %16 = ptrtoint ptr %sysclk_freq10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sysclk_freq10, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  %sysclk_freq.0 = phi i32 [ %mul, %if.then6 ], [ %17, %if.else ]
  %slot_width = getelementptr inbounds %struct.davinci_mcasp, ptr %13, i32 0, i32 11
  %18 = ptrtoint ptr %slot_width to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %slot_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.not = icmp eq i32 %19, 0
  %spec.select = select i1 %tobool12.not, i32 %call3, i32 %19
  %mul19 = mul i32 %mul18, %spec.select
  %base.i.i = getelementptr inbounds %struct.davinci_mcasp, ptr %13, i32 0, i32 2
  %20 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 180
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !307
  %div1.i = udiv i32 %sysclk_freq.0, %mul19
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %div1.i)
  %cmp.i = icmp slt i32 %div1.i, 33
  %and.i57 = and i32 %22, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i57)
  %tobool.not.i = icmp eq i32 %and.i57, 0
  %or.cond = select i1 %cmp.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond, label %if.end.if.end15.i_crit_edge, label %if.then3.i

if.end.if.end15.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %div48889.i = lshr i32 %div1.i, 5
  %23 = and i32 %div1.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool6.not.i = icmp ne i32 %23, 0
  %inc.i = zext i1 %tobool6.not.i to i32
  %spec.select.i = add nuw nsw i32 %div48889.i, %inc.i
  %div8.i = udiv i32 %sysclk_freq.0, %spec.select.i
  %div9.i = udiv i32 %div8.i, %mul19
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then3.i, %if.end.if.end15.i_crit_edge
  %sysclk_freq.addr.0.i = phi i32 [ %div8.i, %if.then3.i ], [ %sysclk_freq.0, %if.end.if.end15.i_crit_edge ]
  %div.0.i = phi i32 [ %div9.i, %if.then3.i ], [ %div1.i, %if.end.if.end15.i_crit_edge ]
  %rem.0.i = urem i32 %sysclk_freq.addr.0.i, %mul19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.0.i)
  %cmp16.not.i = icmp eq i32 %rem.0.i, 0
  br i1 %cmp16.not.i, label %if.end15.i.davinci_mcasp_calc_clk_div.exit_crit_edge, label %if.then17.i

if.end15.i.davinci_mcasp_calc_clk_div.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %davinci_mcasp_calc_clk_div.exit

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.0.i)
  %cmp18.i = icmp eq i32 %div.0.i, 0
  br i1 %cmp18.i, label %if.then17.i.if.then23.i_crit_edge, label %lor.lhs.false.i

if.then17.i.if.then23.i_crit_edge:                ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23.i

lor.lhs.false.i:                                  ; preds = %if.then17.i
  %div19.i = udiv i32 %sysclk_freq.addr.0.i, %div.0.i
  %sub.i = sub i32 %div19.i, %mul19
  %add.i = add i32 %div.0.i, 1
  %div20.i = udiv i32 %sysclk_freq.addr.0.i, %add.i
  %sub21.i = sub i32 %mul19, %div20.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub21.i)
  %cmp22.i = icmp ugt i32 %sub.i, %sub21.i
  br i1 %cmp22.i, label %lor.lhs.false.i.if.then23.i_crit_edge, label %lor.lhs.false.i.davinci_mcasp_calc_clk_div.exit_crit_edge

lor.lhs.false.i.davinci_mcasp_calc_clk_div.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %davinci_mcasp_calc_clk_div.exit

lor.lhs.false.i.if.then23.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23.i

if.then23.i:                                      ; preds = %lor.lhs.false.i.if.then23.i_crit_edge, %if.then17.i.if.then23.i_crit_edge
  %inc24.pre-phi.i = phi i32 [ %add.i, %lor.lhs.false.i.if.then23.i_crit_edge ], [ 1, %if.then17.i.if.then23.i_crit_edge ]
  %sub25.i = sub i32 %rem.0.i, %mul19
  br label %davinci_mcasp_calc_clk_div.exit

davinci_mcasp_calc_clk_div.exit:                  ; preds = %if.then23.i, %lor.lhs.false.i.davinci_mcasp_calc_clk_div.exit_crit_edge, %if.end15.i.davinci_mcasp_calc_clk_div.exit_crit_edge
  %div.1.i = phi i32 [ %inc24.pre-phi.i, %if.then23.i ], [ %div.0.i, %lor.lhs.false.i.davinci_mcasp_calc_clk_div.exit_crit_edge ], [ %div.0.i, %if.end15.i.davinci_mcasp_calc_clk_div.exit_crit_edge ]
  %rem.1.i = phi i32 [ %sub25.i, %if.then23.i ], [ %rem.0.i, %lor.lhs.false.i.davinci_mcasp_calc_clk_div.exit_crit_edge ], [ 0, %if.end15.i.davinci_mcasp_calc_clk_div.exit_crit_edge ]
  %mul.i = mul i32 %div.1.i, 1000000
  %conv.i = sext i32 %rem.1.i to i64
  %mul28.i = mul nsw i64 %conv.i, 1000000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #10
  %24 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !305
  %call.i.i = call i64 @div_s64_rem(i64 noundef %mul28.i, i32 noundef %mul19, ptr noundef nonnull %remainder.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #10
  %conv30.i = trunc i64 %call.i.i to i32
  %add31.i = add i32 %mul.i, %conv30.i
  %div32.i = sdiv i32 %add31.i, %div.1.i
  %sub33.i = add i32 %div32.i, -1000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub33.i)
  %cmp21 = icmp slt i32 %sub33.i, 0
  %sub = sub i32 1000000, %div32.i
  %cond = select i1 %cmp21, i32 %sub, i32 %sub33.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %cond)
  %cmp22 = icmp slt i32 %cond, 1000
  br i1 %cmp22, label %if.then23, label %davinci_mcasp_calc_clk_div.exit.for.inc_crit_edge

davinci_mcasp_calc_clk_div.exit.for.inc_crit_edge: ; preds = %davinci_mcasp_calc_clk_div.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then23:                                        ; preds = %davinci_mcasp_calc_clk_div.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i61 = getelementptr [8 x i32], ptr %nfmt, i32 0, i32 %shr.i
  %25 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i61, align 4
  %or.i = or i32 %26, %shl.i
  store i32 %or.i, ptr %arrayidx.i61, align 4
  %inc = add i32 %count.066, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then23, %davinci_mcasp_calc_clk_div.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %count.2 = phi i32 [ %count.066, %for.body.for.inc_crit_edge ], [ %inc, %if.then23 ], [ %count.066, %davinci_mcasp_calc_clk_div.exit.for.inc_crit_edge ]
  %inc26 = add nuw nsw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc26, 53
  br i1 %exitcond.not, label %do.body, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.body:                                          ; preds = %for.inc
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @davinci_mcasp_hw_rule_format.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@davinci_mcasp_hw_rule_format, %if.then32)) #10
          to label %do.end [label %if.then32], !srcloc !306

if.then32:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.davinci_mcasp, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @davinci_mcasp_hw_rule_format.__UNIQUE_ID_ddebug243, ptr noundef %30, ptr noundef nonnull @.str.117, i32 noundef %count.2, i32 noundef %4, i32 noundef %8) #10
  br label %do.end

do.end:                                           ; preds = %if.then32, %do.body
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %old.i) #10
  %31 = call ptr @memcpy(ptr %old.i, ptr %arrayidx.i, i32 32)
  %32 = ptrtoint ptr %nfmt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nfmt, align 4
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i, align 4
  %and.i.i = and i32 %35, %33
  store i32 %and.i.i, ptr %arrayidx.i, align 4
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %2, align 4
  %arrayidx2.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %38 = ptrtoint ptr %arrayidx2.1.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx2.1.i.i, align 4
  %and.1.i.i = and i32 %39, %37
  store i32 %and.1.i.i, ptr %arrayidx2.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool.not.1.i.not.i = icmp eq i32 %and.1.i.i, 0
  %or.cond.i = select i1 %tobool.not.i.i, i1 %tobool.not.1.i.not.i, i1 false
  br i1 %or.cond.i, label %do.end.snd_mask_refine.exit_crit_edge, label %if.end.i

do.end.snd_mask_refine.exit_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_mask_refine.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(8) %arrayidx.i, ptr noundef nonnull dereferenceable(8) %old.i, i32 8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i7.i = icmp ne i32 %bcmp.i.i, 0
  %lnot.ext.i = zext i1 %tobool.not.i7.i to i32
  br label %snd_mask_refine.exit

snd_mask_refine.exit:                             ; preds = %if.end.i, %do.end.snd_mask_refine.exit_crit_edge
  %retval.0.i62 = phi i32 [ %lnot.ext.i, %if.end.i ], [ -22, %do.end.snd_mask_refine.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %old.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nfmt) #10
  ret i32 %retval.0.i62
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mcasp_hw_rule_min_periodsize(ptr noundef %params, ptr nocapture noundef readnone %rule) #2 align 64 {
entry:
  %frames = alloca %struct.snd_interval, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %frames) #10
  %0 = getelementptr inbounds i8, ptr %frames, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %openmin.i = getelementptr inbounds %struct.snd_interval, ptr %frames, i32 0, i32 2
  %max.i = getelementptr inbounds %struct.snd_interval, ptr %frames, i32 0, i32 1
  %2 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %max.i, align 4
  %3 = ptrtoint ptr %frames to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 64, ptr %frames, align 4
  %4 = ptrtoint ptr %openmin.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 47, ptr %openmin.i, align 4
  %call1 = call i32 @snd_interval_refine(ptr noundef %arrayidx.i, ptr noundef nonnull %frames) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %frames) #10
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @davinci_mcasp_calc_clk_div(ptr nocapture noundef readonly %mcasp, i32 noundef %sysclk_freq, i32 noundef %bclk_freq, i1 noundef zeroext %set) unnamed_addr #2 align 64 {
entry:
  %remainder.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.davinci_mcasp, ptr %mcasp, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 180
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !307
  %div1 = udiv i32 %sysclk_freq, %bclk_freq
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %div1)
  %cmp = icmp sgt i32 %div1, 32
  br i1 %cmp, label %if.then, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then:                                          ; preds = %entry
  %and = and i32 %2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %div48889 = lshr i32 %div1, 5
  %3 = and i32 %div1, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp ne i32 %3, 0
  %inc = zext i1 %tobool6.not to i32
  %spec.select = add nuw nsw i32 %div48889, %inc
  %div8 = udiv i32 %sysclk_freq, %spec.select
  %div9 = udiv i32 %div8, %bclk_freq
  %phi.bo = add nsw i32 %spec.select, -1
  br label %if.end15

if.else:                                          ; preds = %if.then
  br i1 %set, label %do.end, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.davinci_mcasp, ptr %mcasp, i32 0, i32 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.110, i32 noundef %sysclk_freq) #13
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.else.if.end15_crit_edge, %if.then3, %entry.if.end15_crit_edge
  %sysclk_freq.addr.0 = phi i32 [ %div8, %if.then3 ], [ %sysclk_freq, %do.end ], [ %sysclk_freq, %if.else.if.end15_crit_edge ], [ %sysclk_freq, %entry.if.end15_crit_edge ]
  %div.0 = phi i32 [ %div9, %if.then3 ], [ %div1, %do.end ], [ %div1, %if.else.if.end15_crit_edge ], [ %div1, %entry.if.end15_crit_edge ]
  %aux_div.1 = phi i32 [ %phi.bo, %if.then3 ], [ 0, %do.end ], [ 0, %if.else.if.end15_crit_edge ], [ 0, %entry.if.end15_crit_edge ]
  %rem.0 = urem i32 %sysclk_freq.addr.0, %bclk_freq
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.0)
  %cmp16.not = icmp eq i32 %rem.0, 0
  br i1 %cmp16.not, label %if.end15.if.end27_crit_edge, label %if.then17

if.end15.if.end27_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.0)
  %cmp18 = icmp eq i32 %div.0, 0
  br i1 %cmp18, label %if.then17.if.then23_crit_edge, label %lor.lhs.false

if.then17.if.then23_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23

lor.lhs.false:                                    ; preds = %if.then17
  %div19 = udiv i32 %sysclk_freq.addr.0, %div.0
  %sub = sub i32 %div19, %bclk_freq
  %add = add i32 %div.0, 1
  %div20 = udiv i32 %sysclk_freq.addr.0, %add
  %sub21 = sub i32 %bclk_freq, %div20
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub21)
  %cmp22 = icmp ugt i32 %sub, %sub21
  br i1 %cmp22, label %lor.lhs.false.if.then23_crit_edge, label %lor.lhs.false.if.end27_crit_edge

lor.lhs.false.if.end27_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

lor.lhs.false.if.then23_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23

if.then23:                                        ; preds = %lor.lhs.false.if.then23_crit_edge, %if.then17.if.then23_crit_edge
  %inc24.pre-phi = phi i32 [ %add, %lor.lhs.false.if.then23_crit_edge ], [ 1, %if.then17.if.then23_crit_edge ]
  %sub25 = sub i32 %rem.0, %bclk_freq
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %lor.lhs.false.if.end27_crit_edge, %if.end15.if.end27_crit_edge
  %div.1 = phi i32 [ %inc24.pre-phi, %if.then23 ], [ %div.0, %lor.lhs.false.if.end27_crit_edge ], [ %div.0, %if.end15.if.end27_crit_edge ]
  %rem.1 = phi i32 [ %sub25, %if.then23 ], [ %rem.0, %lor.lhs.false.if.end27_crit_edge ], [ 0, %if.end15.if.end27_crit_edge ]
  %mul = mul i32 %div.1, 1000000
  %conv = sext i32 %rem.1 to i64
  %mul28 = mul nsw i64 %conv, 1000000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #10
  %6 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %remainder.i, align 4, !annotation !305
  %call.i = call i64 @div_s64_rem(i64 noundef %mul28, i32 noundef %bclk_freq, ptr noundef nonnull %remainder.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #10
  %conv30 = trunc i64 %call.i to i32
  %add31 = add i32 %mul, %conv30
  %div32 = sdiv i32 %add31, %div.1
  %sub33 = add i32 %div32, -1000000
  br i1 %set, label %if.then35, label %if.end27.if.end49_crit_edge

if.end27.if.end49_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then35:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub33)
  %tobool36.not = icmp eq i32 %sub33, 0
  br i1 %tobool36.not, label %if.then35.if.end42_crit_edge, label %do.end40

if.then35.if.end42_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

do.end40:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  %dev41 = getelementptr inbounds %struct.davinci_mcasp, ptr %mcasp, i32 0, i32 4
  %7 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev41, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.113, i32 noundef %sub33) #13
  br label %if.end42

if.end42:                                         ; preds = %do.end40, %if.then35.if.end42_crit_edge
  %dev.i = getelementptr inbounds %struct.davinci_mcasp, ptr %mcasp, i32 0, i32 4
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %call.i.i = call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #10
  %sub3.i = add i32 %div.1, -1
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i38.i = getelementptr i8, ptr %12, i32 176
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38.i) #10, !srcloc !307
  %and.i39.i = and i32 %13, -32
  %or.i40.i = or i32 %and.i39.i, %sub3.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38.i, i32 %or.i40.i) #10, !srcloc !303
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i42.i = getelementptr i8, ptr %15, i32 112
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42.i) #10, !srcloc !307
  %and.i43.i = and i32 %16, -32
  %or.i44.i = or i32 %and.i43.i, %sub3.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42.i, i32 %or.i44.i) #10, !srcloc !303
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %call.i45.i = call i32 @__pm_runtime_idle(ptr noundef %18, i32 noundef 5) #10
  %and44 = and i32 %2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end42.if.end49_crit_edge, label %if.then46

if.end42.if.end49_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %call.i.i86 = call i32 @__pm_runtime_resume(ptr noundef %20, i32 noundef 4) #10
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 180
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !307
  %and.i.i = and i32 %23, -4096
  %or.i.i = or i32 %and.i.i, %aux_div.1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or.i.i) #10, !srcloc !303
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %25, i32 116
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34.i) #10, !srcloc !307
  %and.i35.i = and i32 %26, -4096
  %or.i36.i = or i32 %and.i35.i, %aux_div.1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 %or.i36.i) #10, !srcloc !303
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  %call.i45.i87 = call i32 @__pm_runtime_idle(ptr noundef %28, i32 noundef 5) #10
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end42.if.end49_crit_edge, %if.end27.if.end49_crit_edge
  ret i32 %sub33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_refine(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mcasp_gpio_request(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  %num_serializer = getelementptr inbounds %struct.davinci_mcasp, ptr %call, i32 0, i32 14
  %0 = ptrtoint ptr %num_serializer to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_serializer, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp ne i8 %1, 0
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %offset)
  %cmp = icmp ugt i32 %conv, %offset
  %or.cond = and i1 %tobool.not, %cmp
  br i1 %or.cond, label %land.lhs.true4, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true4:                                   ; preds = %entry
  %serial_dir = getelementptr inbounds %struct.davinci_mcasp, ptr %call, i32 0, i32 15
  %2 = ptrtoint ptr %serial_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serial_dir, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 %offset
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp6.not = icmp eq i8 %5, 0
  br i1 %cmp6.not, label %land.lhs.true4.if.end_crit_edge, label %do.end

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.davinci_mcasp, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.136, i32 noundef %offset) #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true4.if.end_crit_edge, %entry.if.end_crit_edge
  %dev8 = getelementptr inbounds %struct.davinci_mcasp, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev8, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ %call.i, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @davinci_mcasp_gpio_free(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  %shl = shl nuw i32 1, %offset
  %base.i = getelementptr inbounds %struct.davinci_mcasp, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !307
  %neg.i = xor i32 %shl, -1
  %and.i = and i32 %2, %neg.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %and.i) #10, !srcloc !303
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %4, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7) #10, !srcloc !307
  %and.i9 = and i32 %5, %neg.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %and.i9) #10, !srcloc !303
  %dev = getelementptr inbounds %struct.davinci_mcasp, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %7, i32 noundef 4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mcasp_gpio_get_direction(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  %base.i = getelementptr inbounds %struct.davinci_mcasp, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !307
  %3 = xor i32 %2, -1
  %4 = lshr i32 %3, %offset
  %5 = and i32 %4, 1
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mcasp_gpio_direction_in(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  %base.i = getelementptr inbounds %struct.davinci_mcasp, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !307
  %shl = shl nuw i32 1, %offset
  %and = and i32 %2, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %4, i32 20
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #10, !srcloc !307
  %neg.i = xor i32 %shl, -1
  %and.i = and i32 %5, %neg.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %and.i) #10, !srcloc !303
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %7, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #10, !srcloc !307
  %or.i = or i32 %8, %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %or.i) #10, !srcloc !303
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mcasp_gpio_direction_out(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %shl1 = shl nuw i32 1, %offset
  %base.i17 = getelementptr inbounds %struct.davinci_mcasp, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %base.i17 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i17, align 4
  %add.ptr.i18 = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #10
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or.i = or i32 %2, %shl1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %or.i) #10, !srcloc !303
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %neg.i = xor i32 %shl1, -1
  %and.i = and i32 %2, %neg.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %and.i) #10, !srcloc !303
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %base.i19 = getelementptr inbounds %struct.davinci_mcasp, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %base.i19 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i19, align 4
  %add.ptr.i20 = getelementptr i8, ptr %4, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #10, !srcloc !307
  %and = and i32 %5, %shl1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %base.i19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i19, align 4
  %add.ptr.i22 = getelementptr i8, ptr %7, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #10, !srcloc !307
  %or.i23 = or i32 %8, %shl1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %or.i23) #10, !srcloc !303
  %9 = ptrtoint ptr %base.i19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i19, align 4
  %add.ptr.i25 = getelementptr i8, ptr %10, i32 20
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #10, !srcloc !307
  %or.i26 = or i32 %11, %shl1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %or.i26) #10, !srcloc !303
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mcasp_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  %base.i = getelementptr inbounds %struct.davinci_mcasp, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !307
  %3 = lshr i32 %2, %offset
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @davinci_mcasp_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %shl1 = shl nuw i32 1, %offset
  %base.i4 = getelementptr inbounds %struct.davinci_mcasp, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %base.i4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i4, align 4
  %add.ptr.i5 = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #10
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or.i = or i32 %2, %shl1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %or.i) #10, !srcloc !303
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %neg.i = xor i32 %shl1, -1
  %and.i = and i32 %2, %neg.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %and.i) #10, !srcloc !303
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mcasp_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %context1 = getelementptr inbounds %struct.davinci_mcasp, ptr %1, i32 0, i32 31
  %base.i = getelementptr inbounds %struct.davinci_mcasp, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 172
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !307
  %5 = ptrtoint ptr %context1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %context1, align 4
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %7, i32 108
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #10, !srcloc !307
  %arrayidx3.1 = getelementptr %struct.davinci_mcasp, ptr %1, i32 0, i32 31, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx3.1, align 4
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %11, i32 168
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #10, !srcloc !307
  %arrayidx3.2 = getelementptr %struct.davinci_mcasp, ptr %1, i32 0, i32 31, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx3.2, align 4
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %15, i32 104
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3) #10, !srcloc !307
  %arrayidx3.3 = getelementptr %struct.davinci_mcasp, ptr %1, i32 0, i32 31, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx3.3, align 4
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %19, i32 176
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4) #10, !srcloc !307
  %arrayidx3.4 = getelementptr %struct.davinci_mcasp, ptr %1, i32 0, i32 31, i32 0, i32 4
  %21 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx3.4, align 4
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %23, i32 112
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.5) #10, !srcloc !307
  %arrayidx3.5 = getelementptr %struct.davinci_mcasp, ptr %1, i32 0, i32 31, i32 0, i32 5
  %25 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx3.5, align 4
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %27, i32 180
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.6) #10, !srcloc !307
  %arrayidx3.6 = getelementptr %struct.davinci_mcasp, ptr %1, i32 0, i32 31, i32 0, i32 6
  %29 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx3.6, align 4
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  %add.ptr.i.7 = getelementptr i8, ptr %31, i32 116
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.7) #10, !srcloc !307
  %arrayidx3.7 = getelementptr %struct.davinci_mcasp, ptr %1, i32 0, i32 31, i32 0, i32 7
  %33 = ptrtoint ptr %arrayidx3.7 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx3.7, align 4
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %add.ptr.i.8 = getelementptr i8, ptr %35, i32 20
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.8) #10, !srcloc !307
  %arrayidx3.8 = getelementptr %struct.davinci_mcasp, ptr %1, i32 0, i32 31, i32 0, i32 8
  %37 = ptrtoint ptr %arrayidx3.8 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx3.8, align 4
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i, align 4
  %add.ptr.i.9 = getelementptr i8, ptr %39, i32 16
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.9) #10, !srcloc !307
  %arrayidx3.9 = getelementptr %struct.davinci_mcasp, ptr %1, i32 0, i32 31, i32 0, i32 9
  %41 = ptrtoint ptr %arrayidx3.9 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx3.9, align 4
  %42 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i, align 4
  %add.ptr.i.10 = getelementptr i8, ptr %43, i32 100
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.10) #10, !srcloc !307
  %arrayidx3.10 = getelementptr %struct.davinci_mcasp, ptr %1, i32 0, i32 31, i32 0, i32 10
  %45 = ptrtoint ptr %arrayidx3.10 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx3.10, align 4
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %add.ptr.i.11 = getelementptr i8, ptr %47, i32 164
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.11) #10, !srcloc !307
  %arrayidx3.11 = getelementptr %struct.davinci_mcasp, ptr %1, i32 0, i32 31, i32 0, i32 11
  %49 = ptrtoint ptr %arrayidx3.11 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx3.11, align 4
  %50 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i, align 4
  %add.ptr.i.12 = getelementptr i8, ptr %51, i32 120
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.12) #10, !srcloc !307
  %arrayidx3.12 = getelementptr %struct.davinci_mcasp, ptr %1, i32 0, i32 31, i32 0, i32 12
  %53 = ptrtoint ptr %arrayidx3.12 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx3.12, align 4
  %54 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i, align 4
  %add.ptr.i.13 = getelementptr i8, ptr %55, i32 184
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.13) #10, !srcloc !307
  %arrayidx3.13 = getelementptr %struct.davinci_mcasp, ptr %1, i32 0, i32 31, i32 0, i32 13
  %57 = ptrtoint ptr %arrayidx3.13 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %arrayidx3.13, align 4
  %txnumevt = getelementptr inbounds %struct.davinci_mcasp, ptr %1, i32 0, i32 24
  %58 = ptrtoint ptr %txnumevt to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %txnumevt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not = icmp eq i8 %59, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fifo_base = getelementptr inbounds %struct.davinci_mcasp, ptr %1, i32 0, i32 3
  %60 = ptrtoint ptr %fifo_base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %fifo_base, align 4
  %62 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %63, i32 %61
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #10, !srcloc !307
  %afifo_regs = getelementptr inbounds %struct.davinci_mcasp, ptr %1, i32 0, i32 31, i32 1
  %65 = ptrtoint ptr %afifo_regs to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %afifo_regs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rxnumevt = getelementptr inbounds %struct.davinci_mcasp, ptr %1, i32 0, i32 25
  %66 = ptrtoint ptr %rxnumevt to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %rxnumevt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool6.not = icmp eq i8 %67, 0
  br i1 %tobool6.not, label %if.end.if.end13_crit_edge, label %if.then7

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %fifo_base8 = getelementptr inbounds %struct.davinci_mcasp, ptr %1, i32 0, i32 3
  %68 = ptrtoint ptr %fifo_base8 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %fifo_base8, align 4
  %add9 = add i32 %69, 8
  %70 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %71, i32 %add9
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #10, !srcloc !307
  %arrayidx12 = getelementptr %struct.davinci_mcasp, ptr %1, i32 0, i32 31, i32 1, i32 1
  %73 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %arrayidx12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %if.end.if.end13_crit_edge
  %num_serializer = getelementptr inbounds %struct.davinci_mcasp, ptr %1, i32 0, i32 14
  %74 = ptrtoint ptr %num_serializer to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %num_serializer, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp1552.not = icmp eq i8 %75, 0
  br i1 %cmp1552.not, label %if.end13.for.end23_crit_edge, label %for.body17.lr.ph

if.end13.for.end23_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end23

for.body17.lr.ph:                                 ; preds = %if.end13
  %xrsr_regs = getelementptr inbounds %struct.davinci_mcasp, ptr %1, i32 0, i32 31, i32 2
  br label %for.body17

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.body17.lr.ph
  %i.153 = phi i32 [ 0, %for.body17.lr.ph ], [ %inc22, %for.body17.for.body17_crit_edge ]
  %shl = shl i32 %i.153, 2
  %add18 = add nuw nsw i32 %shl, 384
  %76 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %77, i32 %add18
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #10, !srcloc !307
  %79 = ptrtoint ptr %xrsr_regs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %xrsr_regs, align 4
  %arrayidx20 = getelementptr i32, ptr %80, i32 %i.153
  %81 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %78, ptr %arrayidx20, align 4
  %inc22 = add nuw nsw i32 %i.153, 1
  %82 = ptrtoint ptr %num_serializer to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %num_serializer, align 2
  %conv = zext i8 %83 to i32
  %cmp15 = icmp ult i32 %inc22, %conv
  br i1 %cmp15, label %for.body17.for.body17_crit_edge, label %for.body17.for.end23_crit_edge

for.body17.for.end23_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end23

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body17

for.end23:                                        ; preds = %for.body17.for.end23_crit_edge, %if.end13.for.end23_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mcasp_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %context1 = getelementptr inbounds %struct.davinci_mcasp, ptr %1, i32 0, i32 31
  %base.i = getelementptr inbounds %struct.davinci_mcasp, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %context1, align 4
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #10, !srcloc !303
  %arrayidx2.1 = getelementptr %struct.davinci_mcasp, ptr %1, i32 0, i32 31, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2.1, align 4
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %9, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 %7) #10, !srcloc !303
  %arrayidx2.2 = getelementptr %struct.davinci_mcasp, ptr %1, i32 0, i32 31, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.2, align 4
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %13, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 %11) #10, !srcloc !303
  %arrayidx2.3 = getelementptr %struct.davinci_mcasp, ptr %1, i32 0, i32 31, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2.3, align 4
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %17, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3, i32 %15) #10, !srcloc !303
  %arrayidx2.4 = getelementptr %struct.davinci_mcasp, ptr %1, i32 0, i32 31, i32 0, i32 4
  %18 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx2.4, align 4
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %21, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.4, i32 %19) #10, !srcloc !303
  %arrayidx2.5 = getelementptr %struct.davinci_mcasp, ptr %1, i32 0, i32 31, i32 0, i32 5
  %22 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx2.5, align 4
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %25, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.5, i32 %23) #10, !srcloc !303
  %arrayidx2.6 = getelementptr %struct.davinci_mcasp, ptr %1, i32 0, i32 31, i32 0, i32 6
  %26 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx2.6, align 4
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %29, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.6, i32 %27) #10, !srcloc !303
  %arrayidx2.7 = getelementptr %struct.davinci_mcasp, ptr %1, i32 0, i32 31, i32 0, i32 7
  %30 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx2.7, align 4
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr.i.7 = getelementptr i8, ptr %33, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.7, i32 %31) #10, !srcloc !303
  %arrayidx2.8 = getelementptr %struct.davinci_mcasp, ptr %1, i32 0, i32 31, i32 0, i32 8
  %34 = ptrtoint ptr %arrayidx2.8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx2.8, align 4
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 4
  %add.ptr.i.8 = getelementptr i8, ptr %37, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.8, i32 %35) #10, !srcloc !303
  %arrayidx2.9 = getelementptr %struct.davinci_mcasp, ptr %1, i32 0, i32 31, i32 0, i32 9
  %38 = ptrtoint ptr %arrayidx2.9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx2.9, align 4
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %add.ptr.i.9 = getelementptr i8, ptr %41, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.9, i32 %39) #10, !srcloc !303
  %arrayidx2.10 = getelementptr %struct.davinci_mcasp, ptr %1, i32 0, i32 31, i32 0, i32 10
  %42 = ptrtoint ptr %arrayidx2.10 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx2.10, align 4
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 4
  %add.ptr.i.10 = getelementptr i8, ptr %45, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.10, i32 %43) #10, !srcloc !303
  %arrayidx2.11 = getelementptr %struct.davinci_mcasp, ptr %1, i32 0, i32 31, i32 0, i32 11
  %46 = ptrtoint ptr %arrayidx2.11 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx2.11, align 4
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i, align 4
  %add.ptr.i.11 = getelementptr i8, ptr %49, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.11, i32 %47) #10, !srcloc !303
  %arrayidx2.12 = getelementptr %struct.davinci_mcasp, ptr %1, i32 0, i32 31, i32 0, i32 12
  %50 = ptrtoint ptr %arrayidx2.12 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx2.12, align 4
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i, align 4
  %add.ptr.i.12 = getelementptr i8, ptr %53, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.12, i32 %51) #10, !srcloc !303
  %arrayidx2.13 = getelementptr %struct.davinci_mcasp, ptr %1, i32 0, i32 31, i32 0, i32 13
  %54 = ptrtoint ptr %arrayidx2.13 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx2.13, align 4
  %56 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i, align 4
  %add.ptr.i.13 = getelementptr i8, ptr %57, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.13, i32 %55) #10, !srcloc !303
  %txnumevt = getelementptr inbounds %struct.davinci_mcasp, ptr %1, i32 0, i32 24
  %58 = ptrtoint ptr %txnumevt to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %txnumevt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not = icmp eq i8 %59, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fifo_base = getelementptr inbounds %struct.davinci_mcasp, ptr %1, i32 0, i32 3
  %60 = ptrtoint ptr %fifo_base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %fifo_base, align 4
  %afifo_regs = getelementptr inbounds %struct.davinci_mcasp, ptr %1, i32 0, i32 31, i32 1
  %62 = ptrtoint ptr %afifo_regs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %afifo_regs, align 4
  %64 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %65, i32 %61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %63) #10, !srcloc !303
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rxnumevt = getelementptr inbounds %struct.davinci_mcasp, ptr %1, i32 0, i32 25
  %66 = ptrtoint ptr %rxnumevt to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %rxnumevt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool4.not = icmp eq i8 %67, 0
  br i1 %tobool4.not, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %fifo_base6 = getelementptr inbounds %struct.davinci_mcasp, ptr %1, i32 0, i32 3
  %68 = ptrtoint ptr %fifo_base6 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %fifo_base6, align 4
  %add7 = add i32 %69, 8
  %arrayidx9 = getelementptr %struct.davinci_mcasp, ptr %1, i32 0, i32 31, i32 1, i32 1
  %70 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx9, align 4
  %72 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %73, i32 %add7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %71) #10, !srcloc !303
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end.if.end10_crit_edge
  %num_serializer = getelementptr inbounds %struct.davinci_mcasp, ptr %1, i32 0, i32 14
  %74 = ptrtoint ptr %num_serializer to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %num_serializer, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp1248.not = icmp eq i8 %75, 0
  br i1 %cmp1248.not, label %if.end10.for.end19_crit_edge, label %for.body14.lr.ph

if.end10.for.end19_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end19

for.body14.lr.ph:                                 ; preds = %if.end10
  %xrsr_regs = getelementptr inbounds %struct.davinci_mcasp, ptr %1, i32 0, i32 31, i32 2
  br label %for.body14

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.body14.lr.ph
  %i.149 = phi i32 [ 0, %for.body14.lr.ph ], [ %inc18, %for.body14.for.body14_crit_edge ]
  %shl = shl i32 %i.149, 2
  %add15 = add nuw nsw i32 %shl, 384
  %76 = ptrtoint ptr %xrsr_regs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %xrsr_regs, align 4
  %arrayidx16 = getelementptr i32, ptr %77, i32 %i.149
  %78 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx16, align 4
  %80 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %81, i32 %add15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %79) #10, !srcloc !303
  %inc18 = add nuw nsw i32 %i.149, 1
  %82 = ptrtoint ptr %num_serializer to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %num_serializer, align 2
  %conv = zext i8 %83 to i32
  %cmp12 = icmp ult i32 %inc18, %conv
  br i1 %cmp12, label %for.body14.for.body14_crit_edge, label %for.body14.for.end19_crit_edge

for.body14.for.end19_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end19

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14

for.end19:                                        ; preds = %for.body14.for.end19_crit_edge, %if.end10.for.end19_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 148)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 148)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !31, !32, !33, !35, !37, !39, !40, !41, !43, !45, !47, !48, !49, !51, !53, !55, !56, !57, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !80, !82, !83, !84, !86, !88, !90, !92, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !115, !117, !118, !119, !120, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !144, !146, !147, !148, !149, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !188, !189, !190, !192, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !215, !216, !217, !218, !220, !221, !222, !223, !225, !226, !227, !229, !230, !231, !232, !234, !235, !236, !237, !239, !240, !241, !243, !244, !245, !246, !248, !249, !250, !251, !253, !255, !257, !258, !259, !261, !262, !264, !266, !268, !270, !271, !273, !275, !276, !277, !278, !280, !282, !284, !286, !288, !290, !292}
!llvm.module.flags = !{!294, !295, !296, !297, !298, !299, !300, !301}
!llvm.ident = !{!302}

!0 = !{ptr @__initcall__kmod_snd_soc_davinci_mcasp__247_2540_davinci_mcasp_driver_init6, !1, !"__initcall__kmod_snd_soc_davinci_mcasp__247_2540_davinci_mcasp_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2540, i32 1}
!2 = !{ptr @__exitcall_davinci_mcasp_driver_exit, !1, !"__exitcall_davinci_mcasp_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author248, !4, !"__UNIQUE_ID_author248", i1 false, i1 false}
!4 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2542, i32 1}
!5 = !{ptr @__UNIQUE_ID_description249, !6, !"__UNIQUE_ID_description249", i1 false, i1 false}
!6 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2543, i32 1}
!7 = !{ptr @__UNIQUE_ID_file250, !8, !"__UNIQUE_ID_file250", i1 false, i1 false}
!8 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2544, i32 1}
!9 = !{ptr @__UNIQUE_ID_license251, !8, !"__UNIQUE_ID_license251", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2534, i32 11}
!12 = !{ptr @davinci_mcasp_driver, !13, !"davinci_mcasp_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2530, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2248, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @davinci_mcasp_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @davinci_mcasp_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2257, i32 59}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2259, i32 3}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @davinci_mcasp_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @davinci_mcasp_probe._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2263, i32 4}
!31 = !{ptr @davinci_mcasp_probe._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @davinci_mcasp_probe._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2289, i32 47}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2291, i32 53}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2302, i32 4}
!39 = !{ptr @davinci_mcasp_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @davinci_mcasp_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2310, i32 47}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2312, i32 53}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2322, i32 4}
!47 = !{ptr @davinci_mcasp_probe._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @davinci_mcasp_probe._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2329, i32 47}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2331, i32 53}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2341, i32 4}
!55 = !{ptr @davinci_mcasp_probe._entry.26, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @davinci_mcasp_probe._entry_ptr.28, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2348, i32 59}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2438, i32 3}
!61 = !{ptr @davinci_mcasp_probe._entry.30, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @davinci_mcasp_probe._entry_ptr.32, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2445, i32 3}
!65 = !{ptr @davinci_mcasp_probe._entry.33, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @davinci_mcasp_probe._entry_ptr.35, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2452, i32 3}
!69 = !{ptr @davinci_mcasp_probe._entry.36, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @davinci_mcasp_probe._entry_ptr.38, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1899, i32 3}
!73 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @davinci_mcasp_get_config._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @davinci_mcasp_get_config._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1903, i32 31}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1910, i32 31}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1912, i32 4}
!82 = !{ptr @davinci_mcasp_get_config._entry.43, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @davinci_mcasp_get_config._entry_ptr.45, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1922, i32 40}
!86 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1941, i32 31}
!88 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1944, i32 31}
!90 = !{ptr @.str.49, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1947, i32 31}
!92 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1950, i32 31}
!94 = !{ptr @.str.52, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1954, i32 4}
!96 = !{ptr @davinci_mcasp_get_config._entry.51, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @davinci_mcasp_get_config._entry_ptr.53, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.54, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1966, i32 4}
!100 = !{ptr @.str.55, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @davinci_mcasp_get_config.__UNIQUE_ID_ddebug244, !99, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!102 = !{ptr @.str.57, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1970, i32 3}
!104 = !{ptr @davinci_mcasp_get_config._entry.56, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @davinci_mcasp_get_config._entry_ptr.58, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.60, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1978, i32 4}
!108 = !{ptr @davinci_mcasp_get_config._entry.59, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @davinci_mcasp_get_config._entry_ptr.61, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @davinci_mcasp_get_config._entry.62, !111, !"_entry", i1 false, i1 false}
!111 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1982, i32 4}
!112 = !{ptr @davinci_mcasp_get_config._entry_ptr.63, !111, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.64, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1873, i32 52}
!115 = !{ptr @.str.65, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 406, i32 3}
!117 = !{ptr @.str.66, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @davinci_mcasp_rx_irq_handler._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @davinci_mcasp_rx_irq_handler._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.68, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 415, i32 3}
!122 = !{ptr @davinci_mcasp_rx_irq_handler._entry.67, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @davinci_mcasp_rx_irq_handler._entry_ptr.69, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.70, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 375, i32 3}
!126 = !{ptr @.str.71, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @davinci_mcasp_tx_irq_handler._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @davinci_mcasp_tx_irq_handler._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.73, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 384, i32 3}
!131 = !{ptr @davinci_mcasp_tx_irq_handler._entry.72, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @davinci_mcasp_tx_irq_handler._entry_ptr.74, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.75, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2067, i32 5}
!135 = !{ptr @.str.76, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @davinci_mcasp_txdma_offset._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @davinci_mcasp_txdma_offset._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.77, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2090, i32 5}
!140 = !{ptr @davinci_mcasp_rxdma_offset._entry, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @davinci_mcasp_rxdma_offset._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.78, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1838, i32 38}
!144 = !{ptr @.str.79, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1842, i32 2}
!146 = !{ptr @.str.80, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @mcasp_reparent_fck._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @mcasp_reparent_fck._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.81, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1844, i32 30}
!151 = !{ptr @.str.83, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1846, i32 3}
!153 = !{ptr @mcasp_reparent_fck._entry.82, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @mcasp_reparent_fck._entry_ptr.84, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.86, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1852, i32 3}
!157 = !{ptr @mcasp_reparent_fck._entry.85, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @mcasp_reparent_fck._entry_ptr.87, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.89, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1859, i32 3}
!161 = !{ptr @mcasp_reparent_fck._entry.88, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @mcasp_reparent_fck._entry_ptr.90, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @davinci_mcasp_component, !164, !"davinci_mcasp_component", i1 false, i1 false}
!164 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1767, i32 46}
!165 = !{ptr @.str.91, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1731, i32 12}
!167 = !{ptr @.str.92, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1741, i32 19}
!169 = !{ptr @.str.93, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1734, i32 19}
!171 = !{ptr @.str.94, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1752, i32 12}
!173 = !{ptr @.str.95, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1755, i32 19}
!175 = !{ptr @davinci_mcasp_dai, !176, !"davinci_mcasp_dai", i1 false, i1 false}
!176 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1729, i32 34}
!177 = !{ptr @.str.96, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1677, i32 11}
!179 = !{ptr @.str.97, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1684, i32 11}
!181 = !{ptr @davinci_mcasp_iec958_ctls, !182, !"davinci_mcasp_iec958_ctls", i1 false, i1 false}
!182 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1672, i32 38}
!183 = !{ptr @davinci_mcasp_dai_ops, !184, !"davinci_mcasp_dai_ops", i1 false, i1 false}
!184 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1617, i32 37}
!185 = !{ptr @.str.98, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 691, i32 4}
!187 = !{ptr @.str.99, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @davinci_mcasp_set_sysclk._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @davinci_mcasp_set_sysclk._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.100, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 646, i32 4}
!192 = !{ptr @.str.101, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @__davinci_mcasp_set_clkdiv._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @__davinci_mcasp_set_clkdiv._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.102, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 765, i32 2}
!197 = !{ptr @.str.103, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @davinci_mcasp_set_tdm_slot.__UNIQUE_ID_ddebug241, !196, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!199 = !{ptr @.str.104, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 770, i32 3}
!201 = !{ptr @davinci_mcasp_set_tdm_slot._entry, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @davinci_mcasp_set_tdm_slot._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.106, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 778, i32 3}
!205 = !{ptr @davinci_mcasp_set_tdm_slot._entry.105, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @davinci_mcasp_set_tdm_slot._entry_ptr.107, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.108, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1419, i32 2}
!209 = !{ptr @.str.109, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @davinci_mcasp_hw_rule_rate.__UNIQUE_ID_ddebug242, !208, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!211 = !{ptr @davinci_mcasp_dai_rates, !212, !"davinci_mcasp_dai_rates", i1 false, i1 false}
!212 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1370, i32 27}
!213 = !{ptr @.str.110, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1143, i32 4}
!215 = !{ptr @.str.111, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @davinci_mcasp_calc_clk_div._entry, !214, !"_entry", i1 false, i1 false}
!217 = !{ptr @davinci_mcasp_calc_clk_div._entry_ptr, !214, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.113, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1161, i32 4}
!220 = !{ptr @.str.114, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @davinci_mcasp_calc_clk_div._entry.112, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @davinci_mcasp_calc_clk_div._entry_ptr.115, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.116, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1463, i32 2}
!225 = !{ptr @.str.117, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @davinci_mcasp_hw_rule_format.__UNIQUE_ID_ddebug243, !224, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!227 = !{ptr @.str.118, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1246, i32 3}
!229 = !{ptr @.str.119, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @davinci_mcasp_hw_params._entry, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @davinci_mcasp_hw_params._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.120, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 929, i32 3}
!234 = !{ptr @.str.121, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @mcasp_common_hw_param._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @mcasp_common_hw_param._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.123, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 954, i32 3}
!239 = !{ptr @mcasp_common_hw_param._entry.122, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @mcasp_common_hw_param._entry_ptr.124, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.125, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1110, i32 3}
!243 = !{ptr @.str.126, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @mcasp_dit_hw_param._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @mcasp_dit_hw_param._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.127, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 179, i32 3}
!248 = !{ptr @.str.128, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @mcasp_set_ctl_reg._entry, !247, !"_entry", i1 false, i1 false}
!250 = !{ptr @mcasp_set_ctl_reg._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.129, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2029, i32 10}
!253 = !{ptr @.str.130, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2037, i32 12}
!255 = !{ptr @.str.131, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2039, i32 3}
!257 = !{ptr @.str.132, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @davinci_mcasp_get_dma_type.__UNIQUE_ID_ddebug245, !256, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!259 = !{ptr @.str.133, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2045, i32 2}
!261 = !{ptr @davinci_mcasp_get_dma_type.__UNIQUE_ID_ddebug246, !260, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!262 = !{ptr @.str.134, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2048, i32 23}
!264 = !{ptr @.str.135, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2014, i32 34}
!266 = distinct !{null, !267, !"sdma_prefix", i1 false, i1 false}
!267 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2014, i32 20}
!268 = !{ptr @davinci_mcasp_init_gpiochip.lock_key, !269, !"lock_key", i1 false, i1 false}
!269 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2228, i32 9}
!270 = !{ptr @davinci_mcasp_init_gpiochip.request_key, !269, !"request_key", i1 false, i1 false}
!271 = !{ptr @davinci_mcasp_template_chip, !272, !"davinci_mcasp_template_chip", i1 false, i1 false}
!272 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2206, i32 31}
!273 = !{ptr @.str.136, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2107, i32 3}
!275 = !{ptr @.str.137, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @davinci_mcasp_gpio_request._entry, !274, !"_entry", i1 false, i1 false}
!277 = !{ptr @davinci_mcasp_gpio_request._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @mcasp_dt_ids, !279, !"mcasp_dt_ids", i1 false, i1 false}
!279 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1803, i32 34}
!280 = !{ptr @dm646x_mcasp_pdata, !281, !"dm646x_mcasp_pdata", i1 false, i1 false}
!281 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1772, i32 35}
!282 = !{ptr @da830_mcasp_pdata, !283, !"da830_mcasp_pdata", i1 false, i1 false}
!283 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1778, i32 35}
!284 = !{ptr @am33xx_mcasp_pdata, !285, !"am33xx_mcasp_pdata", i1 false, i1 false}
!285 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1784, i32 35}
!286 = !{ptr @dra7_mcasp_pdata, !287, !"dra7_mcasp_pdata", i1 false, i1 false}
!287 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1790, i32 35}
!288 = !{ptr @omap_mcasp_pdata, !289, !"omap_mcasp_pdata", i1 false, i1 false}
!289 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 1797, i32 35}
!290 = !{ptr @davinci_mcasp_pm_ops, !291, !"davinci_mcasp_pm_ops", i1 false, i1 false}
!291 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 2524, i32 32}
!292 = distinct !{null, !293, !"context_regs", i1 false, i1 false}
!293 = !{!"../sound/soc/ti/davinci-mcasp.c", i32 47, i32 12}
!294 = !{i32 1, !"wchar_size", i32 2}
!295 = !{i32 1, !"min_enum_size", i32 4}
!296 = !{i32 8, !"branch-target-enforcement", i32 0}
!297 = !{i32 8, !"sign-return-address", i32 0}
!298 = !{i32 8, !"sign-return-address-all", i32 0}
!299 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!300 = !{i32 7, !"uwtable", i32 1}
!301 = !{i32 7, !"frame-pointer", i32 2}
!302 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!303 = !{i64 5236641}
!304 = !{i8 0, i8 2}
!305 = !{!"auto-init"}
!306 = !{i64 2149019391, i64 2149019396, i64 2149019409, i64 2149019453, i64 2149019487, i64 2149019508}
!307 = !{i64 5237059}
!308 = !{!"branch_weights", i32 1, i32 2000}
!309 = !{i32 0, i32 33}
