; ModuleID = '/llk/IR_all_yes/sound/soc/xilinx/xlnx_formatter_pcm.c_pt.bc'
source_filename = "../sound/soc/xilinx/xlnx_formatter_pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.xlnx_pcm_drv_data = type { ptr, i8, i8, i32, i32, ptr, ptr, ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.xlnx_pcm_stream_param = type { ptr, i8, i32, i32, i64 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }

@__initcall__kmod_snd_soc_xlnx_formatter_pcm__238_699_xlnx_formatter_pcm_driver_init6 = internal global ptr @xlnx_formatter_pcm_driver_init, section ".initcall6.init", align 4
@xlnx_formatter_pcm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xlnx_formatter_pcm_probe, ptr @xlnx_formatter_pcm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xlnx_formatter_pcm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xlnx_formatter_pcm_driver_exit = internal global ptr @xlnx_formatter_pcm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author239 = internal constant [85 x i8] c"snd_soc_xlnx_formatter_pcm.author=Maruthi Srinivas Bayyavarapu <maruthis@xilinx.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [76 x i8] c"snd_soc_xlnx_formatter_pcm.file=sound/soc/xilinx/snd-soc-xlnx-formatter-pcm\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [42 x i8] c"snd_soc_xlnx_formatter_pcm.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xlnx_formatter_pcm\00", [45 x i8] zeroinitializer }, align 32
@xlnx_formatter_pcm_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,audio-formatter-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s_axi_lite_aclk\00", [16 x i8] zeroinitializer }, align 32
@xlnx_formatter_pcm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 577, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to get s_axi_lite_aclk(%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xlnx_formatter_pcm_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"sound/soc/xilinx/xlnx_formatter_pcm.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xlnx_formatter_pcm_probe._entry_ptr = internal global ptr @xlnx_formatter_pcm_probe._entry, section ".printk_index", align 4
@xlnx_formatter_pcm_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 583, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to enable s_axi_lite_aclk(%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@xlnx_formatter_pcm_probe._entry_ptr.9 = internal global ptr @xlnx_formatter_pcm_probe._entry.7, section ".printk_index", align 4
@xlnx_formatter_pcm_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 589, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"audio formatter ioremap failed\0A\00", [32 x i8] zeroinitializer }, align 32
@xlnx_formatter_pcm_probe._entry_ptr.12 = internal global ptr @xlnx_formatter_pcm_probe._entry.10, section ".printk_index", align 4
@xlnx_formatter_pcm_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 600, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"audio formatter reset failed\0A\00", [34 x i8] zeroinitializer }, align 32
@xlnx_formatter_pcm_probe._entry_ptr.15 = internal global ptr @xlnx_formatter_pcm_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"irq_mm2s\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"xlnx_formatter_pcm_mm2s_irq\00", [36 x i8] zeroinitializer }, align 32
@xlnx_formatter_pcm_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 617, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"xlnx audio mm2s irq request failed\0A\00", [60 x i8] zeroinitializer }, align 32
@xlnx_formatter_pcm_probe._entry_ptr.20 = internal global ptr @xlnx_formatter_pcm_probe._entry.18, section ".printk_index", align 4
@xlnx_formatter_pcm_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 626, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@xlnx_formatter_pcm_probe._entry_ptr.22 = internal global ptr @xlnx_formatter_pcm_probe._entry.21, section ".printk_index", align 4
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"irq_s2mm\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"xlnx_formatter_pcm_s2mm_irq\00", [36 x i8] zeroinitializer }, align 32
@xlnx_formatter_pcm_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 644, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"xlnx audio s2mm irq request failed\0A\00", [60 x i8] zeroinitializer }, align 32
@xlnx_formatter_pcm_probe._entry_ptr.27 = internal global ptr @xlnx_formatter_pcm_probe._entry.25, section ".printk_index", align 4
@xlnx_asoc_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xlnx_formatter_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xlnx_formatter_pcm_open, ptr @xlnx_formatter_pcm_close, ptr null, ptr @xlnx_formatter_pcm_hw_params, ptr null, ptr null, ptr @xlnx_formatter_pcm_trigger, ptr null, ptr @xlnx_formatter_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@xlnx_formatter_pcm_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 654, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"pcm platform device register failed\0A\00", [59 x i8] zeroinitializer }, align 32
@xlnx_formatter_pcm_probe._entry_ptr.30 = internal global ptr @xlnx_formatter_pcm_probe._entry.28, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@xlnx_pcm_hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 852240, i64 69, i32 8190, i32 8000, i32 192000, i32 2, i32 2, i32 307200, i32 192, i32 51200, i32 2, i32 6, i32 0 }, [32 x i8] zeroinitializer }, align 32
@xlnx_formatter_pcm_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 367, ptr @.str.33, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"stream %d : format = %d mode = %d ch_limit = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"xlnx_formatter_pcm_open\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@xlnx_formatter_pcm_open._entry_ptr = internal global ptr @xlnx_formatter_pcm_open._entry, section ".printk_index", align 4
@xlnx_formatter_pcm_open._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.32, ptr @.str.4, i32 378, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Unable to set constraint on period bytes\0A\00", [54 x i8] zeroinitializer }, align 32
@xlnx_formatter_pcm_open._entry_ptr.36 = internal global ptr @xlnx_formatter_pcm_open._entry.34, section ".printk_index", align 4
@xlnx_formatter_pcm_open._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.32, ptr @.str.4, i32 388, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Unable to set constraint on buffer bytes\0A\00", [54 x i8] zeroinitializer }, align 32
@xlnx_formatter_pcm_open._entry_ptr.39 = internal global ptr @xlnx_formatter_pcm_open._entry.37, section ".printk_index", align 4
@xlnx_formatter_pcm_open._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.32, ptr @.str.4, i32 397, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Unable to set constraint on periods to be integer\0A\00", [45 x i8] zeroinitializer }, align 32
@xlnx_formatter_pcm_open._entry_ptr.42 = internal global ptr @xlnx_formatter_pcm_open._entry.40, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xlnx_formatter_pcm_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.43, ptr @.str.4, i32 418, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xlnx_formatter_pcm_close\00", [39 x i8] zeroinitializer }, align 32
@xlnx_formatter_pcm_close._entry_ptr = internal global ptr @xlnx_formatter_pcm_close._entry, section ".printk_index", align 4
@xlnx_parse_aes_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 236, ptr @.str.33, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sample rate = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xlnx_parse_aes_params\00", [42 x i8] zeroinitializer }, align 32
@xlnx_parse_aes_params._entry_ptr = internal global ptr @xlnx_parse_aes_params._entry, section ".printk_index", align 4
@xlnx_parse_aes_params._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.4, i32 238, ptr @.str.33, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sample rate = unknown\0A\00", [41 x i8] zeroinitializer }, align 32
@xlnx_parse_aes_params._entry_ptr.48 = internal global ptr @xlnx_parse_aes_params._entry.46, section ".printk_index", align 4
@xlnx_parse_aes_params._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.4, i32 241, ptr @.str.33, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bit_depth = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@xlnx_parse_aes_params._entry_ptr.51 = internal global ptr @xlnx_parse_aes_params._entry.49, section ".printk_index", align 4
@xlnx_parse_aes_params._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.45, ptr @.str.4, i32 243, ptr @.str.33, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bit_depth = unknown\0A\00", [43 x i8] zeroinitializer }, align 32
@xlnx_parse_aes_params._entry_ptr.54 = internal global ptr @xlnx_parse_aes_params._entry.52, section ".printk_index", align 4
@xlnx_formatter_pcm_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.55, ptr @.str.4, i32 678, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"xlnx_formatter_pcm_remove\00", [38 x i8] zeroinitializer }, align 32
@xlnx_formatter_pcm_remove._entry_ptr = internal global ptr @xlnx_formatter_pcm_remove._entry, section ".printk_index", align 4
@switch.table.xlnx_formatter_pcm_hw_params = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 44100, i32 48000, i32 32000], [16 x i8] zeroinitializer }, align 32
@switch.table.xlnx_formatter_pcm_hw_params.56 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 44100, i32 0, i32 48000, i32 32000], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 4]
@__sancov_gen_cov_switch_values.58 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.59 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 4, i64 8, i64 10, i64 12]
@__sancov_gen_cov_switch_values.60 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.61 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.62 = private unnamed_addr constant [26 x i8] c"xlnx_formatter_pcm_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 690, i32 31 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 694, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant [28 x i8] c"xlnx_formatter_pcm_of_match\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 684, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 574, i32 44 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 577, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 582, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 589, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 600, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 608, i32 10 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 615, i32 12 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 617, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 626, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 634, i32 10 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 641, i32 12 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 644, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant [20 x i8] c"xlnx_asoc_component\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 553, i32 46 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 654, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [18 x i8] c"xlnx_pcm_hardware\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 105, i32 38 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 364, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 377, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 387, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 396, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 418, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 236, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 238, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 241, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 243, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.216 = private constant [41 x i8] c"../sound/soc/xilinx/xlnx_formatter_pcm.c\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 678, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [42 x i8] c"switch.table.xlnx_formatter_pcm_hw_params\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [45 x i8] c"switch.table.xlnx_formatter_pcm_hw_params.56\00", align 1
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_xlnx_formatter_pcm_driver_exit, ptr @__initcall__kmod_snd_soc_xlnx_formatter_pcm__238_699_xlnx_formatter_pcm_driver_init6, ptr @xlnx_formatter_pcm_close._entry, ptr @xlnx_formatter_pcm_close._entry_ptr, ptr @xlnx_formatter_pcm_driver_exit, ptr @xlnx_formatter_pcm_open._entry, ptr @xlnx_formatter_pcm_open._entry.34, ptr @xlnx_formatter_pcm_open._entry.37, ptr @xlnx_formatter_pcm_open._entry.40, ptr @xlnx_formatter_pcm_open._entry_ptr, ptr @xlnx_formatter_pcm_open._entry_ptr.36, ptr @xlnx_formatter_pcm_open._entry_ptr.39, ptr @xlnx_formatter_pcm_open._entry_ptr.42, ptr @xlnx_formatter_pcm_probe._entry, ptr @xlnx_formatter_pcm_probe._entry.10, ptr @xlnx_formatter_pcm_probe._entry.13, ptr @xlnx_formatter_pcm_probe._entry.18, ptr @xlnx_formatter_pcm_probe._entry.21, ptr @xlnx_formatter_pcm_probe._entry.25, ptr @xlnx_formatter_pcm_probe._entry.28, ptr @xlnx_formatter_pcm_probe._entry.7, ptr @xlnx_formatter_pcm_probe._entry_ptr, ptr @xlnx_formatter_pcm_probe._entry_ptr.12, ptr @xlnx_formatter_pcm_probe._entry_ptr.15, ptr @xlnx_formatter_pcm_probe._entry_ptr.20, ptr @xlnx_formatter_pcm_probe._entry_ptr.22, ptr @xlnx_formatter_pcm_probe._entry_ptr.27, ptr @xlnx_formatter_pcm_probe._entry_ptr.30, ptr @xlnx_formatter_pcm_probe._entry_ptr.9, ptr @xlnx_formatter_pcm_remove._entry, ptr @xlnx_formatter_pcm_remove._entry_ptr, ptr @xlnx_parse_aes_params._entry, ptr @xlnx_parse_aes_params._entry.46, ptr @xlnx_parse_aes_params._entry.49, ptr @xlnx_parse_aes_params._entry.52, ptr @xlnx_parse_aes_params._entry_ptr, ptr @xlnx_parse_aes_params._entry_ptr.48, ptr @xlnx_parse_aes_params._entry_ptr.51, ptr @xlnx_parse_aes_params._entry_ptr.54, ptr @xlnx_formatter_pcm_driver, ptr @.str, ptr @xlnx_formatter_pcm_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @xlnx_asoc_component, ptr @.str.29, ptr @xlnx_pcm_hardware, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @switch.table.xlnx_formatter_pcm_hw_params, ptr @switch.table.xlnx_formatter_pcm_hw_params.56], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlnx_formatter_pcm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlnx_formatter_pcm_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlnx_formatter_pcm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlnx_formatter_pcm_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlnx_formatter_pcm_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlnx_formatter_pcm_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlnx_formatter_pcm_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlnx_formatter_pcm_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlnx_formatter_pcm_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlnx_asoc_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlnx_formatter_pcm_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlnx_pcm_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlnx_formatter_pcm_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlnx_formatter_pcm_open._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlnx_formatter_pcm_open._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlnx_formatter_pcm_open._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlnx_formatter_pcm_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlnx_parse_aes_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlnx_parse_aes_params._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlnx_parse_aes_params._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlnx_parse_aes_params._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlnx_formatter_pcm_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xlnx_formatter_pcm_hw_params to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xlnx_formatter_pcm_hw_params.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xlnx_formatter_pcm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xlnx_formatter_pcm_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xlnx_formatter_pcm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @xlnx_formatter_pcm_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlnx_formatter_pcm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 28, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #6
  %axi_clk = getelementptr inbounds %struct.xlnx_pcm_drv_data, ptr %call.i, i32 0, i32 7
  %0 = ptrtoint ptr %axi_clk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %axi_clk, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %1) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i150 = tail call i32 @clk_prepare(ptr noundef %call2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %tobool.not.i = icmp eq i32 %call.i150, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.do.end15_crit_edge

if.end8.do.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

if.end.i:                                         ; preds = %if.end8
  %call1.i = tail call i32 @clk_enable(ptr noundef %call2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end16, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call2) #6
  br label %do.end15

do.end15:                                         ; preds = %if.then3.i, %if.end8.do.end15_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i150, %if.end8.do.end15_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end.i
  %call17 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call17, ptr %call.i, align 4
  %cmp.i151 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i151, label %do.end23, label %if.end26

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %clk_err

if.end26:                                         ; preds = %if.end16
  %add.ptr = getelementptr i8, ptr %call17, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !115
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %and = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %if.end26.if.end56_crit_edge, label %if.then31

if.end26.if.end56_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then31:                                        ; preds = %if.end26
  %mm2s_presence = getelementptr inbounds %struct.xlnx_pcm_drv_data, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %mm2s_presence to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %mm2s_presence, align 1
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 272
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  %12 = or i32 %11, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #6, !srcloc !119
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %14 = and i32 %13, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not26.i = icmp eq i32 %14, 0
  br i1 %tobool.not26.i, label %if.then31.if.end40_crit_edge, label %if.then31.while.body.i_crit_edge

if.then31.while.body.i_crit_edge:                 ; preds = %if.then31
  br label %while.body.i

if.then31.if.end40_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then31.while.body.i_crit_edge
  %retries.028.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.then31.while.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #6
  %inc.i = add nuw nsw i32 %retries.028.i, 1
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  %17 = and i32 %16, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i152 = icmp eq i32 %17, 0
  %tobool.not.not.i = xor i1 %tobool.not.i152, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %retries.028.i)
  %cmp.i153 = icmp ult i32 %retries.028.i, 99
  %or.cond.i = select i1 %tobool.not.not.i, i1 %cmp.i153, i1 false
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %while.end.loopexit.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.end.loopexit.i:                             ; preds = %while.body.i
  br i1 %tobool.not.i152, label %while.end.loopexit.i.if.end40_crit_edge, label %do.end39

while.end.loopexit.i.if.end40_crit_edge:          ; preds = %while.end.loopexit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

do.end39:                                         ; preds = %while.end.loopexit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #9
  br label %clk_err

if.end40:                                         ; preds = %while.end.loopexit.i.if.end40_crit_edge, %if.then31.if.end40_crit_edge
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %add.ptr.i154 = getelementptr i8, ptr %19, i32 272
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i154) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  %21 = and i32 %20, -2097153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154, i32 %21) #6, !srcloc !119
  %call43 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.16) #6
  %mm2s_irq = getelementptr inbounds %struct.xlnx_pcm_drv_data, ptr %call.i, i32 0, i32 4
  %22 = ptrtoint ptr %mm2s_irq to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call43, ptr %mm2s_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp = icmp slt i32 %call43, 0
  br i1 %cmp, label %if.end40.clk_err_crit_edge, label %if.end47

if.end40.clk_err_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_err

if.end47:                                         ; preds = %if.end40
  %call.i155 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call43, ptr noundef nonnull @xlnx_mm2s_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef %dev1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155)
  %tobool50.not = icmp eq i32 %call.i155, 0
  br i1 %tobool50.not, label %if.end47.if.end56_crit_edge, label %do.end54

if.end47.if.end56_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

do.end54:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #9
  br label %clk_err

if.end56:                                         ; preds = %if.end47.if.end56_crit_edge, %if.end26.if.end56_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool58.not = icmp sgt i32 %7, -1
  br i1 %tobool58.not, label %if.end56.if.end85_crit_edge, label %if.then59

if.end56.if.end85_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.then59:                                        ; preds = %if.end56
  %s2mm_presence = getelementptr inbounds %struct.xlnx_pcm_drv_data, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %s2mm_presence to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %s2mm_presence, align 4
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  %add.ptr.i156 = getelementptr i8, ptr %25, i32 16
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i156) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  %27 = or i32 %26, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156, i32 %27) #6, !srcloc !119
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i156) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %29 = and i32 %28, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not26.i157 = icmp eq i32 %29, 0
  br i1 %tobool.not26.i157, label %if.then59.if.end68_crit_edge, label %if.then59.while.body.i164_crit_edge

if.then59.while.body.i164_crit_edge:              ; preds = %if.then59
  br label %while.body.i164

if.then59.if.end68_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

while.body.i164:                                  ; preds = %while.body.i164.while.body.i164_crit_edge, %if.then59.while.body.i164_crit_edge
  %retries.028.i158 = phi i32 [ %inc.i159, %while.body.i164.while.body.i164_crit_edge ], [ 0, %if.then59.while.body.i164_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #6
  %inc.i159 = add nuw nsw i32 %retries.028.i158, 1
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i156) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  %32 = and i32 %31, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i160 = icmp eq i32 %32, 0
  %tobool.not.not.i161 = xor i1 %tobool.not.i160, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %retries.028.i158)
  %cmp.i162 = icmp ult i32 %retries.028.i158, 99
  %or.cond.i163 = select i1 %tobool.not.not.i161, i1 %cmp.i162, i1 false
  br i1 %or.cond.i163, label %while.body.i164.while.body.i164_crit_edge, label %while.end.loopexit.i166

while.body.i164.while.body.i164_crit_edge:        ; preds = %while.body.i164
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i164

while.end.loopexit.i166:                          ; preds = %while.body.i164
  br i1 %tobool.not.i160, label %while.end.loopexit.i166.if.end68_crit_edge, label %do.end67

while.end.loopexit.i166.if.end68_crit_edge:       ; preds = %while.end.loopexit.i166
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

do.end67:                                         ; preds = %while.end.loopexit.i166
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #9
  br label %clk_err

if.end68:                                         ; preds = %while.end.loopexit.i166.if.end68_crit_edge, %if.then59.if.end68_crit_edge
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 4
  %add.ptr.i169 = getelementptr i8, ptr %34, i32 16
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i169) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  %36 = and i32 %35, -6291457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i169, i32 %36) #6, !srcloc !119
  %call71 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.23) #6
  %s2mm_irq = getelementptr inbounds %struct.xlnx_pcm_drv_data, ptr %call.i, i32 0, i32 3
  %37 = ptrtoint ptr %s2mm_irq to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call71, ptr %s2mm_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp73 = icmp slt i32 %call71, 0
  br i1 %cmp73, label %if.end68.clk_err_crit_edge, label %if.end76

if.end68.clk_err_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_err

if.end76:                                         ; preds = %if.end68
  %call.i171 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call71, ptr noundef nonnull @xlnx_s2mm_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef %dev1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171)
  %tobool79.not = icmp eq i32 %call.i171, 0
  br i1 %tobool79.not, label %if.end76.if.end85_crit_edge, label %do.end83

if.end76.if.end85_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

do.end83:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26) #9
  br label %clk_err

if.end85:                                         ; preds = %if.end76.if.end85_crit_edge, %if.end56.if.end85_crit_edge
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %38 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call86 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @xlnx_asoc_component, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end85.cleanup_crit_edge, label %do.end91

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end91:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29) #9
  br label %clk_err

clk_err:                                          ; preds = %do.end91, %do.end83, %if.end68.clk_err_crit_edge, %do.end67, %do.end54, %if.end40.clk_err_crit_edge, %do.end39, %do.end23
  %ret.0 = phi i32 [ %5, %do.end23 ], [ -19, %do.end39 ], [ %call.i155, %do.end54 ], [ -19, %do.end67 ], [ %call.i171, %do.end83 ], [ %call86, %do.end91 ], [ %call43, %if.end40.clk_err_crit_edge ], [ %call71, %if.end68.clk_err_crit_edge ]
  %39 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %axi_clk, align 4
  tail call void @clk_disable(ptr noundef %40) #6
  tail call void @clk_unprepare(ptr noundef %40) #6
  br label %cleanup

cleanup:                                          ; preds = %clk_err, %if.end85.cleanup_crit_edge, %do.end15, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %retval.0.i.ph, %do.end15 ], [ %ret.0, %clk_err ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end85.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlnx_formatter_pcm_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %s2mm_presence = getelementptr inbounds %struct.xlnx_pcm_drv_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %s2mm_presence to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %s2mm_presence, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  %7 = or i32 %6, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #6, !srcloc !119
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %9 = and i32 %8, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not26.i = icmp eq i32 %9, 0
  br i1 %tobool.not26.i, label %if.then.if.end_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %retries.028.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.then.while.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #6
  %inc.i = add nuw nsw i32 %retries.028.i, 1
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  %12 = and i32 %11, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  %tobool.not.not.i = xor i1 %tobool.not.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %retries.028.i)
  %cmp.i = icmp ult i32 %retries.028.i, 99
  %or.cond.i = select i1 %tobool.not.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %while.end.loopexit.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.end.loopexit.i:                             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %phi.sel.i = select i1 %tobool.not.i, i32 0, i32 -19
  br label %if.end

if.end:                                           ; preds = %while.end.loopexit.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 0, %if.then.if.end_crit_edge ], [ %phi.sel.i, %while.end.loopexit.i ]
  %mm2s_presence = getelementptr inbounds %struct.xlnx_pcm_drv_data, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %mm2s_presence to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mm2s_presence, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool2.not = icmp eq i8 %14, 0
  br i1 %tobool2.not, label %if.end7, label %if.then3

if.then3:                                         ; preds = %if.end
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %add.ptr.i18 = getelementptr i8, ptr %16, i32 272
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  %18 = or i32 %17, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %18) #6, !srcloc !119
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %20 = and i32 %19, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not26.i19 = icmp eq i32 %20, 0
  br i1 %tobool.not26.i19, label %if.then3.if.end11_crit_edge, label %if.then3.while.body.i26_crit_edge

if.then3.while.body.i26_crit_edge:                ; preds = %if.then3
  br label %while.body.i26

if.then3.if.end11_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

while.body.i26:                                   ; preds = %while.body.i26.while.body.i26_crit_edge, %if.then3.while.body.i26_crit_edge
  %retries.028.i20 = phi i32 [ %inc.i21, %while.body.i26.while.body.i26_crit_edge ], [ 0, %if.then3.while.body.i26_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #6
  %inc.i21 = add nuw nsw i32 %retries.028.i20, 1
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  %23 = and i32 %22, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i22 = icmp eq i32 %23, 0
  %tobool.not.not.i23 = xor i1 %tobool.not.i22, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %retries.028.i20)
  %cmp.i24 = icmp ult i32 %retries.028.i20, 99
  %or.cond.i25 = select i1 %tobool.not.not.i23, i1 %cmp.i24, i1 false
  br i1 %or.cond.i25, label %while.body.i26.while.body.i26_crit_edge, label %while.end.loopexit.i28

while.body.i26.while.body.i26_crit_edge:          ; preds = %while.body.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i26

while.end.loopexit.i28:                           ; preds = %while.body.i26
  br i1 %tobool.not.i22, label %while.end.loopexit.i28.if.end11_crit_edge, label %while.end.loopexit.i28.do.end_crit_edge

while.end.loopexit.i28.do.end_crit_edge:          ; preds = %while.end.loopexit.i28
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

while.end.loopexit.i28.if.end11_crit_edge:        ; preds = %while.end.loopexit.i28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool8.not = icmp eq i32 %ret.0, 0
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.end7.do.end_crit_edge

if.end7.do.end_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

do.end:                                           ; preds = %if.end7.do.end_crit_edge, %while.end.loopexit.i28.do.end_crit_edge
  %ret.137 = phi i32 [ %ret.0, %if.end7.do.end_crit_edge ], [ -19, %while.end.loopexit.i28.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  br label %if.end11

if.end11:                                         ; preds = %do.end, %if.end7.if.end11_crit_edge, %while.end.loopexit.i28.if.end11_crit_edge, %if.then3.if.end11_crit_edge
  %ret.133 = phi i32 [ %ret.137, %do.end ], [ 0, %if.end7.if.end11_crit_edge ], [ 0, %if.then3.if.end11_crit_edge ], [ 0, %while.end.loopexit.i28.if.end11_crit_edge ]
  %axi_clk = getelementptr inbounds %struct.xlnx_pcm_drv_data, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %axi_clk, align 4
  tail call void @clk_disable(ptr noundef %25) #6
  tail call void @clk_unprepare(ptr noundef %25) #6
  ret i32 %ret.133
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlnx_mm2s_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %arg, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 276
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !115
  %5 = shl i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  %and = and i32 %5, -2147483648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  tail call void @arm_heavy_mb() #6
  %6 = lshr exact i32 %and, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %6) #6, !srcloc !119
  %play_stream = getelementptr inbounds %struct.xlnx_pcm_drv_data, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %play_stream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %play_stream, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %if.then6

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %8) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then6 ], [ 1, %do.body.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlnx_s2mm_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %arg, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !115
  %5 = shl i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  %and = and i32 %5, -2147483648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  tail call void @arm_heavy_mb() #6
  %6 = lshr exact i32 %and, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %6) #6, !srcloc !119
  %capture_stream = getelementptr inbounds %struct.xlnx_pcm_drv_data, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %capture_stream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %capture_stream, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %if.then6

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %8) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then6 ], [ 1, %do.body.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlnx_formatter_pcm_new(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %rtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 7
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %1, i32 noundef 2, ptr noundef %3, i32 noundef 307200, i32 noundef 307200) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlnx_formatter_pcm_open(ptr nocapture noundef readonly %component, ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %6 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %entry.if.end7_crit_edge [
    i32 0, label %land.lhs.true
    i32 1, label %land.lhs.true4
  ]

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %mm2s_presence = getelementptr inbounds %struct.xlnx_pcm_drv_data, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %mm2s_presence to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mm2s_presence, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true4:                                   ; preds = %entry
  %s2mm_presence = getelementptr inbounds %struct.xlnx_pcm_drv_data, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %s2mm_presence to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %s2mm_presence, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool5.not = icmp eq i8 %12, 0
  br i1 %tobool5.not, label %land.lhs.true4.cleanup_crit_edge, label %land.lhs.true4.if.end7_crit_edge

land.lhs.true4.if.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true4.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 24) #10
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %14 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp13 = icmp eq i32 %15, 0
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 4
  br i1 %cmp13, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %17, i32 256
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr, ptr %call7.i.i, align 8
  %play_stream = getelementptr inbounds %struct.xlnx_pcm_drv_data, ptr %5, i32 0, i32 5
  br label %if.end20

if.else16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %call7.i.i, align 8
  %capture_stream = getelementptr inbounds %struct.xlnx_pcm_drv_data, ptr %5, i32 0, i32 6
  br label %if.end20

if.end20:                                         ; preds = %if.else16, %if.then14
  %capture_stream.sink = phi ptr [ %capture_stream, %if.else16 ], [ %play_stream, %if.then14 ]
  %data_xfer_shift.0 = phi i32 [ 29, %if.else16 ], [ 13, %if.then14 ]
  %data_xfer_mode.0 = phi i32 [ 1610612736, %if.else16 ], [ 24576, %if.then14 ]
  %ch_count_shift.0 = phi i32 [ 24, %if.else16 ], [ 8, %if.then14 ]
  %ch_count_mask.0 = phi i32 [ 251658240, %if.else16 ], [ 3840, %if.then14 ]
  %data_format_mode.0 = phi i32 [ 268435456, %if.else16 ], [ 4096, %if.then14 ]
  %20 = ptrtoint ptr %capture_stream.sink to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %substream, ptr %capture_stream.sink, align 4
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %5, align 4
  %add.ptr22 = getelementptr i8, ptr %22, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #6, !srcloc !115
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  %and = and i32 %24, %data_format_mode.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.then26, label %if.end20.if.end27_crit_edge

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %interleaved = getelementptr inbounds %struct.xlnx_pcm_stream_param, ptr %call7.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %interleaved to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %interleaved, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end20.if.end27_crit_edge
  %and28 = and i32 %24, %data_xfer_mode.0
  %shr = lshr i32 %and28, %data_xfer_shift.0
  %xfer_mode = getelementptr inbounds %struct.xlnx_pcm_stream_param, ptr %call7.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %xfer_mode to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shr, ptr %xfer_mode, align 8
  %and29 = and i32 %24, %ch_count_mask.0
  %shr30 = lshr i32 %and29, %ch_count_shift.0
  %ch_limit = getelementptr inbounds %struct.xlnx_pcm_stream_param, ptr %call7.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %ch_limit to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shr30, ptr %ch_limit, align 4
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %30 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %stream, align 4
  %interleaved33 = getelementptr inbounds %struct.xlnx_pcm_stream_param, ptr %call7.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %interleaved33 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %interleaved33, align 4, !range !124
  %34 = zext i8 %33 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef nonnull @.str.31, i32 noundef %31, i32 noundef %34, i32 noundef %shr, i32 noundef %shr30) #9
  %call37 = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %substream, ptr noundef nonnull @xlnx_pcm_hardware) #6
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %35 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i, ptr %private_data, align 8
  %call38 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %1, i32 noundef 0, i32 noundef 14, i32 noundef 64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end45, label %do.end43

do.end43:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.35) #9
  br label %cleanup

if.end45:                                         ; preds = %if.end27
  %call46 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %1, i32 noundef 0, i32 noundef 18, i32 noundef 64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end53, label %do.end51

do.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.38) #9
  br label %cleanup

if.end53:                                         ; preds = %if.end45
  %call54 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %1, i32 noundef 15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %do.end60, label %if.end62

do.end60:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.41) #9
  br label %cleanup

if.end62:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call7.i.i, align 8
  %add.ptr66 = getelementptr i8, ptr %43, i32 16
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !130
  %45 = or i32 %44, 2097152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !131
  tail call void @arm_heavy_mb() #6
  %46 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call7.i.i, align 8
  %add.ptr74 = getelementptr i8, ptr %47, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 %45) #6, !srcloc !119
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %do.end60, %do.end51, %do.end43, %if.end7.cleanup_crit_edge, %land.lhs.true4.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call38, %do.end43 ], [ %call46, %do.end51 ], [ %call54, %do.end60 ], [ 0, %if.end62 ], [ -19, %land.lhs.true.cleanup_crit_edge ], [ -19, %land.lhs.true4.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlnx_formatter_pcm_close(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  %7 = or i32 %6, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #6, !srcloc !119
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %9 = and i32 %8, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not26.i = icmp eq i32 %9, 0
  br i1 %tobool.not26.i, label %entry.if.end_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %retries.028.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #6
  %inc.i = add nuw nsw i32 %retries.028.i, 1
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  %12 = and i32 %11, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  %tobool.not.not.i = xor i1 %tobool.not.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %retries.028.i)
  %cmp.i = icmp ult i32 %retries.028.i, 99
  %or.cond.i = select i1 %tobool.not.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %while.end.loopexit.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.end.loopexit.i:                             ; preds = %while.body.i
  br i1 %tobool.not.i, label %while.end.loopexit.i.if.end_crit_edge, label %do.end

while.end.loopexit.i.if.end_crit_edge:            ; preds = %while.end.loopexit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %while.end.loopexit.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.14) #9
  br label %err_reset

if.end:                                           ; preds = %while.end.loopexit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 8
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %17 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stream, align 4
  %add.ptr.i5 = getelementptr i8, ptr %16, i32 16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  %20 = and i32 %19, -2097153
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i6 = icmp eq i32 %18, 1
  %and2.i = and i32 %21, -24577
  %spec.select.i = select i1 %cmp.i6, i32 %and2.i, i32 %21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %22 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %22) #6, !srcloc !119
  br label %err_reset

err_reset:                                        ; preds = %if.end, %do.end
  tail call void @kfree(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlnx_formatter_pcm_hw_params(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %ch_limit = getelementptr inbounds %struct.xlnx_pcm_stream_param, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %ch_limit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ch_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp ugt i32 %5, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %8 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp2 = icmp eq i32 %9, 1
  br i1 %cmp2, label %land.lhs.true, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end
  %xfer_mode = getelementptr inbounds %struct.xlnx_pcm_stream_param, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %xfer_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xfer_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp3 = icmp eq i32 %11, 1
  br i1 %cmp3, label %if.then4, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then4:                                         ; preds = %land.lhs.true
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %add.ptr = getelementptr i8, ptr %13, i32 20
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !132
  %15 = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.then4.if.end24_crit_edge, label %if.then7

if.then4.if.end24_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then7:                                         ; preds = %if.then4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 8
  %add.ptr11 = getelementptr i8, ptr %17, i32 44
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #6, !srcloc !115
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 8
  %add.ptr19 = getelementptr i8, ptr %21, i32 48
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #6, !srcloc !115
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !134
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %and.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then7
  %shr.i = lshr i32 %19, 16
  %and5.i = lshr i32 %19, 6
  %26 = and i32 %and5.i, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.xlnx_formatter_pcm_hw_params, i32 0, i32 %26
  %27 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %27)
  %switch.load = load i32, ptr %switch.gep, align 4
  %and10.i = and i32 %shr.i, 7
  %28 = zext i32 %and10.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %and10.i, label %if.then.i.log_params.i_crit_edge [
    i32 0, label %if.then.i.sw.epilog14.i_crit_edge
    i32 2, label %if.then.i.sw.epilog14.i_crit_edge119
    i32 4, label %sw.bb12.i
  ]

if.then.i.sw.epilog14.i_crit_edge119:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog14.i

if.then.i.sw.epilog14.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog14.i

if.then.i.log_params.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %log_params.i

sw.bb12.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog14.i

sw.epilog14.i:                                    ; preds = %sw.bb12.i, %if.then.i.sw.epilog14.i_crit_edge, %if.then.i.sw.epilog14.i_crit_edge119
  %padded.0.i = phi i32 [ 4, %sw.bb12.i ], [ 0, %if.then.i.sw.epilog14.i_crit_edge ], [ 0, %if.then.i.sw.epilog14.i_crit_edge119 ]
  %and16.i = lshr i32 %19, 19
  %29 = and i32 %and16.i, 7
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %29, label %sw.epilog14.i.log_params.i_crit_edge [
    i32 6, label %sw.bb17.i
    i32 2, label %sw.bb18.i
    i32 4, label %sw.bb20.i
    i32 5, label %sw.bb22.i
  ]

sw.epilog14.i.log_params.i_crit_edge:             ; preds = %sw.epilog14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %log_params.i

sw.bb17.i:                                        ; preds = %sw.epilog14.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = or i32 %padded.0.i, 16
  br label %log_params.i

sw.bb18.i:                                        ; preds = %sw.epilog14.i
  call void @__sanitizer_cov_trace_pc() #8
  %add19.i = or i32 %padded.0.i, 18
  br label %log_params.i

sw.bb20.i:                                        ; preds = %sw.epilog14.i
  call void @__sanitizer_cov_trace_pc() #8
  %add21.i = or i32 %padded.0.i, 19
  br label %log_params.i

sw.bb22.i:                                        ; preds = %sw.epilog14.i
  call void @__sanitizer_cov_trace_pc() #8
  %add23.i = add nuw nsw i32 %padded.0.i, 20
  br label %log_params.i

if.else.i:                                        ; preds = %if.then7
  %shr27.i = lshr i32 %19, 24
  %and33.i = and i32 %shr27.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and33.i)
  %31 = icmp ult i32 %and33.i, 4
  br i1 %31, label %switch.lookup, label %if.else.i.sw.epilog38.i_crit_edge

if.else.i.sw.epilog38.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog38.i

switch.lookup:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep117 = getelementptr inbounds [4 x i32], ptr @switch.table.xlnx_formatter_pcm_hw_params.56, i32 0, i32 %and33.i
  %32 = ptrtoint ptr %switch.gep117 to i32
  call void @__asan_load4_noabort(i32 %32)
  %switch.load118 = load i32, ptr %switch.gep117, align 4
  br label %sw.epilog38.i

sw.epilog38.i:                                    ; preds = %switch.lookup, %if.else.i.sw.epilog38.i_crit_edge
  %srate.1.i = phi i32 [ %switch.load118, %switch.lookup ], [ 0, %if.else.i.sw.epilog38.i_crit_edge ]
  %and40.i = shl i32 %23, 2
  %33 = and i32 %and40.i, 4
  %and45.i = and i32 %23, 14
  %34 = zext i32 %and45.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %and45.i, label %sw.epilog38.i.log_params.i_crit_edge [
    i32 2, label %sw.bb46.i
    i32 4, label %sw.bb48.i
    i32 8, label %sw.bb50.i
    i32 10, label %sw.bb52.i
    i32 12, label %sw.bb54.i
  ]

sw.epilog38.i.log_params.i_crit_edge:             ; preds = %sw.epilog38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %log_params.i

sw.bb46.i:                                        ; preds = %sw.epilog38.i
  call void @__sanitizer_cov_trace_pc() #8
  %add47.i = or i32 %33, 16
  br label %log_params.i

sw.bb48.i:                                        ; preds = %sw.epilog38.i
  call void @__sanitizer_cov_trace_pc() #8
  %add49.i = or i32 %33, 18
  br label %log_params.i

sw.bb50.i:                                        ; preds = %sw.epilog38.i
  call void @__sanitizer_cov_trace_pc() #8
  %add51.i = or i32 %33, 19
  br label %log_params.i

sw.bb52.i:                                        ; preds = %sw.epilog38.i
  call void @__sanitizer_cov_trace_pc() #8
  %add53.i = add nuw nsw i32 %33, 20
  br label %log_params.i

sw.bb54.i:                                        ; preds = %sw.epilog38.i
  call void @__sanitizer_cov_trace_pc() #8
  %add55.i = or i32 %33, 17
  br label %log_params.i

log_params.i:                                     ; preds = %sw.bb54.i, %sw.bb52.i, %sw.bb50.i, %sw.bb48.i, %sw.bb46.i, %sw.epilog38.i.log_params.i_crit_edge, %sw.bb22.i, %sw.bb20.i, %sw.bb18.i, %sw.bb17.i, %sw.epilog14.i.log_params.i_crit_edge, %if.then.i.log_params.i_crit_edge
  %srate.2.i = phi i32 [ %switch.load, %sw.bb22.i ], [ %switch.load, %sw.bb20.i ], [ %switch.load, %sw.bb18.i ], [ %switch.load, %sw.bb17.i ], [ %srate.1.i, %sw.bb54.i ], [ %srate.1.i, %sw.bb52.i ], [ %srate.1.i, %sw.bb50.i ], [ %srate.1.i, %sw.bb48.i ], [ %srate.1.i, %sw.bb46.i ], [ %switch.load, %if.then.i.log_params.i_crit_edge ], [ %switch.load, %sw.epilog14.i.log_params.i_crit_edge ], [ %srate.1.i, %sw.epilog38.i.log_params.i_crit_edge ]
  %bit_depth.0.i = phi i32 [ %add23.i, %sw.bb22.i ], [ %add21.i, %sw.bb20.i ], [ %add19.i, %sw.bb18.i ], [ %add.i, %sw.bb17.i ], [ %add55.i, %sw.bb54.i ], [ %add53.i, %sw.bb52.i ], [ %add51.i, %sw.bb50.i ], [ %add49.i, %sw.bb48.i ], [ %add47.i, %sw.bb46.i ], [ 0, %if.then.i.log_params.i_crit_edge ], [ 0, %sw.epilog14.i.log_params.i_crit_edge ], [ 0, %sw.epilog38.i.log_params.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %srate.2.i)
  %cmp.not.i = icmp eq i32 %srate.2.i, 0
  br i1 %cmp.not.i, label %do.end64.i, label %do.end.i

do.end.i:                                         ; preds = %log_params.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.44, i32 noundef %srate.2.i) #9
  br label %if.end65.i

do.end64.i:                                       ; preds = %log_params.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.47) #9
  br label %if.end65.i

if.end65.i:                                       ; preds = %do.end64.i, %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bit_depth.0.i)
  %cmp66.not.i = icmp eq i32 %bit_depth.0.i, 0
  br i1 %cmp66.not.i, label %do.end74.i, label %do.end70.i

do.end70.i:                                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.50, i32 noundef %bit_depth.0.i) #9
  br label %if.end24

do.end74.i:                                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.53) #9
  br label %if.end24

if.end24:                                         ; preds = %do.end74.i, %do.end70.i, %if.then4.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %arrayidx.i.i113 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 10
  %35 = ptrtoint ptr %arrayidx.i.i113 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i113, align 4
  %conv = zext i32 %36 to i64
  %buffer_size = getelementptr inbounds %struct.xlnx_pcm_stream_param, ptr %3, i32 0, i32 4
  %37 = ptrtoint ptr %buffer_size to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv, ptr %buffer_size, align 8
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 51
  %38 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma_addr, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  tail call void @arm_heavy_mb() #6
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %3, align 8
  %add.ptr30 = getelementptr i8, ptr %42, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %40) #6, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !136
  tail call void @arm_heavy_mb() #6
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %3, align 8
  %add.ptr35 = getelementptr i8, ptr %44, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 0) #6, !srcloc !119
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %3, align 8
  %add.ptr39 = getelementptr i8, ptr %46, i32 16
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #6, !srcloc !115
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !137
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i.i.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.end24.if.then.i.i.i_crit_edge

if.end24.if.then.i.i.i_crit_edge:                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.end24.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.end24.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %50, %if.end24.if.then.i.i.i_crit_edge ], [ %53, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %51 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #6, !range !138
  %add.i.i.i = or i32 %51, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.end24
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.1.i.i.i = icmp eq i32 %53, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #6
  %54 = add i32 %call1.i, -8
  %55 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 30)
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %55, label %params_width.exit.cleanup_crit_edge [
    i32 0, label %params_width.exit.sw.epilog_crit_edge
    i32 2, label %sw.bb44
    i32 3, label %sw.bb46
    i32 4, label %sw.bb48
    i32 6, label %sw.bb50
  ]

params_width.exit.sw.epilog_crit_edge:            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb44:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  %or45 = or i32 %48, 65536
  br label %sw.epilog

sw.bb46:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  %or47 = or i32 %48, 131072
  br label %sw.epilog

sw.bb48:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  %or49 = or i32 %48, 196608
  br label %sw.epilog

sw.bb50:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  %or51 = or i32 %48, 262144
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb50, %sw.bb48, %sw.bb46, %sw.bb44, %params_width.exit.sw.epilog_crit_edge
  %val.0 = phi i32 [ %or51, %sw.bb50 ], [ %or49, %sw.bb48 ], [ %or47, %sw.bb46 ], [ %or45, %sw.bb44 ], [ %48, %params_width.exit.sw.epilog_crit_edge ]
  %shl = shl i32 %5, 19
  %or52 = or i32 %val.0, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  tail call void @arm_heavy_mb() #6
  %57 = tail call i32 @llvm.bswap.i32(i32 %or52)
  %58 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %3, align 8
  %add.ptr57 = getelementptr i8, ptr %59, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %57) #6, !srcloc !119
  %arrayidx.i.i114 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 7
  %60 = ptrtoint ptr %arrayidx.i.i114 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i.i114, align 4
  %shl59 = shl i32 %61, 16
  %arrayidx.i.i115 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 6
  %62 = ptrtoint ptr %arrayidx.i.i115 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i.i115, align 4
  %or61 = or i32 %shl59, %63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  tail call void @arm_heavy_mb() #6
  %64 = tail call i32 @llvm.bswap.i32(i32 %or61)
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %3, align 8
  %add.ptr66 = getelementptr i8, ptr %66, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 %64) #6, !srcloc !119
  %67 = ptrtoint ptr %arrayidx.i.i115 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i.i115, align 4
  %add = add i32 %5, -1
  %sub = add i32 %add, %68
  %div = udiv i32 %sub, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !141
  tail call void @arm_heavy_mb() #6
  %69 = tail call i32 @llvm.bswap.i32(i32 %div)
  %70 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %3, align 8
  %add.ptr72 = getelementptr i8, ptr %71, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 %69) #6, !srcloc !119
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %params_width.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -22, %params_width.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlnx_formatter_pcm_trigger(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge23
    i32 6, label %entry.sw.bb_crit_edge24
    i32 0, label %entry.sw.bb4_crit_edge
    i32 3, label %entry.sw.bb4_crit_edge25
    i32 5, label %entry.sw.bb4_crit_edge26
  ]

entry.sw.bb4_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

entry.sw.bb4_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

entry.sw.bb_crit_edge24:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge23:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge23, %entry.sw.bb_crit_edge24
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !142
  %8 = or i32 %7, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  %add.ptr3 = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %8) #6, !srcloc !119
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge25, %entry.sw.bb4_crit_edge26
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  %add.ptr8 = getelementptr i8, ptr %12, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %14 = and i32 %13, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !145
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 8
  %add.ptr16 = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %14) #6, !srcloc !119
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlnx_formatter_pcm_pointer(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !115
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %conv = zext i32 %7 to i64
  %buffer_size = getelementptr inbounds %struct.xlnx_pcm_stream_param, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %buffer_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %conv)
  %cmp.not = icmp ugt i64 %9, %conv
  %.op = shl i32 %7, 3
  %mul.i = select i1 %cmp.not, i32 %.op, i32 0
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %10 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %11
  ret i32 %div.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !40, !41, !42, !44, !45, !47, !49, !51, !52, !53, !55, !56, !57, !59, !61, !63, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @__initcall__kmod_snd_soc_xlnx_formatter_pcm__238_699_xlnx_formatter_pcm_driver_init6, !1, !"__initcall__kmod_snd_soc_xlnx_formatter_pcm__238_699_xlnx_formatter_pcm_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/xilinx/xlnx_formatter_pcm.c", i32 699, i32 1}
!2 = !{ptr @__exitcall_xlnx_formatter_pcm_driver_exit, !1, !"__exitcall_xlnx_formatter_pcm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author239, !4, !"__UNIQUE_ID_author239", i1 false, i1 false}
!4 = !{!"../sound/soc/xilinx/xlnx_formatter_pcm.c", i32 700, i32 1}
!5 = !{ptr @__UNIQUE_ID_file240, !6, !"__UNIQUE_ID_file240", i1 false, i1 false}
!6 = !{!"../sound/soc/xilinx/xlnx_formatter_pcm.c", i32 701, i32 1}
!7 = !{ptr @__UNIQUE_ID_license241, !6, !"__UNIQUE_ID_license241", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/xilinx/xlnx_formatter_pcm.c", i32 694, i32 11}
!10 = !{ptr @xlnx_formatter_pcm_driver, !11, !"xlnx_formatter_pcm_driver", i1 false, i1 false}
!11 = !{!"../sound/soc/xilinx/xlnx_formatter_pcm.c", i32 690, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/xilinx/xlnx_formatter_pcm.c", i32 574, i32 44}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/xilinx/xlnx_formatter_pcm.c", i32 577, i32 3}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @xlnx_formatter_pcm_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @xlnx_formatter_pcm_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/xilinx/xlnx_formatter_pcm.c", i32 582, i32 3}
!24 = !{ptr @xlnx_formatter_pcm_probe._entry.7, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @xlnx_formatter_pcm_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/xilinx/xlnx_formatter_pcm.c", i32 589, i32 3}
!28 = !{ptr @xlnx_formatter_pcm_probe._entry.10, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @xlnx_formatter_pcm_probe._entry_ptr.12, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/xilinx/xlnx_formatter_pcm.c", i32 600, i32 4}
!32 = !{ptr @xlnx_formatter_pcm_probe._entry.13, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @xlnx_formatter_pcm_probe._entry_ptr.15, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/xilinx/xlnx_formatter_pcm.c", i32 608, i32 10}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/xilinx/xlnx_formatter_pcm.c", i32 615, i32 12}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/xilinx/xlnx_formatter_pcm.c", i32 617, i32 4}
!40 = !{ptr @xlnx_formatter_pcm_probe._entry.18, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @xlnx_formatter_pcm_probe._entry_ptr.20, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @xlnx_formatter_pcm_probe._entry.21, !43, !"_entry", i1 false, i1 false}
!43 = !{!"../sound/soc/xilinx/xlnx_formatter_pcm.c", i32 626, i32 4}
!44 = !{ptr @xlnx_formatter_pcm_probe._entry_ptr.22, !43, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/xilinx/xlnx_formatter_pcm.c", i32 634, i32 10}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/xilinx/xlnx_formatter_pcm.c", i32 641, i32 12}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/xilinx/xlnx_formatter_pcm.c", i32 644, i32 4}
!51 = !{ptr @xlnx_formatter_pcm_probe._entry.25, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @xlnx_formatter_pcm_probe._entry_ptr.27, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/xilinx/xlnx_formatter_pcm.c", i32 654, i32 3}
!55 = !{ptr @xlnx_formatter_pcm_probe._entry.28, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @xlnx_formatter_pcm_probe._entry_ptr.30, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @xlnx_asoc_component, !58, !"xlnx_asoc_component", i1 false, i1 false}
!58 = !{!"../sound/soc/xilinx/xlnx_formatter_pcm.c", i32 553, i32 46}
!59 = !{ptr @xlnx_pcm_hardware, !60, !"xlnx_pcm_hardware", i1 false, i1 false}
!60 = !{!"../sound/soc/xilinx/xlnx_formatter_pcm.c", i32 105, i32 38}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/xilinx/xlnx_formatter_pcm.c", i32 364, i32 2}
!63 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @xlnx_formatter_pcm_open._entry, !62, !"_entry", i1 false, i1 false}
!66 = !{ptr @xlnx_formatter_pcm_open._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/xilinx/xlnx_formatter_pcm.c", i32 377, i32 3}
!69 = !{ptr @xlnx_formatter_pcm_open._entry.34, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @xlnx_formatter_pcm_open._entry_ptr.36, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/xilinx/xlnx_formatter_pcm.c", i32 387, i32 3}
!73 = !{ptr @xlnx_formatter_pcm_open._entry.37, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @xlnx_formatter_pcm_open._entry_ptr.39, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/xilinx/xlnx_formatter_pcm.c", i32 396, i32 3}
!77 = !{ptr @xlnx_formatter_pcm_open._entry.40, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @xlnx_formatter_pcm_open._entry_ptr.42, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/xilinx/xlnx_formatter_pcm.c", i32 418, i32 3}
!81 = !{ptr @xlnx_formatter_pcm_close._entry, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @xlnx_formatter_pcm_close._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/xilinx/xlnx_formatter_pcm.c", i32 236, i32 3}
!85 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @xlnx_parse_aes_params._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @xlnx_parse_aes_params._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/xilinx/xlnx_formatter_pcm.c", i32 238, i32 3}
!90 = !{ptr @xlnx_parse_aes_params._entry.46, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @xlnx_parse_aes_params._entry_ptr.48, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/xilinx/xlnx_formatter_pcm.c", i32 241, i32 3}
!94 = !{ptr @xlnx_parse_aes_params._entry.49, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @xlnx_parse_aes_params._entry_ptr.51, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.53, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/xilinx/xlnx_formatter_pcm.c", i32 243, i32 3}
!98 = !{ptr @xlnx_parse_aes_params._entry.52, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @xlnx_parse_aes_params._entry_ptr.54, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.55, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/xilinx/xlnx_formatter_pcm.c", i32 678, i32 3}
!102 = !{ptr @xlnx_formatter_pcm_remove._entry, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @xlnx_formatter_pcm_remove._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @xlnx_formatter_pcm_of_match, !105, !"xlnx_formatter_pcm_of_match", i1 false, i1 false}
!105 = !{!"../sound/soc/xilinx/xlnx_formatter_pcm.c", i32 684, i32 34}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{i64 2045880}
!116 = !{i64 2154895653}
!117 = !{i64 2154862931}
!118 = !{i64 2154863231}
!119 = !{i64 2045462}
!120 = !{i64 2154863892}
!121 = !{i64 2154865749}
!122 = !{i64 2154866321}
!123 = !{i64 2154866707}
!124 = !{i8 0, i8 2}
!125 = !{i64 2154867322}
!126 = !{i64 2154867721}
!127 = !{i64 2154868412}
!128 = !{i64 2154868811}
!129 = !{i64 2154872691}
!130 = !{i64 2154880660}
!131 = !{i64 2154880970}
!132 = !{i64 2154883860}
!133 = !{i64 2154884463}
!134 = !{i64 2154885006}
!135 = !{i64 2154885321}
!136 = !{i64 2154885730}
!137 = !{i64 2154886434}
!138 = !{i32 0, i32 33}
!139 = !{i64 2154886681}
!140 = !{i64 2154887092}
!141 = !{i64 2154887603}
!142 = !{i64 2154888337}
!143 = !{i64 2154888645}
!144 = !{i64 2154889352}
!145 = !{i64 2154889660}
!146 = !{i64 2154883338}
