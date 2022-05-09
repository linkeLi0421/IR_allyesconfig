; ModuleID = '/llk/IR_all_yes/sound/soc/ux500/ux500_msp_dai.c_pt.bc'
source_filename = "../sound/soc/ux500/ux500_msp_dai.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.104, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.104 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ux500_msp_i2s_drvdata = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.ux500_msp = type { i32, ptr, ptr, %struct.ux500_msp_dma_params, %struct.ux500_msp_dma_params, i32, i32, i32, i32, i32 }
%struct.ux500_msp_dma_params = type { i32, i32, ptr }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.ux500_msp_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.msp_protdesc, i32, %struct.msp_multichannel_config, i32, i32, i32, i32, i32, i32 }
%struct.msp_protdesc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.msp_multichannel_config = type { i8, i8, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }

@__initcall__kmod_snd_soc_ux500_plat_msp_i2s__314_853_msp_i2s_driver_init6 = internal global ptr @msp_i2s_driver_init, section ".initcall6.init", align 4
@msp_i2s_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ux500_msp_drv_probe, ptr @ux500_msp_drv_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ux500_msp_i2s_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_msp_i2s_driver_exit = internal global ptr @msp_i2s_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file315 = internal constant [75 x i8] c"snd_soc_ux500_plat_msp_i2s.file=sound/soc/ux500/snd-soc-ux500-plat-msp-i2s\00", section ".modinfo", align 1
@__UNIQUE_ID_license316 = internal constant [42 x i8] c"snd_soc_ux500_plat_msp_i2s.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ux500-msp-i2s\00", [18 x i8] zeroinitializer }, align 32
@ux500_msp_i2s_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"stericsson,ux500-msp-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ux500_msp_drv_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 746, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"No platform data or Device Tree found\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ux500_msp_drv_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sound/soc/ux500/ux500_msp_dai.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ux500_msp_drv_probe._entry_ptr = internal global ptr @ux500_msp_drv_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"v-ape\00", [26 x i8] zeroinitializer }, align 32
@ux500_msp_drv_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 768, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: ERROR: Failed to get Vape supply (%d)!\0A\00", [52 x i8] zeroinitializer }, align 32
@ux500_msp_drv_probe._entry_ptr.9 = internal global ptr @ux500_msp_drv_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apb_pclk\00", [23 x i8] zeroinitializer }, align 32
@ux500_msp_drv_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 778, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: ERROR: devm_clk_get of pclk failed (%d)!\0A\00", [50 x i8] zeroinitializer }, align 32
@ux500_msp_drv_probe._entry_ptr.13 = internal global ptr @ux500_msp_drv_probe._entry.11, section ".printk_index", align 4
@ux500_msp_drv_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 787, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: ERROR: devm_clk_get failed (%d)!\0A\00", [58 x i8] zeroinitializer }, align 32
@ux500_msp_drv_probe._entry_ptr.16 = internal global ptr @ux500_msp_drv_probe._entry.14, section ".printk_index", align 4
@ux500_msp_drv_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 796, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: ERROR: Failed to init MSP-struct (%d)!\00", [53 x i8] zeroinitializer }, align 32
@ux500_msp_drv_probe._entry_ptr.19 = internal global ptr @ux500_msp_drv_probe._entry.17, section ".printk_index", align 4
@ux500_msp_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.26, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@ux500_msp_dai_drv = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @ux500_msp_dai_probe, ptr null, ptr null, ptr null, ptr @ux500_msp_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 4, i32 202, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 4, i32 202, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@ux500_msp_drv_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 805, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error: %s: Failed to register MSP%d!\0A\00", [58 x i8] zeroinitializer }, align 32
@ux500_msp_drv_probe._entry_ptr.22 = internal global ptr @ux500_msp_drv_probe._entry.20, section ".printk_index", align 4
@ux500_msp_drv_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 813, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Error: %s: Failed to register PCM platform device!\0A\00", [44 x i8] zeroinitializer }, align 32
@ux500_msp_drv_probe._entry_ptr.25 = internal global ptr @ux500_msp_drv_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ux500-msp\00", [22 x i8] zeroinitializer }, align 32
@ux500_msp_dai_ops = internal constant { [1 x %struct.snd_soc_dai_ops], [32 x i8] } { [1 x %struct.snd_soc_dai_ops] [%struct.snd_soc_dai_ops { ptr @ux500_msp_dai_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @ux500_msp_dai_set_dai_fmt, ptr null, ptr @ux500_msp_dai_set_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ux500_msp_dai_startup, ptr @ux500_msp_dai_shutdown, ptr @ux500_msp_dai_hw_params, ptr null, ptr @ux500_msp_dai_prepare, ptr @ux500_msp_dai_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@ux500_msp_dai_set_dai_sysclk.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 -100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"snd_soc_ux500_plat_msp_i2s\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ux500_msp_dai_set_dai_sysclk\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: MSP %d: Enter. clk-id: %d, freq: %u.\0A\00", [54 x i8] zeroinitializer }, align 32
@ux500_msp_dai_set_dai_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.3, i32 636, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: MSP %d: Invalid clk-id (%d)!\0A\00", [62 x i8] zeroinitializer }, align 32
@ux500_msp_dai_set_dai_sysclk._entry_ptr = internal global ptr @ux500_msp_dai_set_dai_sysclk._entry, section ".printk_index", align 4
@ux500_msp_dai_set_dai_fmt.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.31, ptr @.str.3, ptr @.str.32, i8 0, i8 -120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ux500_msp_dai_set_dai_fmt\00", [38 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: MSP %d: Enter.\0A\00", [44 x i8] zeroinitializer }, align 32
@ux500_msp_dai_set_dai_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.3, i32 559, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: Error: Unsupported protocol/master (fmt = 0x%x)!\0A\00", [42 x i8] zeroinitializer }, align 32
@ux500_msp_dai_set_dai_fmt._entry_ptr = internal global ptr @ux500_msp_dai_set_dai_fmt._entry, section ".printk_index", align 4
@ux500_msp_dai_set_dai_fmt._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.31, ptr @.str.3, i32 572, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Error: Unsupported inversion (fmt = 0x%x)!\0A\00", [48 x i8] zeroinitializer }, align 32
@ux500_msp_dai_set_dai_fmt._entry_ptr.36 = internal global ptr @ux500_msp_dai_set_dai_fmt._entry.34, section ".printk_index", align 4
@ux500_msp_dai_set_tdm_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 603, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Error: Unsupported slot-count (%d)!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ux500_msp_dai_set_tdm_slot\00", [37 x i8] zeroinitializer }, align 32
@ux500_msp_dai_set_tdm_slot._entry_ptr = internal global ptr @ux500_msp_dai_set_tdm_slot._entry, section ".printk_index", align 4
@ux500_msp_dai_set_tdm_slot._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.3, i32 610, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Error: Unsupported slot-width (%d)!\0A\00", [55 x i8] zeroinitializer }, align 32
@ux500_msp_dai_set_tdm_slot._entry_ptr.41 = internal global ptr @ux500_msp_dai_set_tdm_slot._entry.39, section ".printk_index", align 4
@ux500_msp_dai_startup.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.42, ptr @.str.3, ptr @.str.43, i8 0, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ux500_msp_dai_startup\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: MSP %d (%s): Enter.\0A\00", [39 x i8] zeroinitializer }, align 32
@ux500_msp_dai_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 396, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Failed to enable regulator!\0A\00", [63 x i8] zeroinitializer }, align 32
@ux500_msp_dai_startup._entry_ptr = internal global ptr @ux500_msp_dai_startup._entry, section ".printk_index", align 4
@ux500_msp_dai_startup.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.42, ptr @.str.3, ptr @.str.45, i8 0, i8 100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Enabling MSP-clocks.\0A\00", [38 x i8] zeroinitializer }, align 32
@ux500_msp_dai_startup._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.3, i32 405, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Failed to prepare/enable pclk!\0A\00", [60 x i8] zeroinitializer }, align 32
@ux500_msp_dai_startup._entry_ptr.48 = internal global ptr @ux500_msp_dai_startup._entry.46, section ".printk_index", align 4
@ux500_msp_dai_startup._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.42, ptr @.str.3, i32 412, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Failed to prepare/enable clk!\0A\00", [61 x i8] zeroinitializer }, align 32
@ux500_msp_dai_startup._entry_ptr.51 = internal global ptr @ux500_msp_dai_startup._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@ux500_msp_dai_shutdown.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.54, ptr @.str.3, ptr @.str.43, i8 0, i8 108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ux500_msp_dai_shutdown\00", [41 x i8] zeroinitializer }, align 32
@ux500_msp_dai_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.3, i32 444, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Error: MSP %d (%s): Unable to close i2s.\0A\00", [50 x i8] zeroinitializer }, align 32
@ux500_msp_dai_shutdown._entry_ptr = internal global ptr @ux500_msp_dai_shutdown._entry, section ".printk_index", align 4
@ux500_msp_dai_shutdown._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.54, ptr @.str.3, i32 456, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: ERROR: Failed to disable regulator (%d)!\0A\00", [50 x i8] zeroinitializer }, align 32
@ux500_msp_dai_shutdown._entry_ptr.59 = internal global ptr @ux500_msp_dai_shutdown._entry.57, section ".printk_index", align 4
@ux500_msp_dai_hw_params.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.60, ptr @.str.3, ptr @.str.43, i8 0, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ux500_msp_dai_hw_params\00", [40 x i8] zeroinitializer }, align 32
@ux500_msp_dai_hw_params.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.60, ptr @.str.3, ptr @.str.61, i8 0, i8 -126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TDM-slots active: %d\00", [43 x i8] zeroinitializer }, align 32
@ux500_msp_dai_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.3, i32 532, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: Error: Unsupported protocol (fmt = 0x%x)!\0A\00", [49 x i8] zeroinitializer }, align 32
@ux500_msp_dai_hw_params._entry_ptr = internal global ptr @ux500_msp_dai_hw_params._entry, section ".printk_index", align 4
@ux500_msp_dai_prepare.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.63, ptr @.str.3, ptr @.str.64, i8 0, i8 117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ux500_msp_dai_prepare\00", [42 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: MSP %d (%s): Enter (rate = %d).\0A\00", [59 x i8] zeroinitializer }, align 32
@ux500_msp_dai_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.3, i32 475, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Error: msp_setup failed (ret = %d)!\0A\00", [55 x i8] zeroinitializer }, align 32
@ux500_msp_dai_prepare._entry_ptr = internal global ptr @ux500_msp_dai_prepare._entry, section ".printk_index", align 4
@setup_msp_config.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.66, ptr @.str.3, ptr @.str.67, i8 0, i8 81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"setup_msp_config\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: f_inputclk = %u, frame_freq = %u.\0A\00", [57 x i8] zeroinitializer }, align 32
@setup_msp_config.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.66, ptr @.str.3, ptr @.str.68, i8 0, i8 82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: rate: %u, channels: %d.\0A\00", [35 x i8] zeroinitializer }, align 32
@setup_msp_config.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.66, ptr @.str.3, ptr @.str.69, i8 0, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: SND_SOC_DAIFMT_I2S.\0A\00", [39 x i8] zeroinitializer }, align 32
@setup_msp_config.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.66, ptr @.str.3, ptr @.str.69, i8 0, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@setup_msp_config.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.66, ptr @.str.3, ptr @.str.70, i8 0, i8 88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: PCM format.\0A\00", [47 x i8] zeroinitializer }, align 32
@setup_msp_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.66, ptr @.str.3, i32 376, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Error: Unsupported format (%d)!\0A\00", [59 x i8] zeroinitializer }, align 32
@setup_msp_config._entry_ptr = internal global ptr @setup_msp_config._entry, section ".printk_index", align 4
@setup_pcm_protdesc.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.72, ptr @.str.3, ptr @.str.73, i8 0, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"setup_pcm_protdesc\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: DSP_A.\0A\00", [20 x i8] zeroinitializer }, align 32
@setup_pcm_protdesc.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.72, ptr @.str.3, ptr @.str.74, i8 0, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: DSP_B.\0A\00", [20 x i8] zeroinitializer }, align 32
@setup_pcm_multichan.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.75, ptr @.str.3, ptr @.str.76, i8 0, i8 14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"setup_pcm_multichan\00", [44 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: Multichannel enabled. Slots: %d, TX: %u, RX: %u\0A\00", [43 x i8] zeroinitializer }, align 32
@setup_pcm_framing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.3, i32 155, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: Error: Unsupported slot-count (slots = %d)!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"setup_pcm_framing\00", [46 x i8] zeroinitializer }, align 32
@setup_pcm_framing._entry_ptr = internal global ptr @setup_pcm_framing._entry, section ".printk_index", align 4
@setup_frameper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.3, i32 94, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: Error: Unsupported sample-rate (freq = %d)!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"setup_frameper\00", [17 x i8] zeroinitializer }, align 32
@setup_frameper._entry_ptr = internal global ptr @setup_frameper._entry, section ".printk_index", align 4
@setup_frameper._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.80, ptr @.str.3, i32 113, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@setup_frameper._entry_ptr.82 = internal global ptr @setup_frameper._entry.81, section ".printk_index", align 4
@setup_frameper.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.80, ptr @.str.3, ptr @.str.83, i8 0, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Clocks per frame: %u\0A\00", [38 x i8] zeroinitializer }, align 32
@setup_clocking._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.84, ptr @.str.3, i32 189, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"setup_clocking\00", [17 x i8] zeroinitializer }, align 32
@setup_clocking._entry_ptr = internal global ptr @setup_clocking._entry, section ".printk_index", align 4
@setup_clocking.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.84, ptr @.str.3, ptr @.str.85, i8 0, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Codec is master.\0A\00", [42 x i8] zeroinitializer }, align 32
@setup_clocking.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.84, ptr @.str.3, ptr @.str.86, i8 0, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: Codec is slave.\0A\00", [43 x i8] zeroinitializer }, align 32
@setup_clocking._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.84, ptr @.str.3, i32 220, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Error: Unsupported master (fmt = 0x%x)!\0A\00", [51 x i8] zeroinitializer }, align 32
@setup_clocking._entry_ptr.89 = internal global ptr @setup_clocking._entry.87, section ".printk_index", align 4
@ux500_msp_dai_trigger.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.90, ptr @.str.3, ptr @.str.91, i8 0, i8 -94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ux500_msp_dai_trigger\00", [42 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: MSP %d (%s): Enter (msp->id = %d, cmd = %d).\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 16, i64 4097, i64 4100, i64 4101, i64 16385, i64 16388, i64 16389]
@__sancov_gen_cov_switch_values.92 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 512, i64 1024]
@__sancov_gen_cov_switch_values.93 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 8, i64 16]
@__sancov_gen_cov_switch_values.94 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.95 = internal global [8 x i64] [i64 6, i64 16, i64 4097, i64 4100, i64 4101, i64 16385, i64 16388, i64 16389]
@__sancov_gen_cov_switch_values.96 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 8, i64 16]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 512]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.99 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 8, i64 16]
@__sancov_gen_cov_switch_values.100 = internal global [6 x i64] [i64 4, i64 32, i64 8000, i64 16000, i64 44100, i64 48000]
@___asan_gen_.101 = private unnamed_addr constant [15 x i8] c"msp_i2s_driver\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 845, i32 31 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 847, i32 11 }
@___asan_gen_.107 = private unnamed_addr constant [20 x i8] c"ux500_msp_i2s_match\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 839, i32 34 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 746, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 763, i32 53 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 766, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 773, i32 43 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 776, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 785, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 794, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant [20 x i8] c"ux500_msp_component\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 733, i32 46 }
@___asan_gen_.161 = private unnamed_addr constant [18 x i8] c"ux500_msp_dai_drv\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 720, i32 34 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 804, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 811, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 734, i32 11 }
@___asan_gen_.179 = private unnamed_addr constant [18 x i8] c"ux500_msp_dai_ops\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 707, i32 37 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 626, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 635, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 544, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 557, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 570, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 602, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 609, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 389, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 395, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 401, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 404, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 411, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1402, i32 10 }
@___asan_gen_.261 = private unnamed_addr constant [23 x i8] c"../include/sound/pcm.h\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1404, i32 10 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 431, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 442, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 454, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 505, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 522, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 530, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 467, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 474, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 323, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 328, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 333, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 355, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 375, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 242, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 249, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 54, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 153, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 92, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 111, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 120, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 187, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 196, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 208, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 219, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.384 = private constant [35 x i8] c"../sound/soc/ux500/ux500_msp_dai.c\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 649, i32 2 }
@llvm.compiler.used = appending global [125 x ptr] [ptr @__UNIQUE_ID_file315, ptr @__UNIQUE_ID_license316, ptr @__exitcall_msp_i2s_driver_exit, ptr @__initcall__kmod_snd_soc_ux500_plat_msp_i2s__314_853_msp_i2s_driver_init6, ptr @msp_i2s_driver_exit, ptr @setup_clocking._entry, ptr @setup_clocking._entry.87, ptr @setup_clocking._entry_ptr, ptr @setup_clocking._entry_ptr.89, ptr @setup_frameper._entry, ptr @setup_frameper._entry.81, ptr @setup_frameper._entry_ptr, ptr @setup_frameper._entry_ptr.82, ptr @setup_msp_config._entry, ptr @setup_msp_config._entry_ptr, ptr @setup_pcm_framing._entry, ptr @setup_pcm_framing._entry_ptr, ptr @ux500_msp_dai_hw_params._entry, ptr @ux500_msp_dai_hw_params._entry_ptr, ptr @ux500_msp_dai_prepare._entry, ptr @ux500_msp_dai_prepare._entry_ptr, ptr @ux500_msp_dai_set_dai_fmt._entry, ptr @ux500_msp_dai_set_dai_fmt._entry.34, ptr @ux500_msp_dai_set_dai_fmt._entry_ptr, ptr @ux500_msp_dai_set_dai_fmt._entry_ptr.36, ptr @ux500_msp_dai_set_dai_sysclk._entry, ptr @ux500_msp_dai_set_dai_sysclk._entry_ptr, ptr @ux500_msp_dai_set_tdm_slot._entry, ptr @ux500_msp_dai_set_tdm_slot._entry.39, ptr @ux500_msp_dai_set_tdm_slot._entry_ptr, ptr @ux500_msp_dai_set_tdm_slot._entry_ptr.41, ptr @ux500_msp_dai_shutdown._entry, ptr @ux500_msp_dai_shutdown._entry.57, ptr @ux500_msp_dai_shutdown._entry_ptr, ptr @ux500_msp_dai_shutdown._entry_ptr.59, ptr @ux500_msp_dai_startup._entry, ptr @ux500_msp_dai_startup._entry.46, ptr @ux500_msp_dai_startup._entry.49, ptr @ux500_msp_dai_startup._entry_ptr, ptr @ux500_msp_dai_startup._entry_ptr.48, ptr @ux500_msp_dai_startup._entry_ptr.51, ptr @ux500_msp_drv_probe._entry, ptr @ux500_msp_drv_probe._entry.11, ptr @ux500_msp_drv_probe._entry.14, ptr @ux500_msp_drv_probe._entry.17, ptr @ux500_msp_drv_probe._entry.20, ptr @ux500_msp_drv_probe._entry.23, ptr @ux500_msp_drv_probe._entry.7, ptr @ux500_msp_drv_probe._entry_ptr, ptr @ux500_msp_drv_probe._entry_ptr.13, ptr @ux500_msp_drv_probe._entry_ptr.16, ptr @ux500_msp_drv_probe._entry_ptr.19, ptr @ux500_msp_drv_probe._entry_ptr.22, ptr @ux500_msp_drv_probe._entry_ptr.25, ptr @ux500_msp_drv_probe._entry_ptr.9, ptr @msp_i2s_driver, ptr @.str, ptr @ux500_msp_i2s_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @ux500_msp_component, ptr @ux500_msp_dai_drv, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @ux500_msp_dai_ops, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.90, ptr @.str.91], section "llvm.metadata"
@0 = internal global [95 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_i2s_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_msp_i2s_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_msp_drv_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_msp_drv_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_msp_drv_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_msp_drv_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_msp_drv_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_msp_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_msp_dai_drv to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_msp_drv_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_msp_drv_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_msp_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_msp_dai_set_dai_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_msp_dai_set_dai_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_msp_dai_set_dai_fmt._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_msp_dai_set_tdm_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_msp_dai_set_tdm_slot._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_msp_dai_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_msp_dai_startup._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_msp_dai_startup._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_msp_dai_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_msp_dai_shutdown._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_msp_dai_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_msp_dai_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_msp_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_pcm_framing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_frameper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_frameper._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_clocking._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_clocking._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @msp_i2s_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @msp_i2s_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @msp_i2s_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @msp_i2s_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ux500_msp_drv_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #5
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %fmt = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %fmt, align 4
  %slots = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %slots, align 4
  %tx_mask = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %tx_mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %tx_mask, align 4
  %rx_mask = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %rx_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %rx_mask, align 4
  %slot_width = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %slot_width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16, ptr %slot_width, align 4
  %master_clk = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %call.i, i32 0, i32 7
  %9 = ptrtoint ptr %master_clk to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 48000000, ptr %master_clk, align 4
  %call9 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.6) #5
  %reg_vape = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %reg_vape to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9, ptr %reg_vape, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end19

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef %11) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end7
  %call22 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.10) #5
  %pclk = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %call.i, i32 0, i32 9
  %12 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call22, ptr %pclk, align 4
  %cmp.i127 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127, label %if.then25, label %if.end32

if.then25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %call22 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.2, i32 noundef %13) #8
  br label %cleanup

if.end32:                                         ; preds = %if.end19
  %call34 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #5
  %clk = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %call.i, i32 0, i32 8
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call34, ptr %clk, align 4
  %cmp.i128 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128, label %if.then37, label %if.end44

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %call34 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef %15) #8
  br label %cleanup

if.end44:                                         ; preds = %if.end32
  %16 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %platform_data, align 8
  %call47 = tail call i32 @ux500_msp_i2s_init_msp(ptr noundef %pdev, ptr noundef nonnull %call.i, ptr noundef %17) #5
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %tobool49.not = icmp eq ptr %19, null
  br i1 %tobool49.not, label %do.end53, label %if.end55

do.end53:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef %call47) #8
  br label %cleanup

if.end55:                                         ; preds = %if.end44
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %20 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call58 = tail call i32 @snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @ux500_msp_component, ptr noundef nonnull @ux500_msp_dai_drv, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp = icmp slt i32 %call58, 0
  br i1 %cmp, label %do.end62, label %if.end65

do.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2, i32 noundef %24) #8
  br label %cleanup

if.end65:                                         ; preds = %if.end55
  %call66 = tail call i32 @ux500_pcm_register_platform(ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %do.end71, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end71:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.2) #8
  tail call void @snd_soc_unregister_component(ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end71, %if.end65.cleanup_crit_edge, %do.end62, %do.end53, %if.then37, %if.then25, %if.then12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %11, %if.then12 ], [ %13, %if.then25 ], [ %15, %if.then37 ], [ %call58, %do.end62 ], [ %call66, %do.end71 ], [ %call47, %do.end53 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end65.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ux500_msp_drv_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @ux500_pcm_unregister_platform(ptr noundef %pdev) #5
  tail call void @snd_soc_unregister_component(ptr noundef %dev) #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @ux500_msp_i2s_cleanup_msp(ptr noundef %pdev, ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ux500_msp_i2s_init_msp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ux500_pcm_register_platform(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_unregister_component(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ux500_msp_dai_probe(ptr nocapture noundef %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %platform_data = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 36, i32 noundef 3520) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i26.i = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 36, i32 noundef 3520) #5
  %tobool5.not.i = icmp eq ptr %call.i26.i, null
  br i1 %tobool5.not.i, label %if.end.i.cleanup_crit_edge, label %if.end7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %tx_rx_addr.i = getelementptr inbounds %struct.ux500_msp, ptr %9, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %tx_rx_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_rx_addr.i, align 4
  %12 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %call.i.i, align 4
  %13 = load ptr, ptr %3, align 4
  %tx_rx_addr11.i = getelementptr inbounds %struct.ux500_msp, ptr %13, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %tx_rx_addr11.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_rx_addr11.i, align 4
  %16 = ptrtoint ptr %call.i26.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %call.i26.i, align 4
  %maxburst.i = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %call.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %maxburst.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %maxburst.i, align 4
  %maxburst13.i = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %call.i26.i, i32 0, i32 2
  %18 = ptrtoint ptr %maxburst13.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %maxburst13.i, align 4
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %slot_width = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %3, i32 0, i32 6
  %19 = ptrtoint ptr %slot_width to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %slot_width, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  %playback_dma_data = getelementptr inbounds %struct.ux500_msp, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %playback_dma_data to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %20, ptr %playback_dma_data, align 4
  %24 = load i32, ptr %slot_width, align 4
  %25 = load ptr, ptr %3, align 4
  %capture_dma_data = getelementptr inbounds %struct.ux500_msp, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %capture_dma_data to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %24, ptr %capture_dma_data, align 4
  %27 = load ptr, ptr %3, align 4
  %playback_dma_data7 = getelementptr inbounds %struct.ux500_msp, ptr %27, i32 0, i32 3
  %capture_dma_data9 = getelementptr inbounds %struct.ux500_msp, ptr %27, i32 0, i32 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %if.end7.i
  %call.i.i.sink = phi ptr [ %call.i.i, %if.end7.i ], [ %playback_dma_data7, %if.end ]
  %call.i26.i.sink = phi ptr [ %call.i26.i, %if.end7.i ], [ %capture_dma_data9, %if.end ]
  %playback_dma_data.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %28 = ptrtoint ptr %playback_dma_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i.i.sink, ptr %playback_dma_data.i.i, align 4
  %capture_dma_data.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %29 = ptrtoint ptr %capture_dma_data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i26.i.sink, ptr %capture_dma_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ux500_msp_dai_set_dai_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ux500_msp_dai_set_dai_sysclk.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ux500_msp_dai_set_dai_sysclk, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !213

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ux500_msp_dai_set_dai_sysclk.__UNIQUE_ID_ddebug312, ptr noundef %5, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %7, i32 noundef %clk_id, i32 noundef %freq) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clk_id)
  %cond = icmp eq i32 %clk_id, 0
  br i1 %cond, label %sw.bb, label %do.end7

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %master_clk = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %master_clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %freq, ptr %master_clk, align 4
  br label %cleanup

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %id9 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %11 = ptrtoint ptr %id9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28, i32 noundef %12, i32 noundef %clk_id) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %do.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ux500_msp_dai_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ux500_msp_dai_set_dai_fmt.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ux500_msp_dai_set_dai_fmt, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !213

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ux500_msp_dai_set_dai_fmt.__UNIQUE_ID_ddebug311, ptr noundef %5, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef %7) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = trunc i32 %fmt to i16
  %trunc = and i16 %8, -4081
  %9 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %do.end7 [
    i16 16385, label %do.end.sw.epilog_crit_edge
    i16 4097, label %do.end.sw.epilog_crit_edge29
    i16 16389, label %do.end.sw.epilog_crit_edge30
    i16 4101, label %do.end.sw.epilog_crit_edge31
    i16 16388, label %do.end.sw.epilog_crit_edge32
    i16 4100, label %do.end.sw.epilog_crit_edge33
  ]

do.end.sw.epilog_crit_edge33:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end.sw.epilog_crit_edge32:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end.sw.epilog_crit_edge31:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end.sw.epilog_crit_edge30:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end.sw.epilog_crit_edge29:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %fmt9 = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %fmt9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fmt9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, i32 noundef %13) #8
  br label %cleanup

sw.epilog:                                        ; preds = %do.end.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge29, %do.end.sw.epilog_crit_edge30, %do.end.sw.epilog_crit_edge31, %do.end.sw.epilog_crit_edge32, %do.end.sw.epilog_crit_edge33
  %and10 = and i32 %fmt, 3840
  %14 = zext i32 %and10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %and10, label %do.end15 [
    i32 0, label %sw.epilog.sw.epilog18_crit_edge
    i32 512, label %sw.epilog.sw.epilog18_crit_edge34
    i32 1024, label %sw.epilog.sw.epilog18_crit_edge35
  ]

sw.epilog.sw.epilog18_crit_edge35:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog18

sw.epilog.sw.epilog18_crit_edge34:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog18

sw.epilog.sw.epilog18_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog18

do.end15:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %fmt17 = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %fmt17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fmt17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.31, i32 noundef %18) #8
  br label %cleanup

sw.epilog18:                                      ; preds = %sw.epilog.sw.epilog18_crit_edge, %sw.epilog.sw.epilog18_crit_edge34, %sw.epilog.sw.epilog18_crit_edge35
  %fmt19 = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %fmt19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %fmt, ptr %fmt19, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog18, %do.end15, %do.end7
  %retval.0 = phi i32 [ -22, %do.end7 ], [ -22, %do.end15 ], [ 0, %sw.epilog18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ux500_msp_dai_set_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = zext i32 %slots to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %slots, label %do.end [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb1
    i32 8, label %sw.bb2
    i32 16, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef %slots) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %cap.0 = phi i32 [ 65535, %sw.bb3 ], [ 255, %sw.bb2 ], [ 3, %sw.bb1 ], [ %slots, %entry.sw.epilog_crit_edge ]
  %slots5 = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %slots5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %slots, ptr %slots5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %slot_width)
  %cmp = icmp eq i32 %slot_width, 16
  br i1 %cmp, label %if.end, label %do.end8

do.end8:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.38, i32 noundef %slot_width) #8
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %slot_width10 = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %slot_width10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16, ptr %slot_width10, align 4
  %and = and i32 %cap.0, %tx_mask
  %tx_mask11 = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %tx_mask11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %tx_mask11, align 4
  %and12 = and i32 %cap.0, %rx_mask
  %rx_mask13 = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %rx_mask13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and12, ptr %rx_mask13, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end8, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ], [ -22, %do.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ux500_msp_dai_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ux500_msp_dai_startup.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ux500_msp_dai_startup, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !213

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %8 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  %.str.52..str.53.i = select i1 %cmp.i, ptr @.str.52, ptr @.str.53
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ux500_msp_dai_startup.__UNIQUE_ID_ddebug305, ptr noundef %5, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, i32 noundef %7, ptr noundef nonnull %.str.52..str.53.i) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %reg_vape = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %reg_vape to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_vape, align 4
  %call6 = tail call i32 @regulator_enable(ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %do.body13, label %do.end10

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %dev11 = getelementptr inbounds %struct.ux500_msp, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.42) #8
  br label %cleanup

do.body13:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ux500_msp_dai_startup.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ux500_msp_dai_startup, %if.then25)) #5
          to label %do.end29 [label %if.then25], !srcloc !213

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ux500_msp_dai_startup.__UNIQUE_ID_ddebug306, ptr noundef %17, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.42) #5
  br label %do.end29

do.end29:                                         ; preds = %if.then25, %do.body13
  %pclk = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %3, i32 0, i32 9
  %18 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end29.do.end35_crit_edge

do.end29.do.end35_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end35

if.end.i:                                         ; preds = %do.end29
  %call1.i = tail call i32 @clk_enable(ptr noundef %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end38, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %19) #5
  br label %do.end35

do.end35:                                         ; preds = %if.then3.i, %do.end29.do.end35_crit_edge
  %retval.0.i70.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %do.end29.do.end35_crit_edge ]
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %dev37 = getelementptr inbounds %struct.ux500_msp, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev37, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.42) #8
  br label %err_pclk

if.end38:                                         ; preds = %if.end.i
  %clk = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %3, i32 0, i32 8
  %24 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk, align 4
  %call.i71 = tail call i32 @clk_prepare(ptr noundef %25) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool.not.i72 = icmp eq i32 %call.i71, 0
  br i1 %tobool.not.i72, label %if.end.i75, label %if.end38.do.end44_crit_edge

if.end38.do.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end44

if.end.i75:                                       ; preds = %if.end38
  %call1.i73 = tail call i32 @clk_enable(ptr noundef %25) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i73)
  %tobool2.not.i74 = icmp eq i32 %call1.i73, 0
  br i1 %tobool2.not.i74, label %if.end.i75.cleanup_crit_edge, label %if.then3.i76

if.end.i75.cleanup_crit_edge:                     ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3.i76:                                     ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %25) #5
  br label %do.end44

do.end44:                                         ; preds = %if.then3.i76, %if.end38.do.end44_crit_edge
  %retval.0.i77.ph = phi i32 [ %call1.i73, %if.then3.i76 ], [ %call.i71, %if.end38.do.end44_crit_edge ]
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %dev46 = getelementptr inbounds %struct.ux500_msp, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev46, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.42) #8
  %30 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %31) #5
  tail call void @clk_unprepare(ptr noundef %31) #5
  br label %err_pclk

err_pclk:                                         ; preds = %do.end44, %do.end35
  %ret.0 = phi i32 [ %retval.0.i70.ph, %do.end35 ], [ %retval.0.i77.ph, %do.end44 ]
  %32 = ptrtoint ptr %reg_vape to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_vape, align 4
  %call50 = tail call i32 @regulator_disable(ptr noundef %33) #5
  br label %cleanup

cleanup:                                          ; preds = %err_pclk, %if.end.i75.cleanup_crit_edge, %do.end10
  %retval.0 = phi i32 [ %call6, %do.end10 ], [ %ret.0, %err_pclk ], [ 0, %if.end.i75.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ux500_msp_dai_shutdown(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ux500_msp_dai_shutdown.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ux500_msp_dai_shutdown, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !213

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %10 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  %.str.52..str.53.i = select i1 %cmp.i, ptr @.str.52, ptr @.str.53
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ux500_msp_dai_shutdown.__UNIQUE_ID_ddebug307, ptr noundef %7, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.54, i32 noundef %9, ptr noundef nonnull %.str.52..str.53.i) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %vape_opp_constraint = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %3, i32 0, i32 10
  %12 = ptrtoint ptr %vape_opp_constraint to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vape_opp_constraint, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp7 = icmp eq i32 %13, 1
  br i1 %cmp7, label %if.then8, label %do.end.if.end11_crit_edge

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %vape_opp_constraint to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %vape_opp_constraint, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %do.end.if.end11_crit_edge
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %cond = select i1 %cmp, i32 1, i32 2
  %call13 = tail call i32 @ux500_msp_i2s_close(ptr noundef %16, i32 noundef %cond) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end11.if.end22_crit_edge, label %do.end18

if.end11.if.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %id20 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %19 = ptrtoint ptr %id20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id20, align 4
  %21 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i45 = icmp eq i32 %22, 0
  %.str.52..str.53.i46 = select i1 %cmp.i45, ptr @.str.52, ptr @.str.53
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.54, i32 noundef %20, ptr noundef nonnull %.str.52..str.53.i46) #8
  br label %if.end22

if.end22:                                         ; preds = %do.end18, %if.end11.if.end22_crit_edge
  %clk = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %3, i32 0, i32 8
  %23 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %24) #5
  tail call void @clk_unprepare(ptr noundef %24) #5
  %pclk = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %3, i32 0, i32 9
  %25 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %26) #5
  tail call void @clk_unprepare(ptr noundef %26) #5
  %reg_vape = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %3, i32 0, i32 1
  %27 = ptrtoint ptr %reg_vape to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_vape, align 4
  %call23 = tail call i32 @regulator_disable(ptr noundef %28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %do.end28, label %if.end22.if.end30_crit_edge

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.54, i32 noundef %call23) #8
  br label %if.end30

if.end30:                                         ; preds = %do.end28, %if.end22.if.end30_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ux500_msp_dai_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ux500_msp_dai_hw_params.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ux500_msp_dai_hw_params, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !213

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %10 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  %.str.52..str.53.i = select i1 %cmp.i, ptr @.str.52, ptr @.str.53
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ux500_msp_dai_hw_params.__UNIQUE_ID_ddebug309, ptr noundef %7, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.60, i32 noundef %9, ptr noundef nonnull %.str.52..str.53.i) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %fmt = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fmt, align 4
  %and = and i32 %13, 15
  %14 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %and, label %do.end318 [
    i32 1, label %sw.bb
    i32 5, label %do.end.cond.false294_crit_edge
    i32 4, label %do.end.cond.false294_crit_edge376
  ]

do.end.cond.false294_crit_edge376:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false294

do.end.cond.false294_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false294

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %1, i32 noundef 10, i32 noundef 1, i32 noundef 2) #5
  br label %cleanup

cond.false294:                                    ; preds = %do.end.cond.false294_crit_edge, %do.end.cond.false294_crit_edge376
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %15 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp eq i32 %16, 0
  %tx_mask = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %5, i32 0, i32 3
  %rx_mask = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %5, i32 0, i32 4
  %cond.in = select i1 %cmp, ptr %tx_mask, ptr %rx_mask
  %17 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %cond = load i32, ptr %cond.in, align 4
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %cond) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ux500_msp_dai_hw_params.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ux500_msp_dai_hw_params, %if.then310)) #5
          to label %do.end314 [label %if.then310], !srcloc !213

if.then310:                                       ; preds = %cond.false294
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ux500_msp_dai_hw_params.__UNIQUE_ID_ddebug310, ptr noundef %19, ptr noundef nonnull @.str.61, i32 noundef %call.i) #5
  br label %do.end314

do.end314:                                        ; preds = %if.then310, %cond.false294
  %call.i373 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %1, i32 noundef 10, i32 noundef %call.i, i32 noundef %call.i) #5
  br label %cleanup

do.end318:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.60, i32 noundef %13) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end318, %do.end314, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end318 ], [ 0, %do.end314 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ux500_msp_dai_prepare(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %msp_config = alloca %struct.ux500_msp_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %4 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime1, align 4
  call void @llvm.lifetime.start.p0(i64 244, ptr nonnull %msp_config) #5
  %6 = call ptr @memset(ptr %msp_config, i32 255, i32 244)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ux500_msp_dai_prepare.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ux500_msp_dai_prepare, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !213

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %11 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i = icmp eq i32 %12, 0
  %.str.52..str.53.i = select i1 %cmp.i, ptr @.str.52, ptr @.str.53
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 14
  %13 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ux500_msp_dai_prepare.__UNIQUE_ID_ddebug308, ptr noundef %8, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.63, i32 noundef %10, ptr noundef nonnull %.str.52..str.53.i, i32 noundef %14) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call fastcc void @setup_msp_config(ptr noundef %substream, ptr noundef %dai, ptr noundef nonnull %msp_config)
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %call8 = call i32 @ux500_msp_i2s_open(ptr noundef %16, ptr noundef nonnull %msp_config) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end12, label %if.end14

do.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.63, i32 noundef %call8) #8
  br label %cleanup

if.end14:                                         ; preds = %do.end
  %fmt = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fmt, align 4
  %and = and i32 %20, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end14.if.else_crit_edge, label %land.lhs.true

if.end14.if.else_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.end14
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  %f_bitclk = getelementptr inbounds %struct.ux500_msp, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %f_bitclk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %f_bitclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19200000, i32 %24)
  %cmp17 = icmp ugt i32 %24, 19200000
  br i1 %cmp17, label %if.then18, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %vape_opp_constraint = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %3, i32 0, i32 10
  %25 = ptrtoint ptr %vape_opp_constraint to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %vape_opp_constraint, align 4
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end14.if.else_crit_edge
  %vape_opp_constraint21 = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %3, i32 0, i32 10
  %26 = ptrtoint ptr %vape_opp_constraint21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %vape_opp_constraint21, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then18, %do.end12
  call void @llvm.lifetime.end.p0(i64 244, ptr nonnull %msp_config) #5
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ux500_msp_dai_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ux500_msp_dai_trigger.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ux500_msp_dai_trigger, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !213

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %8 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  %.str.52..str.53.i = select i1 %cmp.i, ptr @.str.52, ptr @.str.53
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ux500_msp_dai_trigger.__UNIQUE_ID_ddebug313, ptr noundef %5, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.90, i32 noundef %7, ptr noundef nonnull %.str.52..str.53.i, i32 noundef %13, i32 noundef %cmd) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %16 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stream, align 4
  %call8 = tail call i32 @ux500_msp_i2s_trigger(ptr noundef %15, i32 noundef %cmd, i32 noundef %17) #5
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ux500_msp_i2s_close(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setup_msp_config(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai, ptr noundef %msp_config) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %protdesc = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %4 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime1, align 4
  %fmt2 = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %fmt2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fmt2, align 4
  %8 = call ptr @memset(ptr %msp_config, i32 0, i32 244)
  %master_clk = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %master_clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %master_clk, align 4
  %11 = ptrtoint ptr %msp_config to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %msp_config, align 4
  %tx_fifo_config = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 9
  %12 = ptrtoint ptr %tx_fifo_config to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 512, ptr %tx_fifo_config, align 4
  %rx_fifo_config = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 8
  %13 = ptrtoint ptr %rx_fifo_config to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %rx_fifo_config, align 4
  %def_elem_len = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 20
  %14 = ptrtoint ptr %def_elem_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %def_elem_len, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %15 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp eq i32 %16, 0
  %cond = select i1 %cmp, i32 1, i32 2
  %direction = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 16
  %17 = ptrtoint ptr %direction to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond, ptr %direction, align 4
  %data_size = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 19
  %18 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 7, ptr %data_size, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 14
  %19 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rate, align 4
  %frame_freq = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 18
  %21 = ptrtoint ptr %frame_freq to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %frame_freq, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_msp_config.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_msp_config, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !213

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %24 = ptrtoint ptr %msp_config to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msp_config, align 4
  %26 = ptrtoint ptr %frame_freq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %frame_freq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @setup_msp_config.__UNIQUE_ID_ddebug300, ptr noundef %23, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, i32 noundef %25, i32 noundef %27) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %clocks_per_frame = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 27
  %28 = ptrtoint ptr %clocks_per_frame to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %clocks_per_frame, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_msp_config.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_msp_config, %if.then21)) #5
          to label %do.end26 [label %if.then21], !srcloc !213

if.then21:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  %31 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rate, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 15
  %33 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %channels, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @setup_msp_config.__UNIQUE_ID_ddebug301, ptr noundef %30, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.66, i32 noundef %32, i32 noundef %34) #5
  br label %do.end26

do.end26:                                         ; preds = %if.then21, %do.end
  %35 = trunc i32 %7 to i16
  %trunc = and i16 %35, -4081
  %36 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.95)
  switch i16 %trunc, label %do.end103 [
    i16 16385, label %do.body27
    i16 4097, label %do.body45
    i16 16388, label %do.end26.do.body69_crit_edge
    i16 4100, label %do.end26.do.body69_crit_edge35
    i16 16389, label %do.end26.do.body69_crit_edge36
    i16 4101, label %do.end26.do.body69_crit_edge37
  ]

do.end26.do.body69_crit_edge37:                   ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body69

do.end26.do.body69_crit_edge36:                   ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body69

do.end26.do.body69_crit_edge35:                   ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body69

do.end26.do.body69_crit_edge:                     ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body69

do.body27:                                        ; preds = %do.end26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_msp_config.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_msp_config, %if.then39)) #5
          to label %do.end43 [label %if.then39], !srcloc !213

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @setup_msp_config.__UNIQUE_ID_ddebug302, ptr noundef %38, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.66) #5
  br label %do.end43

do.end43:                                         ; preds = %if.then39, %do.body27
  %default_protdesc = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 12
  %39 = ptrtoint ptr %default_protdesc to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %default_protdesc, align 4
  %protocol = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 17
  %40 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %protocol, align 4
  br label %sw.epilog

do.body45:                                        ; preds = %do.end26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_msp_config.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_msp_config, %if.then57)) #5
          to label %do.end61 [label %if.then57], !srcloc !213

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @setup_msp_config.__UNIQUE_ID_ddebug303, ptr noundef %42, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.66) #5
  br label %do.end61

do.end61:                                         ; preds = %if.then57, %do.body45
  %43 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4, ptr %data_size, align 4
  %protocol63 = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 17
  %44 = ptrtoint ptr %protocol63 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %protocol63, align 4
  %45 = ptrtoint ptr %protdesc to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %protdesc, align 4
  %tx_phase_mode.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 1
  %46 = ptrtoint ptr %tx_phase_mode.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %tx_phase_mode.i, align 4
  %rx_phase2_start_mode.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 2
  %47 = ptrtoint ptr %rx_phase2_start_mode.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %rx_phase2_start_mode.i, align 4
  %tx_phase2_start_mode.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 3
  %48 = ptrtoint ptr %tx_phase2_start_mode.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %tx_phase2_start_mode.i, align 4
  %rx_byte_order.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 4
  %49 = ptrtoint ptr %rx_byte_order.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %rx_byte_order.i, align 4
  %tx_byte_order.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 5
  %50 = ptrtoint ptr %tx_byte_order.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %tx_byte_order.i, align 4
  %tx_fsync_pol.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 19
  %51 = ptrtoint ptr %tx_fsync_pol.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1024, ptr %tx_fsync_pol.i, align 4
  %rx_fsync_pol.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 18
  %52 = ptrtoint ptr %rx_fsync_pol.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 4, ptr %rx_fsync_pol.i, align 4
  %rx_frame_len_1.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 6
  %rx_elem_len_1.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 10
  %53 = call ptr @memset(ptr %rx_frame_len_1.i, i32 0, i32 16)
  %54 = ptrtoint ptr %rx_elem_len_1.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 4, ptr %rx_elem_len_1.i, align 4
  %rx_elem_len_2.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 11
  %55 = ptrtoint ptr %rx_elem_len_2.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 4, ptr %rx_elem_len_2.i, align 4
  %tx_elem_len_1.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 12
  %56 = ptrtoint ptr %tx_elem_len_1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 4, ptr %tx_elem_len_1.i, align 4
  %tx_elem_len_2.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 13
  %57 = ptrtoint ptr %tx_elem_len_2.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 4, ptr %tx_elem_len_2.i, align 4
  %rx_clk_pol.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 16
  %58 = ptrtoint ptr %rx_clk_pol.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %rx_clk_pol.i, align 4
  %tx_clk_pol.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 17
  %59 = ptrtoint ptr %tx_clk_pol.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %tx_clk_pol.i, align 4
  %rx_data_delay.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 14
  %60 = ptrtoint ptr %rx_data_delay.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %rx_data_delay.i, align 4
  %tx_data_delay.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 15
  %61 = ptrtoint ptr %tx_data_delay.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %tx_data_delay.i, align 4
  %rx_half_word_swap.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 20
  %frame_sync_ignore.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 24
  %62 = call ptr @memset(ptr %rx_half_word_swap.i, i32 0, i32 16)
  %63 = ptrtoint ptr %frame_sync_ignore.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %frame_sync_ignore.i, align 4
  br label %sw.epilog

do.body69:                                        ; preds = %do.end26.do.body69_crit_edge, %do.end26.do.body69_crit_edge35, %do.end26.do.body69_crit_edge36, %do.end26.do.body69_crit_edge37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_msp_config.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_msp_config, %if.then81)) #5
          to label %do.end85 [label %if.then81], !srcloc !213

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @setup_msp_config.__UNIQUE_ID_ddebug304, ptr noundef %65, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.66) #5
  br label %do.end85

do.end85:                                         ; preds = %if.then81, %do.body69
  %66 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 4, ptr %data_size, align 4
  %protocol87 = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 17
  %67 = ptrtoint ptr %protocol87 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %protocol87, align 4
  %tx_fsync_pol.i13 = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 19
  %68 = ptrtoint ptr %tx_fsync_pol.i13 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %tx_fsync_pol.i13, align 4
  %rx_fsync_pol.i14 = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 18
  %69 = ptrtoint ptr %rx_fsync_pol.i14 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %rx_fsync_pol.i14, align 4
  %and.i = and i32 %7, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 4
  %70 = call ptr @memset(ptr %protdesc, i32 0, i32 24)
  br i1 %cmp.i, label %do.body.i, label %do.body4.i

do.body.i:                                        ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_pcm_protdesc.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_msp_config, %if.then3.i)) #5
          to label %setup_pcm_protdesc.exit [label %if.then3.i], !srcloc !213

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @setup_pcm_protdesc.__UNIQUE_ID_ddebug298, ptr noundef %72, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.72) #5
  br label %setup_pcm_protdesc.exit

do.body4.i:                                       ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_pcm_protdesc.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_msp_config, %if.then16.i)) #5
          to label %setup_pcm_protdesc.exit [label %if.then16.i], !srcloc !213

if.then16.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @setup_pcm_protdesc.__UNIQUE_ID_ddebug299, ptr noundef %74, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.72) #5
  br label %setup_pcm_protdesc.exit

setup_pcm_protdesc.exit:                          ; preds = %if.then16.i, %do.body4.i, %if.then3.i, %do.body.i
  %.sink8.i = phi i32 [ 1, %do.body.i ], [ 1, %if.then3.i ], [ 0, %do.body4.i ], [ 0, %if.then16.i ]
  %.sink7.i = phi i32 [ 0, %do.body.i ], [ 0, %if.then3.i ], [ 1, %do.body4.i ], [ 1, %if.then16.i ]
  %rx_clk_pol20.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 16
  %75 = ptrtoint ptr %rx_clk_pol20.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %.sink8.i, ptr %rx_clk_pol20.i, align 4
  %tx_clk_pol21.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 17
  %76 = ptrtoint ptr %tx_clk_pol21.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %.sink7.i, ptr %tx_clk_pol21.i, align 4
  %rx_data_delay22.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 14
  %77 = ptrtoint ptr %rx_data_delay22.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %.sink8.i, ptr %rx_data_delay22.i, align 4
  %tx_data_delay23.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 15
  %78 = ptrtoint ptr %tx_data_delay23.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %.sink8.i, ptr %tx_data_delay23.i, align 4
  %rx_half_word_swap.i15 = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 20
  %frame_sync_ignore.i16 = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 24
  %79 = call ptr @memset(ptr %rx_half_word_swap.i15, i32 0, i32 16)
  %80 = ptrtoint ptr %frame_sync_ignore.i16 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %frame_sync_ignore.i16, align 4
  %81 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %82, i32 0, i32 8
  %83 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %driver_data.i.i, align 4
  %slots.i = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %84, i32 0, i32 5
  %85 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %86)
  %cmp.i18 = icmp sgt i32 %86, 1
  br i1 %cmp.i18, label %if.then.i, label %setup_pcm_protdesc.exit.setup_pcm_multichan.exit_crit_edge

setup_pcm_protdesc.exit.setup_pcm_multichan.exit_crit_edge: ; preds = %setup_pcm_protdesc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %setup_pcm_multichan.exit

if.then.i:                                        ; preds = %setup_pcm_protdesc.exit
  call void @__sanitizer_cov_trace_pc() #7
  %multichannel_config.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 15
  %multichannel_configured.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 14
  %87 = ptrtoint ptr %multichannel_configured.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %multichannel_configured.i, align 4
  %tx_multichannel_enable.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 15, i32 1
  %88 = ptrtoint ptr %tx_multichannel_enable.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %tx_multichannel_enable.i, align 1
  %89 = ptrtoint ptr %multichannel_config.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %multichannel_config.i, align 4
  %rx_comparison_enable_mode.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 15, i32 2
  %90 = ptrtoint ptr %rx_comparison_enable_mode.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %rx_comparison_enable_mode.i, align 4
  %tx_mask.i = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %84, i32 0, i32 3
  %91 = ptrtoint ptr %tx_mask.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tx_mask.i, align 4
  %tx_channel_0_enable.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 15, i32 10
  %93 = ptrtoint ptr %tx_channel_0_enable.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %tx_channel_0_enable.i, align 4
  %tx_channel_1_enable.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 15, i32 11
  %94 = ptrtoint ptr %tx_channel_1_enable.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %tx_channel_1_enable.i, align 4
  %tx_channel_2_enable.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 15, i32 12
  %95 = ptrtoint ptr %tx_channel_2_enable.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %tx_channel_2_enable.i, align 4
  %tx_channel_3_enable.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 15, i32 13
  %96 = ptrtoint ptr %tx_channel_3_enable.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %tx_channel_3_enable.i, align 4
  %rx_mask.i = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %84, i32 0, i32 4
  %97 = ptrtoint ptr %rx_mask.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %rx_mask.i, align 4
  %rx_channel_0_enable.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 15, i32 6
  %99 = ptrtoint ptr %rx_channel_0_enable.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %rx_channel_0_enable.i, align 4
  %rx_channel_1_enable.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 15, i32 7
  %100 = ptrtoint ptr %rx_channel_1_enable.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %rx_channel_1_enable.i, align 4
  %rx_channel_2_enable.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 15, i32 8
  %101 = ptrtoint ptr %rx_channel_2_enable.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %rx_channel_2_enable.i, align 4
  %rx_channel_3_enable.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 15, i32 9
  %102 = ptrtoint ptr %rx_channel_3_enable.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %rx_channel_3_enable.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_pcm_multichan.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_msp_config, %if.then4.i)) #5
          to label %setup_pcm_multichan.exit [label %if.then4.i], !srcloc !213

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %103 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev, align 4
  %105 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %slots.i, align 4
  %107 = ptrtoint ptr %tx_channel_0_enable.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %tx_channel_0_enable.i, align 4
  %109 = ptrtoint ptr %rx_channel_0_enable.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %rx_channel_0_enable.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @setup_pcm_multichan.__UNIQUE_ID_ddebug294, ptr noundef %104, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.75, i32 noundef %106, i32 noundef %108, i32 noundef %110) #5
  br label %setup_pcm_multichan.exit

setup_pcm_multichan.exit:                         ; preds = %if.then4.i, %if.then.i, %setup_pcm_protdesc.exit.setup_pcm_multichan.exit_crit_edge
  %111 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %rate, align 4
  %113 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev, align 4
  %driver_data.i.i20 = getelementptr inbounds %struct.device, ptr %114, i32 0, i32 8
  %115 = ptrtoint ptr %driver_data.i.i20 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %driver_data.i.i20, align 4
  %frame_width.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 26
  %117 = ptrtoint ptr %frame_width.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %frame_width.i, align 4
  %slots.i21 = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %116, i32 0, i32 5
  %118 = ptrtoint ptr %slots.i21 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %slots.i21, align 4
  %120 = zext i32 %119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %119, label %setup_pcm_framing.exit.thread [
    i32 1, label %setup_pcm_multichan.exit.setup_pcm_framing.exit_crit_edge
    i32 2, label %sw.bb1.i
    i32 8, label %sw.bb2.i
    i32 16, label %sw.bb3.i
  ]

setup_pcm_multichan.exit.setup_pcm_framing.exit_crit_edge: ; preds = %setup_pcm_multichan.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %setup_pcm_framing.exit

sw.bb1.i:                                         ; preds = %setup_pcm_multichan.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %setup_pcm_framing.exit

sw.bb2.i:                                         ; preds = %setup_pcm_multichan.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %setup_pcm_framing.exit

sw.bb3.i:                                         ; preds = %setup_pcm_multichan.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %setup_pcm_framing.exit

setup_pcm_framing.exit.thread:                    ; preds = %setup_pcm_multichan.exit
  call void @__sanitizer_cov_trace_pc() #7
  %121 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %122, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef %119) #8
  br label %cleanup

setup_pcm_framing.exit:                           ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %setup_pcm_multichan.exit.setup_pcm_framing.exit_crit_edge
  %frame_length.0.i = phi i32 [ 15, %sw.bb3.i ], [ 7, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %setup_pcm_multichan.exit.setup_pcm_framing.exit_crit_edge ]
  %tx_frame_len_1.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 8
  %123 = ptrtoint ptr %tx_frame_len_1.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %frame_length.0.i, ptr %tx_frame_len_1.i, align 4
  %rx_frame_len_1.i22 = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 6
  %124 = ptrtoint ptr %rx_frame_len_1.i22 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %frame_length.0.i, ptr %rx_frame_len_1.i22, align 4
  %tx_frame_len_2.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 9
  %125 = ptrtoint ptr %tx_frame_len_2.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %frame_length.0.i, ptr %tx_frame_len_2.i, align 4
  %rx_frame_len_2.i = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 7
  %126 = ptrtoint ptr %rx_frame_len_2.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %frame_length.0.i, ptr %rx_frame_len_2.i, align 4
  %tx_elem_len_1.i23 = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 12
  %127 = ptrtoint ptr %tx_elem_len_1.i23 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 4, ptr %tx_elem_len_1.i23, align 4
  %rx_elem_len_1.i24 = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 10
  %128 = ptrtoint ptr %rx_elem_len_1.i24 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 4, ptr %rx_elem_len_1.i24, align 4
  %tx_elem_len_2.i25 = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 13
  %129 = ptrtoint ptr %tx_elem_len_2.i25 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 4, ptr %tx_elem_len_2.i25, align 4
  %rx_elem_len_2.i26 = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 13, i32 11
  %130 = ptrtoint ptr %rx_elem_len_2.i26 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 4, ptr %rx_elem_len_2.i26, align 4
  %call6.i = tail call fastcc i32 @setup_frameper(ptr noundef %dai, i32 noundef %112, ptr noundef %protdesc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp98 = icmp slt i32 %call6.i, 0
  br i1 %cmp98, label %setup_pcm_framing.exit.cleanup_crit_edge, label %setup_pcm_framing.exit.sw.epilog_crit_edge

setup_pcm_framing.exit.sw.epilog_crit_edge:       ; preds = %setup_pcm_framing.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

setup_pcm_framing.exit.cleanup_crit_edge:         ; preds = %setup_pcm_framing.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end103:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #7
  %131 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.66, i32 noundef %7) #8
  br label %cleanup

sw.epilog:                                        ; preds = %setup_pcm_framing.exit.sw.epilog_crit_edge, %do.end61, %do.end43
  %call105 = tail call fastcc i32 @setup_clocking(ptr noundef %dai, i32 noundef %7, ptr noundef %msp_config)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end103, %setup_pcm_framing.exit.cleanup_crit_edge, %setup_pcm_framing.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ux500_msp_i2s_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_clocking(ptr nocapture noundef readonly %dai, i32 noundef %fmt, ptr nocapture noundef %msp_config) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %fmt, 3840
  %0 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %and, label %do.end [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 512, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %tx_fsync_pol = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 5
  %1 = ptrtoint ptr %tx_fsync_pol to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tx_fsync_pol, align 4
  %xor = xor i32 %2, 1024
  store i32 %xor, ptr %tx_fsync_pol, align 4
  %rx_fsync_pol = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 4
  %3 = ptrtoint ptr %rx_fsync_pol to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_fsync_pol, align 4
  %xor1 = xor i32 %4, 4
  store i32 %xor1, ptr %rx_fsync_pol, align 4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.84, i32 noundef %fmt) #8
  br label %return

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %7 = trunc i32 %fmt to i16
  %trunc = and i16 %7, -4096
  %8 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.98)
  switch i16 %trunc, label %do.end33 [
    i16 4096, label %do.body4
    i16 16384, label %do.body10
  ]

do.body4:                                         ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_clocking.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_clocking, %if.then)) #5
          to label %do.end8 [label %if.then], !srcloc !213

if.then:                                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  %dev7 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %9 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @setup_clocking.__UNIQUE_ID_ddebug296, ptr noundef %10, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.84) #5
  br label %do.end8

do.end8:                                          ; preds = %if.then, %do.body4
  %iodelay = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 21
  %11 = ptrtoint ptr %iodelay to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 32, ptr %iodelay, align 4
  %rx_fsync_sel = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 6
  %12 = ptrtoint ptr %rx_fsync_sel to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rx_fsync_sel, align 4
  %tx_fsync_sel = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 7
  %13 = ptrtoint ptr %tx_fsync_sel to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2048, ptr %tx_fsync_sel, align 4
  %tx_clk_sel = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 2
  %14 = ptrtoint ptr %tx_clk_sel to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %tx_clk_sel, align 4
  %rx_clk_sel = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 1
  %15 = ptrtoint ptr %rx_clk_sel to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %rx_clk_sel, align 4
  %srg_clk_sel = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 3
  %16 = ptrtoint ptr %srg_clk_sel to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 524288, ptr %srg_clk_sel, align 4
  br label %return

do.body10:                                        ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_clocking.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_clocking, %if.then22)) #5
          to label %do.end25 [label %if.then22], !srcloc !213

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  %dev23 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %17 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @setup_clocking.__UNIQUE_ID_ddebug297, ptr noundef %18, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.84) #5
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %do.body10
  %tx_clk_sel26 = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 2
  %19 = ptrtoint ptr %tx_clk_sel26 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 16384, ptr %tx_clk_sel26, align 4
  %tx_fsync_sel27 = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 7
  %20 = ptrtoint ptr %tx_fsync_sel27 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 6144, ptr %tx_fsync_sel27, align 4
  %rx_clk_sel28 = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 1
  %21 = ptrtoint ptr %rx_clk_sel28 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 64, ptr %rx_clk_sel28, align 4
  %rx_fsync_sel29 = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 6
  %22 = ptrtoint ptr %rx_fsync_sel29 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16, ptr %rx_fsync_sel29, align 4
  %srg_clk_sel30 = getelementptr inbounds %struct.ux500_msp_config, ptr %msp_config, i32 0, i32 3
  %23 = ptrtoint ptr %srg_clk_sel30 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 262144, ptr %srg_clk_sel30, align 4
  br label %return

do.end33:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %dev34 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %24 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.84, i32 noundef %fmt) #8
  br label %return

return:                                           ; preds = %do.end33, %do.end25, %do.end8, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end33 ], [ 0, %do.end25 ], [ 0, %do.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_frameper(ptr nocapture noundef readonly %dai, i32 noundef %rate, ptr nocapture noundef %prot_desc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %slots = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slots, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %5, label %do.end18 [
    i32 1, label %sw.bb
    i32 2, label %entry.sw.epilog21_crit_edge
    i32 8, label %sw.bb11
    i32 16, label %sw.bb13
  ]

entry.sw.epilog21_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog21

sw.bb:                                            ; preds = %entry
  %7 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %rate, label %do.end [
    i32 8000, label %sw.bb.sw.epilog21_crit_edge
    i32 16000, label %sw.bb2
    i32 44100, label %sw.bb4
    i32 48000, label %sw.bb6
  ]

sw.bb.sw.epilog21_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog21

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog21

sw.bb4:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog21

sw.bb6:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog21

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, i32 noundef %rate) #8
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog21

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog21

do.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.80, i32 noundef %5) #8
  br label %cleanup

sw.epilog21:                                      ; preds = %sw.bb13, %sw.bb11, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb.sw.epilog21_crit_edge, %entry.sw.epilog21_crit_edge
  %.sink = phi i32 [ 124, %sw.bb2 ], [ 63, %sw.bb4 ], [ 49, %sw.bb6 ], [ 277, %sw.bb13 ], [ 138, %sw.bb11 ], [ 31, %sw.bb.sw.epilog21_crit_edge ], [ 31, %entry.sw.epilog21_crit_edge ]
  %frame_period = getelementptr inbounds %struct.msp_protdesc, ptr %prot_desc, i32 0, i32 25
  %8 = ptrtoint ptr %frame_period to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %frame_period, align 4
  %add = add nuw nsw i32 %.sink, 1
  %clocks_per_frame = getelementptr inbounds %struct.msp_protdesc, ptr %prot_desc, i32 0, i32 27
  %9 = ptrtoint ptr %clocks_per_frame to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %clocks_per_frame, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_frameper.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_frameper, %if.then)) #5
          to label %cleanup [label %if.then], !srcloc !213

if.then:                                          ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %12 = ptrtoint ptr %clocks_per_frame to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %clocks_per_frame, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @setup_frameper.__UNIQUE_ID_ddebug295, ptr noundef %11, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.80, i32 noundef %13) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sw.epilog21, %do.end18, %do.end
  %retval.0 = phi i32 [ -22, %do.end18 ], [ -22, %do.end ], [ 0, %if.then ], [ 0, %sw.epilog21 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ux500_msp_i2s_trigger(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ux500_pcm_unregister_platform(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ux500_msp_i2s_cleanup_msp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50, !52, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !97, !98, !99, !101, !102, !103, !105, !107, !109, !110, !112, !114, !115, !116, !118, !119, !120, !122, !123, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !147, !148, !150, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177, !178, !180, !181, !183, !184, !186, !187, !188, !190, !191, !193, !194, !196, !197, !198, !200, !201, !202}
!llvm.module.flags = !{!204, !205, !206, !207, !208, !209, !210, !211}
!llvm.ident = !{!212}

!0 = !{ptr @__initcall__kmod_snd_soc_ux500_plat_msp_i2s__314_853_msp_i2s_driver_init6, !1, !"__initcall__kmod_snd_soc_ux500_plat_msp_i2s__314_853_msp_i2s_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 853, i32 1}
!2 = !{ptr @__exitcall_msp_i2s_driver_exit, !1, !"__exitcall_msp_i2s_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file315, !4, !"__UNIQUE_ID_file315", i1 false, i1 false}
!4 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 855, i32 1}
!5 = !{ptr @__UNIQUE_ID_license316, !4, !"__UNIQUE_ID_license316", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 847, i32 11}
!8 = !{ptr @msp_i2s_driver, !9, !"msp_i2s_driver", i1 false, i1 false}
!9 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 845, i32 31}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 746, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ux500_msp_drv_probe._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @ux500_msp_drv_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 763, i32 53}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 766, i32 3}
!22 = !{ptr @ux500_msp_drv_probe._entry.7, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @ux500_msp_drv_probe._entry_ptr.9, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 773, i32 43}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 776, i32 3}
!28 = !{ptr @ux500_msp_drv_probe._entry.11, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ux500_msp_drv_probe._entry_ptr.13, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 785, i32 3}
!32 = !{ptr @ux500_msp_drv_probe._entry.14, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ux500_msp_drv_probe._entry_ptr.16, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 794, i32 3}
!36 = !{ptr @ux500_msp_drv_probe._entry.17, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ux500_msp_drv_probe._entry_ptr.19, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 804, i32 3}
!40 = !{ptr @ux500_msp_drv_probe._entry.20, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ux500_msp_drv_probe._entry_ptr.22, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 811, i32 3}
!44 = !{ptr @ux500_msp_drv_probe._entry.23, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ux500_msp_drv_probe._entry_ptr.25, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 734, i32 11}
!48 = !{ptr @ux500_msp_component, !49, !"ux500_msp_component", i1 false, i1 false}
!49 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 733, i32 46}
!50 = !{ptr @ux500_msp_dai_drv, !51, !"ux500_msp_dai_drv", i1 false, i1 false}
!51 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 720, i32 34}
!52 = !{ptr @ux500_msp_dai_ops, !53, !"ux500_msp_dai_ops", i1 false, i1 false}
!53 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 707, i32 37}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 626, i32 2}
!56 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ux500_msp_dai_set_dai_sysclk.__UNIQUE_ID_ddebug312, !55, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 635, i32 3}
!61 = !{ptr @ux500_msp_dai_set_dai_sysclk._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @ux500_msp_dai_set_dai_sysclk._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 544, i32 2}
!65 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ux500_msp_dai_set_dai_fmt.__UNIQUE_ID_ddebug311, !64, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 557, i32 3}
!69 = !{ptr @ux500_msp_dai_set_dai_fmt._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @ux500_msp_dai_set_dai_fmt._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 570, i32 3}
!73 = !{ptr @ux500_msp_dai_set_dai_fmt._entry.34, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @ux500_msp_dai_set_dai_fmt._entry_ptr.36, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 602, i32 3}
!77 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @ux500_msp_dai_set_tdm_slot._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @ux500_msp_dai_set_tdm_slot._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 609, i32 3}
!82 = !{ptr @ux500_msp_dai_set_tdm_slot._entry.39, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @ux500_msp_dai_set_tdm_slot._entry_ptr.41, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 389, i32 2}
!86 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @ux500_msp_dai_startup.__UNIQUE_ID_ddebug305, !85, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 395, i32 3}
!90 = !{ptr @ux500_msp_dai_startup._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @ux500_msp_dai_startup._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 401, i32 2}
!94 = !{ptr @ux500_msp_dai_startup.__UNIQUE_ID_ddebug306, !93, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 404, i32 3}
!97 = !{ptr @ux500_msp_dai_startup._entry.46, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @ux500_msp_dai_startup._entry_ptr.48, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 411, i32 3}
!101 = !{ptr @ux500_msp_dai_startup._entry.49, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @ux500_msp_dai_startup._entry_ptr.51, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../include/sound/pcm.h", i32 1402, i32 10}
!105 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../include/sound/pcm.h", i32 1404, i32 10}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 431, i32 2}
!109 = !{ptr @ux500_msp_dai_shutdown.__UNIQUE_ID_ddebug307, !108, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!110 = distinct !{null, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 436, i32 6}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 442, i32 3}
!114 = !{ptr @ux500_msp_dai_shutdown._entry, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @ux500_msp_dai_shutdown._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 454, i32 3}
!118 = !{ptr @ux500_msp_dai_shutdown._entry.57, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @ux500_msp_dai_shutdown._entry_ptr.59, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 505, i32 2}
!122 = !{ptr @ux500_msp_dai_hw_params.__UNIQUE_ID_ddebug309, !121, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!123 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 522, i32 3}
!125 = !{ptr @ux500_msp_dai_hw_params.__UNIQUE_ID_ddebug310, !124, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 530, i32 3}
!128 = !{ptr @ux500_msp_dai_hw_params._entry, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @ux500_msp_dai_hw_params._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 467, i32 2}
!132 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @ux500_msp_dai_prepare.__UNIQUE_ID_ddebug308, !131, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!134 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 474, i32 3}
!136 = !{ptr @ux500_msp_dai_prepare._entry, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @ux500_msp_dai_prepare._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 323, i32 2}
!140 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @setup_msp_config.__UNIQUE_ID_ddebug300, !139, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 328, i32 2}
!144 = !{ptr @setup_msp_config.__UNIQUE_ID_ddebug301, !143, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!145 = !{ptr @.str.69, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 333, i32 3}
!147 = !{ptr @setup_msp_config.__UNIQUE_ID_ddebug302, !146, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!148 = !{ptr @setup_msp_config.__UNIQUE_ID_ddebug303, !149, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!149 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 340, i32 3}
!150 = !{ptr @.str.70, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 355, i32 3}
!152 = !{ptr @setup_msp_config.__UNIQUE_ID_ddebug304, !151, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!153 = !{ptr @.str.71, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 375, i32 3}
!155 = !{ptr @setup_msp_config._entry, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @setup_msp_config._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.72, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 242, i32 3}
!159 = !{ptr @.str.73, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @setup_pcm_protdesc.__UNIQUE_ID_ddebug298, !158, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!161 = !{ptr @.str.74, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 249, i32 3}
!163 = !{ptr @setup_pcm_protdesc.__UNIQUE_ID_ddebug299, !162, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!164 = !{ptr @.str.75, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 54, i32 3}
!166 = !{ptr @.str.76, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @setup_pcm_multichan.__UNIQUE_ID_ddebug294, !165, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!168 = !{ptr @.str.77, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 153, i32 3}
!170 = !{ptr @.str.78, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @setup_pcm_framing._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @setup_pcm_framing._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.79, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 92, i32 4}
!175 = !{ptr @.str.80, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @setup_frameper._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @setup_frameper._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @setup_frameper._entry.81, !179, !"_entry", i1 false, i1 false}
!179 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 111, i32 3}
!180 = !{ptr @setup_frameper._entry_ptr.82, !179, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.83, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 120, i32 2}
!183 = !{ptr @setup_frameper.__UNIQUE_ID_ddebug295, !182, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!184 = !{ptr @.str.84, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 187, i32 3}
!186 = !{ptr @setup_clocking._entry, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @setup_clocking._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.85, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 196, i32 3}
!190 = !{ptr @setup_clocking.__UNIQUE_ID_ddebug296, !189, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!191 = !{ptr @.str.86, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 208, i32 3}
!193 = !{ptr @setup_clocking.__UNIQUE_ID_ddebug297, !192, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!194 = !{ptr @.str.88, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 219, i32 3}
!196 = !{ptr @setup_clocking._entry.87, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @setup_clocking._entry_ptr.89, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.90, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 649, i32 2}
!200 = !{ptr @.str.91, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @ux500_msp_dai_trigger.__UNIQUE_ID_ddebug313, !199, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!202 = !{ptr @ux500_msp_i2s_match, !203, !"ux500_msp_i2s_match", i1 false, i1 false}
!203 = !{!"../sound/soc/ux500/ux500_msp_dai.c", i32 839, i32 34}
!204 = !{i32 1, !"wchar_size", i32 2}
!205 = !{i32 1, !"min_enum_size", i32 4}
!206 = !{i32 8, !"branch-target-enforcement", i32 0}
!207 = !{i32 8, !"sign-return-address", i32 0}
!208 = !{i32 8, !"sign-return-address-all", i32 0}
!209 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!210 = !{i32 7, !"uwtable", i32 1}
!211 = !{i32 7, !"frame-pointer", i32 2}
!212 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!213 = !{i64 2148974058, i64 2148974063, i64 2148974076, i64 2148974120, i64 2148974154, i64 2148974175}
