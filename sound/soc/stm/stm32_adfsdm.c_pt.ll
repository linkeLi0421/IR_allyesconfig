; ModuleID = '/llk/IR_all_yes/sound/soc/stm/stm32_adfsdm.c_pt.bc'
source_filename = "../sound/soc/stm/stm32_adfsdm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.stm32_adfsdm_priv = type { %struct.snd_soc_dai_driver, ptr, ptr, ptr, ptr, i8, ptr, i32, %struct.mutex }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
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

@__initcall__kmod_stm32_adfsdm__241_392_stm32_adfsdm_driver_init6 = internal global ptr @stm32_adfsdm_driver_init, section ".initcall6.init", align 4
@stm32_adfsdm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_adfsdm_probe, ptr @stm32_adfsdm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_adfsdm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_adfsdm_driver_exit = internal global ptr @stm32_adfsdm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description242 = internal constant [48 x i8] c"stm32_adfsdm.description=stm32 DFSDM DAI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [63 x i8] c"stm32_adfsdm.author=Arnaud Pouliquen <arnaud.pouliquen@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [45 x i8] c"stm32_adfsdm.file=sound/soc/stm/stm32_adfsdm\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [28 x i8] c"stm32_adfsdm.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias246 = internal constant [41 x i8] c"stm32_adfsdm.alias=platform:stm32-adfsdm\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stm32-adfsdm\00", [19 x i8] zeroinitializer }, align 32
@stm32_adfsdm_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32h7-dfsdm-dai\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stm32_adfsdm_dai = internal constant { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @stm32_adfsdm_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 1028, i32 1073741824, i32 8000, i32 48000, i32 1, i32 1, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@stm32_adfsdm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@stm32_adfsdm_dai_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.19, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@stm32_adfsdm_soc_platform = internal global { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_adfsdm_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_adfsdm_pcm_open, ptr @stm32_adfsdm_pcm_close, ptr null, ptr @stm32_adfsdm_pcm_hw_params, ptr null, ptr null, ptr @stm32_adfsdm_trigger, ptr null, ptr @stm32_adfsdm_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pcm\00", [28 x i8] zeroinitializer }, align 32
@stm32_adfsdm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 370, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Failed to register PCM platform\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stm32_adfsdm_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/soc/stm/stm32_adfsdm.c\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_adfsdm_probe._entry_ptr = internal global ptr @stm32_adfsdm_probe._entry, section ".printk_index", align 4
@stm32_adfsdm_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @stm32_adfsdm_set_sysclk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_adfsdm_shutdown, ptr null, ptr null, ptr @stm32_adfsdm_dai_prepare, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@stm32_adfsdm_set_sysclk.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.5, ptr @.str.10, i8 0, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stm32_adfsdm\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stm32_adfsdm_set_sysclk\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Enter for freq %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spi_clk_freq\00", [19 x i8] zeroinitializer }, align 32
@stm32_adfsdm_set_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.9, ptr @.str.5, i32 125, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Failed to set SPI clock\0A\00", [35 x i8] zeroinitializer }, align 32
@stm32_adfsdm_set_sysclk._entry_ptr = internal global ptr @stm32_adfsdm_set_sysclk._entry, section ".printk_index", align 4
@stm32_adfsdm_dai_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 90, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Failed to set %d sampling rate\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stm32_adfsdm_dai_prepare\00", [39 x i8] zeroinitializer }, align 32
@stm32_adfsdm_dai_prepare._entry_ptr = internal global ptr @stm32_adfsdm_dai_prepare._entry, section ".printk_index", align 4
@stm32_adfsdm_dai_prepare._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.5, i32 100, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: IIO channel start failed (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@stm32_adfsdm_dai_prepare._entry_ptr.18 = internal global ptr @stm32_adfsdm_dai_prepare._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stm32_dfsdm_audio\00", [46 x i8] zeroinitializer }, align 32
@stm32_adfsdm_pcm_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 590081, i64 1028, i32 0, i32 0, i32 0, i32 1, i32 1, i32 12288, i32 0, i32 2048, i32 2, i32 6, i32 0 }, [32 x i8] zeroinitializer }, align 32
@stm32_afsdm_pcm_cb.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.20, ptr @.str.5, ptr @.str.21, i8 0, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stm32_afsdm_pcm_cb\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: buff_add :%pK, pos = %d, size = %zu\0A\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 6]
@___asan_gen_.22 = private unnamed_addr constant [20 x i8] c"stm32_adfsdm_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 383, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 385, i32 14 }
@___asan_gen_.28 = private unnamed_addr constant [22 x i8] c"stm32_adfsdm_of_match\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 315, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"stm32_adfsdm_dai\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 137, i32 40 }
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 333, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [27 x i8] c"stm32_adfsdm_dai_component\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 150, i32 46 }
@___asan_gen_.43 = private unnamed_addr constant [26 x i8] c"stm32_adfsdm_soc_platform\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 306, i32 40 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 364, i32 30 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 369, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [21 x i8] c"stm32_adfsdm_dai_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 131, i32 37 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 116, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 120, i32 39 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 121, i32 50 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 124, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 89, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 99, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 151, i32 10 }
@___asan_gen_.109 = private unnamed_addr constant [20 x i8] c"stm32_adfsdm_pcm_hw\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 45, i32 38 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [32 x i8] c"../sound/soc/stm/stm32_adfsdm.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 182, i32 2 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_alias246, ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_stm32_adfsdm_driver_exit, ptr @__initcall__kmod_stm32_adfsdm__241_392_stm32_adfsdm_driver_init6, ptr @stm32_adfsdm_dai_prepare._entry, ptr @stm32_adfsdm_dai_prepare._entry.16, ptr @stm32_adfsdm_dai_prepare._entry_ptr, ptr @stm32_adfsdm_dai_prepare._entry_ptr.18, ptr @stm32_adfsdm_driver_exit, ptr @stm32_adfsdm_probe._entry, ptr @stm32_adfsdm_probe._entry_ptr, ptr @stm32_adfsdm_set_sysclk._entry, ptr @stm32_adfsdm_set_sysclk._entry_ptr, ptr @stm32_adfsdm_driver, ptr @.str, ptr @stm32_adfsdm_of_match, ptr @stm32_adfsdm_dai, ptr @stm32_adfsdm_probe.__key, ptr @.str.1, ptr @stm32_adfsdm_dai_component, ptr @stm32_adfsdm_soc_platform, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @stm32_adfsdm_dai_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @stm32_adfsdm_pcm_hw, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adfsdm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adfsdm_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adfsdm_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adfsdm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adfsdm_dai_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adfsdm_soc_platform to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adfsdm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adfsdm_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adfsdm_set_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adfsdm_dai_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adfsdm_dai_prepare._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adfsdm_pcm_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_adfsdm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_adfsdm_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_adfsdm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_adfsdm_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_adfsdm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 288, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 4
  %1 = call ptr @memcpy(ptr %call.i, ptr @stm32_adfsdm_dai, i32 168)
  %lock = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %call.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @stm32_adfsdm_probe.__key) #9
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev) #9
  %call7 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @stm32_adfsdm_dai_component, ptr noundef nonnull %call.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call ptr @devm_iio_channel_get_all(ptr noundef %dev) #9
  %iio_ch = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %iio_ch to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call11, ptr %iio_ch, align 8
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %call19 = tail call ptr @iio_channel_get_all_cb(ptr noundef %dev, ptr noundef nonnull @stm32_adfsdm_dummy_cb, ptr noundef null) #9
  %iio_cb = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %iio_cb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call19, ptr %iio_cb, align 4
  %cmp.i74 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i74, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end25:                                         ; preds = %if.end17
  %call.i75 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 256, i32 noundef 3520) #9
  %tobool28.not = icmp eq ptr %call.i75, null
  br i1 %tobool28.not, label %if.end25.cleanup_crit_edge, label %if.end30

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %call32 = tail call i32 @snd_soc_component_initialize(ptr noundef nonnull %call.i75, ptr noundef nonnull @stm32_adfsdm_soc_platform, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end30.cleanup_crit_edge, label %if.end35

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  %debugfs_prefix = getelementptr inbounds %struct.snd_soc_component, ptr %call.i75, i32 0, i32 26
  %7 = ptrtoint ptr %debugfs_prefix to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.2, ptr %debugfs_prefix, align 4
  %call36 = tail call i32 @snd_soc_add_component(ptr noundef nonnull %call.i75, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %do.end41, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %if.end35.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.then22, %if.then14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then14 ], [ %6, %if.then22 ], [ -12, %entry.cleanup_crit_edge ], [ %call7, %if.end.cleanup_crit_edge ], [ -12, %if.end25.cleanup_crit_edge ], [ %call32, %if.end30.cleanup_crit_edge ], [ %call36, %do.end41 ], [ %call36, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_adfsdm_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @snd_soc_unregister_component(ptr noundef %dev) #9
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_channel_get_all_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_adfsdm_dummy_cb(ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %private) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_initialize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_adfsdm_set_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  %str_freq = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %str_freq) #9
  %4 = call ptr @memset(ptr %str_freq, i32 255, i32 10)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_adfsdm_set_sysclk.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_adfsdm_set_sysclk, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !78

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_adfsdm_set_sysclk.__UNIQUE_ID_ddebug239, ptr noundef %6, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i32 noundef %freq) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str_freq, i32 noundef 10, ptr noundef nonnull @.str.11, i32 noundef %freq)
  %iio_ch = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %iio_ch to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iio_ch, align 8
  %call6 = call i32 @iio_write_channel_ext_info(ptr noundef %8, ptr noundef nonnull @.str.12, ptr noundef nonnull %str_freq, i32 noundef 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call6)
  %cmp.not = icmp eq i32 %call6, 10
  br i1 %cmp.not, label %do.end.cleanup_crit_edge, label %do.end10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.9) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end10 ], [ 0, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %str_freq) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_adfsdm_shutdown(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %3, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %iio_active = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %iio_active to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %iio_active, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %iio_cb = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %iio_cb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iio_cb, align 4
  tail call void @iio_channel_stop_all_cb(ptr noundef %7) #9
  %8 = ptrtoint ptr %iio_active to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %iio_active, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_adfsdm_dai_prepare(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %3, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %iio_active = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %iio_active to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %iio_active, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %iio_cb = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %iio_cb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iio_cb, align 4
  tail call void @iio_channel_stop_all_cb(ptr noundef %7) #9
  %8 = ptrtoint ptr %iio_active to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %iio_active, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %iio_ch = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %iio_ch to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iio_ch, align 8
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %11 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %runtime, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rate, align 4
  %call2 = tail call i32 @iio_write_channel_attribute(ptr noundef %10, i32 noundef %14, i32 noundef 0, i32 noundef 12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %17 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %runtime, align 4
  %rate5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %rate5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rate5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %20) #12
  br label %out

if.end6:                                          ; preds = %if.end
  %21 = ptrtoint ptr %iio_active to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %iio_active, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool8.not = icmp eq i8 %22, 0
  br i1 %tobool8.not, label %if.then9, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then9:                                         ; preds = %if.end6
  %iio_cb10 = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %3, i32 0, i32 4
  %23 = ptrtoint ptr %iio_cb10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iio_cb10, align 4
  %call11 = tail call i32 @iio_channel_start_all_cb(ptr noundef %24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %do.end17

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %iio_active to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %iio_active, align 8
  br label %out

do.end17:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %call11) #12
  br label %out

out:                                              ; preds = %do.end17, %if.then13, %if.end6.out_crit_edge, %do.end
  %ret.0 = phi i32 [ %call2, %do.end ], [ %call2, %if.end6.out_crit_edge ], [ %call11, %do.end17 ], [ 0, %if.then13 ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_write_channel_ext_info(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_channel_stop_all_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_write_channel_attribute(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_channel_start_all_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_adfsdm_pcm_new(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %rtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 7
  %0 = ptrtoint ptr %pcm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm1, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 9
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
  %dev = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %call2 = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %1, i32 noundef 2, ptr noundef %11, i32 noundef 12288, i32 noundef 12288) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_adfsdm_pcm_open(ptr nocapture noundef readnone %component, ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %call1 = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %substream, ptr noundef nonnull @stm32_adfsdm_pcm_hw) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %substream2 = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %substream2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %substream, ptr %substream2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_adfsdm_pcm_close(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %substream1 = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %substream1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %substream1, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_adfsdm_pcm_hw_params(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %10 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime, align 4
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 50
  %12 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_area, align 4
  %pcm_buff = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %9, i32 0, i32 6
  %14 = ptrtoint ptr %pcm_buff to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %pcm_buff, align 4
  %iio_cb = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %9, i32 0, i32 4
  %15 = ptrtoint ptr %iio_cb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iio_cb, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 5
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 4
  %call2 = tail call i32 @iio_channel_cb_set_buffer_watermark(ptr noundef %16, i32 noundef %18) #9
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_adfsdm_trigger(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %10 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge10
    i32 5, label %entry.sw.bb2_crit_edge
    i32 0, label %entry.sw.bb2_crit_edge11
  ]

entry.sw.bb2_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb_crit_edge10:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge10
  %pos = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %9, i32 0, i32 7
  %11 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %pos, align 8
  %iio_ch = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %iio_ch to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iio_ch, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call1 = tail call i32 @stm32_dfsdm_get_buff_cb(ptr noundef %15, ptr noundef nonnull @stm32_afsdm_pcm_cb, ptr noundef %9) #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge11
  %iio_ch3 = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %9, i32 0, i32 3
  %16 = ptrtoint ptr %iio_ch3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iio_ch3, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %call5 = tail call i32 @stm32_dfsdm_release_buff_cb(ptr noundef %19) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %sw.bb2 ], [ %call1, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_adfsdm_pcm_pointer(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %10 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime, align 4
  %pos = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %9, i32 0, i32 7
  %12 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pos, align 8
  %mul.i = shl i32 %13, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 21
  %14 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %15
  ret i32 %div.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_channel_cb_set_buffer_watermark(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stm32_dfsdm_get_buff_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_afsdm_pcm_cb(ptr nocapture noundef readonly %data, i32 noundef %size, ptr nocapture noundef %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %substream = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %private, i32 0, i32 1
  %0 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream, align 8
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %pcm_buff1 = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %private, i32 0, i32 6
  %4 = ptrtoint ptr %pcm_buff1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcm_buff1, align 4
  %pos = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %private, i32 0, i32 7
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pos, align 8
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime1.i, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buffer_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 21
  %12 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %13, %11
  %div1.i.i = lshr i32 %mul.i.i, 3
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 16
  %14 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %period_size.i, align 4
  %mul.i.i102 = mul i32 %15, %13
  %div1.i.i103 = lshr i32 %mul.i.i102, 3
  %format6 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 12
  %16 = ptrtoint ptr %format6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %format6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp = icmp eq i32 %17, 2
  %shr = zext i1 %cmp to i32
  %spec.select = lshr i32 %size, %shr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_afsdm_pcm_cb.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_afsdm_pcm_cb, %if.then10)) #9
          to label %do.end [label %if.then10], !srcloc !78

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %20 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pos, align 8
  %arrayidx = getelementptr i8, ptr %5, i32 %21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_afsdm_pcm_cb.__UNIQUE_ID_ddebug240, ptr noundef %19, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, ptr noundef %arrayidx, i32 noundef %21, i32 noundef %spec.select) #9
  br label %do.end

do.end:                                           ; preds = %if.then10, %entry
  %22 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pos, align 8
  %add = add i32 %23, %spec.select
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %div1.i.i)
  %cmp15 = icmp ugt i32 %add, %div1.i.i
  br i1 %cmp15, label %if.then16, label %do.end.if.end31_crit_edge

do.end.if.end31_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then16:                                        ; preds = %do.end
  br i1 %cmp, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then16
  %sub = sub i32 %div1.i.i, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp.not7.i = icmp ult i32 %sub, 2
  br i1 %cmp.not7.i, label %if.then18.if.end26_crit_edge, label %for.body.preheader.i

if.then18.if.end26_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

for.body.preheader.i:                             ; preds = %if.then18
  %arrayidx20 = getelementptr i8, ptr %5, i32 %23
  %shr.i = lshr i32 %sub, 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %src.pn10.i = phi ptr [ %incdec.ptr1.i, %for.body.i.for.body.i_crit_edge ], [ %data, %for.body.preheader.i ]
  %d.09.i = phi ptr [ %incdec.ptr2.i, %for.body.i.for.body.i_crit_edge ], [ %arrayidx20, %for.body.preheader.i ]
  %i.08.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %shr.i, %for.body.preheader.i ]
  %s.0.i = getelementptr i16, ptr %src.pn10.i, i32 1
  %incdec.ptr1.i = getelementptr i16, ptr %src.pn10.i, i32 2
  %24 = ptrtoint ptr %s.0.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %s.0.i, align 2
  %incdec.ptr2.i = getelementptr i16, ptr %d.09.i, i32 1
  %26 = ptrtoint ptr %d.09.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %d.09.i, align 2
  %dec.i = add nsw i32 %i.08.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %for.body.i.if.end26_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.if.end26_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.else:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx23 = getelementptr i8, ptr %5, i32 %23
  %sub25 = sub i32 %div1.i.i, %23
  %27 = call ptr @memcpy(ptr %arrayidx23, ptr %data, i32 %sub25)
  br label %if.end26

if.end26:                                         ; preds = %if.else, %for.body.i.if.end26_crit_edge, %if.then18.if.end26_crit_edge
  %28 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pos, align 8
  %sub28.neg = sub i32 %spec.select, %div1.i.i
  %sub29 = add i32 %sub28.neg, %29
  store i32 0, ptr %pos, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.end26, %do.end.if.end31_crit_edge
  %cur_size.0 = phi i32 [ %sub29, %if.end26 ], [ %spec.select, %do.end.if.end31_crit_edge ]
  br i1 %cmp, label %if.then33, label %if.else38

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cur_size.0)
  %cmp.not7.i104 = icmp ult i32 %cur_size.0, 2
  br i1 %cmp.not7.i104, label %if.then33.if.end43_crit_edge, label %for.body.preheader.i106

if.then33.if.end43_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

for.body.preheader.i106:                          ; preds = %if.then33
  %sub36 = sub i32 %spec.select, %cur_size.0
  %arrayidx37 = getelementptr i8, ptr %data, i32 %sub36
  %30 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pos, align 8
  %arrayidx35 = getelementptr i8, ptr %5, i32 %31
  %shr.i105 = lshr i32 %cur_size.0, 1
  br label %for.body.i115

for.body.i115:                                    ; preds = %for.body.i115.for.body.i115_crit_edge, %for.body.preheader.i106
  %src.pn10.i107 = phi ptr [ %incdec.ptr1.i111, %for.body.i115.for.body.i115_crit_edge ], [ %arrayidx37, %for.body.preheader.i106 ]
  %d.09.i108 = phi ptr [ %incdec.ptr2.i112, %for.body.i115.for.body.i115_crit_edge ], [ %arrayidx35, %for.body.preheader.i106 ]
  %i.08.i109 = phi i32 [ %dec.i113, %for.body.i115.for.body.i115_crit_edge ], [ %shr.i105, %for.body.preheader.i106 ]
  %s.0.i110 = getelementptr i16, ptr %src.pn10.i107, i32 1
  %incdec.ptr1.i111 = getelementptr i16, ptr %src.pn10.i107, i32 2
  %32 = ptrtoint ptr %s.0.i110 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %s.0.i110, align 2
  %incdec.ptr2.i112 = getelementptr i16, ptr %d.09.i108, i32 1
  %34 = ptrtoint ptr %d.09.i108 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %d.09.i108, align 2
  %dec.i113 = add nsw i32 %i.08.i109, -1
  %cmp.not.i114 = icmp eq i32 %dec.i113, 0
  br i1 %cmp.not.i114, label %for.body.i115.if.end43_crit_edge, label %for.body.i115.for.body.i115_crit_edge

for.body.i115.for.body.i115_crit_edge:            ; preds = %for.body.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i115

for.body.i115.if.end43_crit_edge:                 ; preds = %for.body.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.else38:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pos, align 8
  %arrayidx40 = getelementptr i8, ptr %5, i32 %36
  %sub41 = sub i32 %spec.select, %cur_size.0
  %arrayidx42 = getelementptr i8, ptr %data, i32 %sub41
  %37 = call ptr @memcpy(ptr %arrayidx40, ptr %arrayidx42, i32 %cur_size.0)
  br label %if.end43

if.end43:                                         ; preds = %if.else38, %for.body.i115.if.end43_crit_edge, %if.then33.if.end43_crit_edge
  %38 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pos, align 8
  %add45 = add i32 %39, %cur_size.0
  %rem = urem i32 %add45, %div1.i.i
  store i32 %rem, ptr %pos, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %cur_size.0)
  %cmp47.not = icmp eq i32 %spec.select, %cur_size.0
  br i1 %cmp47.not, label %lor.lhs.false, label %if.end43.if.then51_crit_edge

if.end43.if.then51_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then51

lor.lhs.false:                                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool48.not = icmp eq i32 %7, 0
  br i1 %tobool48.not, label %lor.lhs.false.if.end53_crit_edge, label %land.lhs.true

lor.lhs.false.if.end53_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

land.lhs.true:                                    ; preds = %lor.lhs.false
  %rem49 = urem i32 %7, %div1.i.i103
  call void @__sanitizer_cov_trace_cmp4(i32 %rem49, i32 %size)
  %cmp50 = icmp ult i32 %rem49, %size
  br i1 %cmp50, label %land.lhs.true.if.then51_crit_edge, label %land.lhs.true.if.end53_crit_edge

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

land.lhs.true.if.then51_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then51

if.then51:                                        ; preds = %land.lhs.true.if.then51_crit_edge, %if.end43.if.then51_crit_edge
  %40 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %substream, align 8
  tail call void @snd_pcm_period_elapsed(ptr noundef %41) #9
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %land.lhs.true.if.end53_crit_edge, %lor.lhs.false.if.end53_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stm32_dfsdm_release_buff_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_unregister_component(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !35, !36, !37, !38, !40, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !59, !61, !63, !65, !66, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__initcall__kmod_stm32_adfsdm__241_392_stm32_adfsdm_driver_init6, !1, !"__initcall__kmod_stm32_adfsdm__241_392_stm32_adfsdm_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/stm/stm32_adfsdm.c", i32 392, i32 1}
!2 = !{ptr @__exitcall_stm32_adfsdm_driver_exit, !1, !"__exitcall_stm32_adfsdm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description242, !4, !"__UNIQUE_ID_description242", i1 false, i1 false}
!4 = !{!"../sound/soc/stm/stm32_adfsdm.c", i32 394, i32 1}
!5 = !{ptr @__UNIQUE_ID_author243, !6, !"__UNIQUE_ID_author243", i1 false, i1 false}
!6 = !{!"../sound/soc/stm/stm32_adfsdm.c", i32 395, i32 1}
!7 = !{ptr @__UNIQUE_ID_file244, !8, !"__UNIQUE_ID_file244", i1 false, i1 false}
!8 = !{!"../sound/soc/stm/stm32_adfsdm.c", i32 396, i32 1}
!9 = !{ptr @__UNIQUE_ID_license245, !8, !"__UNIQUE_ID_license245", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias246, !11, !"__UNIQUE_ID_alias246", i1 false, i1 false}
!11 = !{!"../sound/soc/stm/stm32_adfsdm.c", i32 397, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/stm/stm32_adfsdm.c", i32 385, i32 14}
!14 = !{ptr @stm32_adfsdm_driver, !15, !"stm32_adfsdm_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/stm/stm32_adfsdm.c", i32 383, i32 31}
!16 = !{ptr @stm32_adfsdm_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../sound/soc/stm/stm32_adfsdm.c", i32 333, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/stm/stm32_adfsdm.c", i32 364, i32 30}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/stm/stm32_adfsdm.c", i32 369, i32 3}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @stm32_adfsdm_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @stm32_adfsdm_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @stm32_adfsdm_dai, !30, !"stm32_adfsdm_dai", i1 false, i1 false}
!30 = !{!"../sound/soc/stm/stm32_adfsdm.c", i32 137, i32 40}
!31 = !{ptr @stm32_adfsdm_dai_ops, !32, !"stm32_adfsdm_dai_ops", i1 false, i1 false}
!32 = !{!"../sound/soc/stm/stm32_adfsdm.c", i32 131, i32 37}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/stm/stm32_adfsdm.c", i32 116, i32 2}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @stm32_adfsdm_set_sysclk.__UNIQUE_ID_ddebug239, !34, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/stm/stm32_adfsdm.c", i32 120, i32 39}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/stm/stm32_adfsdm.c", i32 121, i32 50}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/stm/stm32_adfsdm.c", i32 124, i32 3}
!44 = !{ptr @stm32_adfsdm_set_sysclk._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @stm32_adfsdm_set_sysclk._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/stm/stm32_adfsdm.c", i32 89, i32 3}
!48 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @stm32_adfsdm_dai_prepare._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @stm32_adfsdm_dai_prepare._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/stm/stm32_adfsdm.c", i32 99, i32 4}
!53 = !{ptr @stm32_adfsdm_dai_prepare._entry.16, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @stm32_adfsdm_dai_prepare._entry_ptr.18, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/stm/stm32_adfsdm.c", i32 151, i32 10}
!57 = !{ptr @stm32_adfsdm_dai_component, !58, !"stm32_adfsdm_dai_component", i1 false, i1 false}
!58 = !{!"../sound/soc/stm/stm32_adfsdm.c", i32 150, i32 46}
!59 = !{ptr @stm32_adfsdm_soc_platform, !60, !"stm32_adfsdm_soc_platform", i1 false, i1 false}
!60 = !{!"../sound/soc/stm/stm32_adfsdm.c", i32 306, i32 40}
!61 = !{ptr @stm32_adfsdm_pcm_hw, !62, !"stm32_adfsdm_pcm_hw", i1 false, i1 false}
!62 = !{!"../sound/soc/stm/stm32_adfsdm.c", i32 45, i32 38}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/stm/stm32_adfsdm.c", i32 182, i32 2}
!65 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @stm32_afsdm_pcm_cb.__UNIQUE_ID_ddebug240, !64, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!67 = !{ptr @stm32_adfsdm_of_match, !68, !"stm32_adfsdm_of_match", i1 false, i1 false}
!68 = !{!"../sound/soc/stm/stm32_adfsdm.c", i32 315, i32 34}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i64 2148730614, i64 2148730619, i64 2148730632, i64 2148730676, i64 2148730710, i64 2148730731}
!79 = !{i8 0, i8 2}
