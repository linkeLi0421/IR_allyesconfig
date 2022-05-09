; ModuleID = '/llk/IR_all_yes/sound/soc/intel/keembay/kmb_platform.c_pt.bc'
source_filename = "../sound/soc/intel/keembay/kmb_platform.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.atomic_t = type { i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.kmb_i2s_info = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i8, %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data, %struct.i2s_clk_config_data, ptr, i8, ptr, ptr, i32, i32, i8 }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.i2s_clk_config_data = type { i32, i32, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }

@__initcall__kmod_snd_soc_kmb_platform__250_932_kmb_plat_dai_driver_init6 = internal global ptr @kmb_plat_dai_driver_init, section ".initcall6.init", align 4
@kmb_plat_dai_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @kmb_plat_dai_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @kmb_plat_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_kmb_plat_dai_driver_exit = internal global ptr @kmb_plat_dai_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description251 = internal constant [68 x i8] c"snd_soc_kmb_platform.description=ASoC Intel KeemBay Platform driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [66 x i8] c"snd_soc_kmb_platform.author=Sia Jee Heng <jee.heng.sia@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author253 = internal constant [83 x i8] c"snd_soc_kmb_platform.author=Sit, Michael Wei Hong <michael.wei.hong.sit@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file254 = internal constant [71 x i8] c"snd_soc_kmb_platform.file=sound/soc/intel/keembay/snd-soc-kmb_platform\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [36 x i8] c"snd_soc_kmb_platform.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias256 = internal constant [49 x i8] c"snd_soc_kmb_platform.alias=platform:kmb_platform\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kmb-plat-dai\00", [19 x i8] zeroinitializer }, align 32
@kmb_plat_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,keembay-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @intel_kmb_i2s_dai }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,keembay-hdmi-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @intel_kmb_hdmi_dai }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,keembay-tdm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @intel_kmb_tdm_dai }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@kmb_plat_dai_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 840, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error: No device match found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kmb_plat_dai_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"sound/soc/intel/keembay/kmb_platform.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@kmb_plat_dai_probe._entry_ptr = internal global ptr @kmb_plat_dai_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"apb_clk\00", [24 x i8] zeroinitializer }, align 32
@kmb_plat_dai_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 848, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get apb clock\0A\00", [39 x i8] zeroinitializer }, align 32
@kmb_plat_dai_probe._entry_ptr.9 = internal global ptr @kmb_plat_dai_probe._entry.7, section ".printk_index", align 4
@kmb_plat_dai_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 858, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to add clk_apb reset action\0A\00", [60 x i8] zeroinitializer }, align 32
@kmb_plat_dai_probe._entry_ptr.12 = internal global ptr @kmb_plat_dai_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"osc\00", [28 x i8] zeroinitializer }, align 32
@kmb_plat_dai_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 864, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get osc clock\0A\00", [39 x i8] zeroinitializer }, align 32
@kmb_plat_dai_probe._entry_ptr.16 = internal global ptr @kmb_plat_dai_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dmas\00", [27 x i8] zeroinitializer }, align 32
@kmb_plat_dai_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 890, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request irq\0A\00", [41 x i8] zeroinitializer }, align 32
@kmb_plat_dai_probe._entry_ptr.20 = internal global ptr @kmb_plat_dai_probe._entry.18, section ".printk_index", align 4
@kmb_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.31, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kmb_platform_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kmb_pcm_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kmb_pcm_trigger, ptr null, ptr @kmb_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@kmb_plat_dai_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 903, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"could not register dmaengine: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@kmb_plat_dai_probe._entry_ptr.23 = internal global ptr @kmb_plat_dai_probe._entry.21, section ".printk_index", align 4
@kmb_component_dma = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.31, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@kmb_plat_dai_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 911, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"not able to register dai\0A\00", [38 x i8] zeroinitializer }, align 32
@kmb_plat_dai_probe._entry_ptr.26 = internal global ptr @kmb_plat_dai_probe._entry.24, section ".printk_index", align 4
@kmb_i2s_irq_handler.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_soc_kmb_platform\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kmb_i2s_irq_handler\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TX overrun (ch_id=%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@kmb_i2s_irq_handler.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.28, ptr @.str.3, ptr @.str.30, i8 0, i8 89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RX overrun (ch_id=%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"kmb\00", [28 x i8] zeroinitializer }, align 32
@kmb_pcm_hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65811, i64 263236, i32 138, i32 8000, i32 48000, i32 2, i32 2, i32 196608, i32 4096, i32 98304, i32 2, i32 48, i32 16 }, [32 x i8] zeroinitializer }, align 32
@intel_kmb_i2s_dai = internal global { [1 x %struct.snd_soc_dai_driver], [56 x i8] } { [1 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.32, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @kmb_probe, ptr null, ptr null, ptr null, ptr @kmb_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 1092, i32 138, i32 8000, i32 48000, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 1092, i32 138, i32 8000, i32 48000, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@intel_kmb_hdmi_dai = internal global { [1 x %struct.snd_soc_dai_driver], [56 x i8] } { [1 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.39, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @kmb_probe, ptr null, ptr null, ptr null, ptr @kmb_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr null, i64 262212, i32 128, i32 48000, i32 48000, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@intel_kmb_tdm_dai = internal global { [1 x %struct.snd_soc_dai_driver], [56 x i8] } { [1 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.40, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @kmb_probe, ptr null, ptr null, ptr null, ptr @kmb_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 1092, i32 138, i32 8000, i32 48000, i32 4, i32 8, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"intel_kmb_i2s\00", [18 x i8] zeroinitializer }, align 32
@kmb_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @kmb_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kmb_dai_startup, ptr null, ptr @kmb_dai_hw_params, ptr @kmb_dai_hw_free, ptr @kmb_dai_prepare, ptr @kmb_dai_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@kmb_dai_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 613, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"kmb: unsupported PCM fmt\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kmb_dai_hw_params\00", [46 x i8] zeroinitializer }, align 32
@kmb_dai_hw_params._entry_ptr = internal global ptr @kmb_dai_hw_params._entry, section ".printk_index", align 4
@kmb_dai_hw_params.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 0, i8 -94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"channel not supported\0A\00", [41 x i8] zeroinitializer }, align 32
@kmb_dai_hw_params._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.34, ptr @.str.3, i32 667, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Can't set I2S clock rate: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@kmb_dai_hw_params._entry_ptr.38 = internal global ptr @kmb_dai_hw_params._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"intel_kmb_hdmi_i2s\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"intel_kmb_tdm\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.47 = private unnamed_addr constant [20 x i8] c"kmb_plat_dai_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 924, i32 31 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 926, i32 12 }
@___asan_gen_.53 = private unnamed_addr constant [18 x i8] c"kmb_plat_of_match\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 812, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 840, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 846, i32 39 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 848, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 858, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 862, i32 39 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 864, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 882, i32 49 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 890, i32 5 }
@___asan_gen_.107 = private unnamed_addr constant [14 x i8] c"kmb_component\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 390, i32 46 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 902, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant [18 x i8] c"kmb_component_dma\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 398, i32 46 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 911, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 351, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 356, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 391, i32 11 }
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"kmb_pcm_hardware\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 30, i32 38 }
@___asan_gen_.143 = private unnamed_addr constant [18 x i8] c"intel_kmb_i2s_dai\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 760, i32 34 }
@___asan_gen_.146 = private unnamed_addr constant [19 x i8] c"intel_kmb_hdmi_dai\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 742, i32 34 }
@___asan_gen_.149 = private unnamed_addr constant [18 x i8] c"intel_kmb_tdm_dai\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 792, i32 34 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 762, i32 11 }
@___asan_gen_.155 = private unnamed_addr constant [12 x i8] c"kmb_dai_ops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 733, i32 37 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 613, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 650, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 666, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 744, i32 11 }
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.180 = private constant [42 x i8] c"../sound/soc/intel/keembay/kmb_platform.c\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 794, i32 11 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_alias256, ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file254, ptr @__UNIQUE_ID_license255, ptr @__exitcall_kmb_plat_dai_driver_exit, ptr @__initcall__kmod_snd_soc_kmb_platform__250_932_kmb_plat_dai_driver_init6, ptr @kmb_dai_hw_params._entry, ptr @kmb_dai_hw_params._entry.36, ptr @kmb_dai_hw_params._entry_ptr, ptr @kmb_dai_hw_params._entry_ptr.38, ptr @kmb_plat_dai_driver_exit, ptr @kmb_plat_dai_probe._entry, ptr @kmb_plat_dai_probe._entry.10, ptr @kmb_plat_dai_probe._entry.14, ptr @kmb_plat_dai_probe._entry.18, ptr @kmb_plat_dai_probe._entry.21, ptr @kmb_plat_dai_probe._entry.24, ptr @kmb_plat_dai_probe._entry.7, ptr @kmb_plat_dai_probe._entry_ptr, ptr @kmb_plat_dai_probe._entry_ptr.12, ptr @kmb_plat_dai_probe._entry_ptr.16, ptr @kmb_plat_dai_probe._entry_ptr.20, ptr @kmb_plat_dai_probe._entry_ptr.23, ptr @kmb_plat_dai_probe._entry_ptr.26, ptr @kmb_plat_dai_probe._entry_ptr.9, ptr @kmb_plat_dai_driver, ptr @.str, ptr @kmb_plat_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @kmb_component, ptr @.str.22, ptr @kmb_component_dma, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @kmb_pcm_hardware, ptr @intel_kmb_i2s_dai, ptr @intel_kmb_hdmi_dai, ptr @intel_kmb_tdm_dai, ptr @.str.32, ptr @kmb_dai_ops, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_plat_dai_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_plat_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_plat_dai_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_plat_dai_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_plat_dai_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_plat_dai_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_plat_dai_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_plat_dai_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_component_dma to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_plat_dai_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_pcm_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_kmb_i2s_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_kmb_hdmi_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_kmb_tdm_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_dai_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_dai_hw_params._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_plat_dai_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @kmb_plat_dai_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kmb_plat_dai_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @kmb_plat_dai_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_plat_dai_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #10
  %2 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !109
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 164, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i189 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 168, i32 noundef 3520) #10
  %tobool4.not = icmp eq ptr %call.i189, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call8 = tail call ptr @of_match_device(ptr noundef nonnull @kmb_plat_of_match, ptr noundef %dev) #10
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %data = getelementptr inbounds %struct.of_device_id, ptr %call8, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %call13 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.6) #10
  %clk_apb = getelementptr inbounds %struct.kmb_i2s_info, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %clk_apb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call13, ptr %clk_apb, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end19, label %if.end22

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #13
  %6 = ptrtoint ptr %clk_apb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_apb, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  %call.i190 = tail call i32 @clk_prepare(ptr noundef %call13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i190)
  %tobool.not.i = icmp eq i32 %call.i190, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end22.clk_prepare_enable.exit_crit_edge

if.end22.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end22
  %call1.i = tail call i32 @clk_enable(ptr noundef %call13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end26_crit_edge, label %if.then3.i

if.end.i.if.end26_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %call13) #10
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end22.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i190, %if.end22.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end26_crit_edge

clk_prepare_enable.exit.if.end26_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end26:                                         ; preds = %clk_prepare_enable.exit.if.end26_crit_edge, %if.end.i.if.end26_crit_edge
  %9 = ptrtoint ptr %clk_apb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_apb, align 4
  %call.i191 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @kmb_disable_clk, ptr noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i191)
  %tobool.not.i192 = icmp eq i32 %call.i191, 0
  br i1 %tobool.not.i192, label %if.end34, label %do.end33

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_disable(ptr noundef %10) #10
  tail call void @clk_unprepare(ptr noundef %10) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #13
  br label %cleanup

if.end34:                                         ; preds = %if.end26
  %call35 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.13) #10
  %clk_i2s = getelementptr inbounds %struct.kmb_i2s_info, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %clk_i2s to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call35, ptr %clk_i2s, align 4
  %cmp.i194 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i194, label %do.end41, label %if.end44

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #13
  %12 = ptrtoint ptr %clk_i2s to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_i2s, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup

if.end44:                                         ; preds = %if.end34
  %call45 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #10
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call45, ptr %call.i, align 4
  %cmp.i195 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i195, label %if.then48, label %if.end51

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %call45 to i32
  br label %cleanup

if.end51:                                         ; preds = %if.end44
  %call52 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #10
  %pss_base = getelementptr inbounds %struct.kmb_i2s_info, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %pss_base to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call52, ptr %pss_base, align 4
  %cmp.i196 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i196, label %if.then55, label %if.end58

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %call52 to i32
  br label %cleanup

if.end58:                                         ; preds = %if.end51
  %dev60 = getelementptr inbounds %struct.kmb_i2s_info, ptr %call.i, i32 0, i32 8
  %19 = ptrtoint ptr %dev60 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %dev60, align 4
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 500
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !110
  %23 = lshr i32 %22, 26
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !111
  %and = and i32 %23, 3
  %shl = shl nuw nsw i32 2, %and
  %div188 = lshr exact i32 %shl, 1
  %fifo_th = getelementptr inbounds %struct.kmb_i2s_info, ptr %call.i, i32 0, i32 11
  %24 = ptrtoint ptr %fifo_th to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div188, ptr %fifo_th, align 4
  %call.i197 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef null) #10
  %tobool.i.not = icmp eq ptr %call.i197, null
  %use_pio = getelementptr inbounds %struct.kmb_i2s_info, ptr %call.i, i32 0, i32 17
  %frombool = zext i1 %tobool.i.not to i8
  %25 = ptrtoint ptr %use_pio to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool, ptr %use_pio, align 4
  br i1 %tobool.i.not, label %if.then83, label %if.else

if.then83:                                        ; preds = %if.end58
  %call84 = call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp sgt i32 %call84, 0
  br i1 %cmp85, label %if.then86, label %if.then83.if.end110_crit_edge

if.then83.if.end110_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

if.then86:                                        ; preds = %if.then83
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 8
  %call.i198 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call84, ptr noundef nonnull @kmb_i2s_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %27, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i198)
  %cmp88 = icmp slt i32 %call.i198, 0
  br i1 %cmp88, label %do.end92, label %if.then86.if.end110_crit_edge

if.then86.if.end110_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

do.end92:                                         ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #13
  br label %cleanup

if.else:                                          ; preds = %if.end58
  %28 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %res, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add96 = add i32 %31, 456
  %play_dma_data = getelementptr inbounds %struct.kmb_i2s_info, ptr %call.i, i32 0, i32 13
  %32 = ptrtoint ptr %play_dma_data to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add96, ptr %play_dma_data, align 4
  %33 = load i32, ptr %29, align 4
  %add98 = add i32 %33, 448
  %capture_dma_data = getelementptr inbounds %struct.kmb_i2s_info, ptr %call.i, i32 0, i32 14
  %34 = ptrtoint ptr %capture_dma_data to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add98, ptr %capture_dma_data, align 4
  %call101 = call i32 @snd_dmaengine_pcm_register(ptr noundef %dev, ptr noundef null, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.else.if.end110_crit_edge, label %do.end106

if.else.if.end110_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

do.end106:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %call101) #13
  br label %cleanup

if.end110:                                        ; preds = %if.else.if.end110_crit_edge, %if.then86.if.end110_crit_edge, %if.then83.if.end110_crit_edge
  %kmb_component_dma.sink = phi ptr [ @kmb_component, %if.then86.if.end110_crit_edge ], [ @kmb_component, %if.then83.if.end110_crit_edge ], [ @kmb_component_dma, %if.else.if.end110_crit_edge ]
  %call109 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull %kmb_component_dma.sink, ptr noundef %4, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool111.not = icmp eq i32 %call109, 0
  br i1 %tobool111.not, label %if.end116, label %do.end115

do.end115:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #13
  br label %cleanup

if.end116:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  call void @arm_heavy_mb() #10
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 4
  %add.ptr.i = getelementptr i8, ptr %36, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !113
  call void @arm_heavy_mb() #10
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  %add.ptr.1.i = getelementptr i8, ptr %38, i32 108
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1.i, i32 0) #10, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !113
  call void @arm_heavy_mb() #10
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %add.ptr.2.i = getelementptr i8, ptr %40, i32 172
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2.i, i32 0) #10, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !113
  call void @arm_heavy_mb() #10
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i, align 4
  %add.ptr.3.i = getelementptr i8, ptr %42, i32 236
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.3.i, i32 0) #10, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  call void @arm_heavy_mb() #10
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %44, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 0) #10, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  call void @arm_heavy_mb() #10
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i, align 4
  %add.ptr11.1.i = getelementptr i8, ptr %46, i32 104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.1.i, i32 0) #10, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  call void @arm_heavy_mb() #10
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i, align 4
  %add.ptr11.2.i = getelementptr i8, ptr %48, i32 168
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.2.i, i32 0) #10, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  call void @arm_heavy_mb() #10
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call.i, align 4
  %add.ptr11.3.i = getelementptr i8, ptr %50, i32 232
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.3.i, i32 0) #10, !srcloc !112
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %51 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end116, %do.end115, %do.end106, %do.end92, %if.then55, %if.then48, %do.end41, %do.end33, %clk_prepare_enable.exit.cleanup_crit_edge, %do.end19, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %do.end19 ], [ %call.i191, %do.end33 ], [ %14, %do.end41 ], [ %16, %if.then48 ], [ %18, %if.then55 ], [ %call.i198, %do.end92 ], [ %call109, %do.end115 ], [ 0, %if.end116 ], [ %call101, %do.end106 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmb_disable_clk(ptr noundef %clk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_disable(ptr noundef %clk) #10
  tail call void @clk_unprepare(ptr noundef %clk) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_i2s_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %isr = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %config1 = getelementptr inbounds %struct.kmb_i2s_info, ptr %dev_id, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %isr) #10
  %0 = getelementptr inbounds [4 x i32], ptr %isr, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %isr, i32 0, i32 3
  %2 = call ptr @memset(ptr %isr, i32 255, i32 16)
  %3 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %config1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp103 = icmp sgt i32 %4, 1
  br i1 %cmp103, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0104 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %5 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_id, align 4
  %mul = shl i32 %i.0104, 6
  %add = or i32 %mul, 56
  %add.ptr = getelementptr i8, ptr %6, i32 %add
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !110
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !115
  %arrayidx = getelementptr [4 x i32], ptr %isr, i32 0, i32 %i.0104
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0104, 1
  %10 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %config1, align 4
  %div = sdiv i32 %11, 2
  %cmp = icmp slt i32 %inc, %div
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ %4, %entry.for.end_crit_edge ], [ %11, %for.body.for.end_crit_edge ]
  %.off36.i = add i32 %.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off36.i)
  %12 = icmp ult i32 %.off36.i, 3
  br i1 %12, label %for.end.kmb_i2s_clear_irqs.exit_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.kmb_i2s_clear_irqs.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %kmb_i2s_clear_irqs.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %i.035.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.end.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_id, align 4
  %mul.i = shl i32 %i.035.i, 6
  %add.i = add i32 %mul.i, 68
  %add.ptr.i = getelementptr i8, ptr %14, i32 %add.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  %inc.i = add nuw i32 %i.035.i, 1
  %16 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %config1, align 4
  %div.i = sdiv i32 %17, 2
  %cmp2.i = icmp ult i32 %inc.i, %div.i
  br i1 %cmp2.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.kmb_i2s_clear_irqs.exit_crit_edge

for.body.i.kmb_i2s_clear_irqs.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kmb_i2s_clear_irqs.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

kmb_i2s_clear_irqs.exit:                          ; preds = %for.body.i.kmb_i2s_clear_irqs.exit_crit_edge, %for.end.kmb_i2s_clear_irqs.exit_crit_edge
  %18 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %config1, align 4
  %.off36.i98 = add i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off36.i98)
  %20 = icmp ult i32 %.off36.i98, 3
  br i1 %20, label %kmb_i2s_clear_irqs.exit.kmb_i2s_clear_irqs.exit99_crit_edge, label %kmb_i2s_clear_irqs.exit.for.body8.i_crit_edge

kmb_i2s_clear_irqs.exit.for.body8.i_crit_edge:    ; preds = %kmb_i2s_clear_irqs.exit
  br label %for.body8.i

kmb_i2s_clear_irqs.exit.kmb_i2s_clear_irqs.exit99_crit_edge: ; preds = %kmb_i2s_clear_irqs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %kmb_i2s_clear_irqs.exit99

for.body8.i:                                      ; preds = %for.body8.i.for.body8.i_crit_edge, %kmb_i2s_clear_irqs.exit.for.body8.i_crit_edge
  %i.132.i = phi i32 [ %inc19.i, %for.body8.i.for.body8.i_crit_edge ], [ 0, %kmb_i2s_clear_irqs.exit.for.body8.i_crit_edge ]
  %21 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_id, align 4
  %mul12.i = shl i32 %i.132.i, 6
  %add13.i = add i32 %mul12.i, 64
  %add.ptr14.i = getelementptr i8, ptr %22, i32 %add13.i
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #10, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !117
  %inc19.i = add nuw i32 %i.132.i, 1
  %24 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %config1, align 4
  %div6.i = sdiv i32 %25, 2
  %cmp7.i = icmp ult i32 %inc19.i, %div6.i
  br i1 %cmp7.i, label %for.body8.i.for.body8.i_crit_edge, label %for.body8.i.kmb_i2s_clear_irqs.exit99_crit_edge

for.body8.i.kmb_i2s_clear_irqs.exit99_crit_edge:  ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kmb_i2s_clear_irqs.exit99

for.body8.i.for.body8.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body8.i

kmb_i2s_clear_irqs.exit99:                        ; preds = %for.body8.i.kmb_i2s_clear_irqs.exit99_crit_edge, %kmb_i2s_clear_irqs.exit.kmb_i2s_clear_irqs.exit99_crit_edge
  %26 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_id, align 4
  %add.ptr6 = getelementptr i8, ptr %27, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #10, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  %29 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %config1, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i32 %30, label %kmb_i2s_clear_irqs.exit99.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb12
    i32 8, label %sw.bb18
  ]

kmb_i2s_clear_irqs.exit99.sw.epilog_crit_edge:    ; preds = %kmb_i2s_clear_irqs.exit99
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %kmb_i2s_clear_irqs.exit99
  %32 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %isr, align 4
  %and = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.for.body28.lr.ph_crit_edge, label %sw.bb.sw.epilogthread-pre-split_crit_edge

sw.bb.sw.epilogthread-pre-split_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilogthread-pre-split

sw.bb.for.body28.lr.ph_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body28.lr.ph

sw.bb12:                                          ; preds = %kmb_i2s_clear_irqs.exit99
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %0, align 4
  %and14 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %sw.bb12.for.body28.lr.ph_crit_edge, label %sw.bb12.sw.epilogthread-pre-split_crit_edge

sw.bb12.sw.epilogthread-pre-split_crit_edge:      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilogthread-pre-split

sw.bb12.for.body28.lr.ph_crit_edge:               ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body28.lr.ph

sw.bb18:                                          ; preds = %kmb_i2s_clear_irqs.exit99
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %1, align 4
  %and20 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %sw.bb18.for.body28.lr.ph_crit_edge, label %sw.bb18.sw.epilogthread-pre-split_crit_edge

sw.bb18.sw.epilogthread-pre-split_crit_edge:      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilogthread-pre-split

sw.bb18.for.body28.lr.ph_crit_edge:               ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body28.lr.ph

sw.epilogthread-pre-split:                        ; preds = %sw.bb18.sw.epilogthread-pre-split_crit_edge, %sw.bb12.sw.epilogthread-pre-split_crit_edge, %sw.bb.sw.epilogthread-pre-split_crit_edge
  tail call fastcc void @kmb_pcm_operation(ptr noundef %dev_id, i1 noundef zeroext false)
  %38 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr = load i32, ptr %config1, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilogthread-pre-split, %kmb_i2s_clear_irqs.exit99.sw.epilog_crit_edge
  %39 = phi i32 [ %.pr, %sw.epilogthread-pre-split ], [ %30, %kmb_i2s_clear_irqs.exit99.sw.epilog_crit_edge ]
  %ret.0 = phi i32 [ 1, %sw.epilogthread-pre-split ], [ 0, %kmb_i2s_clear_irqs.exit99.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp27106 = icmp sgt i32 %39, 1
  br i1 %cmp27106, label %sw.epilog.for.body28.lr.ph_crit_edge, label %sw.epilog.for.end71_crit_edge

sw.epilog.for.end71_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end71

sw.epilog.for.body28.lr.ph_crit_edge:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body28.lr.ph

for.body28.lr.ph:                                 ; preds = %sw.epilog.for.body28.lr.ph_crit_edge, %sw.bb18.for.body28.lr.ph_crit_edge, %sw.bb12.for.body28.lr.ph_crit_edge, %sw.bb.for.body28.lr.ph_crit_edge
  %ret.0115 = phi i32 [ %ret.0, %sw.epilog.for.body28.lr.ph_crit_edge ], [ 1, %sw.bb18.for.body28.lr.ph_crit_edge ], [ 1, %sw.bb12.for.body28.lr.ph_crit_edge ], [ 1, %sw.bb.for.body28.lr.ph_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool32.not = icmp eq i32 %28, 0
  %dev = getelementptr inbounds %struct.kmb_i2s_info, ptr %dev_id, i32 0, i32 8
  br label %for.body28

for.body28:                                       ; preds = %for.inc69.for.body28_crit_edge, %for.body28.lr.ph
  %ret.1110 = phi i32 [ %ret.0115, %for.body28.lr.ph ], [ %ret.4, %for.inc69.for.body28_crit_edge ]
  %i.1107 = phi i32 [ 0, %for.body28.lr.ph ], [ %inc70, %for.inc69.for.body28_crit_edge ]
  %arrayidx29 = getelementptr [4 x i32], ptr %isr, i32 0, i32 %i.1107
  %40 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx29, align 4
  %and30 = and i32 %41, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %or.cond = select i1 %tobool31.not, i1 true, i1 %tobool32.not
  br i1 %or.cond, label %for.body28.if.end34_crit_edge, label %if.then33

for.body28.if.end34_crit_edge:                    ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then33:                                        ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @kmb_pcm_operation(ptr noundef %dev_id, i1 noundef zeroext true)
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %for.body28.if.end34_crit_edge
  %ret.2 = phi i32 [ 1, %if.then33 ], [ %ret.1110, %for.body28.if.end34_crit_edge ]
  %and36 = and i32 %41, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end34.if.end46_crit_edge, label %do.body

if.end34.if.end46_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

do.body:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kmb_i2s_irq_handler.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kmb_i2s_irq_handler, %if.then44)) #10
          to label %if.end46 [label %if.then44], !srcloc !119

if.then44:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kmb_i2s_irq_handler.__UNIQUE_ID_ddebug242, ptr noundef %43, ptr noundef nonnull @.str.29, i32 noundef %i.1107) #10
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %do.body, %if.end34.if.end46_crit_edge
  %ret.3 = phi i32 [ %ret.2, %if.end34.if.end46_crit_edge ], [ 1, %if.then44 ], [ 1, %do.body ]
  %and48 = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end46.for.inc69_crit_edge, label %do.body51

if.end46.for.inc69_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc69

do.body51:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kmb_i2s_irq_handler.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kmb_i2s_irq_handler, %if.then63)) #10
          to label %for.inc69 [label %if.then63], !srcloc !119

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kmb_i2s_irq_handler.__UNIQUE_ID_ddebug243, ptr noundef %45, ptr noundef nonnull @.str.30, i32 noundef %i.1107) #10
  br label %for.inc69

for.inc69:                                        ; preds = %if.then63, %do.body51, %if.end46.for.inc69_crit_edge
  %ret.4 = phi i32 [ %ret.3, %if.end46.for.inc69_crit_edge ], [ 1, %if.then63 ], [ 1, %do.body51 ]
  %inc70 = add nuw nsw i32 %i.1107, 1
  %46 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %config1, align 4
  %div26 = sdiv i32 %47, 2
  %cmp27 = icmp slt i32 %inc70, %div26
  br i1 %cmp27, label %for.inc69.for.body28_crit_edge, label %for.inc69.for.end71_crit_edge

for.inc69.for.end71_crit_edge:                    ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end71

for.inc69.for.body28_crit_edge:                   ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body28

for.end71:                                        ; preds = %for.inc69.for.end71_crit_edge, %sw.epilog.for.end71_crit_edge
  %ret.1.lcssa = phi i32 [ %ret.0, %sw.epilog.for.end71_crit_edge ], [ %ret.4, %for.inc69.for.end71_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %isr) #10
  ret i32 %ret.1.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kmb_i2s_disable_channels(ptr nocapture noundef readonly %kmb_i2s, i32 noundef %stream) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stream)
  %cmp = icmp eq i32 %stream, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %0 = ptrtoint ptr %kmb_i2s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kmb_i2s, align 4
  br i1 %cmp, label %do.body.preheader, label %do.body5.preheader

do.body5.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr11 = getelementptr i8, ptr %1, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 0) #10, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  tail call void @arm_heavy_mb() #10
  %2 = ptrtoint ptr %kmb_i2s to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kmb_i2s, align 4
  %add.ptr11.1 = getelementptr i8, ptr %3, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.1, i32 0) #10, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %kmb_i2s to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kmb_i2s, align 4
  %add.ptr11.2 = getelementptr i8, ptr %5, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.2, i32 0) #10, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %kmb_i2s to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kmb_i2s, align 4
  %add.ptr11.3 = getelementptr i8, ptr %7, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.3, i32 0) #10, !srcloc !112
  br label %if.end

do.body.preheader:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %1, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !113
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %kmb_i2s to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kmb_i2s, align 4
  %add.ptr.1 = getelementptr i8, ptr %9, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1, i32 0) #10, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !113
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %kmb_i2s to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %kmb_i2s, align 4
  %add.ptr.2 = getelementptr i8, ptr %11, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2, i32 0) #10, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !113
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %kmb_i2s to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %kmb_i2s, align 4
  %add.ptr.3 = getelementptr i8, ptr %13, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.3, i32 0) #10, !srcloc !112
  br label %if.end

if.end:                                           ; preds = %do.body.preheader, %do.body5.preheader
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kmb_pcm_operation(ptr noundef %kmb_i2s, i1 noundef zeroext %playback) unnamed_addr #2 align 64 {
entry:
  %temp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_substream = getelementptr inbounds %struct.kmb_i2s_info, ptr %kmb_i2s, i32 0, i32 18
  %rx_substream = getelementptr inbounds %struct.kmb_i2s_info, ptr %kmb_i2s, i32 0, i32 19
  %substream.0.in = select i1 %playback, ptr %tx_substream, ptr %rx_substream
  %0 = ptrtoint ptr %substream.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %substream.0 = load ptr, ptr %substream.0.in, align 4
  %tobool1.not = icmp eq ptr %substream.0, null
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.0, i32 0, i32 11
  %1 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %runtime.i, align 4
  %status.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %2, i32 0, i32 37
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %status.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %6, label %lor.lhs.false.cleanup_crit_edge [
    i32 3, label %lor.lhs.false.if.end4_crit_edge
    i32 5, label %snd_pcm_running.exit
  ]

lor.lhs.false.if.end4_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

snd_pcm_running.exit:                             ; preds = %lor.lhs.false
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.0, i32 0, i32 5
  %8 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp5.i.not = icmp eq i32 %9, 0
  br i1 %cmp5.i.not, label %snd_pcm_running.exit.if.end4_crit_edge, label %snd_pcm_running.exit.cleanup_crit_edge

snd_pcm_running.exit.cleanup_crit_edge:           ; preds = %snd_pcm_running.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

snd_pcm_running.exit.if.end4_crit_edge:           ; preds = %snd_pcm_running.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end4:                                          ; preds = %snd_pcm_running.exit.if.end4_crit_edge, %lor.lhs.false.if.end4_crit_edge
  br i1 %playback, label %if.then6, label %if.else24

if.then6:                                         ; preds = %if.end4
  %tx_ptr = getelementptr inbounds %struct.kmb_i2s_info, ptr %kmb_i2s, i32 0, i32 20
  %10 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_ptr, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %2, i32 0, i32 16
  %12 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %period_size.i, align 4
  %rem.i = urem i32 %11, %13
  %14 = ptrtoint ptr %kmb_i2s to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %kmb_i2s, align 4
  %dma_area.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %2, i32 0, i32 50
  %16 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_area.i, align 4
  %iec958_fmt.i = getelementptr inbounds %struct.kmb_i2s_info, ptr %kmb_i2s, i32 0, i32 22
  %18 = ptrtoint ptr %iec958_fmt.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %iec958_fmt.i, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %if.then6.if.end.i_crit_edge, label %if.then.i

if.then6.if.end.i_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.then6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i.i) #10
  %fifo_th.i.i = getelementptr inbounds %struct.kmb_i2s_info, ptr %kmb_i2s, i32 0, i32 11
  %20 = ptrtoint ptr %fifo_th.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fifo_th.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp48.not.i.i = icmp eq i32 %21, 0
  br i1 %cmp48.not.i.i, label %if.then.i.hdmi_reformat_iec958.exit.i_crit_edge, label %if.then.i.do.body.preheader.i.i_crit_edge

if.then.i.do.body.preheader.i.i_crit_edge:        ; preds = %if.then.i
  br label %do.body.preheader.i.i

if.then.i.hdmi_reformat_iec958.exit.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hdmi_reformat_iec958.exit.i

do.body.preheader.i.i:                            ; preds = %cond.end.1.i.i.do.body.preheader.i.i_crit_edge, %if.then.i.do.body.preheader.i.i_crit_edge
  %tx_ptr.addr.050.i.i = phi i32 [ %inc27.i.i, %cond.end.1.i.i.do.body.preheader.i.i_crit_edge ], [ %11, %if.then.i.do.body.preheader.i.i_crit_edge ]
  %i.049.i.i = phi i32 [ %inc28.i.i, %cond.end.1.i.i.do.body.preheader.i.i_crit_edge ], [ 0, %if.then.i.do.body.preheader.i.i_crit_edge ]
  %arrayidx1.i.i = getelementptr [2 x i32], ptr %17, i32 %tx_ptr.addr.050.i.i, i32 0
  %22 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx1.i.i, align 4
  %24 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %temp.i.i, align 4
  %and.i.i = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %do.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 31, ptr noundef nonnull %temp.i.i) #10
  br label %cond.end.i.i

if.else.i.i.i:                                    ; preds = %do.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_clear_bit(i32 noundef 31, ptr noundef nonnull %temp.i.i) #10
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %if.else.i.i.i, %if.then.i.i.i
  %25 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %temp.i.i, align 4
  %27 = lshr i32 %26, 8
  %conv4.i.i.i.i = and i32 %27, 255
  %arrayidx.i10.i.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i.i.i
  %28 = ptrtoint ptr %arrayidx.i10.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i10.i.i.i.i, align 1
  %conv6.i.i.i.i = zext i8 %29 to i32
  %30 = shl nuw nsw i32 %conv6.i.i.i.i, 16
  %31 = and i32 %26, 255
  %arrayidx.i.i.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  %conv2.i.i.i.i = zext i8 %33 to i32
  %34 = shl nuw i32 %conv2.i.i.i.i, 24
  %or.i13.i.i.i = or i32 %30, %34
  %sum.shift.i.i.i = lshr i32 %26, 24
  %arrayidx.i10.i11.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %sum.shift.i.i.i
  %35 = ptrtoint ptr %arrayidx.i10.i11.i.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i10.i11.i.i.i, align 1
  %conv6.i12.i.i.i = zext i8 %36 to i32
  %shl.i.i.i = or i32 %or.i13.i.i.i, %conv6.i12.i.i.i
  %shr.i.i.i = lshr i32 %26, 16
  %37 = and i32 %shr.i.i.i, 255
  %arrayidx.i.i7.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx.i.i7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i.i7.i.i.i, align 1
  %conv2.i8.i.i.i = zext i8 %39 to i32
  %40 = shl nuw nsw i32 %conv2.i8.i.i.i, 12
  %41 = shl i32 %shl.i.i.i, 4
  %shl23.i.i = or i32 %40, %41
  %42 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shl23.i.i, ptr %arrayidx1.i.i, align 4
  %arrayidx1.1.i.i = getelementptr [2 x i32], ptr %17, i32 %tx_ptr.addr.050.i.i, i32 1
  %43 = ptrtoint ptr %arrayidx1.1.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx1.1.i.i, align 4
  store i32 %44, ptr %temp.i.i, align 4
  %and.1.i.i = and i32 %44, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %and.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %if.else.i.1.i.i, label %if.then.i.1.i.i

if.then.i.1.i.i:                                  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 31, ptr noundef nonnull %temp.i.i) #10
  br label %cond.end.1.i.i

if.else.i.1.i.i:                                  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_clear_bit(i32 noundef 31, ptr noundef nonnull %temp.i.i) #10
  br label %cond.end.1.i.i

cond.end.1.i.i:                                   ; preds = %if.else.i.1.i.i, %if.then.i.1.i.i
  %45 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %temp.i.i, align 4
  %47 = lshr i32 %46, 8
  %conv4.i.i.1.i.i = and i32 %47, 255
  %arrayidx.i10.i.i.1.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i.1.i.i
  %48 = ptrtoint ptr %arrayidx.i10.i.i.1.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i10.i.i.1.i.i, align 1
  %conv6.i.i.1.i.i = zext i8 %49 to i32
  %50 = shl nuw nsw i32 %conv6.i.i.1.i.i, 16
  %51 = and i32 %46, 255
  %arrayidx.i.i.i.1.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %51
  %52 = ptrtoint ptr %arrayidx.i.i.i.1.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.i.i.i.1.i.i, align 1
  %conv2.i.i.1.i.i = zext i8 %53 to i32
  %54 = shl nuw i32 %conv2.i.i.1.i.i, 24
  %or.i13.i.1.i.i = or i32 %50, %54
  %sum.shift.i.1.i.i = lshr i32 %46, 24
  %arrayidx.i10.i11.i.1.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %sum.shift.i.1.i.i
  %55 = ptrtoint ptr %arrayidx.i10.i11.i.1.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i10.i11.i.1.i.i, align 1
  %conv6.i12.i.1.i.i = zext i8 %56 to i32
  %shl.i.1.i.i = or i32 %or.i13.i.1.i.i, %conv6.i12.i.1.i.i
  %shr.i.1.i.i = lshr i32 %46, 16
  %57 = and i32 %shr.i.1.i.i, 255
  %arrayidx.i.i7.i.1.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx.i.i7.i.1.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.i.i7.i.1.i.i, align 1
  %conv2.i8.i.1.i.i = zext i8 %59 to i32
  %60 = shl nuw nsw i32 %conv2.i8.i.1.i.i, 12
  %61 = shl i32 %shl.i.1.i.i, 4
  %shl23.1.i.i = or i32 %60, %61
  %62 = ptrtoint ptr %arrayidx1.1.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %shl23.1.i.i, ptr %arrayidx1.1.i.i, align 4
  %inc27.i.i = add i32 %tx_ptr.addr.050.i.i, 1
  %inc28.i.i = add nuw i32 %i.049.i.i, 1
  %63 = ptrtoint ptr %fifo_th.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fifo_th.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc28.i.i, %64
  br i1 %cmp.i.i, label %cond.end.1.i.i.do.body.preheader.i.i_crit_edge, label %cond.end.1.i.i.hdmi_reformat_iec958.exit.i_crit_edge

cond.end.1.i.i.hdmi_reformat_iec958.exit.i_crit_edge: ; preds = %cond.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hdmi_reformat_iec958.exit.i

cond.end.1.i.i.do.body.preheader.i.i_crit_edge:   ; preds = %cond.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.preheader.i.i

hdmi_reformat_iec958.exit.i:                      ; preds = %cond.end.1.i.i.hdmi_reformat_iec958.exit.i_crit_edge, %if.then.i.hdmi_reformat_iec958.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %hdmi_reformat_iec958.exit.i, %if.then6.if.end.i_crit_edge
  %fifo_th.i = getelementptr inbounds %struct.kmb_i2s_info, ptr %kmb_i2s, i32 0, i32 11
  %65 = ptrtoint ptr %fifo_th.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fifo_th.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp57.not.i = icmp eq i32 %66, 0
  br i1 %cmp57.not.i, label %if.end.i.kmb_pcm_tx_fn.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.kmb_pcm_tx_fn.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kmb_pcm_tx_fn.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %data_width.i = getelementptr inbounds %struct.kmb_i2s_info, ptr %kmb_i2s, i32 0, i32 15, i32 1
  %add.ptr17.i = getelementptr i8, ptr %15, i32 32
  %add.ptr23.i = getelementptr i8, ptr %15, i32 36
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %2, i32 0, i32 18
  br label %for.body.i

for.body.i:                                       ; preds = %if.end24.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.061.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc30.i, %if.end24.i.for.body.i_crit_edge ]
  %period_pos.060.i = phi i32 [ %rem.i, %for.body.lr.ph.i ], [ %inc.i, %if.end24.i.for.body.i_crit_edge ]
  %tx_ptr.addr.058.i = phi i32 [ %11, %for.body.lr.ph.i ], [ %spec.store.select.i, %if.end24.i.for.body.i_crit_edge ]
  %67 = ptrtoint ptr %data_width.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %data_width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %68)
  %cmp2.i = icmp eq i32 %68, 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  call void @arm_heavy_mb() #10
  br i1 %cmp2.i, label %do.body.i, label %do.body12.i

do.body.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr [2 x i16], ptr %17, i32 %tx_ptr.addr.058.i
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %70 to i32
  %71 = call i32 @llvm.bswap.i32(i32 %conv.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %71) #10, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !121
  call void @arm_heavy_mb() #10
  %arrayidx9.i = getelementptr [2 x i16], ptr %17, i32 %tx_ptr.addr.058.i, i32 1
  %72 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %arrayidx9.i, align 2
  %conv10.i = zext i16 %73 to i32
  %74 = call i32 @llvm.bswap.i32(i32 %conv10.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %74) #10, !srcloc !112
  br label %if.end24.i

do.body12.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx15.i = getelementptr [2 x i32], ptr %17, i32 %tx_ptr.addr.058.i
  %75 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx15.i, align 4
  %77 = call i32 @llvm.bswap.i32(i32 %76) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %77) #10, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !122
  call void @arm_heavy_mb() #10
  %arrayidx22.i = getelementptr [2 x i32], ptr %17, i32 %tx_ptr.addr.058.i, i32 1
  %78 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx22.i, align 4
  %80 = call i32 @llvm.bswap.i32(i32 %79) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %80) #10, !srcloc !112
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.body12.i, %do.body.i
  %inc.i = add i32 %period_pos.060.i, 1
  %inc25.i = add i32 %tx_ptr.addr.058.i, 1
  %81 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc25.i, i32 %82)
  %cmp26.not.i = icmp ult i32 %inc25.i, %82
  %spec.store.select.i = select i1 %cmp26.not.i, i32 %inc25.i, i32 0
  %inc30.i = add nuw i32 %i.061.i, 1
  %83 = ptrtoint ptr %fifo_th.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %fifo_th.i, align 4
  %cmp.i = icmp ult i32 %inc30.i, %84
  br i1 %cmp.i, label %if.end24.i.for.body.i_crit_edge, label %if.end24.i.kmb_pcm_tx_fn.exit_crit_edge

if.end24.i.kmb_pcm_tx_fn.exit_crit_edge:          ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kmb_pcm_tx_fn.exit

if.end24.i.for.body.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

kmb_pcm_tx_fn.exit:                               ; preds = %if.end24.i.kmb_pcm_tx_fn.exit_crit_edge, %if.end.i.kmb_pcm_tx_fn.exit_crit_edge
  %tx_ptr.addr.0.lcssa.i = phi i32 [ %11, %if.end.i.kmb_pcm_tx_fn.exit_crit_edge ], [ %spec.store.select.i, %if.end24.i.kmb_pcm_tx_fn.exit_crit_edge ]
  %period_pos.0.lcssa.i = phi i32 [ %rem.i, %if.end.i.kmb_pcm_tx_fn.exit_crit_edge ], [ %inc.i, %if.end24.i.kmb_pcm_tx_fn.exit_crit_edge ]
  %85 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %period_size.i, align 4
  %call.i = call zeroext i1 @__kasan_check_write(ptr noundef %tx_ptr, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !123
  call void @llvm.prefetch.p0(ptr %tx_ptr, i32 1, i32 3, i32 1) #10
  br label %do.body.i76

do.body.i76:                                      ; preds = %do.body.i76.do.body.i76_crit_edge, %kmb_pcm_tx_fn.exit
  %87 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %tx_ptr, i32 %11, i32 %tx_ptr.addr.0.lcssa.i) #10, !srcloc !124
  %asmresult.i = extractvalue { i32, i32 } %87, 0
  %tobool.not.i75 = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i75, label %__cmpxchg.exit, label %do.body.i76.do.body.i76_crit_edge

do.body.i76.do.body.i76_crit_edge:                ; preds = %do.body.i76
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i76

__cmpxchg.exit:                                   ; preds = %do.body.i76
  call void @__sanitizer_cov_trace_cmp4(i32 %period_pos.0.lcssa.i, i32 %86)
  %cmp32.i.not = icmp ult i32 %period_pos.0.lcssa.i, %86
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !125
  br i1 %cmp32.i.not, label %__cmpxchg.exit.cleanup_crit_edge, label %__cmpxchg.exit.if.then51_crit_edge

__cmpxchg.exit.if.then51_crit_edge:               ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then51

__cmpxchg.exit.cleanup_crit_edge:                 ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else24:                                        ; preds = %if.end4
  %rx_ptr = getelementptr inbounds %struct.kmb_i2s_info, ptr %kmb_i2s, i32 0, i32 21
  %88 = ptrtoint ptr %rx_ptr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rx_ptr, align 4
  %period_size.i77 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %2, i32 0, i32 16
  %90 = ptrtoint ptr %period_size.i77 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %period_size.i77, align 4
  %rem.i78 = urem i32 %89, %91
  %92 = ptrtoint ptr %kmb_i2s to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %kmb_i2s, align 4
  %config.i = getelementptr inbounds %struct.kmb_i2s_info, ptr %kmb_i2s, i32 0, i32 15
  %94 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %config.i, align 4
  %dma_area.i79 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %2, i32 0, i32 50
  %96 = ptrtoint ptr %dma_area.i79 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dma_area.i79, align 4
  %fifo_th.i80 = getelementptr inbounds %struct.kmb_i2s_info, ptr %kmb_i2s, i32 0, i32 11
  %98 = ptrtoint ptr %fifo_th.i80 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %fifo_th.i80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp98.not.i = icmp eq i32 %99, 0
  br i1 %cmp98.not.i, label %if.else24.kmb_pcm_rx_fn.exit_crit_edge, label %for.cond2.preheader.lr.ph.i

if.else24.kmb_pcm_rx_fn.exit_crit_edge:           ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #12
  br label %kmb_pcm_rx_fn.exit

for.cond2.preheader.lr.ph.i:                      ; preds = %if.else24
  %div.i = sdiv i32 %95, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %95)
  %cmp395.i = icmp sgt i32 %95, 1
  %data_width.i81 = getelementptr inbounds %struct.kmb_i2s_info, ptr %kmb_i2s, i32 0, i32 15, i32 1
  %buffer_size.i82 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %2, i32 0, i32 18
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.end.i.for.cond2.preheader.i_crit_edge, %for.cond2.preheader.lr.ph.i
  %rx_ptr.addr.0101.i = phi i32 [ %89, %for.cond2.preheader.lr.ph.i ], [ %spec.store.select.i87, %for.end.i.for.cond2.preheader.i_crit_edge ]
  %period_pos.0100.i = phi i32 [ %rem.i78, %for.cond2.preheader.lr.ph.i ], [ %inc50.i, %for.end.i.for.cond2.preheader.i_crit_edge ]
  %i.099.i = phi i32 [ 0, %for.cond2.preheader.lr.ph.i ], [ %inc57.i, %for.end.i.for.cond2.preheader.i_crit_edge ]
  br i1 %cmp395.i, label %for.body4.lr.ph.i, label %for.cond2.preheader.i.for.end.i_crit_edge

for.cond2.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body4.lr.ph.i:                                ; preds = %for.cond2.preheader.i
  %mul33.i = mul i32 %rx_ptr.addr.0101.i, %95
  %add47.i = add i32 %mul33.i, 1
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.inc.i.for.body4.i_crit_edge, %for.body4.lr.ph.i
  %j.096.i = phi i32 [ 0, %for.body4.lr.ph.i ], [ %inc.i86, %for.inc.i.for.body4.i_crit_edge ]
  %100 = ptrtoint ptr %data_width.i81 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %data_width.i81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %101)
  %cmp6.i = icmp eq i32 %101, 16
  %mul.i = shl i32 %j.096.i, 6
  %add.i = or i32 %mul.i, 32
  %add.ptr.i = getelementptr i8, ptr %93, i32 %add.i
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  br i1 %cmp6.i, label %if.then.i85, label %if.else.i

if.then.i85:                                      ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i83 = trunc i32 %103 to i16
  %mul9.i = shl nuw i32 %j.096.i, 1
  %add10.i = add i32 %mul9.i, %mul33.i
  %arrayidx.i84 = getelementptr i16, ptr %97, i32 %add10.i
  %104 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv.i83, ptr %arrayidx.i84, align 2
  %add14.i = or i32 %mul.i, 36
  %add.ptr15.i = getelementptr i8, ptr %93, i32 %add14.i
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #10, !srcloc !110
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !126
  %conv19.i = trunc i32 %106 to i16
  %add23.i = add i32 %mul9.i, %add47.i
  %arrayidx24.i = getelementptr i16, ptr %97, i32 %add23.i
  %107 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %conv19.i, ptr %arrayidx24.i, align 2
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul34.i = shl nuw i32 %j.096.i, 1
  %add35.i = add i32 %mul34.i, %mul33.i
  %arrayidx36.i = getelementptr i32, ptr %97, i32 %add35.i
  %108 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %103, ptr %arrayidx36.i, align 4
  %add40.i = or i32 %mul.i, 36
  %add.ptr41.i = getelementptr i8, ptr %93, i32 %add40.i
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41.i) #10, !srcloc !110
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  %add48.i = add i32 %mul34.i, %add47.i
  %arrayidx49.i = getelementptr i32, ptr %97, i32 %add48.i
  %111 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %arrayidx49.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then.i85
  %inc.i86 = add nuw nsw i32 %j.096.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i86, %div.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body4.i_crit_edge

for.inc.i.for.body4.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond2.preheader.i.for.end.i_crit_edge
  %inc50.i = add i32 %period_pos.0100.i, 1
  %inc51.i = add i32 %rx_ptr.addr.0101.i, 1
  %112 = ptrtoint ptr %buffer_size.i82 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %buffer_size.i82, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc51.i, i32 %113)
  %cmp52.not.i = icmp ult i32 %inc51.i, %113
  %spec.store.select.i87 = select i1 %cmp52.not.i, i32 %inc51.i, i32 0
  %inc57.i = add nuw i32 %i.099.i, 1
  %114 = ptrtoint ptr %fifo_th.i80 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %fifo_th.i80, align 4
  %cmp.i88 = icmp ult i32 %inc57.i, %115
  br i1 %cmp.i88, label %for.end.i.for.cond2.preheader.i_crit_edge, label %for.end.i.kmb_pcm_rx_fn.exit_crit_edge

for.end.i.kmb_pcm_rx_fn.exit_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kmb_pcm_rx_fn.exit

for.end.i.for.cond2.preheader.i_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond2.preheader.i

kmb_pcm_rx_fn.exit:                               ; preds = %for.end.i.kmb_pcm_rx_fn.exit_crit_edge, %if.else24.kmb_pcm_rx_fn.exit_crit_edge
  %period_pos.0.lcssa.i89 = phi i32 [ %rem.i78, %if.else24.kmb_pcm_rx_fn.exit_crit_edge ], [ %inc50.i, %for.end.i.kmb_pcm_rx_fn.exit_crit_edge ]
  %rx_ptr.addr.0.lcssa.i = phi i32 [ %89, %if.else24.kmb_pcm_rx_fn.exit_crit_edge ], [ %spec.store.select.i87, %for.end.i.kmb_pcm_rx_fn.exit_crit_edge ]
  %116 = ptrtoint ptr %period_size.i77 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %period_size.i77, align 4
  %call.i74 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_ptr, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !128
  tail call void @llvm.prefetch.p0(ptr %rx_ptr, i32 1, i32 3, i32 1) #10
  br label %do.body.i93

do.body.i93:                                      ; preds = %do.body.i93.do.body.i93_crit_edge, %kmb_pcm_rx_fn.exit
  %118 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %rx_ptr, i32 %89, i32 %rx_ptr.addr.0.lcssa.i) #10, !srcloc !124
  %asmresult.i91 = extractvalue { i32, i32 } %118, 0
  %tobool.not.i92 = icmp eq i32 %asmresult.i91, 0
  br i1 %tobool.not.i92, label %if.end49, label %do.body.i93.do.body.i93_crit_edge

do.body.i93.do.body.i93_crit_edge:                ; preds = %do.body.i93
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i93

if.end49:                                         ; preds = %do.body.i93
  call void @__sanitizer_cov_trace_cmp4(i32 %period_pos.0.lcssa.i89, i32 %117)
  %cmp60.i.not = icmp ult i32 %period_pos.0.lcssa.i89, %117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !129
  br i1 %cmp60.i.not, label %if.end49.cleanup_crit_edge, label %if.end49.if.then51_crit_edge

if.end49.if.then51_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then51

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then51:                                        ; preds = %if.end49.if.then51_crit_edge, %__cmpxchg.exit.if.then51_crit_edge
  call void @snd_pcm_period_elapsed(ptr noundef nonnull %substream.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %if.end49.cleanup_crit_edge, %__cmpxchg.exit.cleanup_crit_edge, %snd_pcm_running.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_platform_pcm_new(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %soc_runtime) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %soc_runtime, i32 0, i32 7
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm, align 4
  %call = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %1, i32 noundef 1, ptr noundef null, i32 noundef 196608, i32 noundef 196608) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_pcm_open(ptr nocapture noundef readnone %component, ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
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
  %call2 = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %substream, ptr noundef nonnull @kmb_pcm_hardware) #10
  %call3 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %1, i32 noundef 15) #10
  %private_data4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %12 = ptrtoint ptr %private_data4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %private_data4, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kmb_pcm_trigger(ptr nocapture noundef readnone %component, ptr noundef %substream, i32 noundef %cmd) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %5 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %tx_ptr = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 20
  %7 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %tx_ptr, align 4
  %tx_substream = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 18
  %8 = ptrtoint ptr %tx_substream to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %substream, ptr %tx_substream, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %rx_ptr = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 21
  %9 = ptrtoint ptr %rx_ptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %rx_ptr, align 4
  %rx_substream = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 19
  %10 = ptrtoint ptr %rx_substream to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %substream, ptr %rx_substream, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %stream3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %11 = ptrtoint ptr %stream3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stream3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp4 = icmp eq i32 %12, 0
  %rx_substream8 = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 19
  %tx_substream6 = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 18
  %rx_substream8.sink = select i1 %cmp4, ptr %tx_substream6, ptr %rx_substream8
  %13 = ptrtoint ptr %rx_substream8.sink to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %rx_substream8.sink, align 4
  %iec958_fmt = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 22
  %14 = ptrtoint ptr %iec958_fmt to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %iec958_fmt, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %if.else, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then ], [ 0, %if.else ], [ 0, %sw.bb2 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kmb_pcm_pointer(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %tx_ptr = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 20
  %rx_ptr = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 21
  %pos.0.in = select i1 %cmp, ptr %tx_ptr, ptr %rx_ptr
  %6 = ptrtoint ptr %pos.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %pos.0 = load i32, ptr %pos.0.in, align 4
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.0, i32 %8)
  %cmp2 = icmp ult i32 %pos.0, %8
  %cond = select i1 %cmp2, i32 %pos.0, i32 0
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kmb_probe(ptr nocapture noundef %cpu_dai) #8 align 64 {
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
  %use_pio = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %use_pio to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %use_pio, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %play_dma_data = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 13
  %capture_dma_data = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 14
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 7
  %6 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %play_dma_data, ptr %playback_dma_data.i, align 4
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 8
  %7 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %capture_dma_data, ptr %capture_dma_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_set_dai_fmt(ptr nocapture noundef readonly %cpu_dai, i32 noundef %fmt) #2 align 64 {
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
  %4 = trunc i32 %fmt to i16
  %trunc = and i16 %4, -4096
  %5 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.43)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %sw.bb
    i16 16384, label %do.body
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %clock_provider = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %clock_provider to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %clock_provider, align 4
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !130
  tail call void @arm_heavy_mb() #10
  %pss_base = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %pss_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pss_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 2097152) #10, !srcloc !112
  %clk_i2s = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %clk_i2s to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_i2s, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.clk_prepare_enable.exit_crit_edge

do.body.clk_prepare_enable.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %do.body
  %call1.i = tail call i32 @clk_enable(ptr noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %10) #10
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %do.body.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %do.body.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end_crit_edge

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %clk_prepare_enable.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %dev = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 8
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %13 = ptrtoint ptr %clk_i2s to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk_i2s, align 4
  %call.i18 = tail call i32 @devm_add_action(ptr noundef %12, ptr noundef nonnull @kmb_disable_clk, ptr noundef %14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %tobool.not.i19 = icmp eq i32 %call.i18, 0
  br i1 %tobool.not.i19, label %if.end6, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_disable(ptr noundef %14) #10
  tail call void @clk_unprepare(ptr noundef %14) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %clock_provider7 = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 12
  %15 = ptrtoint ptr %clock_provider7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %clock_provider7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %devm_add_action_or_reset.exit, %clk_prepare_enable.exit.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ], [ %call.i18, %devm_add_action_or_reset.exit ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end6 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kmb_dai_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef %cpu_dai) #8 align 64 {
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
  %use_pio = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %use_pio to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %use_pio, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %6 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %play_dma_data = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 13
  %capture_dma_data = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 14
  %dma_data.0 = select i1 %cmp, ptr %play_dma_data, ptr %capture_dma_data
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 8
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 7
  %capture_dma_data.sink.i = select i1 %cmp, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %8 = ptrtoint ptr %capture_dma_data.sink.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dma_data.0, ptr %capture_dma_data.sink.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_dai_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %hw_params, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
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
  %config1 = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 15
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.if.then.i.i_crit_edge

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %entry.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ -2, %entry.if.then.i.i_crit_edge ], [ 30, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %5, %entry.if.then.i.i_crit_edge ], [ %8, %for.inc.i.i.if.then.i.i_crit_edge ]
  %6 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #10, !range !131
  %phi.bo = add nsw i32 %i.09.lcssa.i.i, %6
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.1.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %phi.bo, %if.then.i.i ], [ -2, %for.inc.i.i.params_format.exit_crit_edge ]
  %9 = tail call i32 @llvm.fshl.i32(i32 %retval.0.i.i, i32 %retval.0.i.i, i32 30)
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %9, label %do.end [
    i32 0, label %params_format.exit.sw.epilog_crit_edge
    i32 1, label %sw.bb4
    i32 4, label %sw.bb12
    i32 2, label %params_format.exit.sw.bb13_crit_edge
  ]

params_format.exit.sw.bb13_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb13

params_format.exit.sw.epilog_crit_edge:           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb4:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb12:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  %iec958_fmt = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 22
  %11 = ptrtoint ptr %iec958_fmt to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %iec958_fmt, align 4
  br label %sw.bb13

sw.bb13:                                          ; preds = %sw.bb12, %params_format.exit.sw.bb13_crit_edge
  br label %sw.epilog

do.end:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.33) #13
  br label %cleanup82

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb4, %params_format.exit.sw.epilog_crit_edge
  %.sink136 = phi i32 [ 32, %sw.bb13 ], [ 32, %sw.bb4 ], [ 16, %params_format.exit.sw.epilog_crit_edge ]
  %.sink135 = phi i32 [ 16, %sw.bb13 ], [ 20, %sw.bb4 ], [ %9, %params_format.exit.sw.epilog_crit_edge ]
  %.sink134 = phi i32 [ 5, %sw.bb13 ], [ 5, %sw.bb4 ], [ 2, %params_format.exit.sw.epilog_crit_edge ]
  %.sink133 = phi i32 [ 4, %sw.bb13 ], [ 4, %sw.bb4 ], [ 2, %params_format.exit.sw.epilog_crit_edge ]
  %data_width14 = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 15, i32 1
  %14 = ptrtoint ptr %data_width14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink136, ptr %data_width14, align 4
  %ccr15 = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 9
  %15 = ptrtoint ptr %ccr15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink135, ptr %ccr15, align 4
  %xfer_resolution16 = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 10
  %16 = ptrtoint ptr %xfer_resolution16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink134, ptr %xfer_resolution16, align 4
  %addr_width18 = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 13, i32 1
  %17 = ptrtoint ptr %addr_width18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink133, ptr %addr_width18, align 4
  %addr_width20 = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 14, i32 1
  %18 = ptrtoint ptr %addr_width20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink133, ptr %addr_width20, align 4
  %arrayidx.i.i127 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %arrayidx.i.i127 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i127, align 4
  %21 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %config1, align 4
  %22 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %20, label %do.body50 [
    i32 8, label %sw.epilog.sw.bb23_crit_edge
    i32 4, label %sw.epilog.sw.bb23_crit_edge137
    i32 2, label %sw.bb31
  ]

sw.epilog.sw.bb23_crit_edge137:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb23

sw.epilog.sw.bb23_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb23

sw.bb23:                                          ; preds = %sw.epilog.sw.bb23_crit_edge, %sw.epilog.sw.bb23_crit_edge137
  %clock_provider = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 12
  %23 = ptrtoint ptr %clock_provider to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %clock_provider, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not = icmp eq i8 %24, 0
  br i1 %tobool.not, label %if.end, label %sw.bb23.cleanup82_crit_edge

sw.bb23.cleanup82_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup82

if.end:                                           ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #12
  %25 = shl nuw nsw i32 %20, 2
  %shl = and i32 %25, 1016
  %data_width25 = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 15, i32 1
  %26 = ptrtoint ptr %data_width25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_width25, align 4
  %shl26 = shl i32 %27, 6
  %or = or i32 %shl, %shl26
  %or27 = or i32 %or, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  tail call void @arm_heavy_mb() #10
  %28 = tail call i32 @llvm.bswap.i32(i32 %or27)
  %pss_base = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 1
  %29 = ptrtoint ptr %pss_base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pss_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #10, !srcloc !112
  br label %sw.epilog60

sw.bb31:                                          ; preds = %sw.epilog
  %clock_provider32 = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 12
  %31 = ptrtoint ptr %clock_provider32 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %clock_provider32, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool33.not = icmp eq i8 %32, 0
  br i1 %tobool33.not, label %sw.bb31.cleanup82_crit_edge, label %if.end35

sw.bb31.cleanup82_crit_edge:                      ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup82

if.end35:                                         ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #12
  %data_width39 = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 15, i32 1
  %33 = ptrtoint ptr %data_width39 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_width39, align 4
  %shl40 = shl i32 %34, 6
  %or42 = or i32 %shl40, 8200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @arm_heavy_mb() #10
  %35 = tail call i32 @llvm.bswap.i32(i32 %or42)
  %pss_base47 = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 1
  %36 = ptrtoint ptr %pss_base47 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pss_base47, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #10, !srcloc !112
  br label %sw.epilog60

do.body50:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kmb_dai_hw_params.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kmb_dai_hw_params, %if.then55)) #10
          to label %cleanup82 [label %if.then55], !srcloc !119

if.then55:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #12
  %dev56 = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 8
  %38 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev56, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kmb_dai_hw_params.__UNIQUE_ID_ddebug244, ptr noundef %39, ptr noundef nonnull @.str.35) #10
  br label %cleanup82

sw.epilog60:                                      ; preds = %if.end35, %if.end
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %40 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %stream, align 4
  tail call fastcc void @kmb_i2s_disable_channels(ptr noundef %3, i32 noundef %41) #10
  %42 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %config1, align 4
  %.off.i = add i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %44 = icmp ult i32 %.off.i, 3
  br i1 %44, label %sw.epilog60.kmb_i2s_config.exit_crit_edge, label %for.body.lr.ph.i

sw.epilog60.kmb_i2s_config.exit_crit_edge:        ; preds = %sw.epilog60
  call void @__sanitizer_cov_trace_pc() #12
  br label %kmb_i2s_config.exit

for.body.lr.ph.i:                                 ; preds = %sw.epilog60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp2.i = icmp eq i32 %41, 0
  %xfer_resolution20.i = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 10
  %fifo_th28.i = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 11
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ch_reg.062.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %45 = ptrtoint ptr %xfer_resolution20.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %xfer_resolution20.i, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #10
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %3, align 4
  %mul.i = shl i32 %ch_reg.062.i, 6
  br i1 %cmp2.i, label %do.body.i, label %do.body17.i

do.body.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = or i32 %mul.i, 52
  %add.ptr.i = getelementptr i8, ptr %49, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %47) #10, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  %50 = ptrtoint ptr %fifo_th28.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fifo_th28.i, align 4
  %sub.i = add i32 %51, -1
  %52 = tail call i32 @llvm.bswap.i32(i32 %sub.i) #10
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %3, align 4
  %add8.i = add i32 %mul.i, 76
  %add.ptr9.i = getelementptr i8, ptr %54, i32 %add8.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %52) #10, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !135
  tail call void @arm_heavy_mb() #10
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %3, align 4
  %add15.i = or i32 %mul.i, 44
  %add.ptr16.i = getelementptr i8, ptr %56, i32 %add15.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 16777216) #10, !srcloc !112
  br label %for.inc.i

do.body17.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %add23.i = or i32 %mul.i, 48
  %add.ptr24.i = getelementptr i8, ptr %49, i32 %add23.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %47) #10, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !136
  tail call void @arm_heavy_mb() #10
  %57 = ptrtoint ptr %fifo_th28.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fifo_th28.i, align 4
  %sub29.i = add i32 %58, -1
  %59 = tail call i32 @llvm.bswap.i32(i32 %sub29.i) #10
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %3, align 4
  %add32.i = add i32 %mul.i, 72
  %add.ptr33.i = getelementptr i8, ptr %61, i32 %add32.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 %59) #10, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !137
  tail call void @arm_heavy_mb() #10
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %3, align 4
  %add39.i = or i32 %mul.i, 40
  %add.ptr40.i = getelementptr i8, ptr %63, i32 %add39.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 16777216) #10, !srcloc !112
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.body17.i, %do.body.i
  %inc.i = add nuw i32 %ch_reg.062.i, 1
  %64 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %config1, align 4
  %div.i = sdiv i32 %65, 2
  %cmp.i = icmp ult i32 %inc.i, %div.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.kmb_i2s_config.exit_crit_edge

for.inc.i.kmb_i2s_config.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kmb_i2s_config.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

kmb_i2s_config.exit:                              ; preds = %for.inc.i.kmb_i2s_config.exit_crit_edge, %sw.epilog60.kmb_i2s_config.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !138
  tail call void @arm_heavy_mb() #10
  %ccr64 = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 9
  %66 = ptrtoint ptr %ccr64 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ccr64, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  %69 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %3, align 4
  %add.ptr65 = getelementptr i8, ptr %70, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %68) #10, !srcloc !112
  %arrayidx.i.i128 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 3
  %71 = ptrtoint ptr %arrayidx.i.i128 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i.i128, align 4
  %sample_rate = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 15, i32 2
  %73 = ptrtoint ptr %sample_rate to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %sample_rate, align 4
  %clock_provider67 = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 12
  %74 = ptrtoint ptr %clock_provider67 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %clock_provider67, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool68.not = icmp eq i8 %75, 0
  br i1 %tobool68.not, label %kmb_i2s_config.exit.cleanup82_crit_edge, label %if.then69

kmb_i2s_config.exit.cleanup82_crit_edge:          ; preds = %kmb_i2s_config.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup82

if.then69:                                        ; preds = %kmb_i2s_config.exit
  %data_width71 = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 15, i32 1
  %76 = ptrtoint ptr %data_width71 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %data_width71, align 4
  %mul = shl i32 %72, 1
  %mul72 = mul i32 %mul, %77
  %clk_i2s = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 2
  %78 = ptrtoint ptr %clk_i2s to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %clk_i2s, align 4
  %call73 = tail call i32 @clk_set_rate(ptr noundef %79, i32 noundef %mul72) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then69.cleanup82_crit_edge, label %do.end78

if.then69.cleanup82_crit_edge:                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup82

do.end78:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  %dev79 = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 8
  %80 = ptrtoint ptr %dev79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev79, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.37, i32 noundef %call73) #13
  br label %cleanup82

cleanup82:                                        ; preds = %do.end78, %if.then69.cleanup82_crit_edge, %kmb_i2s_config.exit.cleanup82_crit_edge, %if.then55, %do.body50, %sw.bb31.cleanup82_crit_edge, %sw.bb23.cleanup82_crit_edge, %do.end
  %retval.1 = phi i32 [ -22, %do.end ], [ -22, %sw.bb23.cleanup82_crit_edge ], [ -22, %sw.bb31.cleanup82_crit_edge ], [ -22, %if.then55 ], [ %call73, %do.end78 ], [ 0, %kmb_i2s_config.exit.cleanup82_crit_edge ], [ 0, %if.then69.cleanup82_crit_edge ], [ -22, %do.body50 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_dai_hw_free(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
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
  %use_pio = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %use_pio to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %use_pio, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %6 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream, align 4
  %config1.i = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  %8 = ptrtoint ptr %config1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config1.i, align 4
  %.off36.i = add i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off36.i)
  %10 = icmp ult i32 %.off36.i, 3
  br i1 %cmp.i, label %for.cond.preheader.i, label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %if.then
  br i1 %10, label %for.cond4.preheader.i.if.end_crit_edge, label %for.cond4.preheader.i.for.body8.i_crit_edge

for.cond4.preheader.i.for.body8.i_crit_edge:      ; preds = %for.cond4.preheader.i
  br label %for.body8.i

for.cond4.preheader.i.if.end_crit_edge:           ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond.preheader.i:                             ; preds = %if.then
  br i1 %10, label %for.cond.preheader.i.if.end_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end_crit_edge:            ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.035.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %mul.i = shl i32 %i.035.i, 6
  %add.i = add i32 %mul.i, 68
  %add.ptr.i = getelementptr i8, ptr %12, i32 %add.i
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  %inc.i = add nuw i32 %i.035.i, 1
  %14 = ptrtoint ptr %config1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %config1.i, align 4
  %div.i = sdiv i32 %15, 2
  %cmp2.i = icmp ult i32 %inc.i, %div.i
  br i1 %cmp2.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end_crit_edge

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body8.i:                                      ; preds = %for.body8.i.for.body8.i_crit_edge, %for.cond4.preheader.i.for.body8.i_crit_edge
  %i.132.i = phi i32 [ %inc19.i, %for.body8.i.for.body8.i_crit_edge ], [ 0, %for.cond4.preheader.i.for.body8.i_crit_edge ]
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %mul12.i = shl i32 %i.132.i, 6
  %add13.i = add i32 %mul12.i, 64
  %add.ptr14.i = getelementptr i8, ptr %17, i32 %add13.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #10, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !117
  %inc19.i = add nuw i32 %i.132.i, 1
  %19 = ptrtoint ptr %config1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %config1.i, align 4
  %div6.i = sdiv i32 %20, 2
  %cmp7.i = icmp ult i32 %inc19.i, %div6.i
  br i1 %cmp7.i, label %for.body8.i.for.body8.i_crit_edge, label %for.body8.i.if.end_crit_edge

for.body8.i.if.end_crit_edge:                     ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body8.i.for.body8.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body8.i

if.end:                                           ; preds = %for.body8.i.if.end_crit_edge, %for.body.i.if.end_crit_edge, %for.cond.preheader.i.if.end_crit_edge, %for.cond4.preheader.i.if.end_crit_edge, %entry.if.end_crit_edge
  %stream1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %21 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stream1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp = icmp eq i32 %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  br i1 %cmp, label %do.body, label %do.body3

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !112
  br label %if.end8

do.body3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr7 = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 0) #10, !srcloc !112
  br label %if.end8

if.end8:                                          ; preds = %do.body3, %do.body
  %25 = ptrtoint ptr %use_pio to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %use_pio, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool10.not = icmp eq i8 %26, 0
  %27 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stream1, align 4
  br i1 %tobool10.not, label %if.else13, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i41 = icmp eq i32 %28, 0
  %..i = select i1 %cmp.i41, i32 48, i32 3
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 4
  %add.ptr.i44 = getelementptr i8, ptr %30, i32 60
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #10, !srcloc !110
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %or.i = or i32 %32, %..i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  tail call void @arm_heavy_mb() #10
  %33 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 4
  %add.ptr9.i = getelementptr i8, ptr %35, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %33) #10, !srcloc !112
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 4
  %add.ptr.i44.1 = getelementptr i8, ptr %37, i32 124
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44.1) #10, !srcloc !110
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %or.i.1 = or i32 %39, %..i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  tail call void @arm_heavy_mb() #10
  %40 = tail call i32 @llvm.bswap.i32(i32 %or.i.1) #10
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %3, align 4
  %add.ptr9.i.1 = getelementptr i8, ptr %42, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.1, i32 %40) #10, !srcloc !112
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %3, align 4
  %add.ptr.i44.2 = getelementptr i8, ptr %44, i32 188
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44.2) #10, !srcloc !110
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %or.i.2 = or i32 %46, %..i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  tail call void @arm_heavy_mb() #10
  %47 = tail call i32 @llvm.bswap.i32(i32 %or.i.2) #10
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %3, align 4
  %add.ptr9.i.2 = getelementptr i8, ptr %49, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.2, i32 %47) #10, !srcloc !112
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %3, align 4
  %add.ptr.i44.3 = getelementptr i8, ptr %51, i32 252
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44.3) #10, !srcloc !110
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %or.i.3 = or i32 %53, %..i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  tail call void @arm_heavy_mb() #10
  %54 = tail call i32 @llvm.bswap.i32(i32 %or.i.3) #10
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %3, align 4
  %add.ptr9.i.3 = getelementptr i8, ptr %56, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.3, i32 %54) #10, !srcloc !112
  br label %if.end15

if.else13:                                        ; preds = %if.end8
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %3, align 4
  %add.ptr.i47 = getelementptr i8, ptr %58, i32 512
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #10, !srcloc !110
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i48 = icmp eq i32 %28, 0
  br i1 %cmp.i48, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #12
  %and.i49 = and i32 %60, -131073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !142
  tail call void @arm_heavy_mb() #10
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %3, align 4
  %add.ptr3.i = getelementptr i8, ptr %62, i32 460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 16777216) #10, !srcloc !112
  br label %kmb_i2s_disable_dma.exit

if.else.i:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #12
  %and4.i = and i32 %60, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  %63 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %3, align 4
  %add.ptr9.i50 = getelementptr i8, ptr %64, i32 452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i50, i32 16777216) #10, !srcloc !112
  br label %kmb_i2s_disable_dma.exit

kmb_i2s_disable_dma.exit:                         ; preds = %if.else.i, %if.then.i
  %dma_reg.0.i = phi i32 [ %and.i49, %if.then.i ], [ %and4.i, %if.else.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !144
  tail call void @arm_heavy_mb() #10
  %65 = tail call i32 @llvm.bswap.i32(i32 %dma_reg.0.i) #10
  %66 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %3, align 4
  %add.ptr14.i51 = getelementptr i8, ptr %67, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i51, i32 %65) #10, !srcloc !112
  br label %if.end15

if.end15:                                         ; preds = %kmb_i2s_disable_dma.exit, %if.then11
  %active = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 4
  %68 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool16.not = icmp eq i32 %69, 0
  br i1 %tobool16.not, label %do.body18, label %if.end15.if.end28_crit_edge

if.end15.if.end28_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

do.body18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  tail call void @arm_heavy_mb() #10
  %70 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %3, align 4
  %add.ptr22 = getelementptr i8, ptr %71, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 0) #10, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !146
  tail call void @arm_heavy_mb() #10
  %72 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 0) #10, !srcloc !112
  br label %if.end28

if.end28:                                         ; preds = %do.body18, %if.end15.if.end28_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_dai_prepare(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  br i1 %cmp, label %do.body, label %do.body1

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #10, !srcloc !112
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr5 = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 16777216) #10, !srcloc !112
  br label %if.end

if.end:                                           ; preds = %do.body1, %do.body
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_dai_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %active = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %active, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %active, align 4
  %config1.i = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !147
  tail call void @arm_heavy_mb() #10
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 16777216) #10, !srcloc !112
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %9 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  br i1 %cmp.i, label %do.body2.i, label %do.body7.i

do.body2.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr6.i = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 16777216) #10, !srcloc !112
  br label %if.end.i

do.body7.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr11.i = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 16777216) #10, !srcloc !112
  br label %if.end.i

if.end.i:                                         ; preds = %do.body7.i, %do.body2.i
  %use_pio.i = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 17
  %13 = ptrtoint ptr %use_pio.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %use_pio.i, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.else14.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end.i
  %15 = ptrtoint ptr %config1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %config1.i, align 4
  %chan_nr.off.i.i = add i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %chan_nr.off.i.i)
  %17 = icmp ult i32 %chan_nr.off.i.i, 3
  br i1 %17, label %if.then12.i.if.end16.i_crit_edge, label %for.body.lr.ph.i.i

if.then12.i.if.end16.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

for.body.lr.ph.i.i:                               ; preds = %if.then12.i
  %18 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.i = icmp eq i32 %19, 0
  %div.i.i = sdiv i32 %16, 2
  %neg.i.i = select i1 %cmp.i.i, i32 -49, i32 -4
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %div.i.i, i32 1) #10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.018.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %mul.i.i = shl i32 %i.018.i.i, 6
  %add.i.i = or i32 %mul.i.i, 60
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %add.i.i
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !110
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %and.i.i = and i32 %23, %neg.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  tail call void @arm_heavy_mb() #10
  %24 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #10
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %26, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 %24) #10, !srcloc !112
  %inc.i.i = add nuw i32 %i.018.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.if.end16.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.if.end16.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

if.else14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stream.i, align 4
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 4
  %add.ptr.i42.i = getelementptr i8, ptr %30, i32 512
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42.i) #10, !srcloc !110
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !148
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i43.i = icmp eq i32 %28, 0
  %dma_reg.0.v.i.i = select i1 %cmp.i43.i, i32 131072, i32 65536
  %dma_reg.0.i.i = or i32 %32, %dma_reg.0.v.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  tail call void @arm_heavy_mb() #10
  %33 = tail call i32 @llvm.bswap.i32(i32 %dma_reg.0.i.i) #10
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %35, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %33) #10, !srcloc !112
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else14.i, %for.body.i.i.if.end16.i_crit_edge, %if.then12.i.if.end16.i_crit_edge
  %clock_provider.i = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 12
  %36 = ptrtoint ptr %clock_provider.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %clock_provider.i, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool17.not.i = icmp eq i8 %37, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 4
  %add.ptr29.i = getelementptr i8, ptr %39, i32 12
  br i1 %tobool17.not.i, label %do.body25.i, label %do.body19.i

do.body19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 16777216) #10, !srcloc !112
  br label %cleanup

do.body25.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 0) #10, !srcloc !112
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %active2 = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 4
  %40 = ptrtoint ptr %active2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %active2, align 4
  %dec = add i32 %41, -1
  store i32 %dec, ptr %active2, align 4
  %use_pio = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 17
  %42 = ptrtoint ptr %use_pio to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %use_pio, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not = icmp eq i8 %43, 0
  br i1 %tobool.not, label %sw.bb1.cleanup_crit_edge, label %if.then

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %sw.bb1
  %stream.i8 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %44 = ptrtoint ptr %stream.i8 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %stream.i8, align 4
  %config1.i.i = getelementptr inbounds %struct.kmb_i2s_info, ptr %3, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i.i9 = icmp eq i32 %45, 0
  %46 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %config1.i.i, align 4
  %.off36.i.i = add i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off36.i.i)
  %48 = icmp ult i32 %.off36.i.i, 3
  br i1 %cmp.i.i9, label %for.cond.preheader.i.i, label %for.cond4.preheader.i.i

for.cond4.preheader.i.i:                          ; preds = %if.then
  br i1 %48, label %for.cond4.preheader.i.i.kmb_i2s_clear_irqs.exit.i_crit_edge, label %for.cond4.preheader.i.i.for.body8.i.i_crit_edge

for.cond4.preheader.i.i.for.body8.i.i_crit_edge:  ; preds = %for.cond4.preheader.i.i
  br label %for.body8.i.i

for.cond4.preheader.i.i.kmb_i2s_clear_irqs.exit.i_crit_edge: ; preds = %for.cond4.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kmb_i2s_clear_irqs.exit.i

for.cond.preheader.i.i:                           ; preds = %if.then
  br i1 %48, label %for.cond.preheader.i.i.kmb_i2s_clear_irqs.exit.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i15_crit_edge

for.cond.preheader.i.i.for.body.i.i15_crit_edge:  ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i15

for.cond.preheader.i.i.kmb_i2s_clear_irqs.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kmb_i2s_clear_irqs.exit.i

for.body.i.i15:                                   ; preds = %for.body.i.i15.for.body.i.i15_crit_edge, %for.cond.preheader.i.i.for.body.i.i15_crit_edge
  %i.035.i.i = phi i32 [ %inc.i.i13, %for.body.i.i15.for.body.i.i15_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i15_crit_edge ]
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %3, align 4
  %mul.i.i10 = shl i32 %i.035.i.i, 6
  %add.i.i11 = add i32 %mul.i.i10, 68
  %add.ptr.i.i12 = getelementptr i8, ptr %50, i32 %add.i.i11
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i12) #10, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  %inc.i.i13 = add nuw i32 %i.035.i.i, 1
  %52 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %config1.i.i, align 4
  %div.i.i14 = sdiv i32 %53, 2
  %cmp2.i.i = icmp ult i32 %inc.i.i13, %div.i.i14
  br i1 %cmp2.i.i, label %for.body.i.i15.for.body.i.i15_crit_edge, label %for.body.i.i15.kmb_i2s_clear_irqs.exit.i_crit_edge

for.body.i.i15.kmb_i2s_clear_irqs.exit.i_crit_edge: ; preds = %for.body.i.i15
  call void @__sanitizer_cov_trace_pc() #12
  br label %kmb_i2s_clear_irqs.exit.i

for.body.i.i15.for.body.i.i15_crit_edge:          ; preds = %for.body.i.i15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i15

for.body8.i.i:                                    ; preds = %for.body8.i.i.for.body8.i.i_crit_edge, %for.cond4.preheader.i.i.for.body8.i.i_crit_edge
  %i.132.i.i = phi i32 [ %inc19.i.i, %for.body8.i.i.for.body8.i.i_crit_edge ], [ 0, %for.cond4.preheader.i.i.for.body8.i.i_crit_edge ]
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %3, align 4
  %mul12.i.i = shl i32 %i.132.i.i, 6
  %add13.i.i = add i32 %mul12.i.i, 64
  %add.ptr14.i.i = getelementptr i8, ptr %55, i32 %add13.i.i
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i) #10, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !117
  %inc19.i.i = add nuw i32 %i.132.i.i, 1
  %57 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %config1.i.i, align 4
  %div6.i.i = sdiv i32 %58, 2
  %cmp7.i.i = icmp ult i32 %inc19.i.i, %div6.i.i
  br i1 %cmp7.i.i, label %for.body8.i.i.for.body8.i.i_crit_edge, label %for.body8.i.i.kmb_i2s_clear_irqs.exit.i_crit_edge

for.body8.i.i.kmb_i2s_clear_irqs.exit.i_crit_edge: ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kmb_i2s_clear_irqs.exit.i

for.body8.i.i.for.body8.i.i_crit_edge:            ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body8.i.i

kmb_i2s_clear_irqs.exit.i:                        ; preds = %for.body8.i.i.kmb_i2s_clear_irqs.exit.i_crit_edge, %for.body.i.i15.kmb_i2s_clear_irqs.exit.i_crit_edge, %for.cond.preheader.i.i.kmb_i2s_clear_irqs.exit.i_crit_edge, %for.cond4.preheader.i.i.kmb_i2s_clear_irqs.exit.i_crit_edge
  %59 = ptrtoint ptr %stream.i8 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %stream.i8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.i16 = icmp eq i32 %60, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %3, align 4
  br i1 %cmp.i16, label %do.body.i, label %do.body2.i17

do.body.i:                                        ; preds = %kmb_i2s_clear_irqs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %62, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !112
  br label %if.end.i20

do.body2.i17:                                     ; preds = %kmb_i2s_clear_irqs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr5.i = getelementptr i8, ptr %62, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 0) #10, !srcloc !112
  br label %if.end.i20

if.end.i20:                                       ; preds = %do.body2.i17, %do.body.i
  %63 = ptrtoint ptr %stream.i8 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %stream.i8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp.i25.i = icmp eq i32 %64, 0
  %..i.i = select i1 %cmp.i25.i, i32 48, i32 3
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %3, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %66, i32 60
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i) #10, !srcloc !110
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %or.i.i = or i32 %68, %..i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  tail call void @arm_heavy_mb() #10
  %69 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #10
  %70 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %3, align 4
  %add.ptr9.i.i18 = getelementptr i8, ptr %71, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i18, i32 %69) #10, !srcloc !112
  %72 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %3, align 4
  %add.ptr.i28.1.i = getelementptr i8, ptr %73, i32 124
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.1.i) #10, !srcloc !110
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %or.i.1.i = or i32 %75, %..i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  tail call void @arm_heavy_mb() #10
  %76 = tail call i32 @llvm.bswap.i32(i32 %or.i.1.i) #10
  %77 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %3, align 4
  %add.ptr9.i.1.i = getelementptr i8, ptr %78, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.1.i, i32 %76) #10, !srcloc !112
  %79 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %3, align 4
  %add.ptr.i28.2.i = getelementptr i8, ptr %80, i32 188
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.2.i) #10, !srcloc !110
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %or.i.2.i = or i32 %82, %..i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  tail call void @arm_heavy_mb() #10
  %83 = tail call i32 @llvm.bswap.i32(i32 %or.i.2.i) #10
  %84 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %3, align 4
  %add.ptr9.i.2.i = getelementptr i8, ptr %85, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.2.i, i32 %83) #10, !srcloc !112
  %86 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %3, align 4
  %add.ptr.i28.3.i = getelementptr i8, ptr %87, i32 252
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.3.i) #10, !srcloc !110
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %or.i.3.i = or i32 %89, %..i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  tail call void @arm_heavy_mb() #10
  %90 = tail call i32 @llvm.bswap.i32(i32 %or.i.3.i) #10
  %91 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %3, align 4
  %add.ptr9.i.3.i = getelementptr i8, ptr %92, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.3.i, i32 %90) #10, !srcloc !112
  %93 = ptrtoint ptr %active2 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %active2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i19 = icmp eq i32 %94, 0
  br i1 %tobool.not.i19, label %do.body8.i, label %if.end.i20.cleanup_crit_edge

if.end.i20.cleanup_crit_edge:                     ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body8.i:                                       ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !150
  tail call void @arm_heavy_mb() #10
  %95 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %3, align 4
  %add.ptr11.i21 = getelementptr i8, ptr %96, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i21, i32 0) #10, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !151
  tail call void @arm_heavy_mb() #10
  %97 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 0) #10, !srcloc !112
  br label %cleanup

cleanup:                                          ; preds = %do.body8.i, %if.end.i20.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %do.body25.i, %do.body19.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb1.cleanup_crit_edge ], [ 0, %do.body19.i ], [ 0, %do.body25.i ], [ 0, %if.end.i20.cleanup_crit_edge ], [ 0, %do.body8.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !83, !84, !85, !87, !88, !90, !91, !92, !94, !96, !98}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @__initcall__kmod_snd_soc_kmb_platform__250_932_kmb_plat_dai_driver_init6, !1, !"__initcall__kmod_snd_soc_kmb_platform__250_932_kmb_plat_dai_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 932, i32 1}
!2 = !{ptr @__exitcall_kmb_plat_dai_driver_exit, !1, !"__exitcall_kmb_plat_dai_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description251, !4, !"__UNIQUE_ID_description251", i1 false, i1 false}
!4 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 934, i32 1}
!5 = !{ptr @__UNIQUE_ID_author252, !6, !"__UNIQUE_ID_author252", i1 false, i1 false}
!6 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 935, i32 1}
!7 = !{ptr @__UNIQUE_ID_author253, !8, !"__UNIQUE_ID_author253", i1 false, i1 false}
!8 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 936, i32 1}
!9 = !{ptr @__UNIQUE_ID_file254, !10, !"__UNIQUE_ID_file254", i1 false, i1 false}
!10 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 937, i32 1}
!11 = !{ptr @__UNIQUE_ID_license255, !10, !"__UNIQUE_ID_license255", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_alias256, !13, !"__UNIQUE_ID_alias256", i1 false, i1 false}
!13 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 938, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 926, i32 12}
!16 = !{ptr @kmb_plat_dai_driver, !17, !"kmb_plat_dai_driver", i1 false, i1 false}
!17 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 924, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 840, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @kmb_plat_dai_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @kmb_plat_dai_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 846, i32 39}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 848, i32 3}
!30 = !{ptr @kmb_plat_dai_probe._entry.7, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @kmb_plat_dai_probe._entry_ptr.9, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 858, i32 3}
!34 = !{ptr @kmb_plat_dai_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @kmb_plat_dai_probe._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 862, i32 39}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 864, i32 3}
!40 = !{ptr @kmb_plat_dai_probe._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @kmb_plat_dai_probe._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 882, i32 49}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 890, i32 5}
!46 = !{ptr @kmb_plat_dai_probe._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @kmb_plat_dai_probe._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 902, i32 4}
!50 = !{ptr @kmb_plat_dai_probe._entry.21, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @kmb_plat_dai_probe._entry_ptr.23, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 911, i32 3}
!54 = !{ptr @kmb_plat_dai_probe._entry.24, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @kmb_plat_dai_probe._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 351, i32 4}
!58 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @kmb_i2s_irq_handler.__UNIQUE_ID_ddebug242, !57, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 356, i32 4}
!63 = !{ptr @kmb_i2s_irq_handler.__UNIQUE_ID_ddebug243, !62, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 391, i32 11}
!66 = !{ptr @kmb_component, !67, !"kmb_component", i1 false, i1 false}
!67 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 390, i32 46}
!68 = !{ptr @kmb_pcm_hardware, !69, !"kmb_pcm_hardware", i1 false, i1 false}
!69 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 30, i32 38}
!70 = !{ptr @kmb_component_dma, !71, !"kmb_component_dma", i1 false, i1 false}
!71 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 398, i32 46}
!72 = !{ptr @kmb_plat_of_match, !73, !"kmb_plat_of_match", i1 false, i1 false}
!73 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 812, i32 34}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 762, i32 11}
!76 = !{ptr @intel_kmb_i2s_dai, !77, !"intel_kmb_i2s_dai", i1 false, i1 false}
!77 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 760, i32 34}
!78 = !{ptr @kmb_dai_ops, !79, !"kmb_dai_ops", i1 false, i1 false}
!79 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 733, i32 37}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 613, i32 3}
!82 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @kmb_dai_hw_params._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @kmb_dai_hw_params._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 650, i32 3}
!87 = !{ptr @kmb_dai_hw_params.__UNIQUE_ID_ddebug244, !86, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 666, i32 4}
!90 = !{ptr @kmb_dai_hw_params._entry.36, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @kmb_dai_hw_params._entry_ptr.38, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 744, i32 11}
!94 = !{ptr @intel_kmb_hdmi_dai, !95, !"intel_kmb_hdmi_dai", i1 false, i1 false}
!95 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 742, i32 34}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 794, i32 11}
!98 = !{ptr @intel_kmb_tdm_dai, !99, !"intel_kmb_tdm_dai", i1 false, i1 false}
!99 = !{!"../sound/soc/intel/keembay/kmb_platform.c", i32 792, i32 34}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{!"auto-init"}
!110 = !{i64 6273994}
!111 = !{i64 2155097929}
!112 = !{i64 6273576}
!113 = !{i64 2155054946}
!114 = !{i64 2155055402}
!115 = !{i64 2155063063}
!116 = !{i64 2155056374}
!117 = !{i64 2155056983}
!118 = !{i64 2155063587}
!119 = !{i64 2148747176, i64 2148747181, i64 2148747194, i64 2148747238, i64 2148747272, i64 2148747293}
!120 = !{i8 0, i8 2}
!121 = !{i64 2155050880}
!122 = !{i64 2155051960}
!123 = !{i64 2155060520}
!124 = !{i64 774853, i64 774874, i64 774897, i64 774916, i64 774935}
!125 = !{i64 2155060929}
!126 = !{i64 2155053369}
!127 = !{i64 2155054515}
!128 = !{i64 2155061878}
!129 = !{i64 2155062287}
!130 = !{i64 2155075770}
!131 = !{i32 0, i32 33}
!132 = !{i64 2155081203}
!133 = !{i64 2155081731}
!134 = !{i64 2155076888}
!135 = !{i64 2155077414}
!136 = !{i64 2155078463}
!137 = !{i64 2155078989}
!138 = !{i64 2155084449}
!139 = !{i64 2155059109}
!140 = !{i64 2155059371}
!141 = !{i64 2155070517}
!142 = !{i64 2155070755}
!143 = !{i64 2155071171}
!144 = !{i64 2155071583}
!145 = !{i64 2155088169}
!146 = !{i64 2155088572}
!147 = !{i64 2155072005}
!148 = !{i64 2155069369}
!149 = !{i64 2155069623}
!150 = !{i64 2155074826}
!151 = !{i64 2155075229}
