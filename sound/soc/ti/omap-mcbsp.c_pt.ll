; ModuleID = '/llk/IR_all_yes/sound/soc/ti/omap-mcbsp.c_pt.bc'
source_filename = "../sound/soc/ti/omap-mcbsp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.omap_mcbsp_platform_data = type { ptr, i16, i8, i8, i8, i8, ptr }
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
%struct.omap_mcbsp = type { ptr, ptr, %struct.spinlock, i32, i32, ptr, i8, i32, i32, i8, i32, i32, i32, ptr, ptr, %struct.omap_mcbsp_reg_cfg, [2 x %struct.snd_dmaengine_dai_dma_data], [2 x i32], i32, i16, i16, ptr, i32, i32, i32, [2 x i32], i32, i32, %struct.pm_qos_request }
%struct.omap_mcbsp_reg_cfg = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.omap_mcbsp_ops = type { ptr, ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_pcm_hw_rule = type { i32, i32, [5 x i32], ptr, ptr }

@__initcall__kmod_snd_soc_omap_mcbsp__267_1452_asoc_mcbsp_driver_init6 = internal global ptr @asoc_mcbsp_driver_init, section ".initcall6.init", align 4
@asoc_mcbsp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @asoc_mcbsp_probe, ptr @asoc_mcbsp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_mcbsp_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_asoc_mcbsp_driver_exit = internal global ptr @asoc_mcbsp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author268 = internal constant [67 x i8] c"snd_soc_omap_mcbsp.author=Jarkko Nikula <jarkko.nikula@bitmer.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description269 = internal constant [54 x i8] c"snd_soc_omap_mcbsp.description=OMAP I2S SoC Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file270 = internal constant [56 x i8] c"snd_soc_omap_mcbsp.file=sound/soc/ti/snd-soc-omap-mcbsp\00", section ".modinfo", align 1
@__UNIQUE_ID_license271 = internal constant [31 x i8] c"snd_soc_omap_mcbsp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias272 = internal constant [45 x i8] c"snd_soc_omap_mcbsp.alias=platform:omap-mcbsp\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"omap-mcbsp\00", [21 x i8] zeroinitializer }, align 32
@omap_mcbsp_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2420-mcbsp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap2420_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2430-mcbsp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap2430_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-mcbsp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-mcbsp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4_pdata }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti,buffer-size\00", [17 x i8] zeroinitializer }, align 32
@asoc_mcbsp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1394, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"missing platform data.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"asoc_mcbsp_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/ti/omap-mcbsp.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@asoc_mcbsp_probe._entry_ptr = internal global ptr @asoc_mcbsp_probe._entry, section ".printk_index", align 4
@omap_mcbsp_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @omap_mcbsp_probe, ptr @omap_mcbsp_remove, ptr null, ptr null, ptr @mcbsp_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 1028, i32 2046, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 1028, i32 2046, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@omap_mcbsp_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@omap_mcbsp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&mcbsp->lock\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mpu\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dma\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"common\00", [25 x i8] zeroinitializer }, align 32
@omap_mcbsp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 662, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid tx DMA channel\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"omap_mcbsp_init\00", [16 x i8] zeroinitializer }, align 32
@omap_mcbsp_init._entry_ptr = internal global ptr @omap_mcbsp_init._entry, section ".printk_index", align 4
@omap_mcbsp_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.4, i32 670, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid rx DMA channel\0A\00", [40 x i8] zeroinitializer }, align 32
@omap_mcbsp_init._entry_ptr.17 = internal global ptr @omap_mcbsp_init._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@omap_mcbsp_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.14, ptr @.str.4, i32 688, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to get fck: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@omap_mcbsp_init._entry_ptr.21 = internal global ptr @omap_mcbsp_init._entry.19, section ".printk_index", align 4
@additional_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @additional_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@omap_mcbsp_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.14, ptr @.str.4, i32 709, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to create additional controls\0A\00", [58 x i8] zeroinitializer }, align 32
@omap_mcbsp_init._entry_ptr.24 = internal global ptr @omap_mcbsp_init._entry.22, section ".printk_index", align 4
@additional_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_max_tx_thres, ptr @dev_attr_max_rx_thres, ptr @dev_attr_dma_op_mode, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_max_tx_thres = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_tx_thres_show, ptr @max_tx_thres_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max_rx_thres = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_rx_thres_show, ptr @max_rx_thres_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dma_op_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dma_op_mode_show, ptr @dma_op_mode_store }, [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max_tx_thres\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max_rx_thres\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dma_op_mode\00", [20 x i8] zeroinitializer }, align 32
@dma_op_modes = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.32, ptr @.str.33], [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"[%s] \00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"element\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"threshold\00", [22 x i8] zeroinitializer }, align 32
@mcbsp_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @omap_mcbsp_dai_set_dai_sysclk, ptr null, ptr @omap_mcbsp_dai_set_clkdiv, ptr null, ptr @omap_mcbsp_dai_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_mcbsp_dai_startup, ptr @omap_mcbsp_dai_shutdown, ptr @omap_mcbsp_dai_hw_params, ptr null, ptr @omap_mcbsp_dai_prepare, ptr @omap_mcbsp_dai_trigger, ptr null, ptr @omap_mcbsp_dai_delay, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pad_fck\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"prcm_fck\00", [23 x i8] zeroinitializer }, align 32
@omap2_mcbsp_set_clks_src._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 73, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CLKS: could not clk_get() %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"omap2_mcbsp_set_clks_src\00", [39 x i8] zeroinitializer }, align 32
@omap2_mcbsp_set_clks_src._entry_ptr = internal global ptr @omap2_mcbsp_set_clks_src._entry, section ".printk_index", align 4
@omap2_mcbsp_set_clks_src._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.4, i32 82, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"CLKS: could not clk_set_parent() to %s\0A\00", [56 x i8] zeroinitializer }, align 32
@omap2_mcbsp_set_clks_src._entry_ptr.40 = internal global ptr @omap2_mcbsp_set_clks_src._entry.38, section ".printk_index", align 4
@omap_mcbsp_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.4, i32 301, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"McBSP%d is currently in use\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"omap_mcbsp_request\00", [45 x i8] zeroinitializer }, align 32
@omap_mcbsp_request._entry_ptr = internal global ptr @omap_mcbsp_request._entry, section ".printk_index", align 4
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"McBSP\00", [26 x i8] zeroinitializer }, align 32
@omap_mcbsp_request._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.42, ptr @.str.4, i32 324, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unable to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@omap_mcbsp_request._entry_ptr.46 = internal global ptr @omap_mcbsp_request._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"McBSP TX\00", [23 x i8] zeroinitializer }, align 32
@omap_mcbsp_request._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.42, ptr @.str.4, i32 331, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to request TX IRQ\0A\00", [38 x i8] zeroinitializer }, align 32
@omap_mcbsp_request._entry_ptr.50 = internal global ptr @omap_mcbsp_request._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"McBSP RX\00", [23 x i8] zeroinitializer }, align 32
@omap_mcbsp_request._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.42, ptr @.str.4, i32 338, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to request RX IRQ\0A\00", [38 x i8] zeroinitializer }, align 32
@omap_mcbsp_request._entry_ptr.54 = internal global ptr @omap_mcbsp_request._entry.52, section ".printk_index", align 4
@omap_mcbsp_irq_handler.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.56, ptr @.str.4, ptr @.str.57, i8 0, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_soc_omap_mcbsp\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"omap_mcbsp_irq_handler\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IRQ callback : 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@omap_mcbsp_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.4, i32 100, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RX Frame Sync Error!\0A\00", [42 x i8] zeroinitializer }, align 32
@omap_mcbsp_irq_handler._entry_ptr = internal global ptr @omap_mcbsp_irq_handler._entry, section ".printk_index", align 4
@omap_mcbsp_irq_handler.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.56, ptr @.str.4, ptr @.str.59, i8 0, i8 25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RX Frame Sync\0A\00", [17 x i8] zeroinitializer }, align 32
@omap_mcbsp_irq_handler.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.56, ptr @.str.4, ptr @.str.60, i8 0, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX End Of Frame\0A\00", [47 x i8] zeroinitializer }, align 32
@omap_mcbsp_irq_handler.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.56, ptr @.str.4, ptr @.str.61, i8 0, i8 26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RX Buffer Threshold Reached\0A\00", [35 x i8] zeroinitializer }, align 32
@omap_mcbsp_irq_handler._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.56, ptr @.str.4, i32 108, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RX Buffer Underflow!\0A\00", [42 x i8] zeroinitializer }, align 32
@omap_mcbsp_irq_handler._entry_ptr.64 = internal global ptr @omap_mcbsp_irq_handler._entry.62, section ".printk_index", align 4
@omap_mcbsp_irq_handler._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.56, ptr @.str.4, i32 110, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"RX Buffer Overflow!\0A\00", [43 x i8] zeroinitializer }, align 32
@omap_mcbsp_irq_handler._entry_ptr.67 = internal global ptr @omap_mcbsp_irq_handler._entry.65, section ".printk_index", align 4
@omap_mcbsp_irq_handler._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.56, ptr @.str.4, i32 113, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TX Frame Sync Error!\0A\00", [42 x i8] zeroinitializer }, align 32
@omap_mcbsp_irq_handler._entry_ptr.70 = internal global ptr @omap_mcbsp_irq_handler._entry.68, section ".printk_index", align 4
@omap_mcbsp_irq_handler.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.56, ptr @.str.4, ptr @.str.71, i8 0, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TX Frame Sync\0A\00", [17 x i8] zeroinitializer }, align 32
@omap_mcbsp_irq_handler.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.56, ptr @.str.4, ptr @.str.72, i8 0, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TX End Of Frame\0A\00", [47 x i8] zeroinitializer }, align 32
@omap_mcbsp_irq_handler.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.56, ptr @.str.4, ptr @.str.73, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"TX Buffer threshold Reached\0A\00", [35 x i8] zeroinitializer }, align 32
@omap_mcbsp_irq_handler._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.56, ptr @.str.4, i32 121, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TX Buffer Underflow!\0A\00", [42 x i8] zeroinitializer }, align 32
@omap_mcbsp_irq_handler._entry_ptr.76 = internal global ptr @omap_mcbsp_irq_handler._entry.74, section ".printk_index", align 4
@omap_mcbsp_irq_handler._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.56, ptr @.str.4, i32 123, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TX Buffer Overflow!\0A\00", [43 x i8] zeroinitializer }, align 32
@omap_mcbsp_irq_handler._entry_ptr.79 = internal global ptr @omap_mcbsp_irq_handler._entry.77, section ".printk_index", align 4
@omap_mcbsp_irq_handler.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.56, ptr @.str.4, ptr @.str.80, i8 0, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"TX Buffer empty at end of frame\0A\00", [63 x i8] zeroinitializer }, align 32
@omap_mcbsp_tx_irq_handler.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.81, ptr @.str.4, ptr @.str.82, i8 0, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"omap_mcbsp_tx_irq_handler\00", [38 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"TX IRQ callback : 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@omap_mcbsp_tx_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.4, i32 142, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"TX Frame Sync Error! : 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@omap_mcbsp_tx_irq_handler._entry_ptr = internal global ptr @omap_mcbsp_tx_irq_handler._entry, section ".printk_index", align 4
@omap_mcbsp_rx_irq_handler.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.84, ptr @.str.4, ptr @.str.85, i8 0, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"omap_mcbsp_rx_irq_handler\00", [38 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RX IRQ callback : 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@omap_mcbsp_rx_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.4, i32 160, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RX Frame Sync Error! : 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@omap_mcbsp_rx_irq_handler._entry_ptr = internal global ptr @omap_mcbsp_rx_irq_handler._entry, section ".printk_index", align 4
@omap_mcbsp_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.4, i32 399, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"McBSP%d was not reserved\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"omap_mcbsp_free\00", [16 x i8] zeroinitializer }, align 32
@omap_mcbsp_free._entry_ptr = internal global ptr @omap_mcbsp_free._entry, section ".printk_index", align 4
@omap_mcbsp_dai_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.4, i32 1046, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013%s: not enough bandwidth for desired rate and channels\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"omap_mcbsp_dai_hw_params\00", [39 x i8] zeroinitializer }, align 32
@omap_mcbsp_dai_hw_params._entry_ptr = internal global ptr @omap_mcbsp_dai_hw_params._entry, section ".printk_index", align 4
@omap_mcbsp_config.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.91, ptr @.str.4, ptr @.str.92, i8 0, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"omap_mcbsp_config\00", [46 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Configuring McBSP%d  phys_base: 0x%08lx\0A\00", [55 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.93, ptr @.str.4, ptr @.str.94, i8 0, i8 10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"omap_mcbsp_dump_reg\00", [44 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"**** McBSP%d regs ****\0A\00", [40 x i8] zeroinitializer }, align 32
@omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.93, ptr @.str.4, ptr @.str.95, i8 0, i8 10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DRR2:  0x%04x\0A\00", [17 x i8] zeroinitializer }, align 32
@omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.93, ptr @.str.4, ptr @.str.96, i8 0, i8 10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DRR1:  0x%04x\0A\00", [17 x i8] zeroinitializer }, align 32
@omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.93, ptr @.str.4, ptr @.str.97, i8 0, i8 11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DXR2:  0x%04x\0A\00", [17 x i8] zeroinitializer }, align 32
@omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.93, ptr @.str.4, ptr @.str.98, i8 0, i8 11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DXR1:  0x%04x\0A\00", [17 x i8] zeroinitializer }, align 32
@omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.93, ptr @.str.4, ptr @.str.99, i8 0, i8 11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SPCR2: 0x%04x\0A\00", [17 x i8] zeroinitializer }, align 32
@omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.93, ptr @.str.4, ptr @.str.100, i8 0, i8 11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SPCR1: 0x%04x\0A\00", [17 x i8] zeroinitializer }, align 32
@omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.93, ptr @.str.4, ptr @.str.101, i8 0, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RCR2:  0x%04x\0A\00", [17 x i8] zeroinitializer }, align 32
@omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.93, ptr @.str.4, ptr @.str.102, i8 0, i8 12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RCR1:  0x%04x\0A\00", [17 x i8] zeroinitializer }, align 32
@omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.93, ptr @.str.4, ptr @.str.103, i8 0, i8 12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"XCR2:  0x%04x\0A\00", [17 x i8] zeroinitializer }, align 32
@omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.93, ptr @.str.4, ptr @.str.104, i8 0, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"XCR1:  0x%04x\0A\00", [17 x i8] zeroinitializer }, align 32
@omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.93, ptr @.str.4, ptr @.str.105, i8 0, i8 13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SRGR2: 0x%04x\0A\00", [17 x i8] zeroinitializer }, align 32
@omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.93, ptr @.str.4, ptr @.str.106, i8 0, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SRGR1: 0x%04x\0A\00", [17 x i8] zeroinitializer }, align 32
@omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.93, ptr @.str.4, ptr @.str.107, i8 0, i8 13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PCR0:  0x%04x\0A\00", [17 x i8] zeroinitializer }, align 32
@omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.93, ptr @.str.4, ptr @.str.108, i8 0, i8 13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"***********************\0A\00", [39 x i8] zeroinitializer }, align 32
@omap2420_pdata = internal global { %struct.omap_mcbsp_platform_data, [16 x i8] } { %struct.omap_mcbsp_platform_data { ptr null, i16 0, i8 2, i8 4, i8 0, i8 0, ptr null }, [16 x i8] zeroinitializer }, align 32
@omap2430_pdata = internal global { %struct.omap_mcbsp_platform_data, [16 x i8] } { %struct.omap_mcbsp_platform_data { ptr null, i16 0, i8 4, i8 4, i8 0, i8 1, ptr null }, [16 x i8] zeroinitializer }, align 32
@omap3_pdata = internal global { %struct.omap_mcbsp_platform_data, [16 x i8] } { %struct.omap_mcbsp_platform_data { ptr null, i16 0, i8 4, i8 4, i8 1, i8 1, ptr null }, [16 x i8] zeroinitializer }, align 32
@omap4_pdata = internal global { %struct.omap_mcbsp_platform_data, [16 x i8] } { %struct.omap_mcbsp_platform_data { ptr null, i16 0, i8 4, i8 4, i8 1, i8 1, ptr null }, [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.109 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.110 = internal global [5 x i64] [i64 3, i64 16, i64 4096, i64 12288, i64 16384]
@__sancov_gen_cov_switch_values.111 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.115 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.116 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.117 = private unnamed_addr constant [18 x i8] c"asoc_mcbsp_driver\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 1442, i32 31 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 1444, i32 12 }
@___asan_gen_.123 = private unnamed_addr constant [20 x i8] c"omap_mcbsp_of_match\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 1348, i32 34 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 1389, i32 35 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 1394, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [15 x i8] c"omap_mcbsp_dai\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 1301, i32 34 }
@___asan_gen_.150 = private unnamed_addr constant [21 x i8] c"omap_mcbsp_component\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 1319, i32 46 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 1421, i32 48 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 1421, i32 54 }
@___asan_gen_.159 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 619, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 622, i32 59 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 633, i32 59 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 646, i32 45 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 662, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 670, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 685, i32 41 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 688, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [22 x i8] c"additional_attr_group\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 605, i32 37 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 708, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c"additional_attrs\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 598, i32 32 }
@___asan_gen_.210 = private unnamed_addr constant [22 x i8] c"dev_attr_max_tx_thres\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [22 x i8] c"dev_attr_max_rx_thres\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [21 x i8] c"dev_attr_dma_op_mode\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 544, i32 1 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 545, i32 1 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 596, i32 8 }
@___asan_gen_.231 = private unnamed_addr constant [13 x i8] c"dma_op_modes\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 547, i32 27 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 563, i32 30 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 565, i32 30 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 548, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 548, i32 13 }
@___asan_gen_.246 = private unnamed_addr constant [14 x i8] c"mcbsp_dai_ops\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 1267, i32 37 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 65, i32 9 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 67, i32 9 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 73, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 81, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 301, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 322, i32 7 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 324, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 329, i32 7 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 331, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 336, i32 7 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 338, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 97, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 100, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 102, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 104, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 106, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 108, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 110, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 113, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 115, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 117, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 119, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 121, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 123, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 125, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 138, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 141, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 156, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 159, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 399, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 1045, i32 4 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 177, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 41, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 42, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 43, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 44, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 45, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 46, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 47, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 48, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 49, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 50, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 51, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 52, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 53, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 54, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 55, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant [15 x i8] c"omap2420_pdata\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 1323, i32 40 }
@___asan_gen_.471 = private unnamed_addr constant [15 x i8] c"omap2430_pdata\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 1328, i32 40 }
@___asan_gen_.474 = private unnamed_addr constant [12 x i8] c"omap3_pdata\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 1334, i32 40 }
@___asan_gen_.477 = private unnamed_addr constant [12 x i8] c"omap4_pdata\00", align 1
@___asan_gen_.478 = private constant [29 x i8] c"../sound/soc/ti/omap-mcbsp.c\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 1341, i32 40 }
@llvm.compiler.used = appending global [150 x ptr] [ptr @__UNIQUE_ID_alias272, ptr @__UNIQUE_ID_author268, ptr @__UNIQUE_ID_description269, ptr @__UNIQUE_ID_file270, ptr @__UNIQUE_ID_license271, ptr @__exitcall_asoc_mcbsp_driver_exit, ptr @__initcall__kmod_snd_soc_omap_mcbsp__267_1452_asoc_mcbsp_driver_init6, ptr @asoc_mcbsp_driver_exit, ptr @asoc_mcbsp_probe._entry, ptr @asoc_mcbsp_probe._entry_ptr, ptr @omap2_mcbsp_set_clks_src._entry, ptr @omap2_mcbsp_set_clks_src._entry.38, ptr @omap2_mcbsp_set_clks_src._entry_ptr, ptr @omap2_mcbsp_set_clks_src._entry_ptr.40, ptr @omap_mcbsp_dai_hw_params._entry, ptr @omap_mcbsp_dai_hw_params._entry_ptr, ptr @omap_mcbsp_free._entry, ptr @omap_mcbsp_free._entry_ptr, ptr @omap_mcbsp_init._entry, ptr @omap_mcbsp_init._entry.15, ptr @omap_mcbsp_init._entry.19, ptr @omap_mcbsp_init._entry.22, ptr @omap_mcbsp_init._entry_ptr, ptr @omap_mcbsp_init._entry_ptr.17, ptr @omap_mcbsp_init._entry_ptr.21, ptr @omap_mcbsp_init._entry_ptr.24, ptr @omap_mcbsp_irq_handler._entry, ptr @omap_mcbsp_irq_handler._entry.62, ptr @omap_mcbsp_irq_handler._entry.65, ptr @omap_mcbsp_irq_handler._entry.68, ptr @omap_mcbsp_irq_handler._entry.74, ptr @omap_mcbsp_irq_handler._entry.77, ptr @omap_mcbsp_irq_handler._entry_ptr, ptr @omap_mcbsp_irq_handler._entry_ptr.64, ptr @omap_mcbsp_irq_handler._entry_ptr.67, ptr @omap_mcbsp_irq_handler._entry_ptr.70, ptr @omap_mcbsp_irq_handler._entry_ptr.76, ptr @omap_mcbsp_irq_handler._entry_ptr.79, ptr @omap_mcbsp_request._entry, ptr @omap_mcbsp_request._entry.44, ptr @omap_mcbsp_request._entry.48, ptr @omap_mcbsp_request._entry.52, ptr @omap_mcbsp_request._entry_ptr, ptr @omap_mcbsp_request._entry_ptr.46, ptr @omap_mcbsp_request._entry_ptr.50, ptr @omap_mcbsp_request._entry_ptr.54, ptr @omap_mcbsp_rx_irq_handler._entry, ptr @omap_mcbsp_rx_irq_handler._entry_ptr, ptr @omap_mcbsp_tx_irq_handler._entry, ptr @omap_mcbsp_tx_irq_handler._entry_ptr, ptr @asoc_mcbsp_driver, ptr @.str, ptr @omap_mcbsp_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @omap_mcbsp_dai, ptr @omap_mcbsp_component, ptr @.str.7, ptr @.str.8, ptr @omap_mcbsp_init.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @additional_attr_group, ptr @.str.23, ptr @additional_attrs, ptr @dev_attr_max_tx_thres, ptr @dev_attr_max_rx_thres, ptr @dev_attr_dma_op_mode, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @dma_op_modes, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @mcbsp_dai_ops, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @omap2420_pdata, ptr @omap2430_pdata, ptr @omap3_pdata, ptr @omap4_pdata], section "llvm.metadata"
@0 = internal global [121 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asoc_mcbsp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcbsp_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asoc_mcbsp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcbsp_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcbsp_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcbsp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcbsp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcbsp_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcbsp_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @additional_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcbsp_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @additional_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_tx_thres to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_rx_thres to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dma_op_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_op_modes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcbsp_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_mcbsp_set_clks_src._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_mcbsp_set_clks_src._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcbsp_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcbsp_request._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcbsp_request._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcbsp_request._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcbsp_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcbsp_irq_handler._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcbsp_irq_handler._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcbsp_irq_handler._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcbsp_irq_handler._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcbsp_irq_handler._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcbsp_tx_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcbsp_rx_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcbsp_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcbsp_dai_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2420_pdata to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2430_pdata to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_pdata to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_pdata to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @asoc_mcbsp_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @asoc_mcbsp_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @asoc_mcbsp_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @asoc_mcbsp_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asoc_mcbsp_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %buffer_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call2 = tail call ptr @of_match_device(ptr noundef nonnull @omap_mcbsp_of_match, ptr noundef %dev) #11
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer_size) #11
  %4 = ptrtoint ptr %buffer_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %buffer_size, align 4, !annotation !271
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #11
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %cleanup50.critedge, label %if.end

if.end:                                           ; preds = %if.then
  %data = getelementptr inbounds %struct.of_device_id, ptr %call2, i32 0, i32 3
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = call ptr @memcpy(ptr %call.i, ptr %6, i32 16)
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull %buffer_size, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool9.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool9.not, label %if.then10, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buffer_size, align 4
  %conv = trunc i32 %9 to i16
  %buffer_size11 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %buffer_size11 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %buffer_size11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge
  %tobool13.not = icmp eq ptr %1, null
  br i1 %tobool13.not, label %if.end23.critedge, label %if.then14

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %force_ick_on = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %force_ick_on to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %force_ick_on, align 4
  %force_ick_on15 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %force_ick_on15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %force_ick_on15, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer_size) #11
  br label %if.end23

if.else:                                          ; preds = %entry
  %tobool19.not = icmp eq ptr %1, null
  br i1 %tobool19.not, label %do.end, label %if.else.if.end23_crit_edge

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #14
  br label %cleanup50

if.end23.critedge:                                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer_size) #11
  br label %if.end23

if.end23:                                         ; preds = %if.end23.critedge, %if.else.if.end23_crit_edge, %if.then14
  %pdata.0 = phi ptr [ %1, %if.else.if.end23_crit_edge ], [ %call.i, %if.end23.critedge ], [ %call.i, %if.then14 ]
  %call.i82 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 296, i32 noundef 3520) #11
  %tobool26.not = icmp eq ptr %call.i82, null
  br i1 %tobool26.not, label %if.end23.cleanup50_crit_edge, label %if.end28

if.end23.cleanup50_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup50

if.end28:                                         ; preds = %if.end23
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  %conv29 = trunc i32 %15 to i8
  %id30 = getelementptr inbounds %struct.omap_mcbsp, ptr %call.i82, i32 0, i32 6
  %16 = ptrtoint ptr %id30 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv29, ptr %id30, align 4
  %pdata31 = getelementptr inbounds %struct.omap_mcbsp, ptr %call.i82, i32 0, i32 13
  %17 = ptrtoint ptr %pdata31 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %pdata.0, ptr %pdata31, align 4
  %18 = ptrtoint ptr %call.i82 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %call.i82, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i82, ptr %driver_data.i.i, align 4
  %lock.i = getelementptr inbounds %struct.omap_mcbsp, ptr %call.i82, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @omap_mcbsp_init.__key, i16 noundef signext 3) #11
  %free.i = getelementptr inbounds %struct.omap_mcbsp, ptr %call.i82, i32 0, i32 9
  %20 = ptrtoint ptr %free.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %free.i, align 4
  %call2.i = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.10) #11
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end28.if.end.i_crit_edge

if.end28.if.end.i_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end28.if.end.i_crit_edge
  %res.0.i = phi ptr [ %call2.i, %if.end28.if.end.i_crit_edge ], [ %call3.i, %if.then.i ]
  %call4.i = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %res.0.i) #11
  %io_base.i = getelementptr inbounds %struct.omap_mcbsp, ptr %call.i82, i32 0, i32 5
  %21 = ptrtoint ptr %io_base.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call4.i, ptr %io_base.i, align 4
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then7.i, label %if.end10.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %call4.i to i32
  br label %cleanup50

if.end10.i:                                       ; preds = %if.end.i
  %23 = ptrtoint ptr %res.0.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %res.0.i, align 4
  %phys_base.i = getelementptr inbounds %struct.omap_mcbsp, ptr %call.i82, i32 0, i32 3
  %25 = ptrtoint ptr %phys_base.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %phys_base.i, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %res.0.i, i32 0, i32 1
  %26 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %end.i.i, align 4
  %28 = load i32, ptr %res.0.i, align 4
  %sub.i.i = add i32 %27, 1
  %add.i.i = sub i32 %sub.i.i, %28
  %reg_cache_size.i = getelementptr inbounds %struct.omap_mcbsp, ptr %call.i82, i32 0, i32 22
  %29 = ptrtoint ptr %reg_cache_size.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add.i.i, ptr %reg_cache_size.i, align 4
  %call12.i = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.11) #11
  %tobool13.not.i = icmp eq ptr %call12.i, null
  %spec.select.i = select i1 %tobool13.not.i, ptr %phys_base.i, ptr %call12.i
  %30 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.sink.i = load i32, ptr %spec.select.i, align 4
  %31 = getelementptr inbounds %struct.omap_mcbsp, ptr %call.i82, i32 0, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink.i, ptr %31, align 4
  %call19.i = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.12) #11
  %irq.i = getelementptr inbounds %struct.omap_mcbsp, ptr %call.i82, i32 0, i32 10
  %33 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call19.i, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call19.i)
  %cmp.i = icmp eq i32 %call19.i, -6
  br i1 %cmp.i, label %if.then21.i, label %if.end10.i.if.end33.i_crit_edge

if.end10.i.if.end33.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i

if.then21.i:                                      ; preds = %if.end10.i
  %call22.i = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.7) #11
  %tx_irq.i = getelementptr inbounds %struct.omap_mcbsp, ptr %call.i82, i32 0, i32 12
  %34 = ptrtoint ptr %tx_irq.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call22.i, ptr %tx_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call22.i)
  %cmp24.i = icmp eq i32 %call22.i, -6
  br i1 %cmp24.i, label %if.then25.i, label %if.else29.i

if.then25.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #13
  %call26.i = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  %35 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call26.i, ptr %irq.i, align 4
  br label %if.end33.sink.split.i

if.else29.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #13
  %call30.i = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.8) #11
  %rx_irq.i = getelementptr inbounds %struct.omap_mcbsp, ptr %call.i82, i32 0, i32 11
  %36 = ptrtoint ptr %rx_irq.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call30.i, ptr %rx_irq.i, align 4
  br label %if.end33.sink.split.i

if.end33.sink.split.i:                            ; preds = %if.else29.i, %if.then25.i
  %tx_irq.sink.i = phi ptr [ %tx_irq.i, %if.then25.i ], [ %irq.i, %if.else29.i ]
  %37 = ptrtoint ptr %tx_irq.sink.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %tx_irq.sink.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end33.sink.split.i, %if.end10.i.if.end33.i_crit_edge
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %38 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %of_node.i, align 8
  %tobool35.not.i = icmp eq ptr %39, null
  br i1 %tobool35.not.i, label %if.then36.i, label %if.else65.i

if.then36.i:                                      ; preds = %if.end33.i
  %call37.i = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 2048, ptr noundef nonnull @.str.7) #11
  %tobool38.not.i = icmp eq ptr %call37.i, null
  br i1 %tobool38.not.i, label %do.end42.i, label %if.end44.i

do.end42.i:                                       ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #14
  br label %cleanup50

if.end44.i:                                       ; preds = %if.then36.i
  %40 = ptrtoint ptr %call37.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %call37.i, align 4
  %dma_req.i = getelementptr inbounds %struct.omap_mcbsp, ptr %call.i82, i32 0, i32 17
  %42 = ptrtoint ptr %dma_req.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %dma_req.i, align 4
  %filter_data.i = getelementptr inbounds %struct.omap_mcbsp, ptr %call.i82, i32 0, i32 16, i32 0, i32 3
  %43 = ptrtoint ptr %filter_data.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %dma_req.i, ptr %filter_data.i, align 4
  %call49.i = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 2048, ptr noundef nonnull @.str.8) #11
  %tobool50.not.i = icmp eq ptr %call49.i, null
  br i1 %tobool50.not.i, label %do.end54.i, label %if.end56.i

do.end54.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #14
  br label %cleanup50

if.end56.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %call49.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %call49.i, align 4
  %arrayidx59.i = getelementptr %struct.omap_mcbsp, ptr %call.i82, i32 0, i32 17, i32 1
  %46 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx59.i, align 4
  br label %if.end72.i

if.else65.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  %filter_data68.i = getelementptr inbounds %struct.omap_mcbsp, ptr %call.i82, i32 0, i32 16, i32 0, i32 3
  %47 = ptrtoint ptr %filter_data68.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.7, ptr %filter_data68.i, align 4
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.else65.i, %if.end56.i
  %.str.8.sink.i = phi ptr [ @.str.8, %if.else65.i ], [ %arrayidx59.i, %if.end56.i ]
  %filter_data71.i = getelementptr %struct.omap_mcbsp, ptr %call.i82, i32 0, i32 16, i32 1, i32 3
  %48 = ptrtoint ptr %filter_data71.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %.str.8.sink.i, ptr %filter_data71.i, align 4
  %49 = ptrtoint ptr %pdata31 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdata31, align 4
  %reg_size.i.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %reg_size.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %reg_size.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %52)
  %cmp1.i.i = icmp eq i8 %52, 2
  %..i.i = select i1 %cmp1.i.i, i32 3, i32 2
  %53 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %31, align 4
  %reg_step.i.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %50, i32 0, i32 3
  %55 = ptrtoint ptr %reg_step.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %reg_step.i.i, align 1
  %conv15.i.i = zext i8 %56 to i32
  %mul.i.i = mul nuw nsw i32 %..i.i, %conv15.i.i
  %add.i197.i = add i32 %mul.i.i, %54
  %dma_data74.i = getelementptr inbounds %struct.omap_mcbsp, ptr %call.i82, i32 0, i32 16
  %57 = ptrtoint ptr %dma_data74.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add.i197.i, ptr %dma_data74.i, align 4
  %58 = ptrtoint ptr %reg_size.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %reg_size.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %59)
  %cmp1.i200.i = icmp eq i8 %59, 2
  %60 = ptrtoint ptr %reg_step.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %reg_step.i.i, align 1
  %narrow.i = select i1 %cmp1.i200.i, i8 %61, i8 0
  %mul.i207.i = zext i8 %narrow.i to i32
  %add.i208.i = add i32 %54, %mul.i207.i
  %arrayidx78.i = getelementptr %struct.omap_mcbsp, ptr %call.i82, i32 0, i32 16, i32 1
  %62 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add.i208.i, ptr %arrayidx78.i, align 4
  %call81.i = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.18) #11
  %fclk.i = getelementptr inbounds %struct.omap_mcbsp, ptr %call.i82, i32 0, i32 1
  %63 = ptrtoint ptr %fclk.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call81.i, ptr %fclk.i, align 4
  %cmp.i209.i = icmp ugt ptr %call81.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i209.i, label %if.then84.i, label %if.end91.i

if.then84.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %call81.i to i32
  %65 = ptrtoint ptr %call.i82 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call.i82, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.20, i32 noundef %64) #14
  br label %cleanup50

if.end91.i:                                       ; preds = %if.end72.i
  %dma_op_mode.i = getelementptr inbounds %struct.omap_mcbsp, ptr %call.i82, i32 0, i32 18
  %67 = ptrtoint ptr %dma_op_mode.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %dma_op_mode.i, align 4
  %68 = ptrtoint ptr %pdata31 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pdata31, align 4
  %buffer_size.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %buffer_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool92.not.i = icmp eq i16 %71, 0
  br i1 %tobool92.not.i, label %if.end91.i.if.end111.i_crit_edge, label %if.then93.i

if.end91.i.if.end111.i_crit_edge:                 ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111.i

if.then93.i:                                      ; preds = %if.end91.i
  %sub.i = add i16 %71, -16
  %max_tx_thres.i = getelementptr inbounds %struct.omap_mcbsp, ptr %call.i82, i32 0, i32 19
  %72 = ptrtoint ptr %max_tx_thres.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %sub.i, ptr %max_tx_thres.i, align 4
  %73 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %buffer_size.i, align 4
  %sub100.i = add i16 %74, -16
  %max_rx_thres.i = getelementptr inbounds %struct.omap_mcbsp, ptr %call.i82, i32 0, i32 20
  %75 = ptrtoint ptr %max_rx_thres.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %sub100.i, ptr %max_rx_thres.i, align 2
  %76 = ptrtoint ptr %call.i82 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call.i82, align 4
  %call103.i = call i32 @sysfs_create_group(ptr noundef %77, ptr noundef nonnull @additional_attr_group) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103.i)
  %tobool104.not.i = icmp eq i32 %call103.i, 0
  br i1 %tobool104.not.i, label %if.then93.i.if.end111.i_crit_edge, label %do.end108.i

if.then93.i.if.end111.i_crit_edge:                ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111.i

do.end108.i:                                      ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #13
  %78 = ptrtoint ptr %call.i82 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %call.i82, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.23) #14
  br label %cleanup50

if.end111.i:                                      ; preds = %if.then93.i.if.end111.i_crit_edge, %if.end91.i.if.end111.i_crit_edge
  %call112.i = call i32 @omap_mcbsp_st_init(ptr noundef %pdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112.i)
  %tobool113.not.i = icmp eq i32 %call112.i, 0
  %80 = ptrtoint ptr %pdata31 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pdata31, align 4
  br i1 %tobool113.not.i, label %if.end37, label %err_st.i

err_st.i:                                         ; preds = %if.end111.i
  %buffer_size117.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %buffer_size117.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %buffer_size117.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool118.not.i = icmp eq i16 %83, 0
  br i1 %tobool118.not.i, label %err_st.i.cleanup50_crit_edge, label %if.then119.i

err_st.i.cleanup50_crit_edge:                     ; preds = %err_st.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup50

if.then119.i:                                     ; preds = %err_st.i
  call void @__sanitizer_cov_trace_pc() #13
  %84 = ptrtoint ptr %call.i82 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call.i82, align 4
  call void @sysfs_remove_group(ptr noundef %85, ptr noundef nonnull @additional_attr_group) #11
  br label %cleanup50

if.end37:                                         ; preds = %if.end111.i
  %reg_size = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %81, i32 0, i32 2
  %86 = ptrtoint ptr %reg_size to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %reg_size, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %87)
  %cmp = icmp eq i8 %87, 2
  br i1 %cmp, label %if.then41, label %if.end37.if.end42_crit_edge

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  store i64 4, ptr getelementptr inbounds (%struct.snd_soc_dai_driver, ptr @omap_mcbsp_dai, i32 0, i32 11, i32 1), align 8
  store i64 4, ptr getelementptr inbounds (%struct.snd_soc_dai_driver, ptr @omap_mcbsp_dai, i32 0, i32 10, i32 1), align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end37.if.end42_crit_edge
  %call44 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @omap_mcbsp_component, ptr noundef nonnull @omap_mcbsp_dai, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end42.cleanup50_crit_edge

if.end42.cleanup50_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup50

if.end47:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  %call49 = call i32 @sdma_pcm_platform_register(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #11
  br label %cleanup50

cleanup50.critedge:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer_size) #11
  br label %cleanup50

cleanup50:                                        ; preds = %cleanup50.critedge, %if.end47, %if.end42.cleanup50_crit_edge, %if.then119.i, %err_st.i.cleanup50_crit_edge, %do.end108.i, %if.then84.i, %do.end54.i, %do.end42.i, %if.then7.i, %if.end23.cleanup50_crit_edge, %do.end
  %retval.1 = phi i32 [ %call49, %if.end47 ], [ -22, %do.end ], [ -12, %cleanup50.critedge ], [ -12, %if.end23.cleanup50_crit_edge ], [ %call44, %if.end42.cleanup50_crit_edge ], [ %call112.i, %err_st.i.cleanup50_crit_edge ], [ %call112.i, %if.then119.i ], [ -19, %do.end42.i ], [ -19, %do.end54.i ], [ %call103.i, %do.end108.i ], [ %22, %if.then7.i ], [ %64, %if.then84.i ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asoc_mcbsp_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pdata = getelementptr inbounds %struct.omap_mcbsp, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %free = getelementptr inbounds %struct.omap_mcbsp_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %free, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr inbounds %struct.omap_mcbsp, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id, align 4
  %conv = zext i8 %9 to i32
  tail call void %7(i32 noundef %conv) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %pm_qos_req = getelementptr inbounds %struct.omap_mcbsp, ptr %1, i32 0, i32 28
  %call7 = tail call zeroext i1 @cpu_latency_qos_request_active(ptr noundef %pm_qos_req) #11
  br i1 %call7, label %if.then8, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cpu_latency_qos_remove_request(ptr noundef %pm_qos_req) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %10 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata, align 4
  %buffer_size = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool12.not = icmp eq i16 %13, 0
  br i1 %tobool12.not, label %if.end10.if.end14_crit_edge, label %if.then13

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  tail call void @sysfs_remove_group(ptr noundef %15, ptr noundef nonnull @additional_attr_group) #11
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10.if.end14_crit_edge
  tail call void @omap_mcbsp_st_cleanup(ptr noundef %pdev) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdma_pcm_platform_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_mcbsp_st_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_tx_thres_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %max_tx_thres = getelementptr inbounds %struct.omap_mcbsp, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %max_tx_thres to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max_tx_thres, align 4
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_tx_thres_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !271
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %pdata = getelementptr inbounds %struct.omap_mcbsp, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdata, align 4
  %buffer_size = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %buffer_size, align 4
  %conv = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp.not = icmp ugt i32 %4, %conv
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv5 = trunc i32 %4 to i16
  %max_tx_thres = getelementptr inbounds %struct.omap_mcbsp, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %max_tx_thres to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv5, ptr %max_tx_thres, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end4 ], [ %call.i, %entry.cleanup_crit_edge ], [ -33, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_rx_thres_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %max_rx_thres = getelementptr inbounds %struct.omap_mcbsp, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %max_rx_thres to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max_rx_thres, align 2
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_rx_thres_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !271
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %pdata = getelementptr inbounds %struct.omap_mcbsp, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdata, align 4
  %buffer_size = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %buffer_size, align 4
  %conv = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp.not = icmp ugt i32 %4, %conv
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv5 = trunc i32 %4 to i16
  %max_rx_thres = getelementptr inbounds %struct.omap_mcbsp, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %max_rx_thres to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv5, ptr %max_rx_thres, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end4 ], [ %call.i, %entry.cleanup_crit_edge ], [ -33, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_op_mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dma_op_mode1 = getelementptr inbounds %struct.omap_mcbsp, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %dma_op_mode1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_op_mode1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %for.inc.thread, label %for.inc

for.inc.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.32)
  br label %for.inc.1

for.inc:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp2.1 = icmp eq i32 %3, 1
  %spec.select = select i1 %cmp2.1, ptr @.str.29, ptr @.str.30
  br label %for.inc.1

for.inc.1:                                        ; preds = %for.inc, %for.inc.thread
  %call5.sink = phi i32 [ %call3, %for.inc.thread ], [ %call5, %for.inc ]
  %.str.29.sink = phi ptr [ @.str.30, %for.inc.thread ], [ %spec.select, %for.inc ]
  %add.ptr.1 = getelementptr i8, ptr %buf, i32 %call5.sink
  %call3.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.1, ptr noundef nonnull %.str.29.sink, ptr noundef nonnull @.str.33)
  %len.1.1 = add i32 %call3.1, %call5.sink
  %add.ptr7 = getelementptr i8, ptr %buf, i32 %len.1.1
  %4 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 2560, ptr %add.ptr7, align 1
  %add9 = add i32 %len.1.1, 1
  ret i32 %add9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_op_mode_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @__sysfs_match_string(ptr noundef nonnull @dma_op_modes, i32 noundef 2, ptr noundef %buf) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.omap_mcbsp, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %free = getelementptr inbounds %struct.omap_mcbsp, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %free to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %free, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.unlock_crit_edge, label %if.end3

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dma_op_mode = getelementptr inbounds %struct.omap_mcbsp, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %dma_op_mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call1, ptr %dma_op_mode, align 4
  br label %unlock

unlock:                                           ; preds = %if.end3, %if.end.unlock_crit_edge
  %size.addr.0 = phi i32 [ %size, %if.end3 ], [ -16, %if.end.unlock_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size.addr.0, %unlock ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sysfs_match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mcbsp_probe(ptr nocapture noundef %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void @pm_runtime_enable(ptr noundef %5) #11
  %dma_data = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 16
  %arrayidx2 = getelementptr %struct.omap_mcbsp, ptr %3, i32 0, i32 16, i32 1
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %6 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dma_data, ptr %playback_dma_data.i, align 4
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %7 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx2, ptr %capture_dma_data.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mcbsp_remove(ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void @__pm_runtime_disable(ptr noundef %5, i1 noundef zeroext true) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mcbsp_dai_set_dai_sysclk(ptr nocapture noundef readonly %cpu_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %active = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %in_freq2 = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 24
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %in_freq2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %in_freq2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %freq)
  %cmp = icmp eq i32 %7, %freq
  %. = select i1 %cmp, i32 0, i32 -16
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %in_freq2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %freq, ptr %in_freq2, align 4
  %srgr2 = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 15, i32 6
  %9 = ptrtoint ptr %srgr2 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %srgr2, align 2
  %11 = and i16 %10, -8193
  store i16 %11, ptr %srgr2, align 2
  %pcr0 = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 15, i32 10
  %12 = ptrtoint ptr %pcr0 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %pcr0, align 2
  %14 = and i16 %13, -129
  store i16 %14, ptr %pcr0, align 2
  %15 = zext i32 %clk_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %clk_id, label %if.end.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %sw.bb10
    i32 1, label %sw.bb12
    i32 3, label %sw.bb14
    i32 4, label %sw.bb27
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = or i16 %10, 8192
  %17 = ptrtoint ptr %srgr2 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %srgr2, align 2
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call fastcc i32 @omap2_mcbsp_set_clks_src(ptr noundef %3, i8 noundef zeroext 0)
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call13 = tail call fastcc i32 @omap2_mcbsp_set_clks_src(ptr noundef %3, i8 noundef zeroext 1)
  br label %cleanup

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %18 = or i16 %10, 8192
  %19 = ptrtoint ptr %srgr2 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %srgr2, align 2
  %20 = and i16 %13, -641
  %21 = or i16 %20, 128
  %22 = ptrtoint ptr %pcr0 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %pcr0, align 2
  br label %cleanup

sw.bb27:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %23 = and i16 %13, -385
  %24 = or i16 %23, 128
  %25 = ptrtoint ptr %pcr0 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %pcr0, align 2
  br label %cleanup

cleanup:                                          ; preds = %sw.bb27, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %., %if.then ], [ 0, %sw.bb27 ], [ 0, %sw.bb14 ], [ %call13, %sw.bb12 ], [ %call11, %sw.bb10 ], [ 0, %sw.bb ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @omap_mcbsp_dai_set_clkdiv(ptr nocapture noundef readonly %cpu_dai, i32 noundef %div_id, i32 noundef %div) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div_id)
  %cmp.not = icmp eq i32 %div_id, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %clk_div = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %clk_div to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div, ptr %clk_div, align 4
  %srgr1 = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 15, i32 7
  %5 = ptrtoint ptr %srgr1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %srgr1, align 2
  %7 = and i16 %6, -128
  %8 = trunc i32 %div to i16
  %9 = add i16 %8, 127
  %10 = and i16 %9, 127
  %conv5 = or i16 %7, %10
  store i16 %conv5, ptr %srgr1, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @omap_mcbsp_dai_set_dai_fmt(ptr nocapture noundef readonly %cpu_dai, i32 noundef %fmt) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %configured = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %configured to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %configured, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %cfg_regs = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 15
  %fmt1 = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 23
  %6 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %fmt, ptr %fmt1, align 4
  %7 = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 15, i32 2
  %8 = call ptr @memset(ptr %7, i32 0, i32 46)
  %9 = ptrtoint ptr %cfg_regs to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 560, ptr %cfg_regs, align 2
  %spcr1 = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 15, i32 1
  %10 = ptrtoint ptr %spcr1 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 48, ptr %spcr1, align 2
  %pdata = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 13
  %11 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdata, align 4
  %has_ccr = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %has_ccr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %has_ccr, align 1, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool6.not = icmp eq i8 %14, 0
  br i1 %tobool6.not, label %if.then7, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %rcr2 = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 15, i32 2
  %15 = ptrtoint ptr %rcr2 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %rcr2, align 2
  %17 = or i16 %16, 4
  store i16 %17, ptr %rcr2, align 2
  %xcr2 = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 15, i32 4
  %18 = ptrtoint ptr %xcr2 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %xcr2, align 2
  %20 = or i16 %19, 4
  store i16 %20, ptr %xcr2, align 2
  br label %if.end14

if.end14:                                         ; preds = %if.then7, %if.end.if.end14_crit_edge
  %21 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdata, align 4
  %has_ccr16 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %has_ccr16 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %has_ccr16, align 1, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool17.not = icmp eq i8 %24, 0
  br i1 %tobool17.not, label %if.end14.if.end19_crit_edge, label %if.then18

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %xccr = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 15, i32 23
  %25 = ptrtoint ptr %xccr to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 4105, ptr %xccr, align 2
  %rccr = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 15, i32 24
  %26 = ptrtoint ptr %rccr to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 2057, ptr %rccr, align 2
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end14.if.end19_crit_edge
  %and = and i32 %fmt, 15
  %27 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %and, label %if.end19.cleanup_crit_edge [
    i32 1, label %if.end19.sw.epilog.sink.split.sink.split_crit_edge
    i32 3, label %if.end19.sw.epilog.sink.split_crit_edge
    i32 4, label %sw.bb41
    i32 5, label %if.end19.sw.epilog_crit_edge
  ]

if.end19.sw.epilog_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end19.sw.epilog.sink.split_crit_edge:          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

if.end19.sw.epilog.sink.split.sink.split_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split.sink.split

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb41:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split.sink.split

sw.epilog.sink.split.sink.split:                  ; preds = %sw.bb41, %if.end19.sw.epilog.sink.split.sink.split_crit_edge
  %inv_fs.0.off0.ph.ph = phi i1 [ true, %sw.bb41 ], [ false, %if.end19.sw.epilog.sink.split.sink.split_crit_edge ]
  %rcr242 = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 15, i32 2
  %28 = ptrtoint ptr %rcr242 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %rcr242, align 2
  %30 = or i16 %29, 1
  store i16 %30, ptr %rcr242, align 2
  %xcr224 = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 15, i32 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.epilog.sink.split.sink.split, %if.end19.sw.epilog.sink.split_crit_edge
  %xcr246.sink136 = phi ptr [ %spcr1, %if.end19.sw.epilog.sink.split_crit_edge ], [ %xcr224, %sw.epilog.sink.split.sink.split ]
  %.sink135 = phi i16 [ 16384, %if.end19.sw.epilog.sink.split_crit_edge ], [ 1, %sw.epilog.sink.split.sink.split ]
  %inv_fs.0.off0.ph = phi i1 [ true, %if.end19.sw.epilog.sink.split_crit_edge ], [ %inv_fs.0.off0.ph.ph, %sw.epilog.sink.split.sink.split ]
  %31 = ptrtoint ptr %xcr246.sink136 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %xcr246.sink136, align 2
  %33 = or i16 %32, %.sink135
  store i16 %33, ptr %xcr246.sink136, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end19.sw.epilog_crit_edge
  %inv_fs.0.off0 = phi i1 [ true, %if.end19.sw.epilog_crit_edge ], [ %inv_fs.0.off0.ph, %sw.epilog.sink.split ]
  %34 = trunc i32 %fmt to i16
  %trunc = and i16 %34, -4096
  %35 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.110)
  switch i16 %trunc, label %sw.epilog.cleanup_crit_edge [
    i16 16384, label %sw.bb60
    i16 12288, label %sw.bb67
    i16 4096, label %sw.epilog.sw.epilog77_crit_edge
  ]

sw.epilog.sw.epilog77_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog77

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb60:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %pcr0 = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 15, i32 10
  %36 = ptrtoint ptr %pcr0 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %pcr0, align 2
  %38 = or i16 %37, 3840
  store i16 %38, ptr %pcr0, align 2
  %srgr2 = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 15, i32 6
  br label %sw.epilog77.sink.split

sw.bb67:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %srgr268 = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 15, i32 6
  %39 = ptrtoint ptr %srgr268 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %srgr268, align 2
  %41 = or i16 %40, 4096
  store i16 %41, ptr %srgr268, align 2
  %pcr072 = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 15, i32 10
  br label %sw.epilog77.sink.split

sw.epilog77.sink.split:                           ; preds = %sw.bb67, %sw.bb60
  %pcr072.sink139 = phi ptr [ %pcr072, %sw.bb67 ], [ %srgr2, %sw.bb60 ]
  %.sink138 = phi i16 [ 3072, %sw.bb67 ], [ 4096, %sw.bb60 ]
  %42 = ptrtoint ptr %pcr072.sink139 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %pcr072.sink139, align 2
  %44 = or i16 %43, %.sink138
  store i16 %44, ptr %pcr072.sink139, align 2
  br label %sw.epilog77

sw.epilog77:                                      ; preds = %sw.epilog77.sink.split, %sw.epilog.sw.epilog77_crit_edge
  %and78 = lshr i32 %fmt, 8
  %45 = and i32 %and78, 15
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %45, label %sw.epilog77.cleanup_crit_edge [
    i32 0, label %sw.epilog77.sw.epilog95.sink.split_crit_edge
    i32 2, label %sw.bb84
    i32 3, label %sw.bb89
    i32 4, label %sw.epilog77.sw.epilog95_crit_edge
  ]

sw.epilog77.sw.epilog95_crit_edge:                ; preds = %sw.epilog77
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog95

sw.epilog77.sw.epilog95.sink.split_crit_edge:     ; preds = %sw.epilog77
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog95.sink.split

sw.epilog77.cleanup_crit_edge:                    ; preds = %sw.epilog77
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb84:                                          ; preds = %sw.epilog77
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog95.sink.split

sw.bb89:                                          ; preds = %sw.epilog77
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog95.sink.split

sw.epilog95.sink.split:                           ; preds = %sw.bb89, %sw.bb84, %sw.epilog77.sw.epilog95.sink.split_crit_edge
  %.sink141 = phi i16 [ 12, %sw.bb89 ], [ 3, %sw.bb84 ], [ 15, %sw.epilog77.sw.epilog95.sink.split_crit_edge ]
  %pcr080 = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 15, i32 10
  %47 = ptrtoint ptr %pcr080 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %pcr080, align 2
  %49 = or i16 %48, %.sink141
  store i16 %49, ptr %pcr080, align 2
  br label %sw.epilog95

sw.epilog95:                                      ; preds = %sw.epilog95.sink.split, %sw.epilog77.sw.epilog95_crit_edge
  br i1 %inv_fs.0.off0, label %if.then97, label %sw.epilog95.cleanup_crit_edge

sw.epilog95.cleanup_crit_edge:                    ; preds = %sw.epilog95
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then97:                                        ; preds = %sw.epilog95
  call void @__sanitizer_cov_trace_pc() #13
  %pcr098 = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 15, i32 10
  %50 = ptrtoint ptr %pcr098 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %pcr098, align 2
  %52 = xor i16 %51, 12
  store i16 %52, ptr %pcr098, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then97, %sw.epilog95.cleanup_crit_edge, %sw.epilog77.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end19.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog77.cleanup_crit_edge ], [ 0, %if.then97 ], [ 0, %sw.epilog95.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mcbsp_dai_startup(ptr nocapture noundef readonly %substream, ptr noundef %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @snd_soc_dai_active(ptr noundef %cpu_dai) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end8.i.i.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end8.i.i.i:                                    ; preds = %entry
  %reg_cache_size.i = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %reg_cache_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_cache_size.i, align 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #15
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.i.if.end_crit_edge, label %if.end.i

if.end8.i.i.i.if.end_crit_edge:                   ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %if.end8.i.i.i
  %lock.i = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #11
  %free.i = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %free.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %free.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %do.end.i, label %if.end3.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %id.i = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %id.i, align 4
  %conv.i = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.41, i32 noundef %conv.i) #14
  br label %err_kfree.i

if.end3.i:                                        ; preds = %if.end.i
  %12 = ptrtoint ptr %free.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %free.i, align 4
  %reg_cache5.i = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 21
  %13 = ptrtoint ptr %reg_cache5.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9.i.i.i, ptr %reg_cache5.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #11
  %pdata.i = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 13
  %14 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool7.not.i = icmp eq ptr %17, null
  br i1 %tobool7.not.i, label %if.end3.i.if.end17.i_crit_edge, label %land.lhs.true.i

if.end3.i.if.end17.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

land.lhs.true.i:                                  ; preds = %if.end3.i
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool10.not.i = icmp eq ptr %19, null
  br i1 %tobool10.not.i, label %land.lhs.true.i.if.end17.i_crit_edge, label %if.then11.i

land.lhs.true.i.if.end17.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.then11.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %id15.i = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 6
  %20 = ptrtoint ptr %id15.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %id15.i, align 4
  %conv16.i = zext i8 %21 to i32
  %sub.i = add nsw i32 %conv16.i, -1
  tail call void %19(i32 noundef %sub.i) #11
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then11.i, %land.lhs.true.i.if.end17.i_crit_edge, %if.end3.i.if.end17.i_crit_edge
  %io_base.i.i = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 5
  %22 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_base.i.i, align 4
  %24 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdata.i, align 4
  %reg_step.i.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %reg_step.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %reg_step.i.i, align 1
  %conv1.i.i = zext i8 %27 to i32
  %mul.i.i = mul nuw nsw i32 %conv1.i.i, 5
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %mul.i.i
  %reg_size.i.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %25, i32 0, i32 2
  %28 = ptrtoint ptr %reg_size.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %reg_size.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %cmp.i.i = icmp eq i8 %29, 2
  %30 = ptrtoint ptr %reg_cache5.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_cache5.i, align 4
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i = getelementptr i16, ptr %31, i32 5
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %arrayidx.i.i, align 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 0) #11, !srcloc !273
  br label %omap_mcbsp_write.exit.i

if.else.i.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx9.i.i = getelementptr i32, ptr %31, i32 5
  %33 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx9.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #11, !srcloc !274
  br label %omap_mcbsp_write.exit.i

omap_mcbsp_write.exit.i:                          ; preds = %if.else.i.i, %if.then.i.i
  %34 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %io_base.i.i, align 4
  %36 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdata.i, align 4
  %reg_step.i121.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %reg_step.i121.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %reg_step.i121.i, align 1
  %conv1.i122.i = zext i8 %39 to i32
  %mul.i123.i = shl nuw nsw i32 %conv1.i122.i, 2
  %add.ptr.i124.i = getelementptr i8, ptr %35, i32 %mul.i123.i
  %reg_size.i125.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %37, i32 0, i32 2
  %40 = ptrtoint ptr %reg_size.i125.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %reg_size.i125.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %41)
  %cmp.i126.i = icmp eq i8 %41, 2
  %42 = ptrtoint ptr %reg_cache5.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_cache5.i, align 4
  br i1 %cmp.i126.i, label %if.then.i129.i, label %if.else.i132.i

if.then.i129.i:                                   ; preds = %omap_mcbsp_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i128.i = getelementptr i16, ptr %43, i32 4
  %44 = ptrtoint ptr %arrayidx.i128.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %arrayidx.i128.i, align 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i124.i, i16 0) #11, !srcloc !273
  br label %omap_mcbsp_write.exit133.i

if.else.i132.i:                                   ; preds = %omap_mcbsp_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx9.i131.i = getelementptr i32, ptr %43, i32 4
  %45 = ptrtoint ptr %arrayidx9.i131.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %arrayidx9.i131.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124.i, i32 0) #11, !srcloc !274
  br label %omap_mcbsp_write.exit133.i

omap_mcbsp_write.exit133.i:                       ; preds = %if.else.i132.i, %if.then.i129.i
  %irq.i = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 10
  %46 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool18.not.i = icmp eq i32 %47, 0
  br i1 %tobool18.not.i, label %if.else.i, label %if.then19.i

if.then19.i:                                      ; preds = %omap_mcbsp_write.exit133.i
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %47, ptr noundef nonnull @omap_mcbsp_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.43, ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %if.then19.i.if.end_crit_edge, label %do.end26.i

if.then19.i.if.end_crit_edge:                     ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end26.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.45) #14
  br label %err_clk_disable.i

if.else.i:                                        ; preds = %omap_mcbsp_write.exit133.i
  %tx_irq.i = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 12
  %50 = ptrtoint ptr %tx_irq.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_irq.i, align 4
  %call.i134.i = tail call i32 @request_threaded_irq(i32 noundef %51, ptr noundef nonnull @omap_mcbsp_tx_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.47, ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134.i)
  %cmp30.not.i = icmp eq i32 %call.i134.i, 0
  br i1 %cmp30.not.i, label %if.end37.i, label %do.end35.i

do.end35.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.49) #14
  br label %err_clk_disable.i

if.end37.i:                                       ; preds = %if.else.i
  %rx_irq.i = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 11
  %54 = ptrtoint ptr %rx_irq.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_irq.i, align 4
  %call.i135.i = tail call i32 @request_threaded_irq(i32 noundef %55, ptr noundef nonnull @omap_mcbsp_rx_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.51, ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135.i)
  %cmp39.not.i = icmp eq i32 %call.i135.i, 0
  br i1 %cmp39.not.i, label %if.end37.i.if.end_crit_edge, label %do.end44.i

if.end37.i.if.end_crit_edge:                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end44.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.53) #14
  %58 = ptrtoint ptr %tx_irq.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tx_irq.i, align 4
  %call49.i = tail call ptr @free_irq(i32 noundef %59, ptr noundef %3) #11
  br label %err_clk_disable.i

err_clk_disable.i:                                ; preds = %do.end44.i, %do.end35.i, %do.end26.i
  %err.0.i = phi i32 [ %call.i.i, %do.end26.i ], [ %call.i134.i, %do.end35.i ], [ %call.i135.i, %do.end44.i ]
  %60 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pdata.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %tobool52.not.i = icmp eq ptr %63, null
  br i1 %tobool52.not.i, label %err_clk_disable.i.if.end65.i_crit_edge, label %land.lhs.true53.i

err_clk_disable.i.if.end65.i_crit_edge:           ; preds = %err_clk_disable.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65.i

land.lhs.true53.i:                                ; preds = %err_clk_disable.i
  %free56.i = getelementptr inbounds %struct.omap_mcbsp_ops, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %free56.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %free56.i, align 4
  %tobool57.not.i = icmp eq ptr %65, null
  br i1 %tobool57.not.i, label %land.lhs.true53.i.if.end65.i_crit_edge, label %if.then58.i

land.lhs.true53.i.if.end65.i_crit_edge:           ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65.i

if.then58.i:                                      ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #13
  %id62.i = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 6
  %66 = ptrtoint ptr %id62.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %id62.i, align 4
  %conv63.i = zext i8 %67 to i32
  %sub64.i = add nsw i32 %conv63.i, -1
  tail call void %65(i32 noundef %sub64.i) #11
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then58.i, %land.lhs.true53.i.if.end65.i_crit_edge, %err_clk_disable.i.if.end65.i_crit_edge
  %68 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pdata.i, align 4
  %has_wakeup.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %has_wakeup.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %has_wakeup.i, align 4, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool67.not.i = icmp eq i8 %71, 0
  br i1 %tobool67.not.i, label %if.end65.i.if.end69.i_crit_edge, label %if.then68.i

if.end65.i.if.end69.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69.i

if.then68.i:                                      ; preds = %if.end65.i
  %72 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %io_base.i.i, align 4
  %reg_step.i138.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %69, i32 0, i32 3
  %74 = ptrtoint ptr %reg_step.i138.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %reg_step.i138.i, align 1
  %conv1.i139.i = zext i8 %75 to i32
  %mul.i140.i = mul nuw nsw i32 %conv1.i139.i, 42
  %add.ptr.i141.i = getelementptr i8, ptr %73, i32 %mul.i140.i
  %reg_size.i142.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %69, i32 0, i32 2
  %76 = ptrtoint ptr %reg_size.i142.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %reg_size.i142.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %77)
  %cmp.i143.i = icmp eq i8 %77, 2
  %78 = ptrtoint ptr %reg_cache5.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %reg_cache5.i, align 4
  br i1 %cmp.i143.i, label %if.then.i146.i, label %if.else.i149.i

if.then.i146.i:                                   ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i145.i = getelementptr i16, ptr %79, i32 42
  %80 = ptrtoint ptr %arrayidx.i145.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %arrayidx.i145.i, align 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i141.i, i16 0) #11, !srcloc !273
  br label %if.end69.i

if.else.i149.i:                                   ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx9.i148.i = getelementptr i32, ptr %79, i32 42
  %81 = ptrtoint ptr %arrayidx9.i148.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %arrayidx9.i148.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141.i, i32 0) #11, !srcloc !274
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.else.i149.i, %if.then.i146.i, %if.end65.i.if.end69.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #11
  %82 = ptrtoint ptr %free.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %free.i, align 4
  %83 = ptrtoint ptr %reg_cache5.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %reg_cache5.i, align 4
  br label %err_kfree.i

err_kfree.i:                                      ; preds = %if.end69.i, %do.end.i
  %err.1.i = phi i32 [ %err.0.i, %if.end69.i ], [ -16, %do.end.i ]
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #11
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #11
  br label %if.end

if.end:                                           ; preds = %err_kfree.i, %if.end37.i.if.end_crit_edge, %if.then19.i.if.end_crit_edge, %if.end8.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %err.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %err.1.i, %err_kfree.i ], [ -12, %if.end8.i.i.i.if.end_crit_edge ], [ 0, %if.end37.i.if.end_crit_edge ], [ 0, %if.then19.i.if.end_crit_edge ]
  %pdata = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 13
  %84 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdata, align 4
  %buffer_size = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %tobool3.not = icmp eq i16 %87, 0
  br i1 %tobool3.not, label %if.end.if.end10_crit_edge, label %if.then4

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then4:                                         ; preds = %if.end
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %88 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp = icmp eq i32 %89, 0
  br i1 %cmp, label %if.then5, label %if.then4.if.end7_crit_edge

if.then4.if.end7_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %90 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %runtime, align 4
  %call6 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %91, i32 noundef 0, i32 noundef 17, ptr noundef nonnull @omap_mcbsp_hwrule_min_buffersize, ptr noundef %3, i32 noundef 10, i32 noundef -1) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then4.if.end7_crit_edge
  %runtime8 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %92 = ptrtoint ptr %runtime8 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %runtime8, align 4
  %call9 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %93, i32 noundef 0, i32 noundef 13, i32 noundef 2) #11
  br label %if.end10

if.end10:                                         ; preds = %if.end7, %if.end.if.end10_crit_edge
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_mcbsp_dai_shutdown(ptr nocapture noundef readonly %substream, ptr noundef %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %not.cmp = xor i1 %cmp, true
  %cond = zext i1 %not.cmp to i32
  %cond2 = zext i1 %cmp to i32
  %arrayidx = getelementptr %struct.omap_mcbsp, ptr %3, i32 0, i32 25, i32 %cond2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pm_qos_req = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 28
  tail call void @cpu_latency_qos_update_request(ptr noundef %pm_qos_req, i32 noundef %7) #11
  br label %if.end11

if.else:                                          ; preds = %entry
  %arrayidx7 = getelementptr %struct.omap_mcbsp, ptr %3, i32 0, i32 25, i32 %cond
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool8.not = icmp eq i32 %9, 0
  br i1 %tobool8.not, label %if.else.if.end11_crit_edge, label %if.then9

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %pm_qos_req10 = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 28
  tail call void @cpu_latency_qos_remove_request(ptr noundef %pm_qos_req10) #11
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.else.if.end11_crit_edge, %if.then
  %arrayidx13 = getelementptr %struct.omap_mcbsp, ptr %3, i32 0, i32 25, i32 %cond
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx13, align 4
  %call14 = tail call i32 @snd_soc_dai_active(ptr noundef %cpu_dai) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end11.if.end17_crit_edge

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then16:                                        ; preds = %if.end11
  %pdata.i = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 13
  %11 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdata.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then16.if.end.i_crit_edge, label %land.lhs.true.i

if.then16.if.end.i_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then16
  %free.i = getelementptr inbounds %struct.omap_mcbsp_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %free.i, align 4
  %tobool3.not.i = icmp eq ptr %16, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %id.i = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 6
  %17 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %id.i, align 4
  %conv.i = zext i8 %18 to i32
  %sub.i = add nsw i32 %conv.i, -1
  tail call void %16(i32 noundef %sub.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %if.then16.if.end.i_crit_edge
  %19 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdata.i, align 4
  %has_wakeup.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %has_wakeup.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %has_wakeup.i, align 4, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool8.not.i = icmp eq i8 %22, 0
  br i1 %tobool8.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then9.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end.i
  %io_base.i.i = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 5
  %23 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io_base.i.i, align 4
  %reg_step.i.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %20, i32 0, i32 3
  %25 = ptrtoint ptr %reg_step.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %reg_step.i.i, align 1
  %conv1.i.i = zext i8 %26 to i32
  %mul.i.i = mul nuw nsw i32 %conv1.i.i, 42
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %mul.i.i
  %reg_size.i.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %20, i32 0, i32 2
  %27 = ptrtoint ptr %reg_size.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %reg_size.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp.i.i = icmp eq i8 %28, 2
  %reg_cache.i.i = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 21
  %29 = ptrtoint ptr %reg_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_cache.i.i, align 4
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i = getelementptr i16, ptr %30, i32 42
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %arrayidx.i.i, align 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 0) #11, !srcloc !273
  br label %if.end10.i

if.else.i.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx9.i.i = getelementptr i32, ptr %30, i32 42
  %32 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %arrayidx9.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #11, !srcloc !274
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i.i, %if.then.i.i, %if.end.i.if.end10.i_crit_edge
  %irq.i = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 10
  %33 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool11.not.i = icmp eq i32 %34, 0
  br i1 %tobool11.not.i, label %if.else.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end10.i
  %io_base.i52.i = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 5
  %35 = ptrtoint ptr %io_base.i52.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io_base.i52.i, align 4
  %37 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdata.i, align 4
  %reg_step.i54.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %reg_step.i54.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %reg_step.i54.i, align 1
  %conv1.i55.i = zext i8 %40 to i32
  %mul.i56.i = mul nuw nsw i32 %conv1.i55.i, 41
  %add.ptr.i57.i = getelementptr i8, ptr %36, i32 %mul.i56.i
  %reg_size.i58.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %38, i32 0, i32 2
  %41 = ptrtoint ptr %reg_size.i58.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %reg_size.i58.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %42)
  %cmp.i59.i = icmp eq i8 %42, 2
  %reg_cache.i60.i = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 21
  %43 = ptrtoint ptr %reg_cache.i60.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_cache.i60.i, align 4
  br i1 %cmp.i59.i, label %if.then.i62.i, label %if.else.i65.i

if.then.i62.i:                                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i61.i = getelementptr i16, ptr %44, i32 41
  %45 = ptrtoint ptr %arrayidx.i61.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %arrayidx.i61.i, align 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i57.i, i16 0) #11, !srcloc !273
  br label %if.end16.i

if.else.i65.i:                                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx9.i64.i = getelementptr i32, ptr %44, i32 41
  %46 = ptrtoint ptr %arrayidx9.i64.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %arrayidx9.i64.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57.i, i32 0) #11, !srcloc !274
  br label %if.end16.i

if.else.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %rx_irq.i = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 11
  %47 = ptrtoint ptr %rx_irq.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx_irq.i, align 4
  %call14.i = tail call ptr @free_irq(i32 noundef %48, ptr noundef %3) #11
  %tx_irq.i = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 12
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else.i, %if.else.i65.i, %if.then.i62.i
  %tx_irq.sink.i = phi ptr [ %tx_irq.i, %if.else.i ], [ %irq.i, %if.then.i62.i ], [ %irq.i, %if.else.i65.i ]
  %49 = ptrtoint ptr %tx_irq.sink.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_irq.sink.i, align 4
  %call15.i = tail call ptr @free_irq(i32 noundef %50, ptr noundef %3) #11
  %reg_cache17.i = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 21
  %51 = ptrtoint ptr %reg_cache17.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg_cache17.i, align 4
  %call18.i = tail call fastcc i32 @omap2_mcbsp_set_clks_src(ptr noundef %3, i8 noundef zeroext 0) #11
  %lock.i = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #11
  %free19.i = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 9
  %53 = ptrtoint ptr %free19.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %free19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool20.not.i = icmp eq i8 %54, 0
  br i1 %tobool20.not.i, label %if.else24.i, label %do.end.i

do.end.i:                                         ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %3, align 4
  %id22.i = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 6
  %57 = ptrtoint ptr %id22.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %id22.i, align 4
  %conv23.i = zext i8 %58 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.87, i32 noundef %conv23.i) #14
  br label %omap_mcbsp_free.exit

if.else24.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %free19.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %free19.i, align 4
  br label %omap_mcbsp_free.exit

omap_mcbsp_free.exit:                             ; preds = %if.else24.i, %do.end.i
  %60 = ptrtoint ptr %reg_cache17.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %reg_cache17.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #11
  tail call void @kfree(ptr noundef %52) #11
  %configured = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 8
  %61 = ptrtoint ptr %configured to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %configured, align 4
  br label %if.end17

if.end17:                                         ; preds = %omap_mcbsp_free.exit, %if.end11.if.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mcbsp_dai_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %cfg_regs = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 15
  %pdata = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %buffer_size1 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %buffer_size1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %buffer_size1, align 4
  %conv = zext i16 %7 to i32
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %8 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 8
  %cond.in.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %10 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i293 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %arrayidx.i.i293 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i293, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.params_format.exit_crit_edge

entry.params_format.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.1.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.cleanup195_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %params_format.exit

for.inc.i.i.cleanup195_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup195

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %entry.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %14, %entry.params_format.exit_crit_edge ], [ %16, %for.inc.i.i.params_format.exit_crit_edge ]
  %17 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #11, !range !275
  %add.i.i = or i32 %17, %i.09.lcssa.i.i
  %18 = zext i32 %add.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %add.i.i, label %params_format.exit.cleanup195_crit_edge [
    i32 2, label %params_format.exit.sw.epilog_crit_edge
    i32 10, label %sw.bb5
  ]

params_format.exit.sw.epilog_crit_edge:           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

params_format.exit.cleanup195_crit_edge:          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup195

sw.bb5:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %params_format.exit.sw.epilog_crit_edge
  %wlen.0 = phi i32 [ 32, %sw.bb5 ], [ 16, %params_format.exit.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %sw.epilog.if.end46_crit_edge, label %if.then

sw.epilog.if.end46_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then:                                          ; preds = %sw.epilog
  %dma_op_mode = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 18
  %19 = ptrtoint ptr %dma_op_mode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_op_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp = icmp eq i32 %20, 1
  br i1 %cmp, label %if.then7, label %if.else32

if.then7:                                         ; preds = %if.then
  %arrayidx.i.i294 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 6
  %21 = ptrtoint ptr %arrayidx.i.i294 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i294, align 4
  %div9291 = lshr exact i32 %wlen.0, 3
  %div10 = udiv i32 %22, %div9291
  %max_tx_thres = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 19
  %max_rx_thres = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 20
  %max_thrsh.0.in.in = select i1 %cmp.i, ptr %max_tx_thres, ptr %max_rx_thres
  %23 = ptrtoint ptr %max_thrsh.0.in.in to i32
  call void @__asan_load2_noabort(i32 %23)
  %max_thrsh.0.in = load i16, ptr %max_thrsh.0.in.in, align 2
  %max_thrsh.0 = zext i16 %max_thrsh.0.in to i32
  %div10.frozen = freeze i32 %div10
  %max_thrsh.0.frozen = freeze i32 %max_thrsh.0
  %div16316 = udiv i32 %div10.frozen, %max_thrsh.0.frozen
  %24 = mul i32 %div16316, %max_thrsh.0.frozen
  %rem317.decomposed = sub i32 %div10.frozen, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem317.decomposed)
  %tobool17.not = icmp ne i32 %rem317.decomposed, 0
  %inc = zext i1 %tobool17.not to i32
  %divider.0 = add nuw i32 %div16316, %inc
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.then7
  %divider.1 = phi i32 [ %divider.0, %if.then7 ], [ %inc24, %while.cond.while.cond_crit_edge ]
  %div10.frozen326 = freeze i32 %div10
  %divider.1.frozen = freeze i32 %divider.1
  %div29 = sdiv i32 %div10.frozen326, %divider.1.frozen
  %25 = mul i32 %div29, %divider.1.frozen
  %rem20.decomposed = sub i32 %div10.frozen326, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem20.decomposed)
  %tobool21.not = icmp ne i32 %rem20.decomposed, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %divider.1, i32 %div10)
  %cmp22 = icmp slt i32 %divider.1, %div10
  %or.cond = and i1 %cmp22, %tobool21.not
  %inc24 = add nsw i32 %divider.1, 1
  br i1 %or.cond, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_cmp4(i32 %divider.1, i32 %div10)
  %cmp25 = icmp eq i32 %divider.1, %div10
  br i1 %cmp25, label %while.end.cleanup195_crit_edge, label %while.end.if.end37_crit_edge

while.end.if.end37_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

while.end.cleanup195_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup195

if.else32:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp33 = icmp sgt i32 %12, 1
  %spec.select = select i1 %cmp33, i32 %12, i32 0
  br label %if.end37

if.end37:                                         ; preds = %if.else32, %while.end.if.end37_crit_edge
  %pkt_size.1 = phi i32 [ %spec.select, %if.else32 ], [ %div29, %while.end.if.end37_crit_edge ]
  %sub = sub i32 %conv, %pkt_size.1
  %div38 = udiv i32 %sub, %12
  %mul = mul i32 %div38, 1000000
  %rate_num = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 9
  %26 = ptrtoint ptr %rate_num to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rate_num, align 4
  %rate_den = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 10
  %28 = ptrtoint ptr %rate_den to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rate_den, align 4
  %div39 = udiv i32 %27, %29
  %div40 = udiv i32 %mul, %div39
  %arrayidx = getelementptr %struct.omap_mcbsp, ptr %3, i32 0, i32 25, i32 %9
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div40, ptr %arrayidx, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %31 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %private_data.i, align 4
  %dais.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %dais.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dais.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %driver_data.i.i.i, align 4
  %pdata.i = getelementptr inbounds %struct.omap_mcbsp, ptr %40, i32 0, i32 13
  %41 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdata.i, align 4
  %buffer_size.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %buffer_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp.i295 = icmp eq i16 %44, 0
  br i1 %cmp.i295, label %if.end37.if.end46_crit_edge, label %if.end.i

if.end37.if.end46_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.end.i:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pkt_size.1)
  %tobool.not.i = icmp eq i32 %pkt_size.1, 0
  %phi.cast.i = trunc i32 %pkt_size.1 to i16
  %words.0.i = select i1 %tobool.not.i, i16 1, i16 %phi.cast.i
  %45 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp4.i = icmp eq i32 %46, 0
  %conv.i.i = zext i16 %words.0.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %words.0.i)
  %tobool.not.i.i297 = icmp eq i16 %words.0.i, 0
  br i1 %cmp4.i, label %if.then6.i, label %if.else8.i

if.then6.i:                                       ; preds = %if.end.i
  br i1 %tobool.not.i.i297, label %if.then6.i.if.end46_crit_edge, label %land.lhs.true.i.i

if.then6.i.if.end46_crit_edge:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

land.lhs.true.i.i:                                ; preds = %if.then6.i
  %max_tx_thres.i.i = getelementptr inbounds %struct.omap_mcbsp, ptr %40, i32 0, i32 19
  %47 = ptrtoint ptr %max_tx_thres.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %max_tx_thres.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %48, i16 %words.0.i)
  %cmp.not.i.i = icmp ult i16 %48, %words.0.i
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.if.end46_crit_edge, label %if.then.i.i298

land.lhs.true.i.i.if.end46_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then.i.i298:                                   ; preds = %land.lhs.true.i.i
  %sub.i.i = add nsw i32 %conv.i.i, -1
  %io_base.i.i.i = getelementptr inbounds %struct.omap_mcbsp, ptr %40, i32 0, i32 5
  %49 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %io_base.i.i.i, align 4
  %reg_step.i.i.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %42, i32 0, i32 3
  %51 = ptrtoint ptr %reg_step.i.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %reg_step.i.i.i, align 1
  %conv1.i.i.i = zext i8 %52 to i32
  %mul.i.i.i = mul nuw nsw i32 %conv1.i.i.i, 36
  %add.ptr.i.i.i = getelementptr i8, ptr %50, i32 %mul.i.i.i
  %reg_size.i.i.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %42, i32 0, i32 2
  %53 = ptrtoint ptr %reg_size.i.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %reg_size.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %54)
  %cmp.i.i.i = icmp eq i8 %54, 2
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i298
  call void @__sanitizer_cov_trace_pc() #13
  %conv5.i.i.i = trunc i32 %sub.i.i to i16
  %reg_cache.i.i.i = getelementptr inbounds %struct.omap_mcbsp, ptr %40, i32 0, i32 21
  %55 = ptrtoint ptr %reg_cache.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg_cache.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i16, ptr %56, i32 36
  %57 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv5.i.i.i, ptr %arrayidx.i.i.i, align 2
  %58 = tail call i16 @llvm.bswap.i16(i16 %conv5.i.i.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %58) #11, !srcloc !273
  br label %if.end46

if.else.i.i.i:                                    ; preds = %if.then.i.i298
  call void @__sanitizer_cov_trace_pc() #13
  %reg_cache7.i.i.i = getelementptr inbounds %struct.omap_mcbsp, ptr %40, i32 0, i32 21
  %59 = ptrtoint ptr %reg_cache7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg_cache7.i.i.i, align 4
  %arrayidx9.i.i.i = getelementptr i32, ptr %60, i32 36
  %61 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %sub.i.i, ptr %arrayidx9.i.i.i, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %sub.i.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %62) #11, !srcloc !274
  br label %if.end46

if.else8.i:                                       ; preds = %if.end.i
  br i1 %tobool.not.i.i297, label %if.else8.i.if.end46_crit_edge, label %land.lhs.true.i22.i

if.else8.i.if.end46_crit_edge:                    ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

land.lhs.true.i22.i:                              ; preds = %if.else8.i
  %max_rx_thres.i.i = getelementptr inbounds %struct.omap_mcbsp, ptr %40, i32 0, i32 20
  %63 = ptrtoint ptr %max_rx_thres.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %max_rx_thres.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %64, i16 %words.0.i)
  %cmp.not.i21.i = icmp ult i16 %64, %words.0.i
  br i1 %cmp.not.i21.i, label %land.lhs.true.i22.i.if.end46_crit_edge, label %if.then.i32.i

land.lhs.true.i22.i.if.end46_crit_edge:           ; preds = %land.lhs.true.i22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then.i32.i:                                    ; preds = %land.lhs.true.i22.i
  %sub.i23.i = add nsw i32 %conv.i.i, -1
  %io_base.i.i24.i = getelementptr inbounds %struct.omap_mcbsp, ptr %40, i32 0, i32 5
  %65 = ptrtoint ptr %io_base.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %io_base.i.i24.i, align 4
  %reg_step.i.i26.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %42, i32 0, i32 3
  %67 = ptrtoint ptr %reg_step.i.i26.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %reg_step.i.i26.i, align 1
  %conv1.i.i27.i = zext i8 %68 to i32
  %mul.i.i28.i = mul nuw nsw i32 %conv1.i.i27.i, 37
  %add.ptr.i.i29.i = getelementptr i8, ptr %66, i32 %mul.i.i28.i
  %reg_size.i.i30.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %42, i32 0, i32 2
  %69 = ptrtoint ptr %reg_size.i.i30.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %reg_size.i.i30.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %70)
  %cmp.i.i31.i = icmp eq i8 %70, 2
  br i1 %cmp.i.i31.i, label %if.then.i.i36.i, label %if.else.i.i39.i

if.then.i.i36.i:                                  ; preds = %if.then.i32.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv5.i.i33.i = trunc i32 %sub.i23.i to i16
  %reg_cache.i.i34.i = getelementptr inbounds %struct.omap_mcbsp, ptr %40, i32 0, i32 21
  %71 = ptrtoint ptr %reg_cache.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reg_cache.i.i34.i, align 4
  %arrayidx.i.i35.i = getelementptr i16, ptr %72, i32 37
  %73 = ptrtoint ptr %arrayidx.i.i35.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv5.i.i33.i, ptr %arrayidx.i.i35.i, align 2
  %74 = tail call i16 @llvm.bswap.i16(i16 %conv5.i.i33.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i29.i, i16 %74) #11, !srcloc !273
  br label %if.end46

if.else.i.i39.i:                                  ; preds = %if.then.i32.i
  call void @__sanitizer_cov_trace_pc() #13
  %reg_cache7.i.i37.i = getelementptr inbounds %struct.omap_mcbsp, ptr %40, i32 0, i32 21
  %75 = ptrtoint ptr %reg_cache7.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %reg_cache7.i.i37.i, align 4
  %arrayidx9.i.i38.i = getelementptr i32, ptr %76, i32 37
  %77 = ptrtoint ptr %arrayidx9.i.i38.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %sub.i23.i, ptr %arrayidx9.i.i38.i, align 4
  %78 = tail call i32 @llvm.bswap.i32(i32 %sub.i23.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i29.i, i32 %78) #11, !srcloc !274
  br label %if.end46

if.end46:                                         ; preds = %if.else.i.i39.i, %if.then.i.i36.i, %land.lhs.true.i22.i.if.end46_crit_edge, %if.else8.i.if.end46_crit_edge, %if.else.i.i.i, %if.then.i.i.i, %land.lhs.true.i.i.if.end46_crit_edge, %if.then6.i.if.end46_crit_edge, %if.end37.if.end46_crit_edge, %sw.epilog.if.end46_crit_edge
  %pkt_size.3 = phi i32 [ 0, %sw.epilog.if.end46_crit_edge ], [ %pkt_size.1, %if.end37.if.end46_crit_edge ], [ %pkt_size.1, %if.then6.i.if.end46_crit_edge ], [ %pkt_size.1, %land.lhs.true.i.i.if.end46_crit_edge ], [ %pkt_size.1, %if.then.i.i.i ], [ %pkt_size.1, %if.else.i.i.i ], [ %pkt_size.1, %if.else8.i.if.end46_crit_edge ], [ %pkt_size.1, %land.lhs.true.i22.i.if.end46_crit_edge ], [ %pkt_size.1, %if.then.i.i36.i ], [ %pkt_size.1, %if.else.i.i39.i ]
  %maxburst = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %cond.i, i32 0, i32 2
  %79 = ptrtoint ptr %maxburst to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %pkt_size.3, ptr %maxburst, align 4
  %configured = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 8
  %80 = ptrtoint ptr %configured to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %configured, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool47.not = icmp eq i32 %81, 0
  br i1 %tobool47.not, label %if.end49, label %if.end46.cleanup195_crit_edge

if.end46.cleanup195_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup195

if.end49:                                         ; preds = %if.end46
  %rcr2 = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 15, i32 2
  %82 = ptrtoint ptr %rcr2 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %rcr2, align 2
  %84 = and i16 %83, 31
  store i16 %84, ptr %rcr2, align 2
  %xcr2 = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 15, i32 4
  %85 = ptrtoint ptr %xcr2 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %xcr2, align 2
  %87 = and i16 %86, 31
  store i16 %87, ptr %xcr2, align 2
  %rcr1 = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 15, i32 3
  %88 = ptrtoint ptr %rcr1 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %rcr1, align 2
  %90 = and i16 %89, -32737
  store i16 %90, ptr %rcr1, align 2
  %xcr1 = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 15, i32 5
  %91 = ptrtoint ptr %xcr1 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %xcr1, align 2
  %93 = and i16 %92, -32737
  store i16 %93, ptr %xcr1, align 2
  %fmt = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 23
  %94 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %fmt, align 4
  %and61 = and i32 %95, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp62 = icmp eq i32 %12, 2
  br i1 %cmp62, label %land.lhs.true, label %if.end49.if.end89_crit_edge

if.end49.if.end89_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

land.lhs.true:                                    ; preds = %if.end49
  %96 = zext i32 %and61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %and61, label %land.lhs.true.if.end89_crit_edge [
    i32 1, label %land.lhs.true.if.then68_crit_edge
    i32 3, label %land.lhs.true.if.then68_crit_edge327
  ]

land.lhs.true.if.then68_crit_edge327:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then68

land.lhs.true.if.then68_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then68

land.lhs.true.if.end89_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

if.then68:                                        ; preds = %land.lhs.true.if.then68_crit_edge, %land.lhs.true.if.then68_crit_edge327
  %97 = or i16 %84, -32768
  %98 = or i16 %87, -32768
  %99 = ptrtoint ptr %rcr2 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %97, ptr %rcr2, align 2
  %100 = ptrtoint ptr %xcr2 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %98, ptr %xcr2, align 2
  br label %if.end89

if.end89:                                         ; preds = %if.then68, %land.lhs.true.if.end89_crit_edge, %if.end49.if.end89_crit_edge
  %wpf.0 = phi i32 [ 1, %if.then68 ], [ %12, %if.end49.if.end89_crit_edge ], [ 2, %land.lhs.true.if.end89_crit_edge ]
  %101 = ptrtoint ptr %rcr1 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %rcr1, align 2
  %wpf.0.tr = trunc i32 %wpf.0 to i16
  %103 = shl i16 %wpf.0.tr, 8
  %104 = add i16 %103, 32512
  %105 = and i16 %104, 32512
  %conv96 = or i16 %105, %102
  store i16 %conv96, ptr %rcr1, align 2
  %106 = ptrtoint ptr %xcr1 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %xcr1, align 2
  %conv103 = or i16 %105, %107
  store i16 %conv103, ptr %xcr1, align 2
  %108 = ptrtoint ptr %arrayidx.i.i293 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx.i.i293, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.not.i.i300 = icmp eq i32 %109, 0
  br i1 %tobool.not.i.i300, label %for.inc.i.i307, label %if.end89.params_format.exit309_crit_edge

if.end89.params_format.exit309_crit_edge:         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %params_format.exit309

for.inc.i.i307:                                   ; preds = %if.end89
  %arrayidx.1.i.i305 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %110 = ptrtoint ptr %arrayidx.1.i.i305 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx.1.i.i305, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool.not.1.i.i306 = icmp eq i32 %111, 0
  br i1 %tobool.not.1.i.i306, label %for.inc.i.i307.cleanup195_crit_edge, label %for.inc.i.i307.params_format.exit309_crit_edge

for.inc.i.i307.params_format.exit309_crit_edge:   ; preds = %for.inc.i.i307
  call void @__sanitizer_cov_trace_pc() #13
  br label %params_format.exit309

for.inc.i.i307.cleanup195_crit_edge:              ; preds = %for.inc.i.i307
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup195

params_format.exit309:                            ; preds = %for.inc.i.i307.params_format.exit309_crit_edge, %if.end89.params_format.exit309_crit_edge
  %i.09.lcssa.i.i301 = phi i32 [ 0, %if.end89.params_format.exit309_crit_edge ], [ 32, %for.inc.i.i307.params_format.exit309_crit_edge ]
  %.lcssa.i.i302 = phi i32 [ %109, %if.end89.params_format.exit309_crit_edge ], [ %111, %for.inc.i.i307.params_format.exit309_crit_edge ]
  %112 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i302, i1 true) #11, !range !275
  %add.i.i303 = or i32 %112, %i.09.lcssa.i.i301
  %113 = zext i32 %add.i.i303 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %add.i.i303, label %params_format.exit309.cleanup195_crit_edge [
    i32 2, label %params_format.exit309.sw.epilog140_crit_edge
    i32 10, label %sw.bb122
  ]

params_format.exit309.sw.epilog140_crit_edge:     ; preds = %params_format.exit309
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog140

params_format.exit309.cleanup195_crit_edge:       ; preds = %params_format.exit309
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup195

sw.bb122:                                         ; preds = %params_format.exit309
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog140

sw.epilog140:                                     ; preds = %sw.bb122, %params_format.exit309.sw.epilog140_crit_edge
  %.sink325 = phi i16 [ 160, %sw.bb122 ], [ 64, %params_format.exit309.sw.epilog140_crit_edge ]
  %114 = ptrtoint ptr %rcr2 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %rcr2, align 2
  %116 = or i16 %115, %.sink325
  store i16 %116, ptr %rcr2, align 2
  %117 = or i16 %conv96, %.sink325
  %118 = ptrtoint ptr %rcr1 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %117, ptr %rcr1, align 2
  %119 = ptrtoint ptr %xcr2 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %xcr2, align 2
  %121 = or i16 %120, %.sink325
  store i16 %121, ptr %xcr2, align 2
  %122 = or i16 %conv103, %.sink325
  %123 = ptrtoint ptr %xcr1 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %122, ptr %xcr1, align 2
  %124 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %fmt, align 4
  %and142 = and i32 %125, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and142)
  %cmp143 = icmp eq i32 %and142, 16384
  br i1 %cmp143, label %if.then145, label %if.else157

if.then145:                                       ; preds = %sw.epilog140
  %clk_div = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 26
  %126 = ptrtoint ptr %clk_div to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %clk_div, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool146.not = icmp eq i32 %127, 0
  %spec.select292 = select i1 %tobool146.not, i32 1, i32 %127
  %in_freq = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 24
  %128 = ptrtoint ptr %in_freq to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %in_freq, align 4
  %div148 = udiv i32 %129, %spec.select292
  %arrayidx.i.i310 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %130 = ptrtoint ptr %arrayidx.i.i310 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx.i.i310, align 4
  %div150 = udiv i32 %div148, %131
  %mul151 = mul i32 %wlen.0, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %div150, i32 %mul151)
  %cmp152 = icmp ult i32 %div150, %mul151
  br i1 %cmp152, label %do.end, label %if.then145.if.end159_crit_edge

if.then145.if.end159_crit_edge:                   ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end159

do.end:                                           ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #13
  %call155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90) #14
  br label %cleanup195

if.else157:                                       ; preds = %sw.epilog140
  call void @__sanitizer_cov_trace_pc() #13
  %mul158 = mul i32 %wlen.0, %12
  br label %if.end159

if.end159:                                        ; preds = %if.else157, %if.then145.if.end159_crit_edge
  %framesize.0 = phi i32 [ %div150, %if.then145.if.end159_crit_edge ], [ %mul158, %if.else157 ]
  %srgr2 = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 15, i32 6
  %132 = ptrtoint ptr %srgr2 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %srgr2, align 2
  %134 = and i16 %133, -4096
  store i16 %134, ptr %srgr2, align 2
  %srgr1 = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 15, i32 7
  %135 = ptrtoint ptr %srgr1 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %srgr1, align 2
  %137 = and i16 %136, 255
  store i16 %137, ptr %srgr1, align 2
  %138 = zext i32 %and61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %138, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %and61, label %if.end159.sw.epilog191_crit_edge [
    i32 1, label %if.end159.sw.bb166_crit_edge
    i32 3, label %if.end159.sw.bb166_crit_edge328
    i32 4, label %if.end159.sw.bb180_crit_edge
    i32 5, label %if.end159.sw.bb180_crit_edge329
  ]

if.end159.sw.bb180_crit_edge329:                  ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb180

if.end159.sw.bb180_crit_edge:                     ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb180

if.end159.sw.bb166_crit_edge328:                  ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb166

if.end159.sw.bb166_crit_edge:                     ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb166

if.end159.sw.epilog191_crit_edge:                 ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog191

sw.bb166:                                         ; preds = %if.end159.sw.bb166_crit_edge, %if.end159.sw.bb166_crit_edge328
  %139 = trunc i32 %framesize.0 to i16
  %140 = add i16 %139, 4095
  %141 = and i16 %140, 4095
  %conv172 = or i16 %141, %134
  %142 = ptrtoint ptr %srgr2 to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %conv172, ptr %srgr2, align 2
  %143 = shl i16 %139, 7
  %144 = add i16 %143, -256
  %145 = and i16 %144, -256
  %conv179 = or i16 %145, %137
  %146 = ptrtoint ptr %srgr1 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %conv179, ptr %srgr1, align 2
  br label %sw.epilog191

sw.bb180:                                         ; preds = %if.end159.sw.bb180_crit_edge, %if.end159.sw.bb180_crit_edge329
  %147 = trunc i32 %framesize.0 to i16
  %148 = add i16 %147, 4095
  %149 = and i16 %148, 4095
  %conv186 = or i16 %149, %134
  %150 = ptrtoint ptr %srgr2 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %conv186, ptr %srgr2, align 2
  br label %sw.epilog191

sw.epilog191:                                     ; preds = %sw.bb180, %sw.bb166, %if.end159.sw.epilog191_crit_edge
  tail call fastcc void @omap_mcbsp_config(ptr noundef %3, ptr noundef %cfg_regs)
  %wlen193 = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 27
  %151 = ptrtoint ptr %wlen193 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %wlen.0, ptr %wlen193, align 4
  %152 = ptrtoint ptr %configured to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 1, ptr %configured, align 4
  br label %cleanup195

cleanup195:                                       ; preds = %sw.epilog191, %do.end, %params_format.exit309.cleanup195_crit_edge, %for.inc.i.i307.cleanup195_crit_edge, %if.end46.cleanup195_crit_edge, %while.end.cleanup195_crit_edge, %params_format.exit.cleanup195_crit_edge, %for.inc.i.i.cleanup195_crit_edge
  %retval.3 = phi i32 [ -22, %do.end ], [ 0, %sw.epilog191 ], [ -22, %params_format.exit.cleanup195_crit_edge ], [ 0, %if.end46.cleanup195_crit_edge ], [ -22, %params_format.exit309.cleanup195_crit_edge ], [ -22, %while.end.cleanup195_crit_edge ], [ -22, %for.inc.i.i.cleanup195_crit_edge ], [ -22, %for.inc.i.i307.cleanup195_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mcbsp_dai_prepare(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %pm_qos_req1 = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 28
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %not.cmp = xor i1 %cmp, true
  %cond = zext i1 %not.cmp to i32
  %cond3 = zext i1 %cmp to i32
  %arrayidx = getelementptr %struct.omap_mcbsp, ptr %3, i32 0, i32 25, i32 %cond3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx7 = getelementptr %struct.omap_mcbsp, ptr %3, i32 0, i32 25, i32 %cond
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp8 = icmp ult i32 %9, %7
  br i1 %cmp8, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %arrayidx11 = getelementptr %struct.omap_mcbsp, ptr %3, i32 0, i32 25, i32 %cond
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %latency.0 = phi i32 [ %11, %if.then ], [ %7, %lor.lhs.false.if.end_crit_edge ]
  %call12 = tail call zeroext i1 @cpu_latency_qos_request_active(ptr noundef %pm_qos_req1) #11
  br i1 %call12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cpu_latency_qos_update_request(ptr noundef %pm_qos_req1, i32 noundef %latency.0) #11
  br label %if.end17

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %latency.0)
  %tobool14.not = icmp eq i32 %latency.0, 0
  br i1 %tobool14.not, label %if.else.if.end17_crit_edge, label %if.then15

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cpu_latency_qos_add_request(ptr noundef %pm_qos_req1, i32 noundef %latency.0) #11
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.else.if.end17_crit_edge, %if.then13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mcbsp_dai_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge25
    i32 4, label %entry.sw.bb_crit_edge26
    i32 0, label %entry.sw.bb1_crit_edge
    i32 5, label %entry.sw.bb1_crit_edge27
    i32 3, label %entry.sw.bb1_crit_edge28
  ]

entry.sw.bb1_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1

entry.sw.bb1_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1

entry.sw.bb_crit_edge26:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge25:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge25, %entry.sw.bb_crit_edge26
  %active = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %active, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %active, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %7 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  %conv.i = zext i1 %cmp.i to i32
  %lnot.i = xor i1 %cmp.i, true
  %lnot.ext.i = zext i1 %lnot.i to i32
  %st_data.i = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 14
  %9 = ptrtoint ptr %st_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %st_data.i, align 4
  %tobool1.not.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i, label %sw.bb.if.end.i_crit_edge, label %if.then.i

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 @omap_mcbsp_st_start(ptr noundef %3) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb.if.end.i_crit_edge
  %io_base.i.i = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_base.i.i, align 4
  %pdata.i.i = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 13
  %13 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdata.i.i, align 4
  %reg_step.i.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %reg_step.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %reg_step.i.i, align 1
  %conv1.i.i = zext i8 %16 to i32
  %reg_size.i.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %reg_size.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %reg_size.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp.i.i = icmp eq i8 %18, 2
  %reg_cache.i.i = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 21
  %19 = ptrtoint ptr %reg_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_cache.i.i, align 4
  br i1 %cmp.i.i, label %omap_mcbsp_read.exit.i, label %omap_mcbsp_read.exit.thread.i

omap_mcbsp_read.exit.i:                           ; preds = %if.end.i
  %arrayidx.i.i = getelementptr i16, ptr %20, i32 18
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx.i.i, align 2
  %23 = and i16 %22, 3840
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool5.not.i = icmp eq i16 %23, 0
  br i1 %tobool5.not.i, label %omap_mcbsp_read.exit.i.if.then.i285.i_crit_edge, label %omap_mcbsp_read.exit128.i

omap_mcbsp_read.exit.i.if.then.i285.i_crit_edge:  ; preds = %omap_mcbsp_read.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i285.i

omap_mcbsp_read.exit.thread.i:                    ; preds = %if.end.i
  %arrayidx15.i.i = getelementptr i32, ptr %20, i32 18
  %24 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx15.i.i, align 4
  %and390.i = and i32 %25, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and390.i)
  %tobool5.not391.i = icmp eq i32 %and390.i, 0
  br i1 %tobool5.not391.i, label %omap_mcbsp_read.exit.thread.i.if.else.i288.i_crit_edge, label %omap_mcbsp_read.exit128.thread.i

omap_mcbsp_read.exit.thread.i.if.else.i288.i_crit_edge: ; preds = %omap_mcbsp_read.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i288.i

omap_mcbsp_read.exit128.i:                        ; preds = %omap_mcbsp_read.exit.i
  %arrayidx.i105.i = getelementptr i16, ptr %20, i32 4
  %26 = ptrtoint ptr %arrayidx.i105.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.i105.i, align 2
  %arrayidx.i122.i = getelementptr i16, ptr %20, i32 5
  %28 = ptrtoint ptr %arrayidx.i122.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.i122.i, align 2
  %or467.i = or i16 %29, %27
  %30 = and i16 %or467.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool10.not.i = icmp eq i16 %30, 0
  br i1 %tobool10.not.i, label %if.then.i156.i, label %omap_mcbsp_read.exit128.i.if.then.i285.i_crit_edge

omap_mcbsp_read.exit128.i.if.then.i285.i_crit_edge: ; preds = %omap_mcbsp_read.exit128.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i285.i

omap_mcbsp_read.exit128.thread.i:                 ; preds = %omap_mcbsp_read.exit.thread.i
  %arrayidx15.i109.i = getelementptr i32, ptr %20, i32 4
  %31 = ptrtoint ptr %arrayidx15.i109.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx15.i109.i, align 4
  %arrayidx15.i126.i = getelementptr i32, ptr %20, i32 5
  %33 = ptrtoint ptr %arrayidx15.i126.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx15.i126.i, align 4
  %or405.i = or i32 %34, %32
  %and9406.i = and i32 %or405.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9406.i)
  %tobool10407.not.i = icmp eq i32 %and9406.i, 0
  br i1 %tobool10407.not.i, label %if.else.i157.i, label %omap_mcbsp_read.exit128.thread.i.if.else.i288.i_crit_edge

omap_mcbsp_read.exit128.thread.i.if.else.i288.i_crit_edge: ; preds = %omap_mcbsp_read.exit128.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i288.i

if.then.i156.i:                                   ; preds = %omap_mcbsp_read.exit128.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i99.i = shl nuw nsw i32 %conv1.i.i, 2
  %35 = or i16 %27, 64
  %add.ptr.i151416.i = getelementptr i8, ptr %12, i32 %mul.i99.i
  %36 = ptrtoint ptr %arrayidx.i105.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %arrayidx.i105.i, align 2
  %37 = tail call i16 @llvm.bswap.i16(i16 %35) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i151416.i, i16 %37) #11, !srcloc !273
  br label %omap_mcbsp_write.exit.i

if.else.i157.i:                                   ; preds = %omap_mcbsp_read.exit128.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i99392.i = shl nuw nsw i32 %conv1.i.i, 2
  %conv18.i = and i32 %32, 65471
  %or19.i = or i32 %conv18.i, 64
  %add.ptr.i151.i = getelementptr i8, ptr %12, i32 %mul.i99392.i
  %38 = ptrtoint ptr %arrayidx15.i109.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or19.i, ptr %arrayidx15.i109.i, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %or19.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i151.i, i32 %39) #11, !srcloc !274
  br label %omap_mcbsp_write.exit.i

omap_mcbsp_write.exit.i:                          ; preds = %if.else.i157.i, %if.then.i156.i
  %40 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %io_base.i.i, align 4
  %42 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdata.i.i, align 4
  %reg_step.i160.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %reg_step.i160.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %reg_step.i160.i, align 1
  %conv1.i161.i = zext i8 %45 to i32
  %mul.i162.i = shl nuw nsw i32 %conv1.i161.i, 2
  %reg_size.i164.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %43, i32 0, i32 2
  %46 = ptrtoint ptr %reg_size.i164.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %reg_size.i164.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %47)
  %cmp.i165.i = icmp eq i8 %47, 2
  %48 = ptrtoint ptr %reg_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_cache.i.i, align 4
  br i1 %cmp.i165.i, label %if.then.i186.i, label %if.else.i189.i

if.then.i186.i:                                   ; preds = %omap_mcbsp_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i168.i = getelementptr i16, ptr %49, i32 4
  %50 = ptrtoint ptr %arrayidx.i168.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx.i168.i, align 2
  %add.ptr.i180422.i = getelementptr i8, ptr %41, i32 %mul.i162.i
  %52 = zext i1 %cmp.i to i16
  %conv5.i183.i = or i16 %51, %52
  store i16 %conv5.i183.i, ptr %arrayidx.i168.i, align 2
  %53 = tail call i16 @llvm.bswap.i16(i16 %conv5.i183.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i180422.i, i16 %53) #11, !srcloc !273
  br label %omap_mcbsp_write.exit190.i

if.else.i189.i:                                   ; preds = %omap_mcbsp_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx15.i172.i = getelementptr i32, ptr %49, i32 4
  %54 = ptrtoint ptr %arrayidx15.i172.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx15.i172.i, align 4
  %conv24.c.i = and i32 %55, 65535
  %or25.c.i = or i32 %conv24.c.i, %conv.i
  %add.ptr.i180.i = getelementptr i8, ptr %41, i32 %mul.i162.i
  store i32 %or25.c.i, ptr %arrayidx15.i172.i, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %or25.c.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180.i, i32 %56) #11, !srcloc !274
  br label %omap_mcbsp_write.exit190.i

omap_mcbsp_write.exit190.i:                       ; preds = %if.else.i189.i, %if.then.i186.i
  %57 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %io_base.i.i, align 4
  %59 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdata.i.i, align 4
  %reg_step.i193.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %reg_step.i193.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %reg_step.i193.i, align 1
  %conv1.i194.i = zext i8 %62 to i32
  %mul.i195.i = mul nuw nsw i32 %conv1.i194.i, 5
  %reg_size.i197.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %60, i32 0, i32 2
  %63 = ptrtoint ptr %reg_size.i197.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %reg_size.i197.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %64)
  %cmp.i198.i = icmp eq i8 %64, 2
  %65 = ptrtoint ptr %reg_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg_cache.i.i, align 4
  br i1 %cmp.i198.i, label %if.then.i219.i, label %if.else.i222.i

if.then.i219.i:                                   ; preds = %omap_mcbsp_write.exit190.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i201.i = getelementptr i16, ptr %66, i32 5
  %67 = ptrtoint ptr %arrayidx.i201.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx.i201.i, align 2
  %add.ptr.i213428.i = getelementptr i8, ptr %58, i32 %mul.i195.i
  %69 = zext i1 %lnot.i to i16
  %conv5.i216.i = or i16 %68, %69
  store i16 %conv5.i216.i, ptr %arrayidx.i201.i, align 2
  %70 = tail call i16 @llvm.bswap.i16(i16 %conv5.i216.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i213428.i, i16 %70) #11, !srcloc !273
  br label %omap_mcbsp_write.exit223.i

if.else.i222.i:                                   ; preds = %omap_mcbsp_write.exit190.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx15.i205.i = getelementptr i32, ptr %66, i32 5
  %71 = ptrtoint ptr %arrayidx15.i205.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx15.i205.i, align 4
  %conv29.c.i = and i32 %72, 65535
  %or30.c.i = or i32 %conv29.c.i, %lnot.ext.i
  %add.ptr.i213.i = getelementptr i8, ptr %58, i32 %mul.i195.i
  store i32 %or30.c.i, ptr %arrayidx15.i205.i, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %or30.c.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i213.i, i32 %73) #11, !srcloc !274
  br label %omap_mcbsp_write.exit223.i

omap_mcbsp_write.exit223.i:                       ; preds = %if.else.i222.i, %if.then.i219.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 107374000) #11
  %75 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %io_base.i.i, align 4
  %77 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pdata.i.i, align 4
  %reg_step.i226.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %reg_step.i226.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %reg_step.i226.i, align 1
  %conv1.i227.i = zext i8 %80 to i32
  %mul.i228.i = shl nuw nsw i32 %conv1.i227.i, 2
  %reg_size.i230.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %78, i32 0, i32 2
  %81 = ptrtoint ptr %reg_size.i230.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %reg_size.i230.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %82)
  %cmp.i231.i = icmp eq i8 %82, 2
  %83 = ptrtoint ptr %reg_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %reg_cache.i.i, align 4
  br i1 %cmp.i231.i, label %if.then.i252.i, label %if.else.i255.i

if.then.i252.i:                                   ; preds = %omap_mcbsp_write.exit223.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i234.i = getelementptr i16, ptr %84, i32 4
  %85 = ptrtoint ptr %arrayidx.i234.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx.i234.i, align 2
  %87 = or i16 %86, 128
  %add.ptr.i246434.i = getelementptr i8, ptr %76, i32 %mul.i228.i
  store i16 %87, ptr %arrayidx.i234.i, align 2
  %88 = tail call i16 @llvm.bswap.i16(i16 %87) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i246434.i, i16 %88) #11, !srcloc !273
  br label %if.end37.i

if.else.i255.i:                                   ; preds = %omap_mcbsp_write.exit223.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx15.i238.i = getelementptr i32, ptr %84, i32 4
  %89 = ptrtoint ptr %arrayidx15.i238.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx15.i238.i, align 4
  %conv35.i = and i32 %90, 65407
  %or36.i = or i32 %conv35.i, 128
  %add.ptr.i246.i = getelementptr i8, ptr %76, i32 %mul.i228.i
  store i32 %or36.i, ptr %arrayidx15.i238.i, align 4
  %91 = tail call i32 @llvm.bswap.i32(i32 %or36.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i246.i, i32 %91) #11, !srcloc !274
  br label %if.end37.i

if.then.i285.i:                                   ; preds = %omap_mcbsp_read.exit128.i.if.then.i285.i_crit_edge, %omap_mcbsp_read.exit.i.if.then.i285.i_crit_edge
  %mul.i261.i = shl nuw nsw i32 %conv1.i.i, 2
  %arrayidx.i267.i = getelementptr i16, ptr %20, i32 4
  %92 = ptrtoint ptr %arrayidx.i267.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %arrayidx.i267.i, align 2
  %add.ptr.i279444.i = getelementptr i8, ptr %12, i32 %mul.i261.i
  %94 = zext i1 %cmp.i to i16
  %conv5.i282.i = or i16 %93, %94
  store i16 %conv5.i282.i, ptr %arrayidx.i267.i, align 2
  %95 = tail call i16 @llvm.bswap.i16(i16 %conv5.i282.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i279444.i, i16 %95) #11, !srcloc !273
  br label %omap_mcbsp_write.exit289.i

if.else.i288.i:                                   ; preds = %omap_mcbsp_read.exit128.thread.i.if.else.i288.i_crit_edge, %omap_mcbsp_read.exit.thread.i.if.else.i288.i_crit_edge
  %mul.i261437.i = shl nuw nsw i32 %conv1.i.i, 2
  %arrayidx15.i271.i = getelementptr i32, ptr %20, i32 4
  %96 = ptrtoint ptr %arrayidx15.i271.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx15.i271.i, align 4
  %conv24.c90.i = and i32 %97, 65535
  %or25.c91.i = or i32 %conv24.c90.i, %conv.i
  %add.ptr.i279.i = getelementptr i8, ptr %12, i32 %mul.i261437.i
  store i32 %or25.c91.i, ptr %arrayidx15.i271.i, align 4
  %98 = tail call i32 @llvm.bswap.i32(i32 %or25.c91.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i279.i, i32 %98) #11, !srcloc !274
  br label %omap_mcbsp_write.exit289.i

omap_mcbsp_write.exit289.i:                       ; preds = %if.else.i288.i, %if.then.i285.i
  %99 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %io_base.i.i, align 4
  %101 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pdata.i.i, align 4
  %reg_step.i292.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %102, i32 0, i32 3
  %103 = ptrtoint ptr %reg_step.i292.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %reg_step.i292.i, align 1
  %conv1.i293.i = zext i8 %104 to i32
  %mul.i294.i = mul nuw nsw i32 %conv1.i293.i, 5
  %reg_size.i296.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %102, i32 0, i32 2
  %105 = ptrtoint ptr %reg_size.i296.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %reg_size.i296.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %106)
  %cmp.i297.i = icmp eq i8 %106, 2
  %107 = ptrtoint ptr %reg_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %reg_cache.i.i, align 4
  br i1 %cmp.i297.i, label %if.then.i318.i, label %if.else.i321.i

if.then.i318.i:                                   ; preds = %omap_mcbsp_write.exit289.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i300.i = getelementptr i16, ptr %108, i32 5
  %109 = ptrtoint ptr %arrayidx.i300.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %arrayidx.i300.i, align 2
  %add.ptr.i312450.i = getelementptr i8, ptr %100, i32 %mul.i294.i
  %111 = zext i1 %lnot.i to i16
  %conv5.i315.i = or i16 %110, %111
  store i16 %conv5.i315.i, ptr %arrayidx.i300.i, align 2
  %112 = tail call i16 @llvm.bswap.i16(i16 %conv5.i315.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i312450.i, i16 %112) #11, !srcloc !273
  br label %omap_mcbsp_write.exit322.i

if.else.i321.i:                                   ; preds = %omap_mcbsp_write.exit289.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx15.i304.i = getelementptr i32, ptr %108, i32 5
  %113 = ptrtoint ptr %arrayidx15.i304.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx15.i304.i, align 4
  %conv29.c93.i = and i32 %114, 65535
  %or30.c94.i = or i32 %conv29.c93.i, %lnot.ext.i
  %add.ptr.i312.i = getelementptr i8, ptr %100, i32 %mul.i294.i
  store i32 %or30.c94.i, ptr %arrayidx15.i304.i, align 4
  %115 = tail call i32 @llvm.bswap.i32(i32 %or30.c94.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i312.i, i32 %115) #11, !srcloc !274
  br label %omap_mcbsp_write.exit322.i

omap_mcbsp_write.exit322.i:                       ; preds = %if.else.i321.i, %if.then.i318.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %116(i32 noundef 107374000) #11
  br label %if.end37.i

if.end37.i:                                       ; preds = %omap_mcbsp_write.exit322.i, %if.else.i255.i, %if.then.i252.i
  %117 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pdata.i.i, align 4
  %has_ccr.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %118, i32 0, i32 5
  %119 = ptrtoint ptr %has_ccr.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %has_ccr.i, align 1, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool38.not.i = icmp eq i8 %120, 0
  br i1 %tobool38.not.i, label %if.end37.i.omap_mcbsp_start.exit_crit_edge, label %if.then39.i

if.end37.i.omap_mcbsp_start.exit_crit_edge:       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_mcbsp_start.exit

if.then39.i:                                      ; preds = %if.end37.i
  %121 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %io_base.i.i, align 4
  %reg_step.i325.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %118, i32 0, i32 3
  %123 = ptrtoint ptr %reg_step.i325.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %reg_step.i325.i, align 1
  %conv1.i326.i = zext i8 %124 to i32
  %mul.i327.i = mul nuw nsw i32 %conv1.i326.i, 43
  %reg_size.i329.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %118, i32 0, i32 2
  %125 = ptrtoint ptr %reg_size.i329.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %reg_size.i329.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %126)
  %cmp.i330.i = icmp eq i8 %126, 2
  %127 = ptrtoint ptr %reg_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %reg_cache.i.i, align 4
  br i1 %cmp.i330.i, label %if.then.i351.i, label %if.else.i354.i

if.then.i351.i:                                   ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i333.i = getelementptr i16, ptr %128, i32 43
  %129 = ptrtoint ptr %arrayidx.i333.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %arrayidx.i333.i, align 2
  %add.ptr.i345457.i = getelementptr i8, ptr %122, i32 %mul.i327.i
  %131 = zext i1 %cmp.i to i16
  %132 = xor i16 %131, -1
  %conv5.i348.i = and i16 %130, %132
  store i16 %conv5.i348.i, ptr %arrayidx.i333.i, align 2
  %133 = tail call i16 @llvm.bswap.i16(i16 %conv5.i348.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i345457.i, i16 %133) #11, !srcloc !273
  br label %omap_mcbsp_write.exit355.i

if.else.i354.i:                                   ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx15.i337.i = getelementptr i32, ptr %128, i32 43
  %134 = ptrtoint ptr %arrayidx15.i337.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx15.i337.i, align 4
  %and44.i = xor i32 %conv.i, 65535
  %conv46.i = and i32 %135, %and44.i
  %add.ptr.i345.i = getelementptr i8, ptr %122, i32 %mul.i327.i
  store i32 %conv46.i, ptr %arrayidx15.i337.i, align 4
  %136 = tail call i32 @llvm.bswap.i32(i32 %conv46.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i345.i, i32 %136) #11, !srcloc !274
  br label %omap_mcbsp_write.exit355.i

omap_mcbsp_write.exit355.i:                       ; preds = %if.else.i354.i, %if.then.i351.i
  %137 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %io_base.i.i, align 4
  %139 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %pdata.i.i, align 4
  %reg_step.i358.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %140, i32 0, i32 3
  %141 = ptrtoint ptr %reg_step.i358.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %reg_step.i358.i, align 1
  %conv1.i359.i = zext i8 %142 to i32
  %mul.i360.i = mul nuw nsw i32 %conv1.i359.i, 44
  %reg_size.i362.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %140, i32 0, i32 2
  %143 = ptrtoint ptr %reg_size.i362.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %reg_size.i362.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %144)
  %cmp.i363.i = icmp eq i8 %144, 2
  %145 = ptrtoint ptr %reg_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %reg_cache.i.i, align 4
  br i1 %cmp.i363.i, label %if.then.i384.i, label %if.else.i387.i

if.then.i384.i:                                   ; preds = %omap_mcbsp_write.exit355.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i366.i = getelementptr i16, ptr %146, i32 44
  %147 = ptrtoint ptr %arrayidx.i366.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %arrayidx.i366.i, align 2
  %add.ptr.i378464.i = getelementptr i8, ptr %138, i32 %mul.i360.i
  %149 = zext i1 %lnot.i to i16
  %150 = xor i16 %149, -1
  %conv5.i381.i = and i16 %148, %150
  store i16 %conv5.i381.i, ptr %arrayidx.i366.i, align 2
  %151 = tail call i16 @llvm.bswap.i16(i16 %conv5.i381.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i378464.i, i16 %151) #11, !srcloc !273
  br label %omap_mcbsp_start.exit

if.else.i387.i:                                   ; preds = %omap_mcbsp_write.exit355.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx15.i370.i = getelementptr i32, ptr %146, i32 44
  %152 = ptrtoint ptr %arrayidx15.i370.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx15.i370.i, align 4
  %and53.i = xor i32 %lnot.ext.i, 65535
  %conv55.i = and i32 %153, %and53.i
  %add.ptr.i378.i = getelementptr i8, ptr %138, i32 %mul.i360.i
  store i32 %conv55.i, ptr %arrayidx15.i370.i, align 4
  %154 = tail call i32 @llvm.bswap.i32(i32 %conv55.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i378.i, i32 %154) #11, !srcloc !274
  br label %omap_mcbsp_start.exit

omap_mcbsp_start.exit:                            ; preds = %if.else.i387.i, %if.then.i384.i, %if.end37.i.omap_mcbsp_start.exit_crit_edge
  tail call fastcc void @omap_mcbsp_dump_reg(ptr noundef %3) #11
  br label %cleanup

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge27, %entry.sw.bb1_crit_edge28
  %stream2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %155 = ptrtoint ptr %stream2 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %stream2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %cmp.i8 = icmp eq i32 %156, 0
  %conv.i9 = zext i1 %cmp.i8 to i32
  %lnot.i10 = xor i1 %cmp.i8, true
  %lnot.ext.i11 = zext i1 %lnot.i10 to i32
  %pdata.i = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 13
  %157 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %pdata.i, align 4
  %has_ccr.i12 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %158, i32 0, i32 5
  %159 = ptrtoint ptr %has_ccr.i12 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %has_ccr.i12, align 1, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool1.not.i13 = icmp eq i8 %160, 0
  br i1 %tobool1.not.i13, label %sw.bb1.if.end.i23_crit_edge, label %if.then.i20

sw.bb1.if.end.i23_crit_edge:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i23

if.then.i20:                                      ; preds = %sw.bb1
  %io_base.i.i14 = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 5
  %161 = ptrtoint ptr %io_base.i.i14 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %io_base.i.i14, align 4
  %reg_step.i.i15 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %158, i32 0, i32 3
  %163 = ptrtoint ptr %reg_step.i.i15 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %reg_step.i.i15, align 1
  %conv1.i.i16 = zext i8 %164 to i32
  %mul.i.i = mul nuw nsw i32 %conv1.i.i16, 43
  %reg_size.i.i17 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %158, i32 0, i32 2
  %165 = ptrtoint ptr %reg_size.i.i17 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %reg_size.i.i17, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %166)
  %cmp.i.i18 = icmp eq i8 %166, 2
  %reg_cache.i.i19 = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 21
  %167 = ptrtoint ptr %reg_cache.i.i19 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %reg_cache.i.i19, align 4
  br i1 %cmp.i.i18, label %if.then.i84.i, label %if.else.i85.i

if.then.i84.i:                                    ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i21 = getelementptr i16, ptr %168, i32 43
  %169 = ptrtoint ptr %arrayidx.i.i21 to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %arrayidx.i.i21, align 2
  %add.ptr.i79255.i = getelementptr i8, ptr %162, i32 %mul.i.i
  %171 = zext i1 %cmp.i8 to i16
  %conv5.i.i = or i16 %170, %171
  store i16 %conv5.i.i, ptr %arrayidx.i.i21, align 2
  %172 = tail call i16 @llvm.bswap.i16(i16 %conv5.i.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i79255.i, i16 %172) #11, !srcloc !273
  br label %if.end.i23

if.else.i85.i:                                    ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx15.i.i22 = getelementptr i32, ptr %168, i32 43
  %173 = ptrtoint ptr %arrayidx15.i.i22 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx15.i.i22, align 4
  %call.masked.i = and i32 %174, 65535
  %conv6.i = or i32 %call.masked.i, %conv.i9
  %add.ptr.i79.i = getelementptr i8, ptr %162, i32 %mul.i.i
  store i32 %conv6.i, ptr %arrayidx15.i.i22, align 4
  %175 = tail call i32 @llvm.bswap.i32(i32 %conv6.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79.i, i32 %175) #11, !srcloc !274
  br label %if.end.i23

if.end.i23:                                       ; preds = %if.else.i85.i, %if.then.i84.i, %sw.bb1.if.end.i23_crit_edge
  %io_base.i86.i = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 5
  %176 = ptrtoint ptr %io_base.i86.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %io_base.i86.i, align 4
  %178 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %pdata.i, align 4
  %reg_step.i88.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %179, i32 0, i32 3
  %180 = ptrtoint ptr %reg_step.i88.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %reg_step.i88.i, align 1
  %conv1.i89.i = zext i8 %181 to i32
  %mul.i90.i = shl nuw nsw i32 %conv1.i89.i, 2
  %reg_size.i92.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %179, i32 0, i32 2
  %182 = ptrtoint ptr %reg_size.i92.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %reg_size.i92.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %183)
  %cmp.i93.i = icmp eq i8 %183, 2
  %reg_cache.i95.i = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 21
  %184 = ptrtoint ptr %reg_cache.i95.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %reg_cache.i95.i, align 4
  br i1 %cmp.i93.i, label %if.then.i114.i, label %if.else.i117.i

if.then.i114.i:                                   ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i96.i = getelementptr i16, ptr %185, i32 4
  %186 = ptrtoint ptr %arrayidx.i96.i to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %arrayidx.i96.i, align 2
  %add.ptr.i108262.i = getelementptr i8, ptr %177, i32 %mul.i90.i
  %188 = zext i1 %cmp.i8 to i16
  %189 = xor i16 %188, -1
  %conv5.i111.i = and i16 %187, %189
  store i16 %conv5.i111.i, ptr %arrayidx.i96.i, align 2
  %190 = tail call i16 @llvm.bswap.i16(i16 %conv5.i111.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i108262.i, i16 %190) #11, !srcloc !273
  br label %omap_mcbsp_write.exit118.i

if.else.i117.i:                                   ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx15.i100.i = getelementptr i32, ptr %185, i32 4
  %191 = ptrtoint ptr %arrayidx15.i100.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx15.i100.i, align 4
  %conv9.i = xor i32 %conv.i9, 65535
  %and10.i = and i32 %192, %conv9.i
  %add.ptr.i108.i = getelementptr i8, ptr %177, i32 %mul.i90.i
  store i32 %and10.i, ptr %arrayidx15.i100.i, align 4
  %193 = tail call i32 @llvm.bswap.i32(i32 %and10.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108.i, i32 %193) #11, !srcloc !274
  br label %omap_mcbsp_write.exit118.i

omap_mcbsp_write.exit118.i:                       ; preds = %if.else.i117.i, %if.then.i114.i
  %194 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %pdata.i, align 4
  %has_ccr13.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %195, i32 0, i32 5
  %196 = ptrtoint ptr %has_ccr13.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %has_ccr13.i, align 1, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool14.not.i = icmp eq i8 %197, 0
  br i1 %tobool14.not.i, label %omap_mcbsp_write.exit118.i.if.end24.i_crit_edge, label %if.then15.i

omap_mcbsp_write.exit118.i.if.end24.i_crit_edge:  ; preds = %omap_mcbsp_write.exit118.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

if.then15.i:                                      ; preds = %omap_mcbsp_write.exit118.i
  %198 = ptrtoint ptr %io_base.i86.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %io_base.i86.i, align 4
  %reg_step.i121.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %195, i32 0, i32 3
  %200 = ptrtoint ptr %reg_step.i121.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %reg_step.i121.i, align 1
  %conv1.i122.i = zext i8 %201 to i32
  %mul.i123.i = mul nuw nsw i32 %conv1.i122.i, 44
  %reg_size.i125.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %195, i32 0, i32 2
  %202 = ptrtoint ptr %reg_size.i125.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %reg_size.i125.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %203)
  %cmp.i126.i = icmp eq i8 %203, 2
  %204 = ptrtoint ptr %reg_cache.i95.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %reg_cache.i95.i, align 4
  br i1 %cmp.i126.i, label %if.then.i147.i, label %if.else.i150.i

if.then.i147.i:                                   ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i129.i = getelementptr i16, ptr %205, i32 44
  %206 = ptrtoint ptr %arrayidx.i129.i to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %arrayidx.i129.i, align 2
  %add.ptr.i141268.i = getelementptr i8, ptr %199, i32 %mul.i123.i
  %208 = zext i1 %lnot.i10 to i16
  %conv5.i144.i = or i16 %207, %208
  store i16 %conv5.i144.i, ptr %arrayidx.i129.i, align 2
  %209 = tail call i16 @llvm.bswap.i16(i16 %conv5.i144.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i141268.i, i16 %209) #11, !srcloc !273
  br label %if.end24.i

if.else.i150.i:                                   ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx15.i133.i = getelementptr i32, ptr %205, i32 44
  %210 = ptrtoint ptr %arrayidx15.i133.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx15.i133.i, align 4
  %call16.masked.i = and i32 %211, 65535
  %conv23.i = or i32 %call16.masked.i, %lnot.ext.i11
  %add.ptr.i141.i = getelementptr i8, ptr %199, i32 %mul.i123.i
  store i32 %conv23.i, ptr %arrayidx15.i133.i, align 4
  %212 = tail call i32 @llvm.bswap.i32(i32 %conv23.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141.i, i32 %212) #11, !srcloc !274
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.else.i150.i, %if.then.i147.i, %omap_mcbsp_write.exit118.i.if.end24.i_crit_edge
  %213 = ptrtoint ptr %io_base.i86.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %io_base.i86.i, align 4
  %215 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %pdata.i, align 4
  %reg_step.i154.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %216, i32 0, i32 3
  %217 = ptrtoint ptr %reg_step.i154.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %reg_step.i154.i, align 1
  %conv1.i155.i = zext i8 %218 to i32
  %mul.i156.i = mul nuw nsw i32 %conv1.i155.i, 5
  %reg_size.i158.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %216, i32 0, i32 2
  %219 = ptrtoint ptr %reg_size.i158.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %reg_size.i158.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %220)
  %cmp.i159.i = icmp eq i8 %220, 2
  %221 = ptrtoint ptr %reg_cache.i95.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %reg_cache.i95.i, align 4
  br i1 %cmp.i159.i, label %if.then.i180.i, label %if.else.i183.i

if.then.i180.i:                                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i162.i = getelementptr i16, ptr %222, i32 5
  %223 = ptrtoint ptr %arrayidx.i162.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %arrayidx.i162.i, align 2
  %add.ptr.i174275.i = getelementptr i8, ptr %214, i32 %mul.i156.i
  %225 = zext i1 %lnot.i10 to i16
  %226 = xor i16 %225, -1
  %conv5.i177.i = and i16 %224, %226
  store i16 %conv5.i177.i, ptr %arrayidx.i162.i, align 2
  %227 = tail call i16 @llvm.bswap.i16(i16 %conv5.i177.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i174275.i, i16 %227) #11, !srcloc !273
  br label %omap_mcbsp_write.exit184.i

if.else.i183.i:                                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx15.i166.i = getelementptr i32, ptr %222, i32 5
  %228 = ptrtoint ptr %arrayidx15.i166.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %arrayidx15.i166.i, align 4
  %conv27.i = xor i32 %lnot.ext.i11, 65535
  %and29.i = and i32 %229, %conv27.i
  %add.ptr.i174.i = getelementptr i8, ptr %214, i32 %mul.i156.i
  store i32 %and29.i, ptr %arrayidx15.i166.i, align 4
  %230 = tail call i32 @llvm.bswap.i32(i32 %and29.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i174.i, i32 %230) #11, !srcloc !274
  br label %omap_mcbsp_write.exit184.i

omap_mcbsp_write.exit184.i:                       ; preds = %if.else.i183.i, %if.then.i180.i
  %231 = ptrtoint ptr %io_base.i86.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %io_base.i86.i, align 4
  %233 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %pdata.i, align 4
  %reg_step.i187.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %234, i32 0, i32 3
  %235 = ptrtoint ptr %reg_step.i187.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %reg_step.i187.i, align 1
  %conv1.i188.i = zext i8 %236 to i32
  %mul.i189.i = shl nuw nsw i32 %conv1.i188.i, 2
  %reg_size.i191.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %234, i32 0, i32 2
  %237 = ptrtoint ptr %reg_size.i191.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %reg_size.i191.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %238)
  %cmp.i192.i = icmp eq i8 %238, 2
  %239 = ptrtoint ptr %reg_cache.i95.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %reg_cache.i95.i, align 4
  br i1 %cmp.i192.i, label %omap_mcbsp_read.exit218.i, label %omap_mcbsp_read.exit218.thread.i

omap_mcbsp_read.exit218.i:                        ; preds = %omap_mcbsp_write.exit184.i
  %arrayidx.i195.i = getelementptr i16, ptr %240, i32 4
  %241 = ptrtoint ptr %arrayidx.i195.i to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %arrayidx.i195.i, align 2
  %arrayidx.i212.i = getelementptr i16, ptr %240, i32 5
  %243 = ptrtoint ptr %arrayidx.i212.i to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %arrayidx.i212.i, align 2
  %or32292.i = or i16 %244, %242
  %245 = and i16 %or32292.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %245)
  %tobool34.not.i = icmp eq i16 %245, 0
  br i1 %tobool34.not.i, label %if.then.i247.i, label %omap_mcbsp_read.exit218.i.if.end43.i_crit_edge

omap_mcbsp_read.exit218.i.if.end43.i_crit_edge:   ; preds = %omap_mcbsp_read.exit218.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43.i

omap_mcbsp_read.exit218.thread.i:                 ; preds = %omap_mcbsp_write.exit184.i
  %arrayidx15.i199.i = getelementptr i32, ptr %240, i32 4
  %246 = ptrtoint ptr %arrayidx15.i199.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %arrayidx15.i199.i, align 4
  %arrayidx15.i216.i = getelementptr i32, ptr %240, i32 5
  %248 = ptrtoint ptr %arrayidx15.i216.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %arrayidx15.i216.i, align 4
  %or32284.i = or i32 %249, %247
  %and33285.i = and i32 %or32284.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33285.i)
  %tobool34.not286.i = icmp eq i32 %and33285.i, 0
  br i1 %tobool34.not286.i, label %if.else.i250.i, label %omap_mcbsp_read.exit218.thread.i.if.end43.i_crit_edge

omap_mcbsp_read.exit218.thread.i.if.end43.i_crit_edge: ; preds = %omap_mcbsp_read.exit218.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43.i

if.then.i247.i:                                   ; preds = %omap_mcbsp_read.exit218.i
  call void @__sanitizer_cov_trace_pc() #13
  %250 = and i16 %242, -65
  %add.ptr.i241289.i = getelementptr i8, ptr %232, i32 %mul.i189.i
  %251 = ptrtoint ptr %arrayidx.i195.i to i32
  call void @__asan_store2_noabort(i32 %251)
  store i16 %250, ptr %arrayidx.i195.i, align 2
  %252 = tail call i16 @llvm.bswap.i16(i16 %250) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i241289.i, i16 %252) #11, !srcloc !273
  br label %if.end43.i

if.else.i250.i:                                   ; preds = %omap_mcbsp_read.exit218.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  %and42.i = and i32 %247, 65471
  %add.ptr.i241.i = getelementptr i8, ptr %232, i32 %mul.i189.i
  %253 = ptrtoint ptr %arrayidx15.i199.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %and42.i, ptr %arrayidx15.i199.i, align 4
  %254 = tail call i32 @llvm.bswap.i32(i32 %and42.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i241.i, i32 %254) #11, !srcloc !274
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.else.i250.i, %if.then.i247.i, %omap_mcbsp_read.exit218.thread.i.if.end43.i_crit_edge, %omap_mcbsp_read.exit218.i.if.end43.i_crit_edge
  %st_data.i24 = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 14
  %255 = ptrtoint ptr %st_data.i24 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %st_data.i24, align 4
  %tobool44.not.i = icmp eq ptr %256, null
  br i1 %tobool44.not.i, label %if.end43.i.omap_mcbsp_stop.exit_crit_edge, label %if.then45.i

if.end43.i.omap_mcbsp_stop.exit_crit_edge:        ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_mcbsp_stop.exit

if.then45.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  %call46.i = tail call i32 @omap_mcbsp_st_stop(ptr noundef %3) #11
  br label %omap_mcbsp_stop.exit

omap_mcbsp_stop.exit:                             ; preds = %if.then45.i, %if.end43.i.omap_mcbsp_stop.exit_crit_edge
  %active3 = getelementptr inbounds %struct.omap_mcbsp, ptr %3, i32 0, i32 7
  %257 = ptrtoint ptr %active3 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %active3, align 4
  %dec = add i32 %258, -1
  store i32 %dec, ptr %active3, align 4
  br label %cleanup

cleanup:                                          ; preds = %omap_mcbsp_stop.exit, %omap_mcbsp_start.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %omap_mcbsp_stop.exit ], [ 0, %omap_mcbsp_start.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mcbsp_dai_delay(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %pdata = getelementptr inbounds %struct.omap_mcbsp, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata, align 4
  %buffer_size = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp = icmp eq i16 %13, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %14 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp2 = icmp eq i32 %15, 0
  %io_base.i.i = getelementptr inbounds %struct.omap_mcbsp, ptr %9, i32 0, i32 5
  %16 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_base.i.i, align 4
  %reg_step.i.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %11, i32 0, i32 3
  %18 = ptrtoint ptr %reg_step.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %reg_step.i.i, align 1
  %conv1.i.i = zext i8 %19 to i32
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %mul.i.i = mul nuw nsw i32 %conv1.i.i, 45
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %mul.i.i
  %reg_size.i.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %11, i32 0, i32 2
  %20 = ptrtoint ptr %reg_size.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %reg_size.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %cmp.i.i = icmp eq i8 %21, 2
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #11, !srcloc !276
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #11
  %cond.i.i = zext i16 %23 to i32
  br label %omap_mcbsp_get_tx_delay.exit

if.else.i.i:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !277
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #11
  br label %omap_mcbsp_get_tx_delay.exit

omap_mcbsp_get_tx_delay.exit:                     ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %cond.i.i, %if.then.i.i ], [ %25, %if.else.i.i ]
  %26 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdata, align 4
  %buffer_size.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %buffer_size.i, align 4
  %30 = trunc i32 %retval.0.i.i to i16
  %conv3.i = sub i16 %29, %30
  br label %if.end7

if.else:                                          ; preds = %if.end
  %mul.i.i21 = mul nuw nsw i32 %conv1.i.i, 46
  %add.ptr.i.i22 = getelementptr i8, ptr %17, i32 %mul.i.i21
  %reg_size.i.i23 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %11, i32 0, i32 2
  %31 = ptrtoint ptr %reg_size.i.i23 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %reg_size.i.i23, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %32)
  %cmp.i.i24 = icmp eq i8 %32, 2
  br i1 %cmp.i.i24, label %if.then.i.i26, label %if.else.i.i27

if.then.i.i26:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i22) #11, !srcloc !276
  %34 = tail call i16 @llvm.bswap.i16(i16 %33) #11
  %cond.i.i25 = zext i16 %34 to i32
  br label %omap_mcbsp_read.exit.i

if.else.i.i27:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i22) #11, !srcloc !277
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #11
  br label %omap_mcbsp_read.exit.i

omap_mcbsp_read.exit.i:                           ; preds = %if.else.i.i27, %if.then.i.i26
  %retval.0.i.i28 = phi i32 [ %cond.i.i25, %if.then.i.i26 ], [ %36, %if.else.i.i27 ]
  %37 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %io_base.i.i, align 4
  %39 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdata, align 4
  %reg_step.i15.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %reg_step.i15.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %reg_step.i15.i, align 1
  %conv1.i16.i = zext i8 %42 to i32
  %mul.i17.i = mul nuw nsw i32 %conv1.i16.i, 37
  %add.ptr.i18.i = getelementptr i8, ptr %38, i32 %mul.i17.i
  %reg_size.i19.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %40, i32 0, i32 2
  %43 = ptrtoint ptr %reg_size.i19.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %reg_size.i19.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %44)
  %cmp.i20.i = icmp eq i8 %44, 2
  br i1 %cmp.i20.i, label %if.then.i21.i, label %if.else.i23.i

if.then.i21.i:                                    ; preds = %omap_mcbsp_read.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %45 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i18.i) #11, !srcloc !276
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #11
  %cond.i22.i = zext i16 %46 to i32
  br label %omap_mcbsp_get_rx_delay.exit

if.else.i23.i:                                    ; preds = %omap_mcbsp_read.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #11, !srcloc !277
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #11
  br label %omap_mcbsp_get_rx_delay.exit

omap_mcbsp_get_rx_delay.exit:                     ; preds = %if.else.i23.i, %if.then.i21.i
  %retval.0.i24.i = phi i32 [ %cond.i22.i, %if.then.i21.i ], [ %48, %if.else.i23.i ]
  %conv3.i29 = and i32 %retval.0.i24.i, 65535
  %conv4.i = and i32 %retval.0.i.i28, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.i29, i32 %conv4.i)
  %cmp.not.i = icmp ugt i32 %conv3.i29, %conv4.i
  %sub.i = sub i32 %retval.0.i24.i, %retval.0.i.i28
  %conv8.i = trunc i32 %sub.i to i16
  %retval.0.i = select i1 %cmp.not.i, i16 %conv8.i, i16 0
  br label %if.end7

if.end7:                                          ; preds = %omap_mcbsp_get_rx_delay.exit, %omap_mcbsp_get_tx_delay.exit
  %fifo_use.0 = phi i16 [ %conv3.i, %omap_mcbsp_get_tx_delay.exit ], [ %retval.0.i, %omap_mcbsp_get_rx_delay.exit ]
  %conv8 = zext i16 %fifo_use.0 to i32
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %49 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %runtime, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %50, i32 0, i32 15
  %51 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %channels, align 8
  %div = udiv i32 %conv8, %52
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div, %if.end7 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap2_mcbsp_set_clks_src(ptr nocapture noundef readonly %mcbsp, i8 noundef zeroext %fck_src_id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %fck_src_id)
  %cmp = icmp eq i8 %fck_src_id, 1
  %src.0 = select i1 %cmp, ptr @.str.34, ptr @.str.35
  %0 = ptrtoint ptr %mcbsp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcbsp, align 4
  %call = tail call ptr @clk_get(ptr noundef %1, ptr noundef nonnull %src.0) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %2 = ptrtoint ptr %mcbsp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mcbsp, align 4
  br i1 %cmp.i, label %do.end, label %if.end11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.36, ptr noundef nonnull %src.0) #14
  br label %cleanup

if.end11:                                         ; preds = %entry
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 4) #11
  %fclk = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 1
  %4 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fclk, align 4
  %call14 = tail call i32 @clk_set_parent(ptr noundef %5, ptr noundef %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.end11.if.end20_crit_edge, label %do.end18

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %mcbsp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mcbsp, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.39, ptr noundef nonnull %src.0) #14
  br label %if.end20

if.end20:                                         ; preds = %do.end18, %if.end11.if.end20_crit_edge
  %8 = ptrtoint ptr %mcbsp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mcbsp, align 4
  %call.i36 = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #11
  tail call void @clk_put(ptr noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call14, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mcbsp_hwrule_min_buffersize(ptr noundef %params, ptr nocapture noundef readonly %rule) #2 align 64 {
entry:
  %frames = alloca %struct.snd_interval, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 9
  %arrayidx.i6 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %frames) #11
  %2 = getelementptr inbounds i8, ptr %frames, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %openmin.i = getelementptr inbounds %struct.snd_interval, ptr %frames, i32 0, i32 2
  %max.i = getelementptr inbounds %struct.snd_interval, ptr %frames, i32 0, i32 1
  %4 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %max.i, align 4
  %pdata = getelementptr inbounds %struct.omap_mcbsp, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdata, align 4
  %buffer_size2 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %buffer_size2 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %buffer_size2, align 4
  %conv = zext i16 %8 to i32
  %9 = ptrtoint ptr %arrayidx.i6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i6, align 4
  %div = udiv i32 %conv, %10
  %11 = ptrtoint ptr %frames to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div, ptr %frames, align 4
  %12 = ptrtoint ptr %openmin.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 47, ptr %openmin.i, align 4
  %call4 = call i32 @snd_interval_refine(ptr noundef %arrayidx.i, ptr noundef nonnull %frames) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %frames) #11
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mcbsp_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base.i = getelementptr inbounds %struct.omap_mcbsp, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base.i, align 4
  %pdata.i = getelementptr inbounds %struct.omap_mcbsp, ptr %data, i32 0, i32 13
  %2 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata.i, align 4
  %reg_step.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %reg_step.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg_step.i, align 1
  %conv1.i = zext i8 %5 to i32
  %mul.i = mul nuw nsw i32 %conv1.i, 40
  %add.ptr.i = getelementptr i8, ptr %1, i32 %mul.i
  %reg_size.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %reg_size.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reg_size.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp.i = icmp eq i8 %7, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #11, !srcloc !276
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #11
  %cond.i = zext i16 %9 to i32
  br label %omap_mcbsp_read.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !277
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  br label %omap_mcbsp_read.exit

omap_mcbsp_read.exit:                             ; preds = %if.else.i, %if.then.i
  %retval.0.i263 = phi i32 [ %cond.i, %if.then.i ], [ %11, %if.else.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_mcbsp_irq_handler.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_mcbsp_irq_handler, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !278

if.then:                                          ; preds = %omap_mcbsp_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %conv4 = and i32 %retval.0.i263, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_mcbsp_irq_handler.__UNIQUE_ID_ddebug256, ptr noundef %13, ptr noundef nonnull @.str.57, i32 noundef %conv4) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %omap_mcbsp_read.exit
  %and = and i32 %retval.0.i263, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.end.if.end12_crit_edge, label %do.end10

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.58) #14
  br label %if.end12

if.end12:                                         ; preds = %do.end10, %do.end.if.end12_crit_edge
  %and14 = and i32 %retval.0.i263, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end12.if.end34_crit_edge, label %do.body17

if.end12.if.end34_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

do.body17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_mcbsp_irq_handler.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_mcbsp_irq_handler, %if.then29)) #11
          to label %if.end34 [label %if.then29], !srcloc !278

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_mcbsp_irq_handler.__UNIQUE_ID_ddebug257, ptr noundef %17, ptr noundef nonnull @.str.59) #11
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %do.body17, %if.end12.if.end34_crit_edge
  %and36 = and i32 %retval.0.i263, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end34.if.end56_crit_edge, label %do.body39

if.end34.if.end56_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

do.body39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_mcbsp_irq_handler.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_mcbsp_irq_handler, %if.then51)) #11
          to label %if.end56 [label %if.then51], !srcloc !278

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_mcbsp_irq_handler.__UNIQUE_ID_ddebug258, ptr noundef %19, ptr noundef nonnull @.str.60) #11
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %do.body39, %if.end34.if.end56_crit_edge
  %and58 = and i32 %retval.0.i263, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end56.if.end78_crit_edge, label %do.body61

if.end56.if.end78_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

do.body61:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_mcbsp_irq_handler.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_mcbsp_irq_handler, %if.then73)) #11
          to label %if.end78 [label %if.then73], !srcloc !278

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_mcbsp_irq_handler.__UNIQUE_ID_ddebug259, ptr noundef %21, ptr noundef nonnull @.str.61) #11
  br label %if.end78

if.end78:                                         ; preds = %if.then73, %do.body61, %if.end56.if.end78_crit_edge
  %and80 = and i32 %retval.0.i263, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end78.if.end87_crit_edge, label %do.end85

if.end78.if.end87_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

do.end85:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.63) #14
  br label %if.end87

if.end87:                                         ; preds = %do.end85, %if.end78.if.end87_crit_edge
  %and89 = and i32 %retval.0.i263, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.end87.if.end96_crit_edge, label %do.end94

if.end87.if.end96_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end96

do.end94:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.66) #14
  br label %if.end96

if.end96:                                         ; preds = %do.end94, %if.end87.if.end96_crit_edge
  %and98 = and i32 %retval.0.i263, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.end96.if.end105_crit_edge, label %do.end103

if.end96.if.end105_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end105

do.end103:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.69) #14
  br label %if.end105

if.end105:                                        ; preds = %do.end103, %if.end96.if.end105_crit_edge
  %and107 = and i32 %retval.0.i263, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.end105.if.end127_crit_edge, label %do.body110

if.end105.if.end127_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end127

do.body110:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_mcbsp_irq_handler.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_mcbsp_irq_handler, %if.then122)) #11
          to label %if.end127 [label %if.then122], !srcloc !278

if.then122:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_mcbsp_irq_handler.__UNIQUE_ID_ddebug260, ptr noundef %29, ptr noundef nonnull @.str.71) #11
  br label %if.end127

if.end127:                                        ; preds = %if.then122, %do.body110, %if.end105.if.end127_crit_edge
  %and129 = and i32 %retval.0.i263, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.end127.if.end149_crit_edge, label %do.body132

if.end127.if.end149_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end149

do.body132:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_mcbsp_irq_handler.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_mcbsp_irq_handler, %if.then144)) #11
          to label %if.end149 [label %if.then144], !srcloc !278

if.then144:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_mcbsp_irq_handler.__UNIQUE_ID_ddebug261, ptr noundef %31, ptr noundef nonnull @.str.72) #11
  br label %if.end149

if.end149:                                        ; preds = %if.then144, %do.body132, %if.end127.if.end149_crit_edge
  %and151 = and i32 %retval.0.i263, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %if.end149.if.end171_crit_edge, label %do.body154

if.end149.if.end171_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end171

do.body154:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_mcbsp_irq_handler.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_mcbsp_irq_handler, %if.then166)) #11
          to label %if.end171 [label %if.then166], !srcloc !278

if.then166:                                       ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_mcbsp_irq_handler.__UNIQUE_ID_ddebug262, ptr noundef %33, ptr noundef nonnull @.str.73) #11
  br label %if.end171

if.end171:                                        ; preds = %if.then166, %do.body154, %if.end149.if.end171_crit_edge
  %and173 = and i32 %retval.0.i263, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  br i1 %tobool174.not, label %if.end171.if.end180_crit_edge, label %do.end178

if.end171.if.end180_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end180

do.end178:                                        ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.75) #14
  br label %if.end180

if.end180:                                        ; preds = %do.end178, %if.end171.if.end180_crit_edge
  %and182 = and i32 %retval.0.i263, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182)
  %tobool183.not = icmp eq i32 %and182, 0
  br i1 %tobool183.not, label %if.end180.if.end189_crit_edge, label %do.end187

if.end180.if.end189_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end189

do.end187:                                        ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.78) #14
  br label %if.end189

if.end189:                                        ; preds = %do.end187, %if.end180.if.end189_crit_edge
  %and191 = and i32 %retval.0.i263, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191)
  %tobool192.not = icmp eq i32 %and191, 0
  br i1 %tobool192.not, label %if.end189.if.end211_crit_edge, label %do.body194

if.end189.if.end211_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end211

do.body194:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_mcbsp_irq_handler.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_mcbsp_irq_handler, %if.then206)) #11
          to label %if.end211 [label %if.then206], !srcloc !278

if.then206:                                       ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_mcbsp_irq_handler.__UNIQUE_ID_ddebug263, ptr noundef %39, ptr noundef nonnull @.str.80) #11
  br label %if.end211

if.end211:                                        ; preds = %if.then206, %do.body194, %if.end189.if.end211_crit_edge
  %40 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %io_base.i, align 4
  %42 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdata.i, align 4
  %reg_step.i266 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %reg_step.i266 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %reg_step.i266, align 1
  %conv1.i267 = zext i8 %45 to i32
  %mul.i268 = mul nuw nsw i32 %conv1.i267, 40
  %add.ptr.i269 = getelementptr i8, ptr %41, i32 %mul.i268
  %reg_size.i270 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %43, i32 0, i32 2
  %46 = ptrtoint ptr %reg_size.i270 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %reg_size.i270, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %47)
  %cmp.i271 = icmp eq i8 %47, 2
  br i1 %cmp.i271, label %if.then.i272, label %if.else.i273

if.then.i272:                                     ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #13
  %conv5.i = trunc i32 %retval.0.i263 to i16
  %reg_cache.i = getelementptr inbounds %struct.omap_mcbsp, ptr %data, i32 0, i32 21
  %48 = ptrtoint ptr %reg_cache.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_cache.i, align 4
  %arrayidx.i = getelementptr i16, ptr %49, i32 40
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv5.i, ptr %arrayidx.i, align 2
  %51 = tail call i16 @llvm.bswap.i16(i16 %conv5.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i269, i16 %51) #11, !srcloc !273
  br label %omap_mcbsp_write.exit

if.else.i273:                                     ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #13
  %conv5 = and i32 %retval.0.i263, 65535
  %reg_cache7.i = getelementptr inbounds %struct.omap_mcbsp, ptr %data, i32 0, i32 21
  %52 = ptrtoint ptr %reg_cache7.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg_cache7.i, align 4
  %arrayidx9.i = getelementptr i32, ptr %53, i32 40
  %54 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv5, ptr %arrayidx9.i, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %conv5) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i269, i32 %55) #11, !srcloc !274
  br label %omap_mcbsp_write.exit

omap_mcbsp_write.exit:                            ; preds = %if.else.i273, %if.then.i272
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mcbsp_tx_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base.i = getelementptr inbounds %struct.omap_mcbsp, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base.i, align 4
  %pdata.i = getelementptr inbounds %struct.omap_mcbsp, ptr %data, i32 0, i32 13
  %2 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata.i, align 4
  %reg_step.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %reg_step.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg_step.i, align 1
  %conv1.i = zext i8 %5 to i32
  %mul.i = shl nuw nsw i32 %conv1.i, 2
  %add.ptr.i = getelementptr i8, ptr %1, i32 %mul.i
  %reg_size.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %reg_size.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reg_size.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp.i = icmp eq i8 %7, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #11, !srcloc !276
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #11
  %cond.i = zext i16 %9 to i32
  br label %omap_mcbsp_read.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !277
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  br label %omap_mcbsp_read.exit

omap_mcbsp_read.exit:                             ; preds = %if.else.i, %if.then.i
  %retval.0.i21 = phi i32 [ %cond.i, %if.then.i ], [ %11, %if.else.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_mcbsp_tx_irq_handler.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_mcbsp_tx_irq_handler, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !278

if.then:                                          ; preds = %omap_mcbsp_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %conv4 = and i32 %retval.0.i21, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_mcbsp_tx_irq_handler.__UNIQUE_ID_ddebug264, ptr noundef %13, ptr noundef nonnull @.str.82, i32 noundef %conv4) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %omap_mcbsp_read.exit
  %and = and i32 %retval.0.i21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.end.if.end14_crit_edge, label %do.end10

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

do.end10:                                         ; preds = %do.end
  %conv5 = and i32 %retval.0.i21, 65535
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.83, i32 noundef %conv5) #14
  %16 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_base.i, align 4
  %18 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdata.i, align 4
  %reg_step.i24 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %reg_step.i24 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %reg_step.i24, align 1
  %conv1.i25 = zext i8 %21 to i32
  %mul.i26 = shl nuw nsw i32 %conv1.i25, 2
  %reg_size.i28 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %19, i32 0, i32 2
  %22 = ptrtoint ptr %reg_size.i28 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %reg_size.i28, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %cmp.i29 = icmp eq i8 %23, 2
  %reg_cache.i = getelementptr inbounds %struct.omap_mcbsp, ptr %data, i32 0, i32 21
  %24 = ptrtoint ptr %reg_cache.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_cache.i, align 4
  br i1 %cmp.i29, label %if.then.i45, label %if.else.i46

if.then.i45:                                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr i16, ptr %25, i32 4
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.i, align 2
  %add.ptr.i4049 = getelementptr i8, ptr %17, i32 %mul.i26
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i4049, i16 %28) #11, !srcloc !273
  br label %if.end14

if.else.i46:                                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx15.i = getelementptr i32, ptr %25, i32 4
  %29 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx15.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %17, i32 %mul.i26
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %31) #11, !srcloc !274
  br label %if.end14

if.end14:                                         ; preds = %if.else.i46, %if.then.i45, %do.end.if.end14_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mcbsp_rx_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base.i = getelementptr inbounds %struct.omap_mcbsp, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base.i, align 4
  %pdata.i = getelementptr inbounds %struct.omap_mcbsp, ptr %data, i32 0, i32 13
  %2 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata.i, align 4
  %reg_step.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %reg_step.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg_step.i, align 1
  %conv1.i = zext i8 %5 to i32
  %mul.i = mul nuw nsw i32 %conv1.i, 5
  %add.ptr.i = getelementptr i8, ptr %1, i32 %mul.i
  %reg_size.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %reg_size.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reg_size.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp.i = icmp eq i8 %7, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #11, !srcloc !276
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #11
  %cond.i = zext i16 %9 to i32
  br label %omap_mcbsp_read.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !277
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  br label %omap_mcbsp_read.exit

omap_mcbsp_read.exit:                             ; preds = %if.else.i, %if.then.i
  %retval.0.i21 = phi i32 [ %cond.i, %if.then.i ], [ %11, %if.else.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_mcbsp_rx_irq_handler.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_mcbsp_rx_irq_handler, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !278

if.then:                                          ; preds = %omap_mcbsp_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %conv4 = and i32 %retval.0.i21, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_mcbsp_rx_irq_handler.__UNIQUE_ID_ddebug265, ptr noundef %13, ptr noundef nonnull @.str.85, i32 noundef %conv4) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %omap_mcbsp_read.exit
  %and = and i32 %retval.0.i21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.end.if.end14_crit_edge, label %do.end10

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

do.end10:                                         ; preds = %do.end
  %conv5 = and i32 %retval.0.i21, 65535
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.86, i32 noundef %conv5) #14
  %16 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_base.i, align 4
  %18 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdata.i, align 4
  %reg_step.i24 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %reg_step.i24 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %reg_step.i24, align 1
  %conv1.i25 = zext i8 %21 to i32
  %mul.i26 = mul nuw nsw i32 %conv1.i25, 5
  %reg_size.i28 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %19, i32 0, i32 2
  %22 = ptrtoint ptr %reg_size.i28 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %reg_size.i28, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %cmp.i29 = icmp eq i8 %23, 2
  %reg_cache.i = getelementptr inbounds %struct.omap_mcbsp, ptr %data, i32 0, i32 21
  %24 = ptrtoint ptr %reg_cache.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_cache.i, align 4
  br i1 %cmp.i29, label %if.then.i45, label %if.else.i46

if.then.i45:                                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr i16, ptr %25, i32 5
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.i, align 2
  %add.ptr.i4049 = getelementptr i8, ptr %17, i32 %mul.i26
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i4049, i16 %28) #11, !srcloc !273
  br label %if.end14

if.else.i46:                                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx15.i = getelementptr i32, ptr %25, i32 5
  %29 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx15.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %17, i32 %mul.i26
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %31) #11, !srcloc !274
  br label %if.end14

if.end14:                                         ; preds = %if.else.i46, %if.then.i45, %do.end.if.end14_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_refine(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_update_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_remove_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_mcbsp_config(ptr noundef readonly %mcbsp, ptr nocapture noundef readonly %config) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_mcbsp_config.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_mcbsp_config, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !278

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %mcbsp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcbsp, align 4
  %id = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 4
  %conv = zext i8 %3 to i32
  %phys_base = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 3
  %4 = ptrtoint ptr %phys_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phys_base, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_mcbsp_config.__UNIQUE_ID_ddebug266, ptr noundef %1, ptr noundef nonnull @.str.92, i32 noundef %conv, i32 noundef %5) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %config, align 2
  %io_base.i = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 5
  %8 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base.i, align 4
  %pdata.i = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 13
  %10 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata.i, align 4
  %reg_step.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %reg_step.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %reg_step.i, align 1
  %conv1.i = zext i8 %13 to i32
  %mul.i = shl nuw nsw i32 %conv1.i, 2
  %add.ptr.i = getelementptr i8, ptr %9, i32 %mul.i
  %reg_size.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %reg_size.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reg_size.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp.i = icmp eq i8 %15, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %reg_cache.i = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 21
  %16 = ptrtoint ptr %reg_cache.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_cache.i, align 4
  %arrayidx.i = getelementptr i16, ptr %17, i32 4
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %7, ptr %arrayidx.i, align 2
  %19 = tail call i16 @llvm.bswap.i16(i16 %7) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %19) #11, !srcloc !273
  br label %omap_mcbsp_write.exit

if.else.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv3 = zext i16 %7 to i32
  %reg_cache7.i = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 21
  %20 = ptrtoint ptr %reg_cache7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_cache7.i, align 4
  %arrayidx9.i = getelementptr i32, ptr %21, i32 4
  %22 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv3, ptr %arrayidx9.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %conv3) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %23) #11, !srcloc !274
  br label %omap_mcbsp_write.exit

omap_mcbsp_write.exit:                            ; preds = %if.else.i, %if.then.i
  %spcr1 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, ptr %config, i32 0, i32 1
  %24 = ptrtoint ptr %spcr1 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %spcr1, align 2
  %26 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_base.i, align 4
  %28 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdata.i, align 4
  %reg_step.i60 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %reg_step.i60 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %reg_step.i60, align 1
  %conv1.i61 = zext i8 %31 to i32
  %mul.i62 = mul nuw nsw i32 %conv1.i61, 5
  %add.ptr.i63 = getelementptr i8, ptr %27, i32 %mul.i62
  %reg_size.i64 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %29, i32 0, i32 2
  %32 = ptrtoint ptr %reg_size.i64 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %reg_size.i64, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cmp.i65 = icmp eq i8 %33, 2
  br i1 %cmp.i65, label %if.then.i68, label %if.else.i71

if.then.i68:                                      ; preds = %omap_mcbsp_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  %reg_cache.i66 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 21
  %34 = ptrtoint ptr %reg_cache.i66 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_cache.i66, align 4
  %arrayidx.i67 = getelementptr i16, ptr %35, i32 5
  %36 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %25, ptr %arrayidx.i67, align 2
  %37 = tail call i16 @llvm.bswap.i16(i16 %25) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i63, i16 %37) #11, !srcloc !273
  br label %omap_mcbsp_write.exit72

if.else.i71:                                      ; preds = %omap_mcbsp_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv4 = zext i16 %25 to i32
  %reg_cache7.i69 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 21
  %38 = ptrtoint ptr %reg_cache7.i69 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_cache7.i69, align 4
  %arrayidx9.i70 = getelementptr i32, ptr %39, i32 5
  %40 = ptrtoint ptr %arrayidx9.i70 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv4, ptr %arrayidx9.i70, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %conv4) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %41) #11, !srcloc !274
  br label %omap_mcbsp_write.exit72

omap_mcbsp_write.exit72:                          ; preds = %if.else.i71, %if.then.i68
  %rcr2 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, ptr %config, i32 0, i32 2
  %42 = ptrtoint ptr %rcr2 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %rcr2, align 2
  %44 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %io_base.i, align 4
  %46 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdata.i, align 4
  %reg_step.i75 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %reg_step.i75 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %reg_step.i75, align 1
  %conv1.i76 = zext i8 %49 to i32
  %mul.i77 = mul nuw nsw i32 %conv1.i76, 6
  %add.ptr.i78 = getelementptr i8, ptr %45, i32 %mul.i77
  %reg_size.i79 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %47, i32 0, i32 2
  %50 = ptrtoint ptr %reg_size.i79 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %reg_size.i79, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %51)
  %cmp.i80 = icmp eq i8 %51, 2
  br i1 %cmp.i80, label %if.then.i83, label %if.else.i86

if.then.i83:                                      ; preds = %omap_mcbsp_write.exit72
  call void @__sanitizer_cov_trace_pc() #13
  %reg_cache.i81 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 21
  %52 = ptrtoint ptr %reg_cache.i81 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg_cache.i81, align 4
  %arrayidx.i82 = getelementptr i16, ptr %53, i32 6
  %54 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %43, ptr %arrayidx.i82, align 2
  %55 = tail call i16 @llvm.bswap.i16(i16 %43) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i78, i16 %55) #11, !srcloc !273
  br label %omap_mcbsp_write.exit87

if.else.i86:                                      ; preds = %omap_mcbsp_write.exit72
  call void @__sanitizer_cov_trace_pc() #13
  %conv5 = zext i16 %43 to i32
  %reg_cache7.i84 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 21
  %56 = ptrtoint ptr %reg_cache7.i84 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg_cache7.i84, align 4
  %arrayidx9.i85 = getelementptr i32, ptr %57, i32 6
  %58 = ptrtoint ptr %arrayidx9.i85 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv5, ptr %arrayidx9.i85, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %conv5) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 %59) #11, !srcloc !274
  br label %omap_mcbsp_write.exit87

omap_mcbsp_write.exit87:                          ; preds = %if.else.i86, %if.then.i83
  %rcr1 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, ptr %config, i32 0, i32 3
  %60 = ptrtoint ptr %rcr1 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %rcr1, align 2
  %62 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %io_base.i, align 4
  %64 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdata.i, align 4
  %reg_step.i90 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %reg_step.i90 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %reg_step.i90, align 1
  %conv1.i91 = zext i8 %67 to i32
  %mul.i92 = mul nuw nsw i32 %conv1.i91, 7
  %add.ptr.i93 = getelementptr i8, ptr %63, i32 %mul.i92
  %reg_size.i94 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %65, i32 0, i32 2
  %68 = ptrtoint ptr %reg_size.i94 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %reg_size.i94, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %69)
  %cmp.i95 = icmp eq i8 %69, 2
  br i1 %cmp.i95, label %if.then.i98, label %if.else.i101

if.then.i98:                                      ; preds = %omap_mcbsp_write.exit87
  call void @__sanitizer_cov_trace_pc() #13
  %reg_cache.i96 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 21
  %70 = ptrtoint ptr %reg_cache.i96 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg_cache.i96, align 4
  %arrayidx.i97 = getelementptr i16, ptr %71, i32 7
  %72 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %61, ptr %arrayidx.i97, align 2
  %73 = tail call i16 @llvm.bswap.i16(i16 %61) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i93, i16 %73) #11, !srcloc !273
  br label %omap_mcbsp_write.exit102

if.else.i101:                                     ; preds = %omap_mcbsp_write.exit87
  call void @__sanitizer_cov_trace_pc() #13
  %conv6 = zext i16 %61 to i32
  %reg_cache7.i99 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 21
  %74 = ptrtoint ptr %reg_cache7.i99 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %reg_cache7.i99, align 4
  %arrayidx9.i100 = getelementptr i32, ptr %75, i32 7
  %76 = ptrtoint ptr %arrayidx9.i100 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv6, ptr %arrayidx9.i100, align 4
  %77 = tail call i32 @llvm.bswap.i32(i32 %conv6) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 %77) #11, !srcloc !274
  br label %omap_mcbsp_write.exit102

omap_mcbsp_write.exit102:                         ; preds = %if.else.i101, %if.then.i98
  %xcr2 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, ptr %config, i32 0, i32 4
  %78 = ptrtoint ptr %xcr2 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %xcr2, align 2
  %80 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %io_base.i, align 4
  %82 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pdata.i, align 4
  %reg_step.i105 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %reg_step.i105 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %reg_step.i105, align 1
  %conv1.i106 = zext i8 %85 to i32
  %mul.i107 = shl nuw nsw i32 %conv1.i106, 3
  %add.ptr.i108 = getelementptr i8, ptr %81, i32 %mul.i107
  %reg_size.i109 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %83, i32 0, i32 2
  %86 = ptrtoint ptr %reg_size.i109 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %reg_size.i109, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %87)
  %cmp.i110 = icmp eq i8 %87, 2
  br i1 %cmp.i110, label %if.then.i113, label %if.else.i116

if.then.i113:                                     ; preds = %omap_mcbsp_write.exit102
  call void @__sanitizer_cov_trace_pc() #13
  %reg_cache.i111 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 21
  %88 = ptrtoint ptr %reg_cache.i111 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %reg_cache.i111, align 4
  %arrayidx.i112 = getelementptr i16, ptr %89, i32 8
  %90 = ptrtoint ptr %arrayidx.i112 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %79, ptr %arrayidx.i112, align 2
  %91 = tail call i16 @llvm.bswap.i16(i16 %79) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i108, i16 %91) #11, !srcloc !273
  br label %omap_mcbsp_write.exit117

if.else.i116:                                     ; preds = %omap_mcbsp_write.exit102
  call void @__sanitizer_cov_trace_pc() #13
  %conv7 = zext i16 %79 to i32
  %reg_cache7.i114 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 21
  %92 = ptrtoint ptr %reg_cache7.i114 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %reg_cache7.i114, align 4
  %arrayidx9.i115 = getelementptr i32, ptr %93, i32 8
  %94 = ptrtoint ptr %arrayidx9.i115 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %conv7, ptr %arrayidx9.i115, align 4
  %95 = tail call i32 @llvm.bswap.i32(i32 %conv7) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 %95) #11, !srcloc !274
  br label %omap_mcbsp_write.exit117

omap_mcbsp_write.exit117:                         ; preds = %if.else.i116, %if.then.i113
  %xcr1 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, ptr %config, i32 0, i32 5
  %96 = ptrtoint ptr %xcr1 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %xcr1, align 2
  %98 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %io_base.i, align 4
  %100 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pdata.i, align 4
  %reg_step.i120 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %reg_step.i120 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %reg_step.i120, align 1
  %conv1.i121 = zext i8 %103 to i32
  %mul.i122 = mul nuw nsw i32 %conv1.i121, 9
  %add.ptr.i123 = getelementptr i8, ptr %99, i32 %mul.i122
  %reg_size.i124 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %101, i32 0, i32 2
  %104 = ptrtoint ptr %reg_size.i124 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %reg_size.i124, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %105)
  %cmp.i125 = icmp eq i8 %105, 2
  br i1 %cmp.i125, label %if.then.i128, label %if.else.i131

if.then.i128:                                     ; preds = %omap_mcbsp_write.exit117
  call void @__sanitizer_cov_trace_pc() #13
  %reg_cache.i126 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 21
  %106 = ptrtoint ptr %reg_cache.i126 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %reg_cache.i126, align 4
  %arrayidx.i127 = getelementptr i16, ptr %107, i32 9
  %108 = ptrtoint ptr %arrayidx.i127 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %97, ptr %arrayidx.i127, align 2
  %109 = tail call i16 @llvm.bswap.i16(i16 %97) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i123, i16 %109) #11, !srcloc !273
  br label %omap_mcbsp_write.exit132

if.else.i131:                                     ; preds = %omap_mcbsp_write.exit117
  call void @__sanitizer_cov_trace_pc() #13
  %conv8 = zext i16 %97 to i32
  %reg_cache7.i129 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 21
  %110 = ptrtoint ptr %reg_cache7.i129 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %reg_cache7.i129, align 4
  %arrayidx9.i130 = getelementptr i32, ptr %111, i32 9
  %112 = ptrtoint ptr %arrayidx9.i130 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %conv8, ptr %arrayidx9.i130, align 4
  %113 = tail call i32 @llvm.bswap.i32(i32 %conv8) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123, i32 %113) #11, !srcloc !274
  br label %omap_mcbsp_write.exit132

omap_mcbsp_write.exit132:                         ; preds = %if.else.i131, %if.then.i128
  %srgr2 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, ptr %config, i32 0, i32 6
  %114 = ptrtoint ptr %srgr2 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %srgr2, align 2
  %116 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %io_base.i, align 4
  %118 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pdata.i, align 4
  %reg_step.i135 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %reg_step.i135 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %reg_step.i135, align 1
  %conv1.i136 = zext i8 %121 to i32
  %mul.i137 = mul nuw nsw i32 %conv1.i136, 10
  %add.ptr.i138 = getelementptr i8, ptr %117, i32 %mul.i137
  %reg_size.i139 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %119, i32 0, i32 2
  %122 = ptrtoint ptr %reg_size.i139 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %reg_size.i139, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %123)
  %cmp.i140 = icmp eq i8 %123, 2
  br i1 %cmp.i140, label %if.then.i143, label %if.else.i146

if.then.i143:                                     ; preds = %omap_mcbsp_write.exit132
  call void @__sanitizer_cov_trace_pc() #13
  %reg_cache.i141 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 21
  %124 = ptrtoint ptr %reg_cache.i141 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %reg_cache.i141, align 4
  %arrayidx.i142 = getelementptr i16, ptr %125, i32 10
  %126 = ptrtoint ptr %arrayidx.i142 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %115, ptr %arrayidx.i142, align 2
  %127 = tail call i16 @llvm.bswap.i16(i16 %115) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i138, i16 %127) #11, !srcloc !273
  br label %omap_mcbsp_write.exit147

if.else.i146:                                     ; preds = %omap_mcbsp_write.exit132
  call void @__sanitizer_cov_trace_pc() #13
  %conv9 = zext i16 %115 to i32
  %reg_cache7.i144 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 21
  %128 = ptrtoint ptr %reg_cache7.i144 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %reg_cache7.i144, align 4
  %arrayidx9.i145 = getelementptr i32, ptr %129, i32 10
  %130 = ptrtoint ptr %arrayidx9.i145 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %conv9, ptr %arrayidx9.i145, align 4
  %131 = tail call i32 @llvm.bswap.i32(i32 %conv9) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138, i32 %131) #11, !srcloc !274
  br label %omap_mcbsp_write.exit147

omap_mcbsp_write.exit147:                         ; preds = %if.else.i146, %if.then.i143
  %srgr1 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, ptr %config, i32 0, i32 7
  %132 = ptrtoint ptr %srgr1 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %srgr1, align 2
  %134 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %io_base.i, align 4
  %136 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pdata.i, align 4
  %reg_step.i150 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %137, i32 0, i32 3
  %138 = ptrtoint ptr %reg_step.i150 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %reg_step.i150, align 1
  %conv1.i151 = zext i8 %139 to i32
  %mul.i152 = mul nuw nsw i32 %conv1.i151, 11
  %add.ptr.i153 = getelementptr i8, ptr %135, i32 %mul.i152
  %reg_size.i154 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %137, i32 0, i32 2
  %140 = ptrtoint ptr %reg_size.i154 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %reg_size.i154, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %141)
  %cmp.i155 = icmp eq i8 %141, 2
  br i1 %cmp.i155, label %if.then.i158, label %if.else.i161

if.then.i158:                                     ; preds = %omap_mcbsp_write.exit147
  call void @__sanitizer_cov_trace_pc() #13
  %reg_cache.i156 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 21
  %142 = ptrtoint ptr %reg_cache.i156 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %reg_cache.i156, align 4
  %arrayidx.i157 = getelementptr i16, ptr %143, i32 11
  %144 = ptrtoint ptr %arrayidx.i157 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %133, ptr %arrayidx.i157, align 2
  %145 = tail call i16 @llvm.bswap.i16(i16 %133) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i153, i16 %145) #11, !srcloc !273
  br label %omap_mcbsp_write.exit162

if.else.i161:                                     ; preds = %omap_mcbsp_write.exit147
  call void @__sanitizer_cov_trace_pc() #13
  %conv10 = zext i16 %133 to i32
  %reg_cache7.i159 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 21
  %146 = ptrtoint ptr %reg_cache7.i159 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %reg_cache7.i159, align 4
  %arrayidx9.i160 = getelementptr i32, ptr %147, i32 11
  %148 = ptrtoint ptr %arrayidx9.i160 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %conv10, ptr %arrayidx9.i160, align 4
  %149 = tail call i32 @llvm.bswap.i32(i32 %conv10) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153, i32 %149) #11, !srcloc !274
  br label %omap_mcbsp_write.exit162

omap_mcbsp_write.exit162:                         ; preds = %if.else.i161, %if.then.i158
  %mcr2 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, ptr %config, i32 0, i32 8
  %150 = ptrtoint ptr %mcr2 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %mcr2, align 2
  %152 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %io_base.i, align 4
  %154 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pdata.i, align 4
  %reg_step.i165 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %155, i32 0, i32 3
  %156 = ptrtoint ptr %reg_step.i165 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %reg_step.i165, align 1
  %conv1.i166 = zext i8 %157 to i32
  %mul.i167 = mul nuw nsw i32 %conv1.i166, 12
  %add.ptr.i168 = getelementptr i8, ptr %153, i32 %mul.i167
  %reg_size.i169 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %155, i32 0, i32 2
  %158 = ptrtoint ptr %reg_size.i169 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %reg_size.i169, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %159)
  %cmp.i170 = icmp eq i8 %159, 2
  br i1 %cmp.i170, label %if.then.i173, label %if.else.i176

if.then.i173:                                     ; preds = %omap_mcbsp_write.exit162
  call void @__sanitizer_cov_trace_pc() #13
  %reg_cache.i171 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 21
  %160 = ptrtoint ptr %reg_cache.i171 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %reg_cache.i171, align 4
  %arrayidx.i172 = getelementptr i16, ptr %161, i32 12
  %162 = ptrtoint ptr %arrayidx.i172 to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %151, ptr %arrayidx.i172, align 2
  %163 = tail call i16 @llvm.bswap.i16(i16 %151) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i168, i16 %163) #11, !srcloc !273
  br label %omap_mcbsp_write.exit177

if.else.i176:                                     ; preds = %omap_mcbsp_write.exit162
  call void @__sanitizer_cov_trace_pc() #13
  %conv11 = zext i16 %151 to i32
  %reg_cache7.i174 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 21
  %164 = ptrtoint ptr %reg_cache7.i174 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %reg_cache7.i174, align 4
  %arrayidx9.i175 = getelementptr i32, ptr %165, i32 12
  %166 = ptrtoint ptr %arrayidx9.i175 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %conv11, ptr %arrayidx9.i175, align 4
  %167 = tail call i32 @llvm.bswap.i32(i32 %conv11) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168, i32 %167) #11, !srcloc !274
  br label %omap_mcbsp_write.exit177

omap_mcbsp_write.exit177:                         ; preds = %if.else.i176, %if.then.i173
  %mcr1 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, ptr %config, i32 0, i32 9
  %168 = ptrtoint ptr %mcr1 to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %mcr1, align 2
  %170 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %io_base.i, align 4
  %172 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %pdata.i, align 4
  %reg_step.i180 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %173, i32 0, i32 3
  %174 = ptrtoint ptr %reg_step.i180 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %reg_step.i180, align 1
  %conv1.i181 = zext i8 %175 to i32
  %mul.i182 = mul nuw nsw i32 %conv1.i181, 13
  %add.ptr.i183 = getelementptr i8, ptr %171, i32 %mul.i182
  %reg_size.i184 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %173, i32 0, i32 2
  %176 = ptrtoint ptr %reg_size.i184 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %reg_size.i184, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %177)
  %cmp.i185 = icmp eq i8 %177, 2
  br i1 %cmp.i185, label %if.then.i188, label %if.else.i191

if.then.i188:                                     ; preds = %omap_mcbsp_write.exit177
  call void @__sanitizer_cov_trace_pc() #13
  %reg_cache.i186 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 21
  %178 = ptrtoint ptr %reg_cache.i186 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %reg_cache.i186, align 4
  %arrayidx.i187 = getelementptr i16, ptr %179, i32 13
  %180 = ptrtoint ptr %arrayidx.i187 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %169, ptr %arrayidx.i187, align 2
  %181 = tail call i16 @llvm.bswap.i16(i16 %169) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i183, i16 %181) #11, !srcloc !273
  br label %omap_mcbsp_write.exit192

if.else.i191:                                     ; preds = %omap_mcbsp_write.exit177
  call void @__sanitizer_cov_trace_pc() #13
  %conv12 = zext i16 %169 to i32
  %reg_cache7.i189 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 21
  %182 = ptrtoint ptr %reg_cache7.i189 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %reg_cache7.i189, align 4
  %arrayidx9.i190 = getelementptr i32, ptr %183, i32 13
  %184 = ptrtoint ptr %arrayidx9.i190 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %conv12, ptr %arrayidx9.i190, align 4
  %185 = tail call i32 @llvm.bswap.i32(i32 %conv12) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i183, i32 %185) #11, !srcloc !274
  br label %omap_mcbsp_write.exit192

omap_mcbsp_write.exit192:                         ; preds = %if.else.i191, %if.then.i188
  %pcr0 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, ptr %config, i32 0, i32 10
  %186 = ptrtoint ptr %pcr0 to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %pcr0, align 2
  %188 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %io_base.i, align 4
  %190 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %pdata.i, align 4
  %reg_step.i195 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %191, i32 0, i32 3
  %192 = ptrtoint ptr %reg_step.i195 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %reg_step.i195, align 1
  %conv1.i196 = zext i8 %193 to i32
  %mul.i197 = mul nuw nsw i32 %conv1.i196, 18
  %add.ptr.i198 = getelementptr i8, ptr %189, i32 %mul.i197
  %reg_size.i199 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %191, i32 0, i32 2
  %194 = ptrtoint ptr %reg_size.i199 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %reg_size.i199, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %195)
  %cmp.i200 = icmp eq i8 %195, 2
  br i1 %cmp.i200, label %if.then.i203, label %if.else.i206

if.then.i203:                                     ; preds = %omap_mcbsp_write.exit192
  call void @__sanitizer_cov_trace_pc() #13
  %reg_cache.i201 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 21
  %196 = ptrtoint ptr %reg_cache.i201 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %reg_cache.i201, align 4
  %arrayidx.i202 = getelementptr i16, ptr %197, i32 18
  %198 = ptrtoint ptr %arrayidx.i202 to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %187, ptr %arrayidx.i202, align 2
  %199 = tail call i16 @llvm.bswap.i16(i16 %187) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i198, i16 %199) #11, !srcloc !273
  br label %omap_mcbsp_write.exit207

if.else.i206:                                     ; preds = %omap_mcbsp_write.exit192
  call void @__sanitizer_cov_trace_pc() #13
  %conv13 = zext i16 %187 to i32
  %reg_cache7.i204 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 21
  %200 = ptrtoint ptr %reg_cache7.i204 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %reg_cache7.i204, align 4
  %arrayidx9.i205 = getelementptr i32, ptr %201, i32 18
  %202 = ptrtoint ptr %arrayidx9.i205 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %conv13, ptr %arrayidx9.i205, align 4
  %203 = tail call i32 @llvm.bswap.i32(i32 %conv13) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i198, i32 %203) #11, !srcloc !274
  br label %omap_mcbsp_write.exit207

omap_mcbsp_write.exit207:                         ; preds = %if.else.i206, %if.then.i203
  %204 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %pdata.i, align 4
  %has_ccr = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %205, i32 0, i32 5
  %206 = ptrtoint ptr %has_ccr to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %has_ccr, align 1, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %tobool14.not = icmp eq i8 %207, 0
  br i1 %tobool14.not, label %omap_mcbsp_write.exit207.if.end18_crit_edge, label %if.then15

omap_mcbsp_write.exit207.if.end18_crit_edge:      ; preds = %omap_mcbsp_write.exit207
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then15:                                        ; preds = %omap_mcbsp_write.exit207
  %xccr = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, ptr %config, i32 0, i32 23
  %208 = ptrtoint ptr %xccr to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %xccr, align 2
  %210 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %io_base.i, align 4
  %reg_step.i210 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %205, i32 0, i32 3
  %212 = ptrtoint ptr %reg_step.i210 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %reg_step.i210, align 1
  %conv1.i211 = zext i8 %213 to i32
  %mul.i212 = mul nuw nsw i32 %conv1.i211, 43
  %add.ptr.i213 = getelementptr i8, ptr %211, i32 %mul.i212
  %reg_size.i214 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %205, i32 0, i32 2
  %214 = ptrtoint ptr %reg_size.i214 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %reg_size.i214, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %215)
  %cmp.i215 = icmp eq i8 %215, 2
  br i1 %cmp.i215, label %if.then.i218, label %if.else.i221

if.then.i218:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %reg_cache.i216 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 21
  %216 = ptrtoint ptr %reg_cache.i216 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %reg_cache.i216, align 4
  %arrayidx.i217 = getelementptr i16, ptr %217, i32 43
  %218 = ptrtoint ptr %arrayidx.i217 to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 %209, ptr %arrayidx.i217, align 2
  %219 = tail call i16 @llvm.bswap.i16(i16 %209) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i213, i16 %219) #11, !srcloc !273
  br label %omap_mcbsp_write.exit222

if.else.i221:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %conv16 = zext i16 %209 to i32
  %reg_cache7.i219 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 21
  %220 = ptrtoint ptr %reg_cache7.i219 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %reg_cache7.i219, align 4
  %arrayidx9.i220 = getelementptr i32, ptr %221, i32 43
  %222 = ptrtoint ptr %arrayidx9.i220 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %conv16, ptr %arrayidx9.i220, align 4
  %223 = tail call i32 @llvm.bswap.i32(i32 %conv16) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i213, i32 %223) #11, !srcloc !274
  br label %omap_mcbsp_write.exit222

omap_mcbsp_write.exit222:                         ; preds = %if.else.i221, %if.then.i218
  %rccr = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, ptr %config, i32 0, i32 24
  %224 = ptrtoint ptr %rccr to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %rccr, align 2
  %226 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %io_base.i, align 4
  %228 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %pdata.i, align 4
  %reg_step.i225 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %229, i32 0, i32 3
  %230 = ptrtoint ptr %reg_step.i225 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %reg_step.i225, align 1
  %conv1.i226 = zext i8 %231 to i32
  %mul.i227 = mul nuw nsw i32 %conv1.i226, 44
  %add.ptr.i228 = getelementptr i8, ptr %227, i32 %mul.i227
  %reg_size.i229 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %229, i32 0, i32 2
  %232 = ptrtoint ptr %reg_size.i229 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %reg_size.i229, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %233)
  %cmp.i230 = icmp eq i8 %233, 2
  br i1 %cmp.i230, label %if.then.i233, label %if.else.i236

if.then.i233:                                     ; preds = %omap_mcbsp_write.exit222
  call void @__sanitizer_cov_trace_pc() #13
  %reg_cache.i231 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 21
  %234 = ptrtoint ptr %reg_cache.i231 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %reg_cache.i231, align 4
  %arrayidx.i232 = getelementptr i16, ptr %235, i32 44
  %236 = ptrtoint ptr %arrayidx.i232 to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 %225, ptr %arrayidx.i232, align 2
  %237 = tail call i16 @llvm.bswap.i16(i16 %225) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i228, i16 %237) #11, !srcloc !273
  br label %if.end18

if.else.i236:                                     ; preds = %omap_mcbsp_write.exit222
  call void @__sanitizer_cov_trace_pc() #13
  %conv17 = zext i16 %225 to i32
  %reg_cache7.i234 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 21
  %238 = ptrtoint ptr %reg_cache7.i234 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %reg_cache7.i234, align 4
  %arrayidx9.i235 = getelementptr i32, ptr %239, i32 44
  %240 = ptrtoint ptr %arrayidx9.i235 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %conv17, ptr %arrayidx9.i235, align 4
  %241 = tail call i32 @llvm.bswap.i32(i32 %conv17) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i228, i32 %241) #11, !srcloc !274
  br label %if.end18

if.end18:                                         ; preds = %if.else.i236, %if.then.i233, %omap_mcbsp_write.exit207.if.end18_crit_edge
  %242 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %pdata.i, align 4
  %has_wakeup = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %243, i32 0, i32 4
  %244 = ptrtoint ptr %has_wakeup to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %has_wakeup, align 4, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %245)
  %tobool20.not = icmp eq i8 %245, 0
  br i1 %tobool20.not, label %if.end18.if.end22_crit_edge, label %if.then21

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then21:                                        ; preds = %if.end18
  %246 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %io_base.i, align 4
  %reg_step.i240 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %243, i32 0, i32 3
  %248 = ptrtoint ptr %reg_step.i240 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %reg_step.i240, align 1
  %conv1.i241 = zext i8 %249 to i32
  %mul.i242 = mul nuw nsw i32 %conv1.i241, 42
  %add.ptr.i243 = getelementptr i8, ptr %247, i32 %mul.i242
  %reg_size.i244 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %243, i32 0, i32 2
  %250 = ptrtoint ptr %reg_size.i244 to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %reg_size.i244, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %251)
  %cmp.i245 = icmp eq i8 %251, 2
  %reg_cache.i246 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 21
  %252 = ptrtoint ptr %reg_cache.i246 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %reg_cache.i246, align 4
  br i1 %cmp.i245, label %if.then.i248, label %if.else.i251

if.then.i248:                                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i247 = getelementptr i16, ptr %253, i32 42
  %254 = ptrtoint ptr %arrayidx.i247 to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 1032, ptr %arrayidx.i247, align 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i243, i16 2052) #11, !srcloc !273
  br label %if.end22

if.else.i251:                                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx9.i250 = getelementptr i32, ptr %253, i32 42
  %255 = ptrtoint ptr %arrayidx9.i250 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 1032, ptr %arrayidx9.i250, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i243, i32 134479872) #11, !srcloc !274
  br label %if.end22

if.end22:                                         ; preds = %if.else.i251, %if.then.i248, %if.end18.if.end22_crit_edge
  %irq = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 10
  %256 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %tobool23.not = icmp eq i32 %257, 0
  br i1 %tobool23.not, label %if.end22.if.end25_crit_edge, label %if.then24

if.end22.if.end25_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then24:                                        ; preds = %if.end22
  %258 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %io_base.i, align 4
  %260 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %pdata.i, align 4
  %reg_step.i255 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %261, i32 0, i32 3
  %262 = ptrtoint ptr %reg_step.i255 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %reg_step.i255, align 1
  %conv1.i256 = zext i8 %263 to i32
  %mul.i257 = mul nuw nsw i32 %conv1.i256, 41
  %add.ptr.i258 = getelementptr i8, ptr %259, i32 %mul.i257
  %reg_size.i259 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %261, i32 0, i32 2
  %264 = ptrtoint ptr %reg_size.i259 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %reg_size.i259, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %265)
  %cmp.i260 = icmp eq i8 %265, 2
  %reg_cache.i261 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 21
  %266 = ptrtoint ptr %reg_cache.i261 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %reg_cache.i261, align 4
  br i1 %cmp.i260, label %if.then.i263, label %if.else.i266

if.then.i263:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i262 = getelementptr i16, ptr %267, i32 41
  %268 = ptrtoint ptr %arrayidx.i262 to i32
  call void @__asan_store2_noabort(i32 %268)
  store i16 6321, ptr %arrayidx.i262, align 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i258, i16 -20200) #11, !srcloc !273
  br label %if.end25

if.else.i266:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx9.i265 = getelementptr i32, ptr %267, i32 41
  %269 = ptrtoint ptr %arrayidx9.i265 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 6321, ptr %arrayidx9.i265, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i258, i32 -1323827200) #11, !srcloc !274
  br label %if.end25

if.end25:                                         ; preds = %if.else.i266, %if.then.i263, %if.end22.if.end25_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpu_latency_qos_request_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_add_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_mcbsp_st_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_mcbsp_dump_reg(ptr noundef readonly %mcbsp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_mcbsp_dump_reg, %if.then)) #11
          to label %do.body3 [label %if.then], !srcloc !278

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %mcbsp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcbsp, align 4
  %id = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 4
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug241, ptr noundef %1, ptr noundef nonnull @.str.94, i32 noundef %conv) #11
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_mcbsp_dump_reg, %if.then15)) #11
          to label %do.body20 [label %if.then15], !srcloc !278

if.then15:                                        ; preds = %do.body3
  %4 = ptrtoint ptr %mcbsp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mcbsp, align 4
  %io_base.i = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 5
  %6 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base.i, align 4
  %pdata.i = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 13
  %8 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdata.i, align 4
  %reg_size.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %reg_size.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %reg_size.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp.i = icmp eq i8 %11, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %7) #11, !srcloc !276
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #11
  %cond.i = zext i16 %13 to i32
  br label %omap_mcbsp_read.exit

if.else.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !277
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #11
  br label %omap_mcbsp_read.exit

omap_mcbsp_read.exit:                             ; preds = %if.else.i, %if.then.i
  %retval.0.i310 = phi i32 [ %cond.i, %if.then.i ], [ %15, %if.else.i ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug242, ptr noundef %5, ptr noundef nonnull @.str.95, i32 noundef %retval.0.i310) #11
  br label %do.body20

do.body20:                                        ; preds = %omap_mcbsp_read.exit, %do.body3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_mcbsp_dump_reg, %if.then32)) #11
          to label %do.body37 [label %if.then32], !srcloc !278

if.then32:                                        ; preds = %do.body20
  %16 = ptrtoint ptr %mcbsp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mcbsp, align 4
  %io_base.i311 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 5
  %18 = ptrtoint ptr %io_base.i311 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_base.i311, align 4
  %pdata.i312 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 13
  %20 = ptrtoint ptr %pdata.i312 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdata.i312, align 4
  %reg_step.i313 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %reg_step.i313 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %reg_step.i313, align 1
  %conv1.i314 = zext i8 %23 to i32
  %add.ptr.i = getelementptr i8, ptr %19, i32 %conv1.i314
  %reg_size.i315 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %21, i32 0, i32 2
  %24 = ptrtoint ptr %reg_size.i315 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %reg_size.i315, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %25)
  %cmp.i316 = icmp eq i8 %25, 2
  br i1 %cmp.i316, label %if.then.i317, label %if.else.i319

if.then.i317:                                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #11, !srcloc !276
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #11
  %cond.i318 = zext i16 %27 to i32
  br label %omap_mcbsp_read.exit321

if.else.i319:                                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !277
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #11
  br label %omap_mcbsp_read.exit321

omap_mcbsp_read.exit321:                          ; preds = %if.else.i319, %if.then.i317
  %retval.0.i320 = phi i32 [ %cond.i318, %if.then.i317 ], [ %29, %if.else.i319 ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug243, ptr noundef %17, ptr noundef nonnull @.str.96, i32 noundef %retval.0.i320) #11
  br label %do.body37

do.body37:                                        ; preds = %omap_mcbsp_read.exit321, %do.body20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_mcbsp_dump_reg, %if.then49)) #11
          to label %do.body54 [label %if.then49], !srcloc !278

if.then49:                                        ; preds = %do.body37
  %30 = ptrtoint ptr %mcbsp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mcbsp, align 4
  %io_base.i322 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 5
  %32 = ptrtoint ptr %io_base.i322 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io_base.i322, align 4
  %pdata.i323 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 13
  %34 = ptrtoint ptr %pdata.i323 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdata.i323, align 4
  %reg_step.i324 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %reg_step.i324 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %reg_step.i324, align 1
  %conv1.i325 = zext i8 %37 to i32
  %mul.i = shl nuw nsw i32 %conv1.i325, 1
  %add.ptr.i326 = getelementptr i8, ptr %33, i32 %mul.i
  %reg_size.i327 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %35, i32 0, i32 2
  %38 = ptrtoint ptr %reg_size.i327 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %reg_size.i327, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %39)
  %cmp.i328 = icmp eq i8 %39, 2
  br i1 %cmp.i328, label %if.then.i329, label %if.else.i331

if.then.i329:                                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i326) #11, !srcloc !276
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #11
  %cond.i330 = zext i16 %41 to i32
  br label %omap_mcbsp_read.exit333

if.else.i331:                                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i326) #11, !srcloc !277
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #11
  br label %omap_mcbsp_read.exit333

omap_mcbsp_read.exit333:                          ; preds = %if.else.i331, %if.then.i329
  %retval.0.i332 = phi i32 [ %cond.i330, %if.then.i329 ], [ %43, %if.else.i331 ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug244, ptr noundef %31, ptr noundef nonnull @.str.97, i32 noundef %retval.0.i332) #11
  br label %do.body54

do.body54:                                        ; preds = %omap_mcbsp_read.exit333, %do.body37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_mcbsp_dump_reg, %if.then66)) #11
          to label %do.body71 [label %if.then66], !srcloc !278

if.then66:                                        ; preds = %do.body54
  %44 = ptrtoint ptr %mcbsp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mcbsp, align 4
  %io_base.i334 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 5
  %46 = ptrtoint ptr %io_base.i334 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %io_base.i334, align 4
  %pdata.i335 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 13
  %48 = ptrtoint ptr %pdata.i335 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdata.i335, align 4
  %reg_step.i336 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %reg_step.i336 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %reg_step.i336, align 1
  %conv1.i337 = zext i8 %51 to i32
  %mul.i338 = mul nuw nsw i32 %conv1.i337, 3
  %add.ptr.i339 = getelementptr i8, ptr %47, i32 %mul.i338
  %reg_size.i340 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %49, i32 0, i32 2
  %52 = ptrtoint ptr %reg_size.i340 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %reg_size.i340, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %53)
  %cmp.i341 = icmp eq i8 %53, 2
  br i1 %cmp.i341, label %if.then.i342, label %if.else.i344

if.then.i342:                                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #13
  %54 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i339) #11, !srcloc !276
  %55 = tail call i16 @llvm.bswap.i16(i16 %54) #11
  %cond.i343 = zext i16 %55 to i32
  br label %omap_mcbsp_read.exit346

if.else.i344:                                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #13
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i339) #11, !srcloc !277
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #11
  br label %omap_mcbsp_read.exit346

omap_mcbsp_read.exit346:                          ; preds = %if.else.i344, %if.then.i342
  %retval.0.i345 = phi i32 [ %cond.i343, %if.then.i342 ], [ %57, %if.else.i344 ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug245, ptr noundef %45, ptr noundef nonnull @.str.98, i32 noundef %retval.0.i345) #11
  br label %do.body71

do.body71:                                        ; preds = %omap_mcbsp_read.exit346, %do.body54
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_mcbsp_dump_reg, %if.then83)) #11
          to label %do.body88 [label %if.then83], !srcloc !278

if.then83:                                        ; preds = %do.body71
  %58 = ptrtoint ptr %mcbsp to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mcbsp, align 4
  %io_base.i347 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 5
  %60 = ptrtoint ptr %io_base.i347 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %io_base.i347, align 4
  %pdata.i348 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 13
  %62 = ptrtoint ptr %pdata.i348 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdata.i348, align 4
  %reg_step.i349 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %reg_step.i349 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %reg_step.i349, align 1
  %conv1.i350 = zext i8 %65 to i32
  %mul.i351 = shl nuw nsw i32 %conv1.i350, 2
  %add.ptr.i352 = getelementptr i8, ptr %61, i32 %mul.i351
  %reg_size.i353 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %63, i32 0, i32 2
  %66 = ptrtoint ptr %reg_size.i353 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %reg_size.i353, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %67)
  %cmp.i354 = icmp eq i8 %67, 2
  br i1 %cmp.i354, label %if.then.i355, label %if.else.i357

if.then.i355:                                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #13
  %68 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i352) #11, !srcloc !276
  %69 = tail call i16 @llvm.bswap.i16(i16 %68) #11
  %cond.i356 = zext i16 %69 to i32
  br label %omap_mcbsp_read.exit359

if.else.i357:                                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #13
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i352) #11, !srcloc !277
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #11
  br label %omap_mcbsp_read.exit359

omap_mcbsp_read.exit359:                          ; preds = %if.else.i357, %if.then.i355
  %retval.0.i358 = phi i32 [ %cond.i356, %if.then.i355 ], [ %71, %if.else.i357 ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug246, ptr noundef %59, ptr noundef nonnull @.str.99, i32 noundef %retval.0.i358) #11
  br label %do.body88

do.body88:                                        ; preds = %omap_mcbsp_read.exit359, %do.body71
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_mcbsp_dump_reg, %if.then100)) #11
          to label %do.body105 [label %if.then100], !srcloc !278

if.then100:                                       ; preds = %do.body88
  %72 = ptrtoint ptr %mcbsp to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mcbsp, align 4
  %io_base.i360 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 5
  %74 = ptrtoint ptr %io_base.i360 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %io_base.i360, align 4
  %pdata.i361 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 13
  %76 = ptrtoint ptr %pdata.i361 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdata.i361, align 4
  %reg_step.i362 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %reg_step.i362 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %reg_step.i362, align 1
  %conv1.i363 = zext i8 %79 to i32
  %mul.i364 = mul nuw nsw i32 %conv1.i363, 5
  %add.ptr.i365 = getelementptr i8, ptr %75, i32 %mul.i364
  %reg_size.i366 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %77, i32 0, i32 2
  %80 = ptrtoint ptr %reg_size.i366 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %reg_size.i366, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %81)
  %cmp.i367 = icmp eq i8 %81, 2
  br i1 %cmp.i367, label %if.then.i368, label %if.else.i370

if.then.i368:                                     ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #13
  %82 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i365) #11, !srcloc !276
  %83 = tail call i16 @llvm.bswap.i16(i16 %82) #11
  %cond.i369 = zext i16 %83 to i32
  br label %omap_mcbsp_read.exit372

if.else.i370:                                     ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #13
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i365) #11, !srcloc !277
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #11
  br label %omap_mcbsp_read.exit372

omap_mcbsp_read.exit372:                          ; preds = %if.else.i370, %if.then.i368
  %retval.0.i371 = phi i32 [ %cond.i369, %if.then.i368 ], [ %85, %if.else.i370 ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug247, ptr noundef %73, ptr noundef nonnull @.str.100, i32 noundef %retval.0.i371) #11
  br label %do.body105

do.body105:                                       ; preds = %omap_mcbsp_read.exit372, %do.body88
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_mcbsp_dump_reg, %if.then117)) #11
          to label %do.body122 [label %if.then117], !srcloc !278

if.then117:                                       ; preds = %do.body105
  %86 = ptrtoint ptr %mcbsp to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mcbsp, align 4
  %io_base.i373 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 5
  %88 = ptrtoint ptr %io_base.i373 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %io_base.i373, align 4
  %pdata.i374 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 13
  %90 = ptrtoint ptr %pdata.i374 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pdata.i374, align 4
  %reg_step.i375 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %91, i32 0, i32 3
  %92 = ptrtoint ptr %reg_step.i375 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %reg_step.i375, align 1
  %conv1.i376 = zext i8 %93 to i32
  %mul.i377 = mul nuw nsw i32 %conv1.i376, 6
  %add.ptr.i378 = getelementptr i8, ptr %89, i32 %mul.i377
  %reg_size.i379 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %91, i32 0, i32 2
  %94 = ptrtoint ptr %reg_size.i379 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %reg_size.i379, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %95)
  %cmp.i380 = icmp eq i8 %95, 2
  br i1 %cmp.i380, label %if.then.i381, label %if.else.i383

if.then.i381:                                     ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #13
  %96 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i378) #11, !srcloc !276
  %97 = tail call i16 @llvm.bswap.i16(i16 %96) #11
  %cond.i382 = zext i16 %97 to i32
  br label %omap_mcbsp_read.exit385

if.else.i383:                                     ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #13
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i378) #11, !srcloc !277
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #11
  br label %omap_mcbsp_read.exit385

omap_mcbsp_read.exit385:                          ; preds = %if.else.i383, %if.then.i381
  %retval.0.i384 = phi i32 [ %cond.i382, %if.then.i381 ], [ %99, %if.else.i383 ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug248, ptr noundef %87, ptr noundef nonnull @.str.101, i32 noundef %retval.0.i384) #11
  br label %do.body122

do.body122:                                       ; preds = %omap_mcbsp_read.exit385, %do.body105
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_mcbsp_dump_reg, %if.then134)) #11
          to label %do.body139 [label %if.then134], !srcloc !278

if.then134:                                       ; preds = %do.body122
  %100 = ptrtoint ptr %mcbsp to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mcbsp, align 4
  %io_base.i386 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 5
  %102 = ptrtoint ptr %io_base.i386 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %io_base.i386, align 4
  %pdata.i387 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 13
  %104 = ptrtoint ptr %pdata.i387 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pdata.i387, align 4
  %reg_step.i388 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %105, i32 0, i32 3
  %106 = ptrtoint ptr %reg_step.i388 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %reg_step.i388, align 1
  %conv1.i389 = zext i8 %107 to i32
  %mul.i390 = mul nuw nsw i32 %conv1.i389, 7
  %add.ptr.i391 = getelementptr i8, ptr %103, i32 %mul.i390
  %reg_size.i392 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %105, i32 0, i32 2
  %108 = ptrtoint ptr %reg_size.i392 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %reg_size.i392, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %109)
  %cmp.i393 = icmp eq i8 %109, 2
  br i1 %cmp.i393, label %if.then.i394, label %if.else.i396

if.then.i394:                                     ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #13
  %110 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i391) #11, !srcloc !276
  %111 = tail call i16 @llvm.bswap.i16(i16 %110) #11
  %cond.i395 = zext i16 %111 to i32
  br label %omap_mcbsp_read.exit398

if.else.i396:                                     ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #13
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i391) #11, !srcloc !277
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #11
  br label %omap_mcbsp_read.exit398

omap_mcbsp_read.exit398:                          ; preds = %if.else.i396, %if.then.i394
  %retval.0.i397 = phi i32 [ %cond.i395, %if.then.i394 ], [ %113, %if.else.i396 ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug249, ptr noundef %101, ptr noundef nonnull @.str.102, i32 noundef %retval.0.i397) #11
  br label %do.body139

do.body139:                                       ; preds = %omap_mcbsp_read.exit398, %do.body122
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_mcbsp_dump_reg, %if.then151)) #11
          to label %do.body156 [label %if.then151], !srcloc !278

if.then151:                                       ; preds = %do.body139
  %114 = ptrtoint ptr %mcbsp to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %mcbsp, align 4
  %io_base.i399 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 5
  %116 = ptrtoint ptr %io_base.i399 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %io_base.i399, align 4
  %pdata.i400 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 13
  %118 = ptrtoint ptr %pdata.i400 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pdata.i400, align 4
  %reg_step.i401 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %reg_step.i401 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %reg_step.i401, align 1
  %conv1.i402 = zext i8 %121 to i32
  %mul.i403 = shl nuw nsw i32 %conv1.i402, 3
  %add.ptr.i404 = getelementptr i8, ptr %117, i32 %mul.i403
  %reg_size.i405 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %119, i32 0, i32 2
  %122 = ptrtoint ptr %reg_size.i405 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %reg_size.i405, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %123)
  %cmp.i406 = icmp eq i8 %123, 2
  br i1 %cmp.i406, label %if.then.i407, label %if.else.i409

if.then.i407:                                     ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #13
  %124 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i404) #11, !srcloc !276
  %125 = tail call i16 @llvm.bswap.i16(i16 %124) #11
  %cond.i408 = zext i16 %125 to i32
  br label %omap_mcbsp_read.exit411

if.else.i409:                                     ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #13
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i404) #11, !srcloc !277
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #11
  br label %omap_mcbsp_read.exit411

omap_mcbsp_read.exit411:                          ; preds = %if.else.i409, %if.then.i407
  %retval.0.i410 = phi i32 [ %cond.i408, %if.then.i407 ], [ %127, %if.else.i409 ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug250, ptr noundef %115, ptr noundef nonnull @.str.103, i32 noundef %retval.0.i410) #11
  br label %do.body156

do.body156:                                       ; preds = %omap_mcbsp_read.exit411, %do.body139
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_mcbsp_dump_reg, %if.then168)) #11
          to label %do.body173 [label %if.then168], !srcloc !278

if.then168:                                       ; preds = %do.body156
  %128 = ptrtoint ptr %mcbsp to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mcbsp, align 4
  %io_base.i412 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 5
  %130 = ptrtoint ptr %io_base.i412 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %io_base.i412, align 4
  %pdata.i413 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 13
  %132 = ptrtoint ptr %pdata.i413 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pdata.i413, align 4
  %reg_step.i414 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %133, i32 0, i32 3
  %134 = ptrtoint ptr %reg_step.i414 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %reg_step.i414, align 1
  %conv1.i415 = zext i8 %135 to i32
  %mul.i416 = mul nuw nsw i32 %conv1.i415, 9
  %add.ptr.i417 = getelementptr i8, ptr %131, i32 %mul.i416
  %reg_size.i418 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %133, i32 0, i32 2
  %136 = ptrtoint ptr %reg_size.i418 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %reg_size.i418, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %137)
  %cmp.i419 = icmp eq i8 %137, 2
  br i1 %cmp.i419, label %if.then.i420, label %if.else.i422

if.then.i420:                                     ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #13
  %138 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i417) #11, !srcloc !276
  %139 = tail call i16 @llvm.bswap.i16(i16 %138) #11
  %cond.i421 = zext i16 %139 to i32
  br label %omap_mcbsp_read.exit424

if.else.i422:                                     ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #13
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i417) #11, !srcloc !277
  %141 = tail call i32 @llvm.bswap.i32(i32 %140) #11
  br label %omap_mcbsp_read.exit424

omap_mcbsp_read.exit424:                          ; preds = %if.else.i422, %if.then.i420
  %retval.0.i423 = phi i32 [ %cond.i421, %if.then.i420 ], [ %141, %if.else.i422 ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug251, ptr noundef %129, ptr noundef nonnull @.str.104, i32 noundef %retval.0.i423) #11
  br label %do.body173

do.body173:                                       ; preds = %omap_mcbsp_read.exit424, %do.body156
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_mcbsp_dump_reg, %if.then185)) #11
          to label %do.body190 [label %if.then185], !srcloc !278

if.then185:                                       ; preds = %do.body173
  %142 = ptrtoint ptr %mcbsp to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %mcbsp, align 4
  %io_base.i425 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 5
  %144 = ptrtoint ptr %io_base.i425 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %io_base.i425, align 4
  %pdata.i426 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 13
  %146 = ptrtoint ptr %pdata.i426 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %pdata.i426, align 4
  %reg_step.i427 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %147, i32 0, i32 3
  %148 = ptrtoint ptr %reg_step.i427 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %reg_step.i427, align 1
  %conv1.i428 = zext i8 %149 to i32
  %mul.i429 = mul nuw nsw i32 %conv1.i428, 10
  %add.ptr.i430 = getelementptr i8, ptr %145, i32 %mul.i429
  %reg_size.i431 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %147, i32 0, i32 2
  %150 = ptrtoint ptr %reg_size.i431 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %reg_size.i431, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %151)
  %cmp.i432 = icmp eq i8 %151, 2
  br i1 %cmp.i432, label %if.then.i433, label %if.else.i435

if.then.i433:                                     ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #13
  %152 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i430) #11, !srcloc !276
  %153 = tail call i16 @llvm.bswap.i16(i16 %152) #11
  %cond.i434 = zext i16 %153 to i32
  br label %omap_mcbsp_read.exit437

if.else.i435:                                     ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #13
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i430) #11, !srcloc !277
  %155 = tail call i32 @llvm.bswap.i32(i32 %154) #11
  br label %omap_mcbsp_read.exit437

omap_mcbsp_read.exit437:                          ; preds = %if.else.i435, %if.then.i433
  %retval.0.i436 = phi i32 [ %cond.i434, %if.then.i433 ], [ %155, %if.else.i435 ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug252, ptr noundef %143, ptr noundef nonnull @.str.105, i32 noundef %retval.0.i436) #11
  br label %do.body190

do.body190:                                       ; preds = %omap_mcbsp_read.exit437, %do.body173
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_mcbsp_dump_reg, %if.then202)) #11
          to label %do.body207 [label %if.then202], !srcloc !278

if.then202:                                       ; preds = %do.body190
  %156 = ptrtoint ptr %mcbsp to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %mcbsp, align 4
  %io_base.i438 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 5
  %158 = ptrtoint ptr %io_base.i438 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %io_base.i438, align 4
  %pdata.i439 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 13
  %160 = ptrtoint ptr %pdata.i439 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %pdata.i439, align 4
  %reg_step.i440 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %161, i32 0, i32 3
  %162 = ptrtoint ptr %reg_step.i440 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %reg_step.i440, align 1
  %conv1.i441 = zext i8 %163 to i32
  %mul.i442 = mul nuw nsw i32 %conv1.i441, 11
  %add.ptr.i443 = getelementptr i8, ptr %159, i32 %mul.i442
  %reg_size.i444 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %161, i32 0, i32 2
  %164 = ptrtoint ptr %reg_size.i444 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %reg_size.i444, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %165)
  %cmp.i445 = icmp eq i8 %165, 2
  br i1 %cmp.i445, label %if.then.i446, label %if.else.i448

if.then.i446:                                     ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #13
  %166 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i443) #11, !srcloc !276
  %167 = tail call i16 @llvm.bswap.i16(i16 %166) #11
  %cond.i447 = zext i16 %167 to i32
  br label %omap_mcbsp_read.exit450

if.else.i448:                                     ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #13
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i443) #11, !srcloc !277
  %169 = tail call i32 @llvm.bswap.i32(i32 %168) #11
  br label %omap_mcbsp_read.exit450

omap_mcbsp_read.exit450:                          ; preds = %if.else.i448, %if.then.i446
  %retval.0.i449 = phi i32 [ %cond.i447, %if.then.i446 ], [ %169, %if.else.i448 ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug253, ptr noundef %157, ptr noundef nonnull @.str.106, i32 noundef %retval.0.i449) #11
  br label %do.body207

do.body207:                                       ; preds = %omap_mcbsp_read.exit450, %do.body190
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_mcbsp_dump_reg, %if.then219)) #11
          to label %do.body224 [label %if.then219], !srcloc !278

if.then219:                                       ; preds = %do.body207
  %170 = ptrtoint ptr %mcbsp to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %mcbsp, align 4
  %io_base.i451 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 5
  %172 = ptrtoint ptr %io_base.i451 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %io_base.i451, align 4
  %pdata.i452 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 13
  %174 = ptrtoint ptr %pdata.i452 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %pdata.i452, align 4
  %reg_step.i453 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %175, i32 0, i32 3
  %176 = ptrtoint ptr %reg_step.i453 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %reg_step.i453, align 1
  %conv1.i454 = zext i8 %177 to i32
  %mul.i455 = mul nuw nsw i32 %conv1.i454, 18
  %add.ptr.i456 = getelementptr i8, ptr %173, i32 %mul.i455
  %reg_size.i457 = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %175, i32 0, i32 2
  %178 = ptrtoint ptr %reg_size.i457 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %reg_size.i457, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %179)
  %cmp.i458 = icmp eq i8 %179, 2
  br i1 %cmp.i458, label %if.then.i459, label %if.else.i461

if.then.i459:                                     ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #13
  %180 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i456) #11, !srcloc !276
  %181 = tail call i16 @llvm.bswap.i16(i16 %180) #11
  %cond.i460 = zext i16 %181 to i32
  br label %omap_mcbsp_read.exit463

if.else.i461:                                     ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #13
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i456) #11, !srcloc !277
  %183 = tail call i32 @llvm.bswap.i32(i32 %182) #11
  br label %omap_mcbsp_read.exit463

omap_mcbsp_read.exit463:                          ; preds = %if.else.i461, %if.then.i459
  %retval.0.i462 = phi i32 [ %cond.i460, %if.then.i459 ], [ %183, %if.else.i461 ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug254, ptr noundef %171, ptr noundef nonnull @.str.107, i32 noundef %retval.0.i462) #11
  br label %do.body224

do.body224:                                       ; preds = %omap_mcbsp_read.exit463, %do.body207
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_mcbsp_dump_reg, %if.then236)) #11
          to label %do.end239 [label %if.then236], !srcloc !278

if.then236:                                       ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #13
  %184 = ptrtoint ptr %mcbsp to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %mcbsp, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug255, ptr noundef %185, ptr noundef nonnull @.str.108) #11
  br label %do.end239

do.end239:                                        ; preds = %if.then236, %do.body224
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_mcbsp_st_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_mcbsp_st_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !33, !35, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !52, !53, !54, !56, !57, !58, !60, !62, !64, !65, !66, !68, !69, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !106, !108, !110, !111, !112, !114, !116, !117, !118, !120, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !138, !139, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !195, !197, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !213, !214, !216, !217, !219, !220, !222, !223, !225, !226, !228, !229, !231, !232, !234, !235, !237, !238, !240, !241, !243, !244, !246, !247, !249, !250, !252, !254, !256, !258, !260}
!llvm.module.flags = !{!262, !263, !264, !265, !266, !267, !268, !269}
!llvm.ident = !{!270}

!0 = !{ptr @__initcall__kmod_snd_soc_omap_mcbsp__267_1452_asoc_mcbsp_driver_init6, !1, !"__initcall__kmod_snd_soc_omap_mcbsp__267_1452_asoc_mcbsp_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 1452, i32 1}
!2 = !{ptr @__exitcall_asoc_mcbsp_driver_exit, !1, !"__exitcall_asoc_mcbsp_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author268, !4, !"__UNIQUE_ID_author268", i1 false, i1 false}
!4 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 1454, i32 1}
!5 = !{ptr @__UNIQUE_ID_description269, !6, !"__UNIQUE_ID_description269", i1 false, i1 false}
!6 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 1455, i32 1}
!7 = !{ptr @__UNIQUE_ID_file270, !8, !"__UNIQUE_ID_file270", i1 false, i1 false}
!8 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 1456, i32 1}
!9 = !{ptr @__UNIQUE_ID_license271, !8, !"__UNIQUE_ID_license271", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias272, !11, !"__UNIQUE_ID_alias272", i1 false, i1 false}
!11 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 1457, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 1444, i32 12}
!14 = !{ptr @asoc_mcbsp_driver, !15, !"asoc_mcbsp_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 1442, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 1389, i32 35}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 1394, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @asoc_mcbsp_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @asoc_mcbsp_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 1421, i32 48}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 1421, i32 54}
!30 = !{ptr @omap_mcbsp_init.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 619, i32 2}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 622, i32 59}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 633, i32 59}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 646, i32 45}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 662, i32 4}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @omap_mcbsp_init._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @omap_mcbsp_init._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 670, i32 4}
!46 = !{ptr @omap_mcbsp_init._entry.15, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @omap_mcbsp_init._entry_ptr.17, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 685, i32 41}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 688, i32 3}
!52 = !{ptr @omap_mcbsp_init._entry.19, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @omap_mcbsp_init._entry_ptr.21, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 708, i32 4}
!56 = !{ptr @omap_mcbsp_init._entry.22, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @omap_mcbsp_init._entry_ptr.24, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @additional_attr_group, !59, !"additional_attr_group", i1 false, i1 false}
!59 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 605, i32 37}
!60 = !{ptr @additional_attrs, !61, !"additional_attrs", i1 false, i1 false}
!61 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 598, i32 32}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 544, i32 1}
!64 = !{ptr @dev_attr_max_tx_thres, !63, !"dev_attr_max_tx_thres", i1 false, i1 false}
!65 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 545, i32 1}
!68 = !{ptr @dev_attr_max_rx_thres, !67, !"dev_attr_max_rx_thres", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 596, i32 8}
!71 = !{ptr @dev_attr_dma_op_mode, !70, !"dev_attr_dma_op_mode", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 563, i32 30}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 565, i32 30}
!76 = distinct !{null, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 567, i32 28}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 548, i32 2}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 548, i32 13}
!82 = !{ptr @dma_op_modes, !83, !"dma_op_modes", i1 false, i1 false}
!83 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 547, i32 27}
!84 = !{ptr @omap_mcbsp_dai, !85, !"omap_mcbsp_dai", i1 false, i1 false}
!85 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 1301, i32 34}
!86 = !{ptr @mcbsp_dai_ops, !87, !"mcbsp_dai_ops", i1 false, i1 false}
!87 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 1267, i32 37}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 65, i32 9}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 67, i32 9}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 73, i32 3}
!94 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @omap2_mcbsp_set_clks_src._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @omap2_mcbsp_set_clks_src._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 81, i32 3}
!99 = !{ptr @omap2_mcbsp_set_clks_src._entry.38, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @omap2_mcbsp_set_clks_src._entry_ptr.40, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 301, i32 3}
!103 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @omap_mcbsp_request._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @omap_mcbsp_request._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 322, i32 7}
!108 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 324, i32 4}
!110 = !{ptr @omap_mcbsp_request._entry.44, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @omap_mcbsp_request._entry_ptr.46, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 329, i32 7}
!114 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 331, i32 4}
!116 = !{ptr @omap_mcbsp_request._entry.48, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @omap_mcbsp_request._entry_ptr.50, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 336, i32 7}
!120 = !{ptr @.str.53, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 338, i32 4}
!122 = !{ptr @omap_mcbsp_request._entry.52, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @omap_mcbsp_request._entry_ptr.54, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 97, i32 2}
!126 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @omap_mcbsp_irq_handler.__UNIQUE_ID_ddebug256, !125, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 100, i32 3}
!131 = !{ptr @omap_mcbsp_irq_handler._entry, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @omap_mcbsp_irq_handler._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 102, i32 3}
!135 = !{ptr @omap_mcbsp_irq_handler.__UNIQUE_ID_ddebug257, !134, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!136 = !{ptr @.str.60, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 104, i32 3}
!138 = !{ptr @omap_mcbsp_irq_handler.__UNIQUE_ID_ddebug258, !137, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!139 = !{ptr @.str.61, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 106, i32 3}
!141 = !{ptr @omap_mcbsp_irq_handler.__UNIQUE_ID_ddebug259, !140, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!142 = !{ptr @.str.63, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 108, i32 3}
!144 = !{ptr @omap_mcbsp_irq_handler._entry.62, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @omap_mcbsp_irq_handler._entry_ptr.64, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.66, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 110, i32 3}
!148 = !{ptr @omap_mcbsp_irq_handler._entry.65, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @omap_mcbsp_irq_handler._entry_ptr.67, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 113, i32 3}
!152 = !{ptr @omap_mcbsp_irq_handler._entry.68, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @omap_mcbsp_irq_handler._entry_ptr.70, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 115, i32 3}
!156 = !{ptr @omap_mcbsp_irq_handler.__UNIQUE_ID_ddebug260, !155, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!157 = !{ptr @.str.72, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 117, i32 3}
!159 = !{ptr @omap_mcbsp_irq_handler.__UNIQUE_ID_ddebug261, !158, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!160 = !{ptr @.str.73, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 119, i32 3}
!162 = !{ptr @omap_mcbsp_irq_handler.__UNIQUE_ID_ddebug262, !161, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!163 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 121, i32 3}
!165 = !{ptr @omap_mcbsp_irq_handler._entry.74, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @omap_mcbsp_irq_handler._entry_ptr.76, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.78, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 123, i32 3}
!169 = !{ptr @omap_mcbsp_irq_handler._entry.77, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @omap_mcbsp_irq_handler._entry_ptr.79, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.80, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 125, i32 3}
!173 = !{ptr @omap_mcbsp_irq_handler.__UNIQUE_ID_ddebug263, !172, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!174 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 138, i32 2}
!176 = !{ptr @.str.82, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @omap_mcbsp_tx_irq_handler.__UNIQUE_ID_ddebug264, !175, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!178 = !{ptr @.str.83, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 141, i32 3}
!180 = !{ptr @omap_mcbsp_tx_irq_handler._entry, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @omap_mcbsp_tx_irq_handler._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.84, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 156, i32 2}
!184 = !{ptr @.str.85, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @omap_mcbsp_rx_irq_handler.__UNIQUE_ID_ddebug265, !183, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!186 = !{ptr @.str.86, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 159, i32 3}
!188 = !{ptr @omap_mcbsp_rx_irq_handler._entry, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @omap_mcbsp_rx_irq_handler._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.87, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 399, i32 3}
!192 = !{ptr @.str.88, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @omap_mcbsp_free._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @omap_mcbsp_free._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.89, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 1045, i32 4}
!197 = !{ptr @.str.90, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @omap_mcbsp_dai_hw_params._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @omap_mcbsp_dai_hw_params._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.91, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 177, i32 2}
!202 = !{ptr @.str.92, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @omap_mcbsp_config.__UNIQUE_ID_ddebug266, !201, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!204 = !{ptr @.str.93, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 41, i32 2}
!206 = !{ptr @.str.94, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug241, !205, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!208 = !{ptr @.str.95, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 42, i32 2}
!210 = !{ptr @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug242, !209, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!211 = !{ptr @.str.96, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 43, i32 2}
!213 = !{ptr @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug243, !212, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!214 = !{ptr @.str.97, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 44, i32 2}
!216 = !{ptr @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug244, !215, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!217 = !{ptr @.str.98, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 45, i32 2}
!219 = !{ptr @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug245, !218, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!220 = !{ptr @.str.99, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 46, i32 2}
!222 = !{ptr @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug246, !221, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!223 = !{ptr @.str.100, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 47, i32 2}
!225 = !{ptr @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug247, !224, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!226 = !{ptr @.str.101, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 48, i32 2}
!228 = !{ptr @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug248, !227, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!229 = !{ptr @.str.102, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 49, i32 2}
!231 = !{ptr @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug249, !230, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!232 = !{ptr @.str.103, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 50, i32 2}
!234 = !{ptr @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug250, !233, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!235 = !{ptr @.str.104, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 51, i32 2}
!237 = !{ptr @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug251, !236, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!238 = !{ptr @.str.105, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 52, i32 2}
!240 = !{ptr @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug252, !239, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!241 = !{ptr @.str.106, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 53, i32 2}
!243 = !{ptr @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug253, !242, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!244 = !{ptr @.str.107, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 54, i32 2}
!246 = !{ptr @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug254, !245, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!247 = !{ptr @.str.108, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 55, i32 2}
!249 = !{ptr @omap_mcbsp_dump_reg.__UNIQUE_ID_ddebug255, !248, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!250 = !{ptr @omap_mcbsp_component, !251, !"omap_mcbsp_component", i1 false, i1 false}
!251 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 1319, i32 46}
!252 = !{ptr @omap_mcbsp_of_match, !253, !"omap_mcbsp_of_match", i1 false, i1 false}
!253 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 1348, i32 34}
!254 = !{ptr @omap2420_pdata, !255, !"omap2420_pdata", i1 false, i1 false}
!255 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 1323, i32 40}
!256 = !{ptr @omap2430_pdata, !257, !"omap2430_pdata", i1 false, i1 false}
!257 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 1328, i32 40}
!258 = !{ptr @omap3_pdata, !259, !"omap3_pdata", i1 false, i1 false}
!259 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 1334, i32 40}
!260 = !{ptr @omap4_pdata, !261, !"omap4_pdata", i1 false, i1 false}
!261 = !{!"../sound/soc/ti/omap-mcbsp.c", i32 1341, i32 40}
!262 = !{i32 1, !"wchar_size", i32 2}
!263 = !{i32 1, !"min_enum_size", i32 4}
!264 = !{i32 8, !"branch-target-enforcement", i32 0}
!265 = !{i32 8, !"sign-return-address", i32 0}
!266 = !{i32 8, !"sign-return-address-all", i32 0}
!267 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!268 = !{i32 7, !"uwtable", i32 1}
!269 = !{i32 7, !"frame-pointer", i32 2}
!270 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!271 = !{!"auto-init"}
!272 = !{i8 0, i8 2}
!273 = !{i64 6758525}
!274 = !{i64 6759145}
!275 = !{i32 0, i32 33}
!276 = !{i64 6758725}
!277 = !{i64 6759563}
!278 = !{i64 2148990507, i64 2148990512, i64 2148990525, i64 2148990569, i64 2148990603, i64 2148990624}
