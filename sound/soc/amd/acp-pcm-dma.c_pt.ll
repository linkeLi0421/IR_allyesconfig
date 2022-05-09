; ModuleID = '/llk/IR_all_yes/sound/soc/amd/acp-pcm-dma.c_pt.bc'
source_filename = "../sound/soc/amd/acp-pcm-dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+acp_bt_uart_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_acp_bt_uart_enable\09\09\09\09"
module asm "\09.long\09__crc_acp_bt_uart_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_acp_bt_uart_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22acp_bt_uart_enable\22\09\09\09\09\09"
module asm "__kstrtabns_acp_bt_uart_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.audio_drv_data = type { ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
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
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.audio_substream_data = type { i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i64, ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.acp_platform_info = type { i16, i16, i16 }

@acp_bt_uart_enable = dso_local global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__kstrtab_acp_bt_uart_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_acp_bt_uart_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_acp_bt_uart_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @acp_bt_uart_enable to i32), ptr @__kstrtab_acp_bt_uart_enable, ptr @__kstrtabns_acp_bt_uart_enable }, section "___ksymtab+acp_bt_uart_enable", align 4
@__initcall__kmod_acp_audio_dma__239_1395_acp_dma_driver_init6 = internal global ptr @acp_dma_driver_init, section ".initcall6.init", align 4
@acp_dma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @acp_audio_probe, ptr @acp_audio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @acp_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_acp_dma_driver_exit = internal global ptr @acp_dma_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author240 = internal constant [46 x i8] c"acp_audio_dma.author=Vijendar.Mukunda@amd.com\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [49 x i8] c"acp_audio_dma.author=Maruthi.Bayyavarapu@amd.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [45 x i8] c"acp_audio_dma.description=AMD ACP PCM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [47 x i8] c"acp_audio_dma.file=sound/soc/amd/acp_audio_dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [29 x i8] c"acp_audio_dma.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias245 = internal constant [43 x i8] c"acp_audio_dma.alias=platform:acp_audio_dma\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"acp_audio_dma\00", [18 x i8] zeroinitializer }, align 32
@acp_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @acp_pcm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @acp_pcm_runtime_suspend, ptr @acp_pcm_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@acp_audio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1226, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Missing platform data\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"acp_audio_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/soc/amd/acp-pcm-dma.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@acp_audio_probe._entry_ptr = internal global ptr @acp_audio_probe._entry, section ".printk_index", align 4
@acp_audio_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1254, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IORESOURCE_IRQ FAILED\0A\00", [41 x i8] zeroinitializer }, align 32
@acp_audio_probe._entry_ptr.8 = internal global ptr @acp_audio_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ACP_IRQ\00", [24 x i8] zeroinitializer }, align 32
@acp_audio_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1261, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ACP IRQ request failed\0A\00", [40 x i8] zeroinitializer }, align 32
@acp_audio_probe._entry_ptr.12 = internal global ptr @acp_audio_probe._entry.10, section ".printk_index", align 4
@acp_audio_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1270, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ACP Init failed status:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@acp_audio_probe._entry_ptr.15 = internal global ptr @acp_audio_probe._entry.13, section ".printk_index", align 4
@acp_asoc_platform = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @acp_dma_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @acp_dma_open, ptr @acp_dma_close, ptr null, ptr @acp_dma_hw_params, ptr null, ptr @acp_dma_prepare, ptr @acp_dma_trigger, ptr null, ptr @acp_dma_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @acp_dma_delay, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@acp_audio_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1277, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Fail to register ALSA platform device\0A\00", [57 x i8] zeroinitializer }, align 32
@acp_audio_probe._entry_ptr.18 = internal global ptr @acp_audio_probe._entry.16, section ".printk_index", align 4
@acp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013Failed to reset ACP\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"acp_init\00", [23 x i8] zeroinitializer }, align 32
@acp_init._entry_ptr = internal global ptr @acp_init._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@acp_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@acp_init._entry_ptr.22 = internal global ptr @acp_init._entry.21, section ".printk_index", align 4
@acp_set_sram_bank_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013ACP SRAM bank %d state change failed\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"acp_set_sram_bank_state\00", [40 x i8] zeroinitializer }, align 32
@acp_set_sram_bank_state._entry_ptr = internal global ptr @acp_set_sram_bank_state._entry, section ".printk_index", align 4
@acp_st_pcm_hardware_playback = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 852243, i64 1092, i32 2046, i32 8000, i32 96000, i32 1, i32 8, i32 8192, i32 1024, i32 4096, i32 2, i32 2, i32 0 }, [32 x i8] zeroinitializer }, align 32
@acp_pcm_hardware_playback = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 852243, i64 1092, i32 2046, i32 8000, i32 96000, i32 1, i32 8, i32 32768, i32 1024, i32 16384, i32 2, i32 2, i32 0 }, [32 x i8] zeroinitializer }, align 32
@acp_st_pcm_hardware_capture = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 852243, i64 1092, i32 254, i32 8000, i32 48000, i32 1, i32 2, i32 8192, i32 1024, i32 4096, i32 2, i32 2, i32 0 }, [32 x i8] zeroinitializer }, align 32
@acp_pcm_hardware_capture = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 852243, i64 1092, i32 254, i32 8000, i32 48000, i32 1, i32 2, i32 32768, i32 1024, i32 16384, i32 2, i32 2, i32 0 }, [32 x i8] zeroinitializer }, align 32
@acp_dma_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 795, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"set integer constraint failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"acp_dma_open\00", [19 x i8] zeroinitializer }, align 32
@acp_dma_open._entry_ptr = internal global ptr @acp_dma_open._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pre_config_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Failed to clear reset of channel : %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pre_config_reset\00", [47 x i8] zeroinitializer }, align 32
@pre_config_reset._entry_ptr = internal global ptr @pre_config_reset._entry, section ".printk_index", align 4
@acp_dma_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Failed to stop ACP DMA channel : %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"acp_dma_stop\00", [19 x i8] zeroinitializer }, align 32
@acp_dma_stop._entry_ptr = internal global ptr @acp_dma_stop._entry, section ".printk_index", align 4
@acp_audio_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 1295, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ACP Deinit failed status:%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"acp_audio_remove\00", [47 x i8] zeroinitializer }, align 32
@acp_audio_remove._entry_ptr = internal global ptr @acp_audio_remove._entry, section ".printk_index", align 4
@acp_deinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.33, ptr @.str.3, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"acp_deinit\00", [21 x i8] zeroinitializer }, align 32
@acp_deinit._entry_ptr = internal global ptr @acp_deinit._entry, section ".printk_index", align 4
@acp_deinit._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.33, ptr @.str.3, i32 680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@acp_deinit._entry_ptr.35 = internal global ptr @acp_deinit._entry.34, section ".printk_index", align 4
@acp_pcm_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.36, ptr @.str.3, i32 1310, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"acp_pcm_resume\00", [17 x i8] zeroinitializer }, align 32
@acp_pcm_resume._entry_ptr = internal global ptr @acp_pcm_resume._entry, section ".printk_index", align 4
@acp_pcm_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.37, ptr @.str.3, i32 1361, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"acp_pcm_runtime_suspend\00", [40 x i8] zeroinitializer }, align 32
@acp_pcm_runtime_suspend._entry_ptr = internal global ptr @acp_pcm_runtime_suspend._entry, section ".printk_index", align 4
@acp_pcm_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.38, ptr @.str.3, i32 1373, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"acp_pcm_runtime_resume\00", [41 x i8] zeroinitializer }, align 32
@acp_pcm_runtime_resume._entry_ptr = internal global ptr @acp_pcm_runtime_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 16, i64 9, i64 10, i64 13, i64 14]
@__sancov_gen_cov_switch_values.40 = internal global [6 x i64] [i64 4, i64 16, i64 9, i64 10, i64 13, i64 14]
@__sancov_gen_cov_switch_values.41 = internal global [6 x i64] [i64 4, i64 16, i64 9, i64 10, i64 13, i64 14]
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c"acp_bt_uart_enable\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 39, i32 6 }
@___asan_gen_.45 = private unnamed_addr constant [15 x i8] c"acp_dma_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1386, i32 31 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1390, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [11 x i8] c"acp_pm_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1380, i32 32 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1226, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1254, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1259, i32 10 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1261, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1270, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [18 x i8] c"acp_asoc_platform\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1206, i32 46 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1277, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 569, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 587, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 543, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant [29 x i8] c"acp_st_pcm_hardware_playback\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 80, i32 38 }
@___asan_gen_.126 = private unnamed_addr constant [26 x i8] c"acp_pcm_hardware_playback\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 42, i32 38 }
@___asan_gen_.129 = private unnamed_addr constant [28 x i8] c"acp_st_pcm_hardware_capture\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 99, i32 38 }
@___asan_gen_.132 = private unnamed_addr constant [25 x i8] c"acp_pcm_hardware_capture\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 61, i32 38 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 795, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 195, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 495, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1295, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 663, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 680, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1310, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1361, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.196 = private constant [31 x i8] c"../sound/soc/amd/acp-pcm-dma.c\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1373, i32 3 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @__UNIQUE_ID_alias245, ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_acp_dma_driver_exit, ptr @__initcall__kmod_acp_audio_dma__239_1395_acp_dma_driver_init6, ptr @__ksymtab_acp_bt_uart_enable, ptr @acp_audio_probe._entry, ptr @acp_audio_probe._entry.10, ptr @acp_audio_probe._entry.13, ptr @acp_audio_probe._entry.16, ptr @acp_audio_probe._entry.6, ptr @acp_audio_probe._entry_ptr, ptr @acp_audio_probe._entry_ptr.12, ptr @acp_audio_probe._entry_ptr.15, ptr @acp_audio_probe._entry_ptr.18, ptr @acp_audio_probe._entry_ptr.8, ptr @acp_audio_remove._entry, ptr @acp_audio_remove._entry_ptr, ptr @acp_deinit._entry, ptr @acp_deinit._entry.34, ptr @acp_deinit._entry_ptr, ptr @acp_deinit._entry_ptr.35, ptr @acp_dma_driver_exit, ptr @acp_dma_open._entry, ptr @acp_dma_open._entry_ptr, ptr @acp_dma_stop._entry, ptr @acp_dma_stop._entry_ptr, ptr @acp_init._entry, ptr @acp_init._entry.21, ptr @acp_init._entry_ptr, ptr @acp_init._entry_ptr.22, ptr @acp_pcm_resume._entry, ptr @acp_pcm_resume._entry_ptr, ptr @acp_pcm_runtime_resume._entry, ptr @acp_pcm_runtime_resume._entry_ptr, ptr @acp_pcm_runtime_suspend._entry, ptr @acp_pcm_runtime_suspend._entry_ptr, ptr @acp_set_sram_bank_state._entry, ptr @acp_set_sram_bank_state._entry_ptr, ptr @pre_config_reset._entry, ptr @pre_config_reset._entry_ptr, ptr @acp_bt_uart_enable, ptr @acp_dma_driver, ptr @.str, ptr @acp_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @acp_asoc_platform, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @acp_st_pcm_hardware_playback, ptr @acp_pcm_hardware_playback, ptr @acp_st_pcm_hardware_capture, ptr @acp_pcm_hardware_capture, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_bt_uart_enable to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_dma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_audio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_audio_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_audio_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_audio_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_asoc_platform to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_audio_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_set_sram_bank_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_st_pcm_hardware_playback to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_pcm_hardware_playback to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_st_pcm_hardware_capture to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_pcm_hardware_capture to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_dma_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pre_config_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_dma_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_audio_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_deinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_deinit._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_pcm_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_pcm_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_pcm_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @acp_dma_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @acp_dma_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @acp_dma_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @acp_dma_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acp_audio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #7
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %acp_mmio = getelementptr inbounds %struct.audio_drv_data, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call6, ptr %acp_mmio, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %4 = call ptr @memset(ptr %call.i, i32 0, i32 16)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %asic_type = getelementptr inbounds %struct.audio_drv_data, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %asic_type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %asic_type, align 4
  %call13 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.end18, label %if.end20

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %8 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call13, align 4
  %call.i91 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %9, ptr noundef nonnull @dma_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool24.not = icmp eq i32 %call.i91, 0
  br i1 %tobool24.not, label %if.end30, label %do.end28

do.end28:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end30:                                         ; preds = %if.end20
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i, align 4
  %11 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %acp_mmio, align 4
  %13 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %asic_type, align 4
  %call34 = tail call fastcc i32 @acp_init(ptr noundef %12, i32 noundef %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end41, label %do.end39

do.end39:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call34) #10
  br label %cleanup

if.end41:                                         ; preds = %if.end30
  %call43 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @acp_asoc_platform, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp.not = icmp eq i32 %call43, 0
  br i1 %cmp.not, label %if.end49, label %do.end47

do.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end49:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 10000) #7
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #7
  tail call void @pm_runtime_enable(ptr noundef %dev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %do.end47, %do.end39, %do.end28, %do.end18, %if.then9, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %3, %if.then9 ], [ %call.i91, %do.end28 ], [ %call34, %do.end39 ], [ %call43, %do.end47 ], [ 0, %if.end49 ], [ -19, %do.end18 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acp_audio_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %acp_mmio = getelementptr inbounds %struct.audio_drv_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acp_mmio, align 4
  %call1 = tail call fastcc i32 @acp_deinit(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %call1) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %arg, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %acp_mmio1 = getelementptr inbounds %struct.audio_drv_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %acp_mmio1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acp_mmio1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 83320
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !121
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %shr = lshr i32 %5, 16
  %and3 = and i32 %shr, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %cmp.not = icmp eq i32 %and3, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %7) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %8 = lshr exact i32 %and3, 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #7, !srcloc !124
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = xor i1 %cmp.not, true
  %and5 = and i32 %shr, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %cmp6.not = icmp eq i32 %and5, 0
  br i1 %cmp6.not, label %if.end.if.end10_crit_edge, label %if.then7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %play_i2sbt_stream = getelementptr inbounds %struct.audio_drv_data, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %play_i2sbt_stream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %play_i2sbt_stream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %11) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %12 = lshr exact i32 %and5, 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #7, !srcloc !124
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  %valid_irq.1.off0 = phi i1 [ true, %if.then7 ], [ %9, %if.end.if.end10_crit_edge ]
  %and11 = and i32 %shr, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %cmp12.not = icmp eq i32 %and11, 0
  br i1 %cmp12.not, label %if.end20, label %if.end20.thread

if.end20:                                         ; preds = %if.end10
  %and21 = and i32 %shr, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %cmp22.not = icmp eq i32 %and21, 0
  br i1 %cmp22.not, label %if.end31, label %if.end20.if.end31.thread_crit_edge

if.end20.if.end31.thread_crit_edge:               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.thread

if.end20.thread:                                  ; preds = %if.end10
  %add.ptr.i68 = getelementptr i8, ptr %3, i32 82232
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %13)
  %cmp15 = icmp eq i32 %13, 100663296
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 81980
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %15 = and i32 %14, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %15) #7, !srcloc !124
  %and4.i = select i1 %cmp15, i32 83886080, i32 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %add.ptr.i4.i = getelementptr i8, ptr %3, i32 82044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %and4.i) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %add.ptr.i6.i = getelementptr i8, ptr %3, i32 82108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 16777216) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %add.ptr.i8.i = getelementptr i8, ptr %3, i32 82172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 0) #7, !srcloc !124
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %add.ptr.i18.i = getelementptr i8, ptr %3, i32 83004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 16777216) #7, !srcloc !124
  %17 = and i32 %16, -234881025
  %18 = or i32 %17, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %18) #7, !srcloc !124
  %capture_i2ssp_stream = getelementptr inbounds %struct.audio_drv_data, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %capture_i2ssp_stream to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %capture_i2ssp_stream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %20) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %21 = lshr exact i32 %and11, 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %21) #7, !srcloc !124
  %and2185 = and i32 %shr, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2185)
  %cmp22.not86 = icmp eq i32 %and2185, 0
  br i1 %cmp22.not86, label %if.end20.thread.if.end31.thread89_crit_edge, label %if.end20.thread.if.end31.thread_crit_edge

if.end20.thread.if.end31.thread_crit_edge:        ; preds = %if.end20.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.thread

if.end20.thread.if.end31.thread89_crit_edge:      ; preds = %if.end20.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.thread89

if.end31.thread:                                  ; preds = %if.end20.thread.if.end31.thread_crit_edge, %if.end20.if.end31.thread_crit_edge
  %and2188 = phi i32 [ %and2185, %if.end20.thread.if.end31.thread_crit_edge ], [ %and21, %if.end20.if.end31.thread_crit_edge ]
  %add.ptr.i71 = getelementptr i8, ptr %3, i32 82216
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 234881024, i32 %22)
  %cmp25 = icmp eq i32 %22, 234881024
  %add.ptr.i.i72 = getelementptr i8, ptr %3, i32 81964
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i72) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %24 = and i32 %23, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i72, i32 %24) #7, !srcloc !124
  %and4.i73 = select i1 %cmp25, i32 218103808, i32 201326592
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %add.ptr.i4.i74 = getelementptr i8, ptr %3, i32 82028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i74, i32 %and4.i73) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %add.ptr.i6.i75 = getelementptr i8, ptr %3, i32 82092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i75, i32 16777216) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %add.ptr.i8.i76 = getelementptr i8, ptr %3, i32 82156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i76, i32 0) #7, !srcloc !124
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i72) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %add.ptr.i18.i78 = getelementptr i8, ptr %3, i32 83004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i78, i32 16777216) #7, !srcloc !124
  %26 = and i32 %25, -234881025
  %27 = or i32 %26, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i72, i32 %27) #7, !srcloc !124
  %capture_i2sbt_stream = getelementptr inbounds %struct.audio_drv_data, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %capture_i2sbt_stream to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %capture_i2sbt_stream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %29) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %30 = lshr exact i32 %and2188, 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %30) #7, !srcloc !124
  br label %if.end31.thread89

if.end31:                                         ; preds = %if.end20
  br i1 %valid_irq.1.off0, label %if.end31.if.end31.thread89_crit_edge, label %if.end31._crit_edge

if.end31._crit_edge:                              ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %31

if.end31.if.end31.thread89_crit_edge:             ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.thread89

if.end31.thread89:                                ; preds = %if.end31.if.end31.thread89_crit_edge, %if.end31.thread, %if.end20.thread.if.end31.thread89_crit_edge
  br label %31

31:                                               ; preds = %if.end31.thread89, %if.end31._crit_edge
  %32 = phi i32 [ 1, %if.end31.thread89 ], [ 0, %if.end31._crit_edge ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @acp_init(ptr noundef %acp_mmio, i32 noundef %asic_type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %acp_mmio, i32 83152
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %1 = or i32 %0, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %1) #7, !srcloc !124
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %3 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not84 = icmp eq i32 %3, 0
  br i1 %cmp.not84, label %entry.if.end_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.end5.if.end_crit_edge, %entry.if.end_crit_edge
  %count.085 = phi i32 [ %dec, %if.end5.if.end_crit_edge ], [ 255, %entry.if.end_crit_edge ]
  %dec = add nsw i32 %count.085, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp2 = icmp eq i32 %dec, 0
  br i1 %cmp2, label %if.end.cleanup.sink.split_crit_edge, label %if.end5

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 21474800) #7
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %6 = and i32 %5, 1
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %if.end5.if.end_crit_edge, label %if.end5.while.end_crit_edge

if.end5.while.end_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end5.if.end_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.end:                                        ; preds = %if.end5.while.end_crit_edge, %entry.while.end_crit_edge
  %add.ptr.i70 = getelementptr i8, ptr %acp_mmio, i32 83140
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %8 = or i32 %7, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 %8) #7, !srcloc !124
  %add.ptr.i72 = getelementptr i8, ptr %acp_mmio, i32 83148
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i72) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not86 = icmp eq i32 %10, 0
  br i1 %tobool.not86, label %while.end.if.end13_crit_edge, label %while.end.while.end23_crit_edge

while.end.while.end23_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end23

while.end.if.end13_crit_edge:                     ; preds = %while.end
  br label %if.end13

if.end13:                                         ; preds = %if.end22.if.end13_crit_edge, %while.end.if.end13_crit_edge
  %count.187 = phi i32 [ %dec14, %if.end22.if.end13_crit_edge ], [ 255, %while.end.if.end13_crit_edge ]
  %dec14 = add nsw i32 %count.187, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec14)
  %cmp15 = icmp eq i32 %dec14, 0
  br i1 %cmp15, label %if.end13.cleanup.sink.split_crit_edge, label %if.end22

if.end13.cleanup.sink.split_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end22:                                         ; preds = %if.end13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 21474800) #7
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i72) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %13 = and i32 %12, 16777216
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.end22.if.end13_crit_edge, label %if.end22.while.end23_crit_edge

if.end22.while.end23_crit_edge:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end23

if.end22.if.end13_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

while.end23:                                      ; preds = %if.end22.while.end23_crit_edge, %while.end.while.end23_crit_edge
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %15 = and i32 %14, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #7, !srcloc !124
  %16 = load i8, ptr @acp_bt_uart_enable, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool26.not = icmp eq i8 %16, 0
  br i1 %tobool26.not, label %if.then27, label %while.end23.if.end30_crit_edge

while.end23.if.end30_crit_edge:                   ; preds = %while.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then27:                                        ; preds = %while.end23
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i75 = getelementptr i8, ptr %acp_mmio, i32 83804
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %18 = or i32 %17, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75, i32 %18) #7, !srcloc !124
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %while.end23.if.end30_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %add.ptr.i77 = getelementptr i8, ptr %acp_mmio, i32 82844
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77, i32 -1274085376) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %add.ptr.i78 = getelementptr i8, ptr %acp_mmio, i32 82892
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 -1274085376) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %add.ptr.i79 = getelementptr i8, ptr %acp_mmio, i32 82944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 1048804) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %add.ptr.i80 = getelementptr i8, ptr %acp_mmio, i32 82940
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80, i32 33554432) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %add.ptr.i81 = getelementptr i8, ptr %acp_mmio, i32 82368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81, i32 4) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %add.ptr.i82 = getelementptr i8, ptr %acp_mmio, i32 82372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82, i32 67108864) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %add.ptr.i83 = getelementptr i8, ptr %acp_mmio, i32 83296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 65535) #7, !srcloc !124
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %asic_type)
  %cmp31.not = icmp eq i32 %asic_type, 14
  br i1 %cmp31.not, label %if.end30.cleanup_crit_edge, label %if.end30.for.body_crit_edge

if.end30.for.body_crit_edge:                      ; preds = %if.end30
  br label %for.body

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end30.for.body_crit_edge
  %bank.088 = phi i16 [ %inc, %for.body.for.body_crit_edge ], [ 1, %if.end30.for.body_crit_edge ]
  tail call fastcc void @acp_set_sram_bank_state(ptr noundef %acp_mmio, i16 noundef zeroext %bank.088, i1 noundef zeroext false)
  %inc = add nuw nsw i16 %bank.088, 1
  %cmp33 = icmp ult i16 %bank.088, 47
  br i1 %cmp33, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.sink.split:                               ; preds = %if.end13.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.body.cleanup_crit_edge, %if.end30.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end30.cleanup_crit_edge ], [ -110, %cleanup.sink.split ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @acp_set_sram_bank_state(ptr noundef %acp_mmio, i16 noundef zeroext %bank, i1 noundef zeroext %power_on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %bank)
  %cmp = icmp ult i16 %bank, 32
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add i16 %bank, -32
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %req_reg.0 = phi i32 [ 83940, %if.else ], [ 83936, %entry.if.end_crit_edge ]
  %sts_reg.0 = phi i32 [ 83948, %if.else ], [ 83944, %entry.if.end_crit_edge ]
  %sts_reg_mask.0 = phi i32 [ 65535, %if.else ], [ -1, %entry.if.end_crit_edge ]
  %bank.addr.0 = phi i16 [ %sub, %if.else ], [ %bank, %entry.if.end_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %acp_mmio, i32 %req_reg.0
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !121
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %conv4 = zext i16 %bank.addr.0 to i32
  %shl = shl nuw i32 1, %conv4
  %and = and i32 %1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else16, label %if.then5

if.then5:                                         ; preds = %if.end
  br i1 %power_on, label %if.then10, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %neg = xor i32 %shl, -1
  %and13 = and i32 %1, %neg
  br label %if.end26

if.else16:                                        ; preds = %if.end
  br i1 %power_on, label %if.else16.cleanup_crit_edge, label %if.then21

if.else16.cleanup_crit_edge:                      ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then21:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %1, %shl
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.then10
  %val.0 = phi i32 [ %and13, %if.then10 ], [ %or, %if.then21 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %val.0) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #7, !srcloc !124
  %add.ptr.i63 = getelementptr i8, ptr %acp_mmio, i32 %sts_reg.0
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63) #7, !srcloc !121
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %sts_reg_mask.0)
  %cmp28.not64 = icmp eq i32 %4, %sts_reg_mask.0
  br i1 %cmp28.not64, label %if.end26.cleanup_crit_edge, label %if.end26.while.body_crit_edge

if.end26.while.body_crit_edge:                    ; preds = %if.end26
  br label %while.body

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body:                                       ; preds = %do.end39.while.body_crit_edge, %if.end26.while.body_crit_edge
  %loops.065 = phi i32 [ %dec, %do.end39.while.body_crit_edge ], [ 1000, %if.end26.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loops.065)
  %tobool30.not = icmp eq i32 %loops.065, 0
  br i1 %tobool30.not, label %do.end, label %do.end39

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %conv4) #10
  br label %cleanup

do.end39:                                         ; preds = %while.body
  %dec = add nsw i32 %loops.065, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !127
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63) #7, !srcloc !121
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %cmp28.not = icmp eq i32 %6, %sts_reg_mask.0
  br i1 %cmp28.not, label %do.end39.cleanup_crit_edge, label %do.end39.while.body_crit_edge

do.end39.while.body_crit_edge:                    ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

do.end39.cleanup_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %do.end39.cleanup_crit_edge, %do.end, %if.end26.cleanup_crit_edge, %if.else16.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acp_dma_new(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %rtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %parent2 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent2, align 8
  %asic_type = getelementptr inbounds %struct.audio_drv_data, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %asic_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %7)
  %cond = icmp eq i32 %7, 14
  %pcm = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 7
  %8 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcm, align 4
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %9, i32 noundef 2, ptr noundef %5, i32 noundef 8192, i32 noundef 8192) #7
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %9, i32 noundef 2, ptr noundef %5, i32 noundef 32768, i32 noundef 32768) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acp_dma_open(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 72) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %7 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  %asic_type = getelementptr inbounds %struct.audio_drv_data, ptr %5, i32 0, i32 5
  %9 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %asic_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %10)
  %cond57 = icmp eq i32 %10, 14
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  br i1 %cond57, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %11 = call ptr @memcpy(ptr %hw, ptr @acp_st_pcm_hardware_playback, i32 64)
  br label %if.end11

sw.default:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %12 = call ptr @memcpy(ptr %hw, ptr @acp_pcm_hardware_playback, i32 64)
  br label %if.end11

if.else:                                          ; preds = %if.end
  br i1 %cond57, label %sw.bb6, label %sw.default8

sw.bb6:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %13 = call ptr @memcpy(ptr %hw, ptr @acp_st_pcm_hardware_capture, i32 64)
  br label %if.end11

sw.default8:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %14 = call ptr @memcpy(ptr %hw, ptr @acp_pcm_hardware_capture, i32 64)
  br label %if.end11

if.end11:                                         ; preds = %sw.default8, %sw.bb6, %sw.default, %sw.bb
  %call12 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %1, i32 noundef 15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.25) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %acp_mmio = getelementptr inbounds %struct.audio_drv_data, ptr %5, i32 0, i32 4
  %17 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %acp_mmio, align 4
  %acp_mmio17 = getelementptr inbounds %struct.audio_substream_data, ptr %call7.i.i, i32 0, i32 18
  %19 = ptrtoint ptr %acp_mmio17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %acp_mmio17, align 8
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %20 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %private_data, align 8
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %5, align 4
  %tobool18.not = icmp eq ptr %22, null
  br i1 %tobool18.not, label %land.lhs.true, label %if.end16.if.end26_crit_edge

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end16
  %capture_i2ssp_stream = getelementptr inbounds %struct.audio_drv_data, ptr %5, i32 0, i32 1
  %23 = ptrtoint ptr %capture_i2ssp_stream to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %capture_i2ssp_stream, align 4
  %tobool19.not = icmp eq ptr %24, null
  br i1 %tobool19.not, label %land.lhs.true20, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

land.lhs.true20:                                  ; preds = %land.lhs.true
  %play_i2sbt_stream = getelementptr inbounds %struct.audio_drv_data, ptr %5, i32 0, i32 2
  %25 = ptrtoint ptr %play_i2sbt_stream to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %play_i2sbt_stream, align 4
  %tobool21.not = icmp eq ptr %26, null
  br i1 %tobool21.not, label %land.lhs.true22, label %land.lhs.true20.if.end26_crit_edge

land.lhs.true20.if.end26_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

land.lhs.true22:                                  ; preds = %land.lhs.true20
  %capture_i2sbt_stream = getelementptr inbounds %struct.audio_drv_data, ptr %5, i32 0, i32 3
  %27 = ptrtoint ptr %capture_i2sbt_stream to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %capture_i2sbt_stream, align 4
  %tobool23.not = icmp eq ptr %28, null
  br i1 %tobool23.not, label %if.then24, label %land.lhs.true22.if.end26_crit_edge

land.lhs.true22.if.end26_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then24:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %acp_mmio17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %acp_mmio17, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %add.ptr.i = getelementptr i8, ptr %30, i32 83292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #7, !srcloc !124
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %land.lhs.true22.if.end26_crit_edge, %land.lhs.true20.if.end26_crit_edge, %land.lhs.true.if.end26_crit_edge, %if.end16.if.end26_crit_edge
  %31 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp28 = icmp eq i32 %32, 0
  %asic_type30 = getelementptr inbounds %struct.audio_drv_data, ptr %5, i32 0, i32 5
  %33 = ptrtoint ptr %asic_type30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %asic_type30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %34)
  %cmp31.not = icmp eq i32 %34, 14
  br i1 %cmp28, label %if.then29, label %if.else37

if.then29:                                        ; preds = %if.end26
  br i1 %cmp31.not, label %if.then29.cleanup_crit_edge, label %for.body.preheader

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %acp_mmio, align 4
  tail call fastcc void @acp_set_sram_bank_state(ptr noundef %36, i16 noundef zeroext 1, i1 noundef zeroext true)
  %37 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %acp_mmio, align 4
  tail call fastcc void @acp_set_sram_bank_state(ptr noundef %38, i16 noundef zeroext 2, i1 noundef zeroext true)
  %39 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %acp_mmio, align 4
  tail call fastcc void @acp_set_sram_bank_state(ptr noundef %40, i16 noundef zeroext 3, i1 noundef zeroext true)
  %41 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %acp_mmio, align 4
  tail call fastcc void @acp_set_sram_bank_state(ptr noundef %42, i16 noundef zeroext 4, i1 noundef zeroext true)
  br label %cleanup

if.else37:                                        ; preds = %if.end26
  br i1 %cmp31.not, label %if.else37.cleanup_crit_edge, label %for.body46.preheader

if.else37.cleanup_crit_edge:                      ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body46.preheader:                             ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %acp_mmio, align 4
  tail call fastcc void @acp_set_sram_bank_state(ptr noundef %44, i16 noundef zeroext 5, i1 noundef zeroext true)
  %45 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %acp_mmio, align 4
  tail call fastcc void @acp_set_sram_bank_state(ptr noundef %46, i16 noundef zeroext 6, i1 noundef zeroext true)
  %47 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %acp_mmio, align 4
  tail call fastcc void @acp_set_sram_bank_state(ptr noundef %48, i16 noundef zeroext 7, i1 noundef zeroext true)
  %49 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %acp_mmio, align 4
  tail call fastcc void @acp_set_sram_bank_state(ptr noundef %50, i16 noundef zeroext 8, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %for.body46.preheader, %if.else37.cleanup_crit_edge, %for.body.preheader, %if.then29.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.else37.cleanup_crit_edge ], [ 0, %if.then29.cleanup_crit_edge ], [ 0, %for.body.preheader ], [ 0, %for.body46.preheader ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acp_dma_close(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %8 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  %i2s_instance = getelementptr inbounds %struct.audio_substream_data, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %i2s_instance to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %i2s_instance, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %11)
  %cond = icmp eq i16 %11, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %play_i2sbt_stream = getelementptr inbounds %struct.audio_drv_data, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %play_i2sbt_stream to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %play_i2sbt_stream, align 4
  br label %if.end29

sw.default:                                       ; preds = %if.then
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %7, align 4
  %asic_type = getelementptr inbounds %struct.audio_drv_data, ptr %7, i32 0, i32 5
  %14 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %asic_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %15)
  %cmp3.not = icmp eq i32 %15, 14
  br i1 %cmp3.not, label %sw.default.land.lhs.true_crit_edge, label %for.cond.preheader

sw.default.land.lhs.true_crit_edge:               ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

for.cond.preheader:                               ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %acp_mmio = getelementptr inbounds %struct.audio_drv_data, ptr %7, i32 0, i32 4
  %16 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %acp_mmio, align 4
  tail call fastcc void @acp_set_sram_bank_state(ptr noundef %17, i16 noundef zeroext 1, i1 noundef zeroext false)
  %18 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %acp_mmio, align 4
  tail call fastcc void @acp_set_sram_bank_state(ptr noundef %19, i16 noundef zeroext 2, i1 noundef zeroext false)
  %20 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %acp_mmio, align 4
  tail call fastcc void @acp_set_sram_bank_state(ptr noundef %21, i16 noundef zeroext 3, i1 noundef zeroext false)
  %22 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %acp_mmio, align 4
  tail call fastcc void @acp_set_sram_bank_state(ptr noundef %23, i16 noundef zeroext 4, i1 noundef zeroext false)
  br label %if.end29

if.else:                                          ; preds = %entry
  br i1 %cond, label %sw.bb11, label %sw.default13

sw.bb11:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %capture_i2sbt_stream = getelementptr inbounds %struct.audio_drv_data, ptr %7, i32 0, i32 3
  %24 = ptrtoint ptr %capture_i2sbt_stream to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %capture_i2sbt_stream, align 4
  br label %if.end29

sw.default13:                                     ; preds = %if.else
  %capture_i2ssp_stream = getelementptr inbounds %struct.audio_drv_data, ptr %7, i32 0, i32 1
  %25 = ptrtoint ptr %capture_i2ssp_stream to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %capture_i2ssp_stream, align 4
  %asic_type14 = getelementptr inbounds %struct.audio_drv_data, ptr %7, i32 0, i32 5
  %26 = ptrtoint ptr %asic_type14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %asic_type14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %27)
  %cmp15.not = icmp eq i32 %27, 14
  br i1 %cmp15.not, label %sw.default13.if.end29_crit_edge, label %for.cond18.preheader

sw.default13.if.end29_crit_edge:                  ; preds = %sw.default13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

for.cond18.preheader:                             ; preds = %sw.default13
  call void @__sanitizer_cov_trace_pc() #9
  %acp_mmio23 = getelementptr inbounds %struct.audio_drv_data, ptr %7, i32 0, i32 4
  %28 = ptrtoint ptr %acp_mmio23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %acp_mmio23, align 4
  tail call fastcc void @acp_set_sram_bank_state(ptr noundef %29, i16 noundef zeroext 5, i1 noundef zeroext false)
  %30 = ptrtoint ptr %acp_mmio23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %acp_mmio23, align 4
  tail call fastcc void @acp_set_sram_bank_state(ptr noundef %31, i16 noundef zeroext 6, i1 noundef zeroext false)
  %32 = ptrtoint ptr %acp_mmio23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %acp_mmio23, align 4
  tail call fastcc void @acp_set_sram_bank_state(ptr noundef %33, i16 noundef zeroext 7, i1 noundef zeroext false)
  %34 = ptrtoint ptr %acp_mmio23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %acp_mmio23, align 4
  tail call fastcc void @acp_set_sram_bank_state(ptr noundef %35, i16 noundef zeroext 8, i1 noundef zeroext false)
  br label %if.end29

if.end29:                                         ; preds = %for.cond18.preheader, %sw.default13.if.end29_crit_edge, %sw.bb11, %for.cond.preheader, %sw.bb
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr = load ptr, ptr %7, align 4
  %tobool.not = icmp eq ptr %.pr, null
  br i1 %tobool.not, label %if.end29.land.lhs.true_crit_edge, label %if.end29.if.end41_crit_edge

if.end29.if.end41_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.end29.land.lhs.true_crit_edge:                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end29.land.lhs.true_crit_edge, %sw.default.land.lhs.true_crit_edge
  %capture_i2ssp_stream31 = getelementptr inbounds %struct.audio_drv_data, ptr %7, i32 0, i32 1
  %37 = ptrtoint ptr %capture_i2ssp_stream31 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %capture_i2ssp_stream31, align 4
  %tobool32.not = icmp eq ptr %38, null
  br i1 %tobool32.not, label %land.lhs.true33, label %land.lhs.true.if.end41_crit_edge

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

land.lhs.true33:                                  ; preds = %land.lhs.true
  %play_i2sbt_stream34 = getelementptr inbounds %struct.audio_drv_data, ptr %7, i32 0, i32 2
  %39 = ptrtoint ptr %play_i2sbt_stream34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %play_i2sbt_stream34, align 4
  %tobool35.not = icmp eq ptr %40, null
  br i1 %tobool35.not, label %land.lhs.true36, label %land.lhs.true33.if.end41_crit_edge

land.lhs.true33.if.end41_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

land.lhs.true36:                                  ; preds = %land.lhs.true33
  %capture_i2sbt_stream37 = getelementptr inbounds %struct.audio_drv_data, ptr %7, i32 0, i32 3
  %41 = ptrtoint ptr %capture_i2sbt_stream37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %capture_i2sbt_stream37, align 4
  %tobool38.not = icmp eq ptr %42, null
  br i1 %tobool38.not, label %if.then39, label %land.lhs.true36.if.end41_crit_edge

land.lhs.true36.if.end41_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then39:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #9
  %acp_mmio40 = getelementptr inbounds %struct.audio_drv_data, ptr %7, i32 0, i32 4
  %43 = ptrtoint ptr %acp_mmio40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %acp_mmio40, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %add.ptr.i = getelementptr i8, ptr %44, i32 83292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !124
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %land.lhs.true36.if.end41_crit_edge, %land.lhs.true33.if.end41_crit_edge, %land.lhs.true.if.end41_crit_edge, %if.end29.if.end41_crit_edge
  tail call void @kfree(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acp_dma_hw_params(ptr nocapture noundef readonly %component, ptr noundef %substream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %card1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card1, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 57
  %8 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drvdata.i, align 4
  %runtime3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %10 = ptrtoint ptr %runtime3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime3, align 4
  %private_data4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %private_data4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data4, align 8
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %do.end, label %if.end27, !prof !128

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 851, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end27:                                         ; preds = %entry
  %tobool28.not = icmp eq ptr %9, null
  br i1 %tobool28.not, label %if.end27.if.end34_crit_edge, label %if.then29

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then29:                                        ; preds = %if.end27
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %14 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %9, align 2
  %i2s_instance = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 3
  %18 = ptrtoint ptr %i2s_instance to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %i2s_instance, align 2
  br label %if.end34

if.else:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %cap_i2s_instance = getelementptr inbounds %struct.acp_platform_info, ptr %9, i32 0, i32 1
  %19 = ptrtoint ptr %cap_i2s_instance to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %cap_i2s_instance, align 2
  %i2s_instance31 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 3
  %21 = ptrtoint ptr %i2s_instance31 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %i2s_instance31, align 2
  %capture_channel = getelementptr inbounds %struct.acp_platform_info, ptr %9, i32 0, i32 2
  %22 = ptrtoint ptr %capture_channel to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %capture_channel, align 2
  %capture_channel32 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 4
  %24 = ptrtoint ptr %capture_channel32 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %capture_channel32, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then30, %if.end27.if.end34_crit_edge
  %asic_type = getelementptr inbounds %struct.audio_drv_data, ptr %5, i32 0, i32 5
  %25 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %asic_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %26)
  %cmp35 = icmp eq i32 %26, 14
  br i1 %cmp35, label %if.then36, label %if.end34.if.end55_crit_edge

if.end34.if.end55_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %acp_mmio = getelementptr inbounds %struct.audio_drv_data, ptr %5, i32 0, i32 4
  %27 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %acp_mmio, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 84004
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !121
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %stream38 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %31 = ptrtoint ptr %stream38 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stream38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp39 = icmp eq i32 %32, 0
  %i2s_instance41 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 3
  %33 = ptrtoint ptr %i2s_instance41 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %i2s_instance41, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %34)
  %cond134 = icmp eq i16 %34, 2
  %. = select i1 %cmp39, i32 2, i32 1
  %.231 = select i1 %cond134, i32 4, i32 %.
  %or48 = or i32 %30, %.231
  %35 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %acp_mmio, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %37 = tail call i32 @llvm.bswap.i32(i32 %or48) #7
  %add.ptr.i224 = getelementptr i8, ptr %36, i32 84004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i224, i32 %37) #7, !srcloc !124
  br label %if.end55

if.end55:                                         ; preds = %if.then36, %if.end34.if.end55_crit_edge
  %stream56 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %38 = ptrtoint ptr %stream56 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %stream56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp57 = icmp eq i32 %39, 0
  %i2s_instance60 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 3
  %40 = ptrtoint ptr %i2s_instance60 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %i2s_instance60, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %41)
  %cond136 = icmp eq i16 %41, 2
  br i1 %cmp57, label %if.then59, label %if.else80

if.then59:                                        ; preds = %if.end55
  br i1 %cond136, label %sw.bb62, label %sw.default64

sw.bb62:                                          ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  %pte_offset = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 11
  %42 = ptrtoint ptr %pte_offset to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 8, ptr %pte_offset, align 4
  %ch1 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 6
  %43 = ptrtoint ptr %ch1 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 8, ptr %ch1, align 8
  %ch2 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 7
  %44 = ptrtoint ptr %ch2 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 9, ptr %ch2, align 2
  %sram_bank = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 12
  %45 = ptrtoint ptr %sram_bank to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 67133440, ptr %sram_bank, align 8
  %destination = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 8
  %46 = ptrtoint ptr %destination to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 3, ptr %destination, align 4
  %dma_dscr_idx_1 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 9
  %47 = ptrtoint ptr %dma_dscr_idx_1 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 8, ptr %dma_dscr_idx_1, align 2
  %dma_dscr_idx_2 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 10
  %48 = ptrtoint ptr %dma_dscr_idx_2 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 10, ptr %dma_dscr_idx_2, align 8
  %byte_cnt_high_reg_offset = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 13
  %49 = ptrtoint ptr %byte_cnt_high_reg_offset to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 20915, ptr %byte_cnt_high_reg_offset, align 4
  %byte_cnt_low_reg_offset = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 14
  %50 = ptrtoint ptr %byte_cnt_low_reg_offset to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 20916, ptr %byte_cnt_low_reg_offset, align 8
  %play_i2sbt_stream = getelementptr inbounds %struct.audio_drv_data, ptr %5, i32 0, i32 2
  br label %if.end113

sw.default64:                                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %asic_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %52)
  %cond133 = icmp eq i32 %52, 14
  %spec.select = select i1 %cond133, i32 4, i32 10
  %53 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 11
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %spec.select, ptr %53, align 4
  %ch171 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 6
  %55 = ptrtoint ptr %ch171 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 12, ptr %ch171, align 8
  %ch272 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 7
  %56 = ptrtoint ptr %ch272 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 13, ptr %ch272, align 2
  %sram_bank73 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 12
  %57 = ptrtoint ptr %sram_bank73 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 67117056, ptr %sram_bank73, align 8
  %destination74 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 8
  %58 = ptrtoint ptr %destination74 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 2, ptr %destination74, align 4
  %dma_dscr_idx_175 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 9
  %59 = ptrtoint ptr %dma_dscr_idx_175 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %dma_dscr_idx_175, align 2
  %dma_dscr_idx_276 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 10
  %60 = ptrtoint ptr %dma_dscr_idx_276 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 2, ptr %dma_dscr_idx_276, align 8
  %byte_cnt_high_reg_offset77 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 13
  %61 = ptrtoint ptr %byte_cnt_high_reg_offset77 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 20913, ptr %byte_cnt_high_reg_offset77, align 4
  %byte_cnt_low_reg_offset78 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 14
  %62 = ptrtoint ptr %byte_cnt_low_reg_offset78 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 20914, ptr %byte_cnt_low_reg_offset78, align 8
  br label %if.end113

if.else80:                                        ; preds = %if.end55
  %pte_offset84 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 11
  br i1 %cond136, label %sw.bb83, label %sw.default94

sw.bb83:                                          ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %pte_offset84 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 12, ptr %pte_offset84, align 4
  %ch185 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 6
  %64 = ptrtoint ptr %ch185 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 10, ptr %ch185, align 8
  %ch286 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 7
  %65 = ptrtoint ptr %ch286 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 11, ptr %ch286, align 2
  %sram_bank87 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 12
  %66 = ptrtoint ptr %sram_bank87 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 67141632, ptr %sram_bank87, align 8
  %destination88 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 8
  %67 = ptrtoint ptr %destination88 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 11, ptr %destination88, align 4
  %dma_dscr_idx_189 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 9
  %68 = ptrtoint ptr %dma_dscr_idx_189 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 12, ptr %dma_dscr_idx_189, align 2
  %dma_dscr_idx_290 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 10
  %69 = ptrtoint ptr %dma_dscr_idx_290 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 14, ptr %dma_dscr_idx_290, align 8
  %byte_cnt_high_reg_offset91 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 13
  %70 = ptrtoint ptr %byte_cnt_high_reg_offset91 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 20917, ptr %byte_cnt_high_reg_offset91, align 4
  %byte_cnt_low_reg_offset92 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 14
  %71 = ptrtoint ptr %byte_cnt_low_reg_offset92 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 20918, ptr %byte_cnt_low_reg_offset92, align 8
  %dma_curr_dscr = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 15
  %72 = ptrtoint ptr %dma_curr_dscr to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 20555, ptr %dma_curr_dscr, align 4
  %capture_i2sbt_stream = getelementptr inbounds %struct.audio_drv_data, ptr %5, i32 0, i32 3
  br label %if.end113

sw.default94:                                     ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %pte_offset84 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %pte_offset84, align 4
  %ch196 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 6
  %74 = ptrtoint ptr %ch196 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 14, ptr %ch196, align 8
  %ch297 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 7
  %75 = ptrtoint ptr %ch297 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 15, ptr %ch297, align 2
  %76 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %asic_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %77)
  %cond = icmp eq i32 %77, 14
  %spec.select230 = select i1 %cond, i32 67125248, i32 67149824
  %78 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 12
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %spec.select230, ptr %78, align 8
  %destination106 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 8
  %80 = ptrtoint ptr %destination106 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 10, ptr %destination106, align 4
  %dma_dscr_idx_1107 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 9
  %81 = ptrtoint ptr %dma_dscr_idx_1107 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 4, ptr %dma_dscr_idx_1107, align 2
  %dma_dscr_idx_2108 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 10
  %82 = ptrtoint ptr %dma_dscr_idx_2108 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 6, ptr %dma_dscr_idx_2108, align 8
  %byte_cnt_high_reg_offset109 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 13
  %83 = ptrtoint ptr %byte_cnt_high_reg_offset109 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 20980, ptr %byte_cnt_high_reg_offset109, align 4
  %byte_cnt_low_reg_offset110 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 14
  %84 = ptrtoint ptr %byte_cnt_low_reg_offset110 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 20981, ptr %byte_cnt_low_reg_offset110, align 8
  %dma_curr_dscr111 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 15
  %85 = ptrtoint ptr %dma_curr_dscr111 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 20559, ptr %dma_curr_dscr111, align 4
  %capture_i2ssp_stream = getelementptr inbounds %struct.audio_drv_data, ptr %5, i32 0, i32 1
  br label %if.end113

if.end113:                                        ; preds = %sw.default94, %sw.bb83, %sw.default64, %sw.bb62
  %capture_i2sbt_stream.sink = phi ptr [ %capture_i2sbt_stream, %sw.bb83 ], [ %capture_i2ssp_stream, %sw.default94 ], [ %play_i2sbt_stream, %sw.bb62 ], [ %5, %sw.default64 ]
  %86 = ptrtoint ptr %capture_i2sbt_stream.sink to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %substream, ptr %capture_i2sbt_stream.sink, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 10
  %87 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.i.i, align 4
  %conv115 = zext i32 %88 to i64
  %acp_mmio116 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 18
  %89 = ptrtoint ptr %acp_mmio116 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %acp_mmio116, align 8
  %add.ptr.i.i = getelementptr i8, ptr %90, i32 83936
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !121
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %and.i = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i225 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i225, label %if.end113.acp_set_sram_bank_state.exit_crit_edge, label %if.then5.i

if.end113.acp_set_sram_bank_state.exit_crit_edge: ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %acp_set_sram_bank_state.exit

if.then5.i:                                       ; preds = %if.end113
  %and13.i = and i32 %92, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %93 = tail call i32 @llvm.bswap.i32(i32 %and13.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %93) #7, !srcloc !124
  %add.ptr.i63.i = getelementptr i8, ptr %90, i32 83944
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %94)
  %cmp28.not64.i = icmp eq i32 %94, -1
  br i1 %cmp28.not64.i, label %if.then5.i.acp_set_sram_bank_state.exit_crit_edge, label %if.then5.i.while.body.i_crit_edge

if.then5.i.while.body.i_crit_edge:                ; preds = %if.then5.i
  br label %while.body.i

if.then5.i.acp_set_sram_bank_state.exit_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %acp_set_sram_bank_state.exit

while.body.i:                                     ; preds = %do.end39.i.while.body.i_crit_edge, %if.then5.i.while.body.i_crit_edge
  %loops.065.i = phi i32 [ %dec.i227, %do.end39.i.while.body.i_crit_edge ], [ 1000, %if.then5.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loops.065.i)
  %tobool30.not.i = icmp eq i32 %loops.065.i, 0
  br i1 %tobool30.not.i, label %do.end.i, label %do.end39.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef 0) #10
  br label %acp_set_sram_bank_state.exit

do.end39.i:                                       ; preds = %while.body.i
  %dec.i227 = add nsw i32 %loops.065.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !127
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %cmp28.not.i = icmp eq i32 %95, -1
  br i1 %cmp28.not.i, label %do.end39.i.acp_set_sram_bank_state.exit_crit_edge, label %do.end39.i.while.body.i_crit_edge

do.end39.i.while.body.i_crit_edge:                ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

do.end39.i.acp_set_sram_bank_state.exit_crit_edge: ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %acp_set_sram_bank_state.exit

acp_set_sram_bank_state.exit:                     ; preds = %do.end39.i.acp_set_sram_bank_state.exit_crit_edge, %do.end.i, %if.then5.i.acp_set_sram_bank_state.exit_crit_edge, %if.end113.acp_set_sram_bank_state.exit_crit_edge
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 51
  %96 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dma_addr, align 8
  %98 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %13, align 8
  %dec.i = add i32 %88, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  %shr.i = lshr i32 %dec.i, 12
  %99 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #7, !range !129
  %sub.i.i = sub nuw nsw i32 32, %99
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %order = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 1
  %100 = ptrtoint ptr %order to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %cond.i.i, ptr %order, align 4
  %size120 = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 16
  %101 = ptrtoint ptr %size120 to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %conv115, ptr %size120, align 8
  %add = add nuw nsw i64 %conv115, 4095
  %shr = lshr i64 %add, 12
  %conv121 = trunc i64 %shr to i16
  %num_of_pages = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 2
  %102 = ptrtoint ptr %num_of_pages to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %conv121, ptr %num_of_pages, align 8
  %103 = ptrtoint ptr %stream56 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %stream56, align 4
  %conv123 = trunc i32 %104 to i16
  %direction = getelementptr inbounds %struct.audio_substream_data, ptr %13, i32 0, i32 5
  %105 = ptrtoint ptr %direction to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv123, ptr %direction, align 2
  %106 = ptrtoint ptr %acp_mmio116 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %acp_mmio116, align 8
  %108 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %asic_type, align 4
  tail call fastcc void @config_acp_dma(ptr noundef %107, ptr noundef %13, i32 noundef %109)
  br label %cleanup

cleanup:                                          ; preds = %acp_set_sram_bank_state.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %acp_set_sram_bank_state.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acp_dma_prepare(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %direction = getelementptr inbounds %struct.audio_substream_data, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %direction to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %direction, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp = icmp eq i16 %5, 0
  %ch1 = getelementptr inbounds %struct.audio_substream_data, ptr %3, i32 0, i32 6
  %ch2 = getelementptr inbounds %struct.audio_substream_data, ptr %3, i32 0, i32 7
  %ch_acp_sysmem.0.in = select i1 %cmp, ptr %ch1, ptr %ch2
  %ch_acp_i2s.0.in = select i1 %cmp, ptr %ch2, ptr %ch1
  %6 = ptrtoint ptr %ch_acp_i2s.0.in to i32
  call void @__asan_load2_noabort(i32 %6)
  %ch_acp_i2s.0 = load i16, ptr %ch_acp_i2s.0.in, align 2
  %7 = ptrtoint ptr %ch_acp_sysmem.0.in to i32
  call void @__asan_load2_noabort(i32 %7)
  %ch_acp_sysmem.0 = load i16, ptr %ch_acp_sysmem.0.in, align 2
  %acp_mmio = getelementptr inbounds %struct.audio_substream_data, ptr %3, i32 0, i32 18
  %8 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %acp_mmio, align 8
  %dma_dscr_idx_1 = getelementptr inbounds %struct.audio_substream_data, ptr %3, i32 0, i32 9
  %10 = ptrtoint ptr %dma_dscr_idx_1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %dma_dscr_idx_1, align 2
  %12 = shl i16 %ch_acp_sysmem.0, 2
  %13 = and i16 %12, 1020
  %add.i = zext i16 %13 to i32
  %mul.i.i = or i32 %add.i, 81920
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %mul.i.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %15 = and i32 %14, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %15) #7, !srcloc !124
  %16 = and i16 %11, 1023
  %and4.i = zext i16 %16 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %17 = tail call i32 @llvm.bswap.i32(i32 %and4.i) #7
  %mul.i3.i = add nuw nsw i32 %add.i, 81984
  %add.ptr.i4.i = getelementptr i8, ptr %9, i32 %mul.i3.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %17) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %mul.i5.i = add nuw nsw i32 %add.i, 82048
  %add.ptr.i6.i = getelementptr i8, ptr %9, i32 %mul.i5.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 33554432) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %mul.i7.i = add nuw nsw i32 %add.i, 82112
  %add.ptr.i8.i = getelementptr i8, ptr %9, i32 %mul.i7.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 0) #7, !srcloc !124
  %18 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %acp_mmio, align 8
  %dma_dscr_idx_2 = getelementptr inbounds %struct.audio_substream_data, ptr %3, i32 0, i32 10
  %20 = ptrtoint ptr %dma_dscr_idx_2 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %dma_dscr_idx_2, align 8
  %22 = shl i16 %ch_acp_i2s.0, 2
  %23 = and i16 %22, 1020
  %add.i23 = zext i16 %23 to i32
  %mul.i.i24 = or i32 %add.i23, 81920
  %add.ptr.i.i25 = getelementptr i8, ptr %19, i32 %mul.i.i24
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i25) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %25 = and i32 %24, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i25, i32 %25) #7, !srcloc !124
  %26 = and i16 %21, 1023
  %and4.i26 = zext i16 %26 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %27 = tail call i32 @llvm.bswap.i32(i32 %and4.i26) #7
  %mul.i3.i27 = add nuw nsw i32 %add.i23, 81984
  %add.ptr.i4.i28 = getelementptr i8, ptr %19, i32 %mul.i3.i27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i28, i32 %27) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %mul.i5.i29 = add nuw nsw i32 %add.i23, 82048
  %add.ptr.i6.i30 = getelementptr i8, ptr %19, i32 %mul.i5.i29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i30, i32 33554432) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %mul.i7.i31 = add nuw nsw i32 %add.i23, 82112
  %add.ptr.i8.i32 = getelementptr i8, ptr %19, i32 %mul.i7.i31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i32, i32 0) #7, !srcloc !124
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acp_dma_trigger(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 4, label %if.end.sw.bb_crit_edge84
    i32 6, label %if.end.sw.bb_crit_edge85
    i32 0, label %if.end.sw.bb21_crit_edge
    i32 3, label %if.end.sw.bb21_crit_edge86
    i32 5, label %if.end.sw.bb21_crit_edge87
  ]

if.end.sw.bb21_crit_edge87:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

if.end.sw.bb21_crit_edge86:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

if.end.sw.bb21_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

if.end.sw.bb_crit_edge85:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge84:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge84, %if.end.sw.bb_crit_edge85
  %acp_mmio.i = getelementptr inbounds %struct.audio_substream_data, ptr %3, i32 0, i32 18
  %5 = ptrtoint ptr %acp_mmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %acp_mmio.i, align 8
  %byte_cnt_high_reg_offset.i = getelementptr inbounds %struct.audio_substream_data, ptr %3, i32 0, i32 13
  %7 = ptrtoint ptr %byte_cnt_high_reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %byte_cnt_high_reg_offset.i, align 4
  %mul.i.i = shl i32 %8, 2
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %mul.i.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %10 = ptrtoint ptr %acp_mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %acp_mmio.i, align 8
  %byte_cnt_low_reg_offset.i = getelementptr inbounds %struct.audio_substream_data, ptr %3, i32 0, i32 14
  %12 = ptrtoint ptr %byte_cnt_low_reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %byte_cnt_low_reg_offset.i, align 8
  %mul.i6.i = shl i32 %13, 2
  %add.ptr.i7.i = getelementptr i8, ptr %11, i32 %mul.i6.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %15 = zext i32 %14 to i64
  %16 = zext i32 %9 to i64
  %17 = shl nuw i64 %16, 32
  %18 = or i64 %17, %15
  %19 = tail call i64 @llvm.bswap.i64(i64 %18) #7
  %bytescount = getelementptr inbounds %struct.audio_substream_data, ptr %3, i32 0, i32 17
  %20 = ptrtoint ptr %bytescount to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %bytescount, align 8
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %21 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp = icmp eq i32 %22, 1
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %sw.bb
  %capture_channel = getelementptr inbounds %struct.audio_substream_data, ptr %3, i32 0, i32 4
  %23 = ptrtoint ptr %capture_channel to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %capture_channel, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp3 = icmp eq i16 %24, 0
  br i1 %cmp3, label %if.then5, label %if.then2.if.end7_crit_edge

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %acp_mmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %acp_mmio.i, align 8
  %add.ptr.i.i51 = getelementptr i8, ptr %26, i32 84276
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i51) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %28 = or i32 %27, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i51, i32 %28) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %add.ptr.i12.i = getelementptr i8, ptr %26, i32 84256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 0) #7, !srcloc !124
  %29 = ptrtoint ptr %acp_mmio.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %acp_mmio.i, align 8
  tail call fastcc void @acp_dma_cap_channel_enable(ptr noundef %30, i16 noundef zeroext 0)
  %31 = ptrtoint ptr %capture_channel to i32
  call void @__asan_load2_noabort(i32 %31)
  %.pr = load i16, ptr %capture_channel, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then2.if.end7_crit_edge
  %32 = phi i16 [ %.pr, %if.then5 ], [ %24, %if.then2.if.end7_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %32)
  %cmp10 = icmp eq i16 %32, 1
  br i1 %cmp10, label %if.then12, label %if.end7.if.end15_crit_edge

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %acp_mmio.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %acp_mmio.i, align 8
  %add.ptr.i.i52 = getelementptr i8, ptr %34, i32 84212
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i52) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %36 = or i32 %35, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i52, i32 %36) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %add.ptr.i12.i53 = getelementptr i8, ptr %34, i32 84192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i53, i32 0) #7, !srcloc !124
  %37 = ptrtoint ptr %acp_mmio.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %acp_mmio.i, align 8
  tail call fastcc void @acp_dma_cap_channel_enable(ptr noundef %38, i16 noundef zeroext 1)
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end7.if.end15_crit_edge
  %39 = ptrtoint ptr %acp_mmio.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %acp_mmio.i, align 8
  %ch1 = getelementptr inbounds %struct.audio_substream_data, ptr %3, i32 0, i32 6
  %41 = ptrtoint ptr %ch1 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %ch1, align 8
  %conv.i = zext i16 %42 to i32
  %add.i = shl nuw nsw i32 %conv.i, 2
  %mul.i.i54 = add nuw nsw i32 %add.i, 81920
  %add.ptr.i.i55 = getelementptr i8, ptr %40, i32 %mul.i.i54
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i55) #7, !srcloc !121
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %add.ptr.i18.i = getelementptr i8, ptr %40, i32 83004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 16777216) #7, !srcloc !124
  %45 = zext i16 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.39)
  switch i16 %42, label %sw.default.i [
    i16 13, label %if.end15.sw.bb.i_crit_edge
    i16 14, label %if.end15.sw.bb.i_crit_edge88
    i16 9, label %if.end15.sw.bb.i_crit_edge89
    i16 10, label %if.end15.sw.bb.i_crit_edge90
  ]

if.end15.sw.bb.i_crit_edge90:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end15.sw.bb.i_crit_edge89:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end15.sw.bb.i_crit_edge88:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end15.sw.bb.i_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end15.sw.bb.i_crit_edge, %if.end15.sw.bb.i_crit_edge88, %if.end15.sw.bb.i_crit_edge89, %if.end15.sw.bb.i_crit_edge90
  %or2.i = or i32 %44, 6
  br label %acp_dma_start.exit

sw.default.i:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = and i32 %44, -7
  %and.i = or i32 %or.i, 2
  br label %acp_dma_start.exit

acp_dma_start.exit:                               ; preds = %sw.default.i, %sw.bb.i
  %dma_ctrl.0.i = phi i32 [ %and.i, %sw.default.i ], [ %or2.i, %sw.bb.i ]
  %dma_ctrl.1.i = or i32 %dma_ctrl.0.i, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %46 = tail call i32 @llvm.bswap.i32(i32 %dma_ctrl.1.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i55, i32 %46) #7, !srcloc !124
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  %47 = ptrtoint ptr %acp_mmio.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %acp_mmio.i, align 8
  %ch118 = getelementptr inbounds %struct.audio_substream_data, ptr %3, i32 0, i32 6
  %49 = ptrtoint ptr %ch118 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %ch118, align 8
  %conv.i56 = zext i16 %50 to i32
  %add.i57 = shl nuw nsw i32 %conv.i56, 2
  %mul.i.i58 = add nuw nsw i32 %add.i57, 81920
  %add.ptr.i.i59 = getelementptr i8, ptr %48, i32 %mul.i.i58
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i59) #7, !srcloc !121
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %add.ptr.i18.i60 = getelementptr i8, ptr %48, i32 83004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i60, i32 16777216) #7, !srcloc !124
  %53 = zext i16 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.40)
  switch i16 %50, label %sw.default.i65 [
    i16 13, label %if.else.sw.bb.i62_crit_edge
    i16 14, label %if.else.sw.bb.i62_crit_edge91
    i16 9, label %if.else.sw.bb.i62_crit_edge92
    i16 10, label %if.else.sw.bb.i62_crit_edge93
  ]

if.else.sw.bb.i62_crit_edge93:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i62

if.else.sw.bb.i62_crit_edge92:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i62

if.else.sw.bb.i62_crit_edge91:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i62

if.else.sw.bb.i62_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i62

sw.bb.i62:                                        ; preds = %if.else.sw.bb.i62_crit_edge, %if.else.sw.bb.i62_crit_edge91, %if.else.sw.bb.i62_crit_edge92, %if.else.sw.bb.i62_crit_edge93
  %or2.i61 = or i32 %52, 6
  br label %acp_dma_start.exit69

sw.default.i65:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %or.i63 = and i32 %52, -7
  %and.i64 = or i32 %or.i63, 2
  br label %acp_dma_start.exit69

acp_dma_start.exit69:                             ; preds = %sw.default.i65, %sw.bb.i62
  %dma_ctrl.0.i66 = phi i32 [ %and.i64, %sw.default.i65 ], [ %or2.i61, %sw.bb.i62 ]
  %dma_ctrl.1.i68 = or i32 %dma_ctrl.0.i66, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %54 = tail call i32 @llvm.bswap.i32(i32 %dma_ctrl.1.i68) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i59, i32 %54) #7, !srcloc !124
  %55 = ptrtoint ptr %acp_mmio.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %acp_mmio.i, align 8
  %ch2 = getelementptr inbounds %struct.audio_substream_data, ptr %3, i32 0, i32 7
  %57 = ptrtoint ptr %ch2 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %ch2, align 2
  %conv.i70 = zext i16 %58 to i32
  %add.i71 = shl nuw nsw i32 %conv.i70, 2
  %mul.i.i72 = add nuw nsw i32 %add.i71, 81920
  %add.ptr.i.i73 = getelementptr i8, ptr %56, i32 %mul.i.i72
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i73) #7, !srcloc !121
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %add.ptr.i18.i74 = getelementptr i8, ptr %56, i32 83004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i74, i32 16777216) #7, !srcloc !124
  %61 = zext i16 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.41)
  switch i16 %58, label %sw.default.i79 [
    i16 13, label %acp_dma_start.exit69.sw.bb.i76_crit_edge
    i16 14, label %acp_dma_start.exit69.sw.bb.i76_crit_edge94
    i16 9, label %acp_dma_start.exit69.sw.bb.i76_crit_edge95
    i16 10, label %acp_dma_start.exit69.sw.bb.i76_crit_edge96
  ]

acp_dma_start.exit69.sw.bb.i76_crit_edge96:       ; preds = %acp_dma_start.exit69
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i76

acp_dma_start.exit69.sw.bb.i76_crit_edge95:       ; preds = %acp_dma_start.exit69
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i76

acp_dma_start.exit69.sw.bb.i76_crit_edge94:       ; preds = %acp_dma_start.exit69
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i76

acp_dma_start.exit69.sw.bb.i76_crit_edge:         ; preds = %acp_dma_start.exit69
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i76

sw.bb.i76:                                        ; preds = %acp_dma_start.exit69.sw.bb.i76_crit_edge, %acp_dma_start.exit69.sw.bb.i76_crit_edge94, %acp_dma_start.exit69.sw.bb.i76_crit_edge95, %acp_dma_start.exit69.sw.bb.i76_crit_edge96
  %or2.i75 = or i32 %60, 6
  br label %acp_dma_start.exit83

sw.default.i79:                                   ; preds = %acp_dma_start.exit69
  call void @__sanitizer_cov_trace_pc() #9
  %or.i77 = and i32 %60, -7
  %and.i78 = or i32 %or.i77, 2
  br label %acp_dma_start.exit83

acp_dma_start.exit83:                             ; preds = %sw.default.i79, %sw.bb.i76
  %dma_ctrl.0.i80 = phi i32 [ %and.i78, %sw.default.i79 ], [ %or2.i75, %sw.bb.i76 ]
  %dma_ctrl.1.i82 = or i32 %dma_ctrl.0.i80, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %62 = tail call i32 @llvm.bswap.i32(i32 %dma_ctrl.1.i82) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i73, i32 %62) #7, !srcloc !124
  br label %cleanup

sw.bb21:                                          ; preds = %if.end.sw.bb21_crit_edge, %if.end.sw.bb21_crit_edge86, %if.end.sw.bb21_crit_edge87
  %acp_mmio22 = getelementptr inbounds %struct.audio_substream_data, ptr %3, i32 0, i32 18
  %63 = ptrtoint ptr %acp_mmio22 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %acp_mmio22, align 8
  %ch223 = getelementptr inbounds %struct.audio_substream_data, ptr %3, i32 0, i32 7
  %65 = ptrtoint ptr %ch223 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %ch223, align 2
  %conv24 = trunc i16 %66 to i8
  %call25 = tail call fastcc i32 @acp_dma_stop(ptr noundef %64, i8 noundef zeroext %conv24)
  %67 = ptrtoint ptr %acp_mmio22 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %acp_mmio22, align 8
  %ch127 = getelementptr inbounds %struct.audio_substream_data, ptr %3, i32 0, i32 6
  %69 = ptrtoint ptr %ch127 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %ch127, align 8
  %conv28 = trunc i16 %70 to i8
  %call29 = tail call fastcc i32 @acp_dma_stop(ptr noundef %68, i8 noundef zeroext %conv28)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb21, %acp_dma_start.exit83, %acp_dma_start.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call29, %sw.bb21 ], [ 0, %acp_dma_start.exit83 ], [ 0, %acp_dma_start.exit ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acp_dma_pointer(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %8 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then2, label %if.else218

if.then2:                                         ; preds = %if.end
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %period_size, align 4
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %12 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_bits.i, align 8
  %mul.i = mul i32 %13, %11
  %div1.i = lshr i32 %mul.i, 3
  %acp_mmio.i = getelementptr inbounds %struct.audio_substream_data, ptr %3, i32 0, i32 18
  %14 = ptrtoint ptr %acp_mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %acp_mmio.i, align 8
  %byte_cnt_high_reg_offset.i = getelementptr inbounds %struct.audio_substream_data, ptr %3, i32 0, i32 13
  %16 = ptrtoint ptr %byte_cnt_high_reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %byte_cnt_high_reg_offset.i, align 4
  %mul.i.i = shl i32 %17, 2
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %mul.i.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %19 = ptrtoint ptr %acp_mmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %acp_mmio.i, align 8
  %byte_cnt_low_reg_offset.i = getelementptr inbounds %struct.audio_substream_data, ptr %3, i32 0, i32 14
  %21 = ptrtoint ptr %byte_cnt_low_reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %byte_cnt_low_reg_offset.i, align 8
  %mul.i6.i = shl i32 %22, 2
  %add.ptr.i7.i = getelementptr i8, ptr %20, i32 %mul.i6.i
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %24 = zext i32 %23 to i64
  %25 = zext i32 %18 to i64
  %26 = shl nuw i64 %25, 32
  %27 = or i64 %26, %24
  %28 = tail call i64 @llvm.bswap.i64(i64 %27) #7
  %bytescount5 = getelementptr inbounds %struct.audio_substream_data, ptr %3, i32 0, i32 17
  %29 = ptrtoint ptr %bytescount5 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %bytescount5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %30)
  %cmp6.not = icmp ult i64 %28, %30
  %sub = select i1 %cmp6.not, i64 0, i64 %30
  %spec.select = sub i64 %28, %sub
  %conv = zext i32 %div1.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %spec.select, i64 %conv)
  %cmp10 = icmp ult i64 %spec.select, %conv
  br i1 %cmp10, label %if.then2.if.end22_crit_edge, label %if.else

if.then2.if.end22_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %acp_mmio.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %acp_mmio.i, align 8
  %dma_curr_dscr = getelementptr inbounds %struct.audio_substream_data, ptr %3, i32 0, i32 15
  %33 = ptrtoint ptr %dma_curr_dscr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma_curr_dscr, align 4
  %mul.i640 = shl i32 %34, 2
  %add.ptr.i = getelementptr i8, ptr %32, i32 %mul.i640
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !121
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %dma_dscr_idx_1 = getelementptr inbounds %struct.audio_substream_data, ptr %3, i32 0, i32 9
  %37 = ptrtoint ptr %dma_dscr_idx_1 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %dma_dscr_idx_1, align 2
  %39 = trunc i32 %36 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %39)
  %cmp17 = icmp eq i16 %38, %39
  %call3. = select i1 %cmp17, i32 %div1.i, i32 0
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then2.if.end22_crit_edge
  %pos.0 = phi i32 [ 0, %if.then2.if.end22_crit_edge ], [ %call3., %if.else ]
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %sub)
  %cmp23.not = icmp eq i64 %28, %sub
  br i1 %cmp23.not, label %if.end22.if.end449_crit_edge, label %if.else196

if.end22.if.end449_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end449

if.else196:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %spec.select)
  %cmp198 = icmp ult i64 %spec.select, 4294967296
  br i1 %cmp198, label %if.then202, label %if.else208, !prof !130

if.then202:                                       ; preds = %if.else196
  call void @__sanitizer_cov_trace_pc() #9
  %conv203 = trunc i64 %spec.select to i32
  %rem204 = urem i32 %conv203, %div1.i
  br label %if.end212

if.else208:                                       ; preds = %if.else196
  call void @__sanitizer_cov_trace_pc() #9
  %40 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div1.i, i64 %spec.select) #12, !srcloc !131
  %asmresult.i644 = extractvalue { i64, i64 } %40, 0
  %shr.i = lshr i64 %asmresult.i644, 32
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end212

if.end212:                                        ; preds = %if.else208, %if.then202
  %__rem.0 = phi i32 [ %rem204, %if.then202 ], [ %conv.i, %if.else208 ]
  %mul.i645 = shl i32 %__rem.0, 3
  %41 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i645, %42
  %delay215 = getelementptr inbounds %struct.audio_drv_data, ptr %7, i32 0, i32 6
  %43 = ptrtoint ptr %delay215 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %delay215, align 4
  %add216 = add i32 %44, %div.i
  store i32 %add216, ptr %delay215, align 4
  br label %if.end449

if.else218:                                       ; preds = %if.end
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 18
  %45 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buffer_size, align 4
  %frame_bits.i647 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %47 = ptrtoint ptr %frame_bits.i647 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %frame_bits.i647, align 8
  %mul.i648 = mul i32 %48, %46
  %div1.i649 = lshr i32 %mul.i648, 3
  %acp_mmio.i650 = getelementptr inbounds %struct.audio_substream_data, ptr %3, i32 0, i32 18
  %49 = ptrtoint ptr %acp_mmio.i650 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %acp_mmio.i650, align 8
  %byte_cnt_high_reg_offset.i651 = getelementptr inbounds %struct.audio_substream_data, ptr %3, i32 0, i32 13
  %51 = ptrtoint ptr %byte_cnt_high_reg_offset.i651 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %byte_cnt_high_reg_offset.i651, align 4
  %mul.i.i652 = shl i32 %52, 2
  %add.ptr.i.i653 = getelementptr i8, ptr %50, i32 %mul.i.i652
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i653) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %54 = ptrtoint ptr %acp_mmio.i650 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %acp_mmio.i650, align 8
  %byte_cnt_low_reg_offset.i654 = getelementptr inbounds %struct.audio_substream_data, ptr %3, i32 0, i32 14
  %56 = ptrtoint ptr %byte_cnt_low_reg_offset.i654 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %byte_cnt_low_reg_offset.i654, align 8
  %mul.i6.i655 = shl i32 %57, 2
  %add.ptr.i7.i656 = getelementptr i8, ptr %55, i32 %mul.i6.i655
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i656) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %59 = zext i32 %58 to i64
  %60 = zext i32 %53 to i64
  %61 = shl nuw i64 %60, 32
  %62 = or i64 %61, %59
  %63 = tail call i64 @llvm.bswap.i64(i64 %62) #7
  %bytescount221 = getelementptr inbounds %struct.audio_substream_data, ptr %3, i32 0, i32 17
  %64 = ptrtoint ptr %bytescount221 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %bytescount221, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %63, i64 %65)
  %cmp222 = icmp ugt i64 %63, %65
  %sub226 = select i1 %cmp222, i64 %65, i64 0
  %spec.select738 = sub i64 %63, %sub226
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %spec.select738)
  %cmp429 = icmp ult i64 %spec.select738, 4294967296
  br i1 %cmp429, label %if.then437, label %if.else443, !prof !130

if.then437:                                       ; preds = %if.else218
  call void @__sanitizer_cov_trace_pc() #9
  %conv438 = trunc i64 %spec.select738 to i32
  %rem439 = urem i32 %conv438, %div1.i649
  br label %if.end449

if.else443:                                       ; preds = %if.else218
  call void @__sanitizer_cov_trace_pc() #9
  %66 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div1.i649, i64 %spec.select738) #12, !srcloc !131
  %asmresult.i685 = extractvalue { i64, i64 } %66, 0
  %shr.i687 = lshr i64 %asmresult.i685, 32
  %conv.i688 = trunc i64 %shr.i687 to i32
  br label %if.end449

if.end449:                                        ; preds = %if.else443, %if.then437, %if.end212, %if.end22.if.end449_crit_edge
  %pos.1 = phi i32 [ %pos.0, %if.end212 ], [ %pos.0, %if.end22.if.end449_crit_edge ], [ %rem439, %if.then437 ], [ %conv.i688, %if.else443 ]
  %mul.i689 = shl i32 %pos.1, 3
  %frame_bits.i690 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %67 = ptrtoint ptr %frame_bits.i690 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %frame_bits.i690, align 8
  %div.i691 = udiv i32 %mul.i689, %68
  br label %cleanup

cleanup:                                          ; preds = %if.end449, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div.i691, %if.end449 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @acp_dma_delay(ptr nocapture noundef readonly %component, ptr nocapture noundef readnone %substream) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %delay1 = getelementptr inbounds %struct.audio_drv_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %delay1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delay1, align 4
  store i32 0, ptr %delay1, align 4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @config_acp_dma(ptr noundef %acp_mmio, ptr nocapture noundef readonly %rtd, i32 noundef %asic_type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_of_pages = getelementptr inbounds %struct.audio_substream_data, ptr %rtd, i32 0, i32 2
  %0 = ptrtoint ptr %num_of_pages to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_of_pages, align 8
  %pte_offset = getelementptr inbounds %struct.audio_substream_data, ptr %rtd, i32 0, i32 11
  %2 = ptrtoint ptr %pte_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pte_offset, align 4
  %mul.i = shl i32 %3, 3
  %add.i = add i32 %mul.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp25.not.i = icmp eq i16 %1, 0
  br i1 %cmp25.not.i, label %entry.acp_pte_config.exit_crit_edge, label %for.body.lr.ph.i

entry.acp_pte_config.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %acp_pte_config.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %4 = ptrtoint ptr %rtd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rtd, align 8
  %add.ptr.i.i = getelementptr i8, ptr %acp_mmio, i32 83580
  %add.ptr.i22.i = getelementptr i8, ptr %acp_mmio, i32 83584
  %wide.trip.count.i = zext i16 %1 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %addr.addr.026.i = phi i32 [ %5, %for.body.lr.ph.i ], [ %add11.i, %for.body.i.for.body.i_crit_edge ]
  %mul4.i = shl nuw nsw i32 %indvars.iv.i, 3
  %add5.i = add i32 %add.i, %mul4.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %add5.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %addr.addr.026.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %7) #7, !srcloc !124
  %add10.i = or i32 %add5.i, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %add10.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %8) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 128) #7, !srcloc !124
  %add11.i = add i32 %addr.addr.026.i, 4096
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.body.i.acp_pte_config.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.acp_pte_config.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %acp_pte_config.exit

acp_pte_config.exit:                              ; preds = %for.body.i.acp_pte_config.exit_crit_edge, %entry.acp_pte_config.exit_crit_edge
  %direction = getelementptr inbounds %struct.audio_substream_data, ptr %rtd, i32 0, i32 5
  %9 = ptrtoint ptr %direction to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %direction, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp = icmp eq i16 %10, 0
  %ch1 = getelementptr inbounds %struct.audio_substream_data, ptr %rtd, i32 0, i32 6
  %ch2 = getelementptr inbounds %struct.audio_substream_data, ptr %rtd, i32 0, i32 7
  %ch_acp_sysmem.0.in = select i1 %cmp, ptr %ch1, ptr %ch2
  %ch_acp_i2s.0.in = select i1 %cmp, ptr %ch2, ptr %ch1
  %11 = ptrtoint ptr %ch_acp_i2s.0.in to i32
  call void @__asan_load2_noabort(i32 %11)
  %ch_acp_i2s.0 = load i16, ptr %ch_acp_i2s.0.in, align 2
  %12 = ptrtoint ptr %ch_acp_sysmem.0.in to i32
  call void @__asan_load2_noabort(i32 %12)
  %ch_acp_sysmem.0 = load i16, ptr %ch_acp_sysmem.0.in, align 2
  %size = getelementptr inbounds %struct.audio_substream_data, ptr %rtd, i32 0, i32 16
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %size, align 8
  %conv4 = trunc i64 %14 to i32
  %15 = ptrtoint ptr %pte_offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pte_offset, align 4
  %sram_bank = getelementptr inbounds %struct.audio_substream_data, ptr %rtd, i32 0, i32 12
  %17 = ptrtoint ptr %sram_bank to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sram_bank, align 8
  %dma_dscr_idx_1 = getelementptr inbounds %struct.audio_substream_data, ptr %rtd, i32 0, i32 9
  %19 = ptrtoint ptr %dma_dscr_idx_1 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %dma_dscr_idx_1, align 2
  %div35104.i = lshr i32 %conv4, 1
  %mul41.i = shl i32 %16, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %asic_type)
  %cond.i = icmp eq i32 %asic_type, 14
  br i1 %cmp, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %acp_pte_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  %or.or25.i.v = select i1 %cond.i, i32 589824, i32 524288
  %or.or25.i = or i32 %div35104.i, %or.or25.i.v
  %conv.i59 = zext i16 %20 to i32
  %mul.i60 = shl nuw nsw i32 %conv.i59, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %mul.i60) #7
  %add.ptr.i.i61 = getelementptr i8, ptr %acp_mmio, i32 83580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i61, i32 %21) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %mul41.i) #7
  %add.ptr.i11.i62 = getelementptr i8, ptr %acp_mmio, i32 83584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i62, i32 %22) #7, !srcloc !124
  %add.i63 = or i32 %mul.i60, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %23 = tail call i32 @llvm.bswap.i32(i32 %add.i63) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i61, i32 %23) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i62, i32 %24) #7, !srcloc !124
  %add1.i65 = or i32 %mul.i60, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %25 = tail call i32 @llvm.bswap.i32(i32 %add1.i65) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i61, i32 %25) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.or25.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i62, i32 %26) #7, !srcloc !124
  br label %set_acp_sysmem_dma_descriptors.exit

if.else.i:                                        ; preds = %acp_pte_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  %or52.i = or i32 %div35104.i, 65536
  %or52.div35104.i = select i1 %cond.i, i32 %or52.i, i32 %div35104.i
  %conv.i51 = zext i16 %20 to i32
  %mul.i52 = shl nuw nsw i32 %conv.i51, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %27 = tail call i32 @llvm.bswap.i32(i32 %mul.i52) #7
  %add.ptr.i.i53 = getelementptr i8, ptr %acp_mmio, i32 83580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i53, i32 %27) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %28 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  %add.ptr.i11.i54 = getelementptr i8, ptr %acp_mmio, i32 83584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i54, i32 %28) #7, !srcloc !124
  %add.i55 = or i32 %mul.i52, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %29 = tail call i32 @llvm.bswap.i32(i32 %add.i55) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i53, i32 %29) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %30 = tail call i32 @llvm.bswap.i32(i32 %mul41.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i54, i32 %30) #7, !srcloc !124
  %add1.i57 = or i32 %mul.i52, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %31 = tail call i32 @llvm.bswap.i32(i32 %add1.i57) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i53, i32 %31) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %32 = tail call i32 @llvm.bswap.i32(i32 %or52.div35104.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i54, i32 %32) #7, !srcloc !124
  br label %set_acp_sysmem_dma_descriptors.exit

set_acp_sysmem_dma_descriptors.exit:              ; preds = %if.else.i, %if.then.i
  %.pre-phi = phi i32 [ %26, %if.then.i ], [ %32, %if.else.i ]
  %mul41.i.pn = phi i32 [ %mul41.i, %if.then.i ], [ %18, %if.else.i ]
  %.pn = phi i32 [ %18, %if.then.i ], [ %mul41.i, %if.else.i ]
  %dmadscr.i.sroa.18.0 = add i32 %.pn, %div35104.i
  %dmadscr.i.sroa.1586.0 = add i32 %mul41.i.pn, %div35104.i
  %dma_dscr_idx.addr.1.1.i = add i16 %20, 1
  %conv.i = zext i16 %dma_dscr_idx.addr.1.1.i to i32
  %mul.i48 = shl nuw nsw i32 %conv.i, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %33 = tail call i32 @llvm.bswap.i32(i32 %mul.i48) #7
  %add.ptr.i.i49 = getelementptr i8, ptr %acp_mmio, i32 83580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i49, i32 %33) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %34 = tail call i32 @llvm.bswap.i32(i32 %dmadscr.i.sroa.1586.0) #7
  %add.ptr.i11.i = getelementptr i8, ptr %acp_mmio, i32 83584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %34) #7, !srcloc !124
  %add.i50 = or i32 %mul.i48, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %35 = tail call i32 @llvm.bswap.i32(i32 %add.i50) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i49, i32 %35) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %36 = tail call i32 @llvm.bswap.i32(i32 %dmadscr.i.sroa.18.0) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %36) #7, !srcloc !124
  %add1.i = or i32 %mul.i48, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %37 = tail call i32 @llvm.bswap.i32(i32 %add1.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i49, i32 %37) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %.pre-phi) #7, !srcloc !124
  tail call fastcc void @pre_config_reset(ptr noundef %acp_mmio, i16 noundef zeroext %ch_acp_sysmem.0) #7
  %38 = shl i16 %ch_acp_sysmem.0, 2
  %39 = and i16 %38, 1020
  %add.i.i = zext i16 %39 to i32
  %mul.i.i.i = or i32 %add.i.i, 81920
  %add.ptr.i.i.i = getelementptr i8, ptr %acp_mmio, i32 %mul.i.i.i
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %41 = and i32 %40, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %41) #7, !srcloc !124
  %42 = and i16 %20, 1023
  %and4.i.i = zext i16 %42 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %43 = tail call i32 @llvm.bswap.i32(i32 %and4.i.i) #7
  %mul.i3.i.i = add nuw nsw i32 %add.i.i, 81984
  %add.ptr.i4.i.i = getelementptr i8, ptr %acp_mmio, i32 %mul.i3.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %43) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %mul.i5.i.i = add nuw nsw i32 %add.i.i, 82048
  %add.ptr.i6.i.i = getelementptr i8, ptr %acp_mmio, i32 %mul.i5.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 33554432) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %mul.i7.i.i = add nuw nsw i32 %add.i.i, 82112
  %add.ptr.i8.i.i = getelementptr i8, ptr %acp_mmio, i32 %mul.i7.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 0) #7, !srcloc !124
  %44 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %size, align 8
  %conv9 = trunc i64 %45 to i32
  %46 = ptrtoint ptr %direction to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %direction, align 2
  %48 = ptrtoint ptr %sram_bank to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sram_bank, align 8
  %destination = getelementptr inbounds %struct.audio_substream_data, ptr %rtd, i32 0, i32 8
  %50 = ptrtoint ptr %destination to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %destination, align 4
  %dma_dscr_idx_2 = getelementptr inbounds %struct.audio_substream_data, ptr %rtd, i32 0, i32 10
  %52 = ptrtoint ptr %dma_dscr_idx_2 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %dma_dscr_idx_2, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp2.i34 = icmp eq i16 %47, 0
  %div281.i = lshr i32 %conv9, 1
  %conv34.i = zext i16 %51 to i32
  %shl35.i = shl nuw i32 %conv34.i, 16
  %spec.select.i35 = select i1 %cmp2.i34, i32 %49, i32 0
  %spec.select7.i = select i1 %cmp2.i34, i32 0, i32 %49
  %or36.i = or i32 %div281.i, %shl35.i
  %storemerge.i = or i32 %or36.i, 4194304
  %conv.i75 = zext i16 %53 to i32
  %mul.i76 = shl nuw nsw i32 %conv.i75, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %54 = tail call i32 @llvm.bswap.i32(i32 %mul.i76) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i49, i32 %54) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %55 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i35) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %55) #7, !srcloc !124
  %add.i79 = or i32 %mul.i76, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %56 = tail call i32 @llvm.bswap.i32(i32 %add.i79) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i49, i32 %56) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %57 = tail call i32 @llvm.bswap.i32(i32 %spec.select7.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %57) #7, !srcloc !124
  %add1.i81 = or i32 %mul.i76, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %58 = tail call i32 @llvm.bswap.i32(i32 %add1.i81) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i49, i32 %58) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %59 = tail call i32 @llvm.bswap.i32(i32 %storemerge.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %59) #7, !srcloc !124
  %add8.1.i36 = add i32 %div281.i, %49
  %dmadscr.i33.sroa.9.0 = select i1 %cmp2.i34, i32 %add8.1.i36, i32 0
  %add30.1.sink.i = select i1 %cmp2.i34, i32 0, i32 %add8.1.i36
  %dma_dscr_idx.addr.1.1.i37 = add i16 %53, 1
  %conv.i67 = zext i16 %dma_dscr_idx.addr.1.1.i37 to i32
  %mul.i68 = shl nuw nsw i32 %conv.i67, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %60 = tail call i32 @llvm.bswap.i32(i32 %mul.i68) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i49, i32 %60) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %61 = tail call i32 @llvm.bswap.i32(i32 %dmadscr.i33.sroa.9.0) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %61) #7, !srcloc !124
  %add.i71 = or i32 %mul.i68, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %62 = tail call i32 @llvm.bswap.i32(i32 %add.i71) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i49, i32 %62) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %63 = tail call i32 @llvm.bswap.i32(i32 %add30.1.sink.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %63) #7, !srcloc !124
  %add1.i73 = or i32 %mul.i68, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %64 = tail call i32 @llvm.bswap.i32(i32 %add1.i73) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i49, i32 %64) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %59) #7, !srcloc !124
  tail call fastcc void @pre_config_reset(ptr noundef %acp_mmio, i16 noundef zeroext %ch_acp_i2s.0) #7
  %65 = shl i16 %ch_acp_i2s.0, 2
  %66 = and i16 %65, 1020
  %add.i.i38 = zext i16 %66 to i32
  %mul.i.i.i39 = or i32 %add.i.i38, 81920
  %add.ptr.i.i.i40 = getelementptr i8, ptr %acp_mmio, i32 %mul.i.i.i39
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i40) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %68 = and i32 %67, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i40, i32 %68) #7, !srcloc !124
  %69 = and i16 %53, 1023
  %and4.i.i41 = zext i16 %69 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %70 = tail call i32 @llvm.bswap.i32(i32 %and4.i.i41) #7
  %mul.i3.i.i42 = add nuw nsw i32 %add.i.i38, 81984
  %add.ptr.i4.i.i43 = getelementptr i8, ptr %acp_mmio, i32 %mul.i3.i.i42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i43, i32 %70) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %mul.i5.i.i44 = add nuw nsw i32 %add.i.i38, 82048
  %add.ptr.i6.i.i45 = getelementptr i8, ptr %acp_mmio, i32 %mul.i5.i.i44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i45, i32 33554432) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %mul.i7.i.i46 = add nuw nsw i32 %add.i.i38, 82112
  %add.ptr.i8.i.i47 = getelementptr i8, ptr %acp_mmio, i32 %mul.i7.i.i46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i47, i32 0) #7, !srcloc !124
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pre_config_reset(ptr noundef %acp_mmio, i16 noundef zeroext %ch_num) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %ch_num to i32
  %add = shl nuw nsw i32 %conv, 2
  %mul.i = add nuw nsw i32 %add, 81920
  %add.ptr.i = getelementptr i8, ptr %acp_mmio, i32 %mul.i
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %1 = and i32 %0, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %1) #7, !srcloc !124
  %call3 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call3, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 193) #7
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not70 = icmp eq i32 %3, 0
  br i1 %tobool.not70, label %entry.if.end51_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end51_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

land.lhs.true:                                    ; preds = %if.then36.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call20 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call20, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call20, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then36

if.then36:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  %5 = and i32 %4, 16777216
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then36.if.end51_crit_edge, label %if.then36.land.lhs.true_crit_edge

if.then36.land.lhs.true_crit_edge:                ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then36.if.end51_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

for.end:                                          ; preds = %land.lhs.true
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool41.not = icmp eq i32 %7, 0
  br i1 %tobool41.not, label %for.end.if.end51_crit_edge, label %do.end47

for.end.if.end51_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

do.end47:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %conv) #10
  br label %if.end51

if.end51:                                         ; preds = %do.end47, %for.end.if.end51_crit_edge, %if.then36.if.end51_crit_edge, %entry.if.end51_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @acp_dma_cap_channel_enable(ptr noundef %acp_mmio, i16 noundef zeroext %cap_channel) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %cap_channel)
  %cond = icmp eq i16 %cap_channel, 1
  %. = select i1 %cond, i32 21064, i32 21048
  %add.ptr.i = getelementptr i8, ptr %acp_mmio, i32 84004
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %1 = and i32 %0, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = shl nuw nsw i32 %., 2
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %.16 = select i1 %cond, i32 84264, i32 84200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %mul.i = shl nuw nsw i32 %., 2
  %add.ptr.i17 = getelementptr i8, ptr %acp_mmio, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 0) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %add.ptr.i19 = getelementptr i8, ptr %acp_mmio, i32 %.16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 33554432) #7, !srcloc !124
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mul.i24.pre-phi = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %mul.i, %if.then ]
  %.15 = select i1 %cond, i32 84276, i32 84212
  %add.ptr.i21 = getelementptr i8, ptr %acp_mmio, i32 %.15
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %3 = and i32 %2, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %3) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %add.ptr.i25 = getelementptr i8, ptr %acp_mmio, i32 %mul.i24.pre-phi
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 16777216) #7, !srcloc !124
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @acp_dma_stop(ptr noundef %acp_mmio, i8 noundef zeroext %ch_num) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %ch_num to i32
  %add = shl nuw nsw i32 %conv, 2
  %mul.i = or i32 %add, 81920
  %add.ptr.i = getelementptr i8, ptr %acp_mmio, i32 %mul.i
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %1 = and i32 %0, -100663297
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %1) #7, !srcloc !124
  %add.ptr.i46 = getelementptr i8, ptr %acp_mmio, i32 82376
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46) #7, !srcloc !121
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %shl = shl nuw i32 1, %conv
  %and6 = and i32 %4, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #7, !srcloc !124
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dma_ctrl.0 = phi i32 [ %or, %if.then ], [ %2, %entry.if.end_crit_edge ]
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46) #7, !srcloc !121
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %and1252 = and i32 %7, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1252)
  %tobool13.not53 = icmp eq i32 %and1252, 0
  br i1 %tobool13.not53, label %if.end.if.then14_crit_edge, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  br label %if.end18

if.end.if.then14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

if.then14:                                        ; preds = %if.end23.if.then14_crit_edge, %if.end.if.then14_crit_edge
  %and15 = and i32 %dma_ctrl.0, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %and15) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #7, !srcloc !124
  br label %cleanup

if.end18:                                         ; preds = %if.end23.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %count.054 = phi i32 [ %dec, %if.end23.if.end18_crit_edge ], [ 10000, %if.end.if.end18_crit_edge ]
  %dec = add nsw i32 %count.054, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %do.end, label %if.end23

do.end:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %conv) #10
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 21474800) #7
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46) #7, !srcloc !121
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %and12 = and i32 %11, %shl
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end23.if.then14_crit_edge, label %if.end23.if.end18_crit_edge

if.end23.if.end18_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end23.if.then14_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

cleanup:                                          ; preds = %do.end, %if.then14
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %if.then14 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @acp_deinit(ptr noundef %acp_mmio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %acp_mmio, i32 83152
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %1 = or i32 %0, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %1) #7, !srcloc !124
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %3 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not41 = icmp eq i32 %3, 0
  br i1 %cmp.not41, label %entry.if.end_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.end5.if.end_crit_edge, %entry.if.end_crit_edge
  %count.042 = phi i32 [ %dec, %if.end5.if.end_crit_edge ], [ 255, %entry.if.end_crit_edge ]
  %dec = add nsw i32 %count.042, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp2 = icmp eq i32 %dec, 0
  br i1 %cmp2, label %if.end.cleanup.sink.split_crit_edge, label %if.end5

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 21474800) #7
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %6 = and i32 %5, 1
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %if.end5.if.end_crit_edge, label %if.end5.while.end_crit_edge

if.end5.while.end_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end5.if.end_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.end:                                        ; preds = %if.end5.while.end_crit_edge, %entry.while.end_crit_edge
  %add.ptr.i38 = getelementptr i8, ptr %acp_mmio, i32 83140
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %8 = and i32 %7, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %8) #7, !srcloc !124
  %add.ptr.i40 = getelementptr i8, ptr %acp_mmio, i32 83148
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not43 = icmp eq i32 %10, 0
  br i1 %tobool.not43, label %while.end.cleanup_crit_edge, label %while.end.if.end13_crit_edge

while.end.if.end13_crit_edge:                     ; preds = %while.end
  br label %if.end13

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end22.if.end13_crit_edge, %while.end.if.end13_crit_edge
  %count.144 = phi i32 [ %dec14, %if.end22.if.end13_crit_edge ], [ 255, %while.end.if.end13_crit_edge ]
  %dec14 = add nsw i32 %count.144, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec14)
  %cmp15 = icmp eq i32 %dec14, 0
  br i1 %cmp15, label %if.end13.cleanup.sink.split_crit_edge, label %if.end22

if.end13.cleanup.sink.split_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end22:                                         ; preds = %if.end13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 21474800) #7
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %13 = and i32 %12, 16777216
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.end22.cleanup_crit_edge, label %if.end22.if.end13_crit_edge

if.end22.if.end13_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end13.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end22.cleanup_crit_edge, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end.cleanup_crit_edge ], [ -110, %cleanup.sink.split ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acp_pcm_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %acp_mmio = getelementptr inbounds %struct.audio_drv_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acp_mmio, align 4
  %asic_type = getelementptr inbounds %struct.audio_drv_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %asic_type, align 4
  %call1 = tail call fastcc i32 @acp_init(ptr noundef %3, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.if.end16_crit_edge, label %land.lhs.true

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.end16_crit_edge, label %if.then5

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then5:                                         ; preds = %land.lhs.true
  %10 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %asic_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %11)
  %cmp.not = icmp eq i32 %11, 14
  br i1 %cmp.not, label %if.then5.if.end11_crit_edge, label %for.body.preheader

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

for.body.preheader:                               ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %acp_mmio, align 4
  tail call fastcc void @acp_set_sram_bank_state(ptr noundef %13, i16 noundef zeroext 1, i1 noundef zeroext true)
  %14 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %acp_mmio, align 4
  tail call fastcc void @acp_set_sram_bank_state(ptr noundef %15, i16 noundef zeroext 2, i1 noundef zeroext true)
  %16 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %acp_mmio, align 4
  tail call fastcc void @acp_set_sram_bank_state(ptr noundef %17, i16 noundef zeroext 3, i1 noundef zeroext true)
  %18 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %acp_mmio, align 4
  tail call fastcc void @acp_set_sram_bank_state(ptr noundef %19, i16 noundef zeroext 4, i1 noundef zeroext true)
  br label %if.end11

if.end11:                                         ; preds = %for.body.preheader, %if.then5.if.end11_crit_edge
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %runtime13 = getelementptr inbounds %struct.snd_pcm_substream, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %runtime13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %runtime13, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %23, i32 0, i32 44
  %24 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private_data, align 8
  %26 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %acp_mmio, align 4
  %28 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %asic_type, align 4
  tail call fastcc void @config_acp_dma(ptr noundef %27, ptr noundef %25, i32 noundef %29)
  br label %if.end16

if.end16:                                         ; preds = %if.end11, %land.lhs.true.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %capture_i2ssp_stream = getelementptr inbounds %struct.audio_drv_data, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %capture_i2ssp_stream to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %capture_i2ssp_stream, align 4
  %tobool17.not = icmp eq ptr %31, null
  br i1 %tobool17.not, label %if.end16.if.end42_crit_edge, label %land.lhs.true18

if.end16.if.end42_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

land.lhs.true18:                                  ; preds = %if.end16
  %runtime20 = getelementptr inbounds %struct.snd_pcm_substream, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %runtime20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %runtime20, align 4
  %tobool21.not = icmp eq ptr %33, null
  br i1 %tobool21.not, label %land.lhs.true18.if.end42_crit_edge, label %if.then22

land.lhs.true18.if.end42_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then22:                                        ; preds = %land.lhs.true18
  %34 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %asic_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %35)
  %cmp24.not = icmp eq i32 %35, 14
  br i1 %cmp24.not, label %if.then22.if.end36_crit_edge, label %for.body31.preheader

if.then22.if.end36_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

for.body31.preheader:                             ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %acp_mmio, align 4
  tail call fastcc void @acp_set_sram_bank_state(ptr noundef %37, i16 noundef zeroext 5, i1 noundef zeroext true)
  %38 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %acp_mmio, align 4
  tail call fastcc void @acp_set_sram_bank_state(ptr noundef %39, i16 noundef zeroext 6, i1 noundef zeroext true)
  %40 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %acp_mmio, align 4
  tail call fastcc void @acp_set_sram_bank_state(ptr noundef %41, i16 noundef zeroext 7, i1 noundef zeroext true)
  %42 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %acp_mmio, align 4
  tail call fastcc void @acp_set_sram_bank_state(ptr noundef %43, i16 noundef zeroext 8, i1 noundef zeroext true)
  br label %if.end36

if.end36:                                         ; preds = %for.body31.preheader, %if.then22.if.end36_crit_edge
  %44 = ptrtoint ptr %capture_i2ssp_stream to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %capture_i2ssp_stream, align 4
  %runtime38 = getelementptr inbounds %struct.snd_pcm_substream, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %runtime38 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %runtime38, align 4
  %private_data39 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %47, i32 0, i32 44
  %48 = ptrtoint ptr %private_data39 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %private_data39, align 8
  %50 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %acp_mmio, align 4
  %52 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %asic_type, align 4
  tail call fastcc void @config_acp_dma(ptr noundef %51, ptr noundef %49, i32 noundef %53)
  br label %if.end42

if.end42:                                         ; preds = %if.end36, %land.lhs.true18.if.end42_crit_edge, %if.end16.if.end42_crit_edge
  %54 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %asic_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %55)
  %cmp44.not = icmp eq i32 %55, 13
  br i1 %cmp44.not, label %if.end42.if.end71_crit_edge, label %if.then46

if.end42.if.end71_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then46:                                        ; preds = %if.end42
  %play_i2sbt_stream = getelementptr inbounds %struct.audio_drv_data, ptr %1, i32 0, i32 2
  %56 = ptrtoint ptr %play_i2sbt_stream to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %play_i2sbt_stream, align 4
  %tobool47.not = icmp eq ptr %57, null
  br i1 %tobool47.not, label %if.then46.if.end58_crit_edge, label %land.lhs.true48

if.then46.if.end58_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

land.lhs.true48:                                  ; preds = %if.then46
  %runtime50 = getelementptr inbounds %struct.snd_pcm_substream, ptr %57, i32 0, i32 11
  %58 = ptrtoint ptr %runtime50 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %runtime50, align 4
  %tobool51.not = icmp eq ptr %59, null
  br i1 %tobool51.not, label %land.lhs.true48.if.end58_crit_edge, label %if.then52

land.lhs.true48.if.end58_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then52:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #9
  %private_data55 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %59, i32 0, i32 44
  %60 = ptrtoint ptr %private_data55 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %private_data55, align 8
  %62 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %acp_mmio, align 4
  tail call fastcc void @config_acp_dma(ptr noundef %63, ptr noundef %61, i32 noundef %55)
  br label %if.end58

if.end58:                                         ; preds = %if.then52, %land.lhs.true48.if.end58_crit_edge, %if.then46.if.end58_crit_edge
  %capture_i2sbt_stream = getelementptr inbounds %struct.audio_drv_data, ptr %1, i32 0, i32 3
  %64 = ptrtoint ptr %capture_i2sbt_stream to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %capture_i2sbt_stream, align 4
  %tobool59.not = icmp eq ptr %65, null
  br i1 %tobool59.not, label %if.end58.if.end71_crit_edge, label %land.lhs.true60

if.end58.if.end71_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

land.lhs.true60:                                  ; preds = %if.end58
  %runtime62 = getelementptr inbounds %struct.snd_pcm_substream, ptr %65, i32 0, i32 11
  %66 = ptrtoint ptr %runtime62 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %runtime62, align 4
  %tobool63.not = icmp eq ptr %67, null
  br i1 %tobool63.not, label %land.lhs.true60.if.end71_crit_edge, label %if.then64

land.lhs.true60.if.end71_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then64:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #9
  %private_data67 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %67, i32 0, i32 44
  %68 = ptrtoint ptr %private_data67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %private_data67, align 8
  %70 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %acp_mmio, align 4
  %72 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %asic_type, align 4
  tail call fastcc void @config_acp_dma(ptr noundef %71, ptr noundef %69, i32 noundef %73)
  br label %if.end71

if.end71:                                         ; preds = %if.then64, %land.lhs.true60.if.end71_crit_edge, %if.end58.if.end71_crit_edge, %if.end42.if.end71_crit_edge
  %74 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %acp_mmio, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %add.ptr.i = getelementptr i8, ptr %75, i32 83292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #7, !srcloc !124
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %do.end
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acp_pcm_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %acp_mmio = getelementptr inbounds %struct.audio_drv_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acp_mmio, align 4
  %call1 = tail call fastcc i32 @acp_deinit(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %call1) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %acp_mmio, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %add.ptr.i = getelementptr i8, ptr %5, i32 83292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !124
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acp_pcm_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %acp_mmio = getelementptr inbounds %struct.audio_drv_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acp_mmio, align 4
  %asic_type = getelementptr inbounds %struct.audio_drv_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %asic_type, align 4
  %call1 = tail call fastcc i32 @acp_init(ptr noundef %3, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %acp_mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %acp_mmio, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %add.ptr.i = getelementptr i8, ptr %7, i32 83292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #7, !srcloc !124
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 %call1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !58, !59, !60, !61, !63, !65, !66, !67, !68, !70, !72, !74, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !100, !102, !103, !104, !106, !107, !108, !110, !111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @acp_bt_uart_enable, !1, !"acp_bt_uart_enable", i1 false, i1 false}
!1 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 39, i32 6}
!2 = !{ptr @__ksymtab_acp_bt_uart_enable, !3, !"__ksymtab_acp_bt_uart_enable", i1 false, i1 false}
!3 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 40, i32 1}
!4 = !{ptr @__initcall__kmod_acp_audio_dma__239_1395_acp_dma_driver_init6, !5, !"__initcall__kmod_acp_audio_dma__239_1395_acp_dma_driver_init6", i1 false, i1 false}
!5 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 1395, i32 1}
!6 = !{ptr @__exitcall_acp_dma_driver_exit, !5, !"__exitcall_acp_dma_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author240, !8, !"__UNIQUE_ID_author240", i1 false, i1 false}
!8 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 1397, i32 1}
!9 = !{ptr @__UNIQUE_ID_author241, !10, !"__UNIQUE_ID_author241", i1 false, i1 false}
!10 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 1398, i32 1}
!11 = !{ptr @__UNIQUE_ID_description242, !12, !"__UNIQUE_ID_description242", i1 false, i1 false}
!12 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 1399, i32 1}
!13 = !{ptr @__UNIQUE_ID_file243, !14, !"__UNIQUE_ID_file243", i1 false, i1 false}
!14 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 1400, i32 1}
!15 = !{ptr @__UNIQUE_ID_license244, !14, !"__UNIQUE_ID_license244", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_alias245, !17, !"__UNIQUE_ID_alias245", i1 false, i1 false}
!17 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 1401, i32 1}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 1390, i32 11}
!20 = !{ptr @acp_dma_driver, !21, !"acp_dma_driver", i1 false, i1 false}
!21 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 1386, i32 31}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 1226, i32 3}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @acp_audio_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @acp_audio_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 1254, i32 3}
!32 = !{ptr @acp_audio_probe._entry.6, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @acp_audio_probe._entry_ptr.8, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 1259, i32 10}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 1261, i32 3}
!38 = !{ptr @acp_audio_probe._entry.10, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @acp_audio_probe._entry_ptr.12, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 1270, i32 3}
!42 = !{ptr @acp_audio_probe._entry.13, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @acp_audio_probe._entry_ptr.15, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 1277, i32 3}
!46 = !{ptr @acp_audio_probe._entry.16, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @acp_audio_probe._entry_ptr.18, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 569, i32 4}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @acp_init._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @acp_init._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @acp_init._entry.21, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 587, i32 4}
!55 = !{ptr @acp_init._entry_ptr.22, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 543, i32 4}
!58 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @acp_set_sram_bank_state._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @acp_set_sram_bank_state._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @acp_asoc_platform, !62, !"acp_asoc_platform", i1 false, i1 false}
!62 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 1206, i32 46}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 795, i32 3}
!65 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @acp_dma_open._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @acp_dma_open._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @acp_st_pcm_hardware_playback, !69, !"acp_st_pcm_hardware_playback", i1 false, i1 false}
!69 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 80, i32 38}
!70 = !{ptr @acp_pcm_hardware_playback, !71, !"acp_pcm_hardware_playback", i1 false, i1 false}
!71 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 42, i32 38}
!72 = !{ptr @acp_st_pcm_hardware_capture, !73, !"acp_st_pcm_hardware_capture", i1 false, i1 false}
!73 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 99, i32 38}
!74 = !{ptr @acp_pcm_hardware_capture, !75, !"acp_pcm_hardware_capture", i1 false, i1 false}
!75 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 61, i32 38}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 195, i32 3}
!78 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @pre_config_reset._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @pre_config_reset._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 495, i32 4}
!83 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @acp_dma_stop._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @acp_dma_stop._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 1295, i32 3}
!88 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @acp_audio_remove._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @acp_audio_remove._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 663, i32 4}
!93 = !{ptr @acp_deinit._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @acp_deinit._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @acp_deinit._entry.34, !96, !"_entry", i1 false, i1 false}
!96 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 680, i32 4}
!97 = !{ptr @acp_deinit._entry_ptr.35, !96, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @acp_pm_ops, !99, !"acp_pm_ops", i1 false, i1 false}
!99 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 1380, i32 32}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 1310, i32 3}
!102 = !{ptr @acp_pcm_resume._entry, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @acp_pcm_resume._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.37, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 1361, i32 3}
!106 = !{ptr @acp_pcm_runtime_suspend._entry, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @acp_pcm_runtime_suspend._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.38, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/amd/acp-pcm-dma.c", i32 1373, i32 3}
!110 = !{ptr @acp_pcm_runtime_resume._entry, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @acp_pcm_runtime_resume._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{i64 4575232}
!122 = !{i64 2155001551}
!123 = !{i64 2155001768}
!124 = !{i64 4574814}
!125 = !{i8 0, i8 2}
!126 = !{i64 2155011013}
!127 = !{i64 2155010855}
!128 = !{!"branch_weights", i32 1, i32 2000}
!129 = !{i32 0, i32 33}
!130 = !{!"branch_weights", i32 2000, i32 1}
!131 = !{i64 2148225552, i64 2148225832, i64 2148226166, i64 2148226500}
!132 = !{i64 2155003825}
!133 = !{i64 2155004383}
