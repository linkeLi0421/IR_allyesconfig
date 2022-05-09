; ModuleID = '/llk/IR_all_yes/sound/soc/stm/stm32_sai_sub.c_pt.bc'
source_filename = "../sound/soc/stm/stm32_sai_sub.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_dmaengine_pcm_config = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.stm32_sai_sub_data = type { ptr, ptr, ptr, %struct.snd_dmaengine_dai_dma_data, %struct.snd_soc_dai_driver, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.snd_aes_iec958, %struct.mutex, %struct.spinlock }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }
%struct.stm32_sai_data = type { ptr, ptr, ptr, ptr, ptr, %struct.stm32_sai_conf, i32, ptr, i32 }
%struct.stm32_sai_conf = type { i32, i32, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.stm32_sai_mclk_data = type { %struct.clk_hw, i32, ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.82, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.82 = type { %struct.anon.85, [40 x i8] }
%struct.anon.85 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.81, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.81 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.76, [128 x i8] }
%union.anon.76 = type { %union.anon.78 }
%union.anon.78 = type { [64 x i64] }
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

@__initcall__kmod_snd_soc_stm32_sai_sub__262_1625_stm32_sai_sub_driver_init6 = internal global ptr @stm32_sai_sub_driver_init, section ".initcall6.init", align 4
@stm32_sai_sub_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_sai_sub_probe, ptr @stm32_sai_sub_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_sai_sub_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_sai_sub_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_sai_sub_driver_exit = internal global ptr @stm32_sai_sub_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description263 = internal constant [68 x i8] c"snd_soc_stm32_sai_sub.description=STM32 Soc SAI sub-block Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_author264 = internal constant [68 x i8] c"snd_soc_stm32_sai_sub.author=Olivier Moysan <olivier.moysan@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias265 = internal constant [54 x i8] c"snd_soc_stm32_sai_sub.alias=platform:st,stm32-sai-sub\00", section ".modinfo", align 1
@__UNIQUE_ID_file266 = internal constant [63 x i8] c"snd_soc_stm32_sai_sub.file=sound/soc/stm/snd-soc-stm32-sai-sub\00", section ".modinfo", align 1
@__UNIQUE_ID_license267 = internal constant [37 x i8] c"snd_soc_stm32_sai_sub.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"st,stm32-sai-sub\00", [47 x i8] zeroinitializer }, align 32
@stm32_sai_sub_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-sai-sub-a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-sai-sub-b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@stm32_sai_sub_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_sai_sub_suspend, ptr @stm32_sai_sub_resume, ptr @stm32_sai_sub_suspend, ptr @stm32_sai_sub_resume, ptr @stm32_sai_sub_suspend, ptr @stm32_sai_sub_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@stm32_sai_pcm_config = internal constant { %struct.snd_dmaengine_pcm_config, [60 x i8] } { %struct.snd_dmaengine_pcm_config { ptr @snd_dmaengine_pcm_prepare_slave_config, ptr null, ptr null, ptr null, ptr null, [2 x ptr] zeroinitializer, ptr @stm32_sai_pcm_hw, i32 0 }, [60 x i8] zeroinitializer }, align 32
@stm32_sai_sub_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&sai->ctrl_lock\00", [16 x i8] zeroinitializer }, align 32
@stm32_sai_sub_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&sai->irq_lock\00", [17 x i8] zeroinitializer }, align 32
@stm32_sai_sub_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1523, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Parent device data not available\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32_sai_sub_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/soc/stm/stm32_sai_sub.c\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_sai_sub_probe._entry_ptr = internal global ptr @stm32_sai_sub_probe._entry, section ".printk_index", align 4
@stm32_sai_playback_dai = internal constant { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr null, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @stm32_sai_dai_probe, ptr null, ptr null, ptr @stm32_sai_pcm_new, ptr @stm32_sai_pcm_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr null, i64 1029, i32 1073741824, i32 8000, i32 192000, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@stm32_sai_capture_dai = internal constant { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr null, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @stm32_sai_dai_probe, ptr null, ptr null, ptr null, ptr @stm32_sai_pcm_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 1029, i32 1073741824, i32 8000, i32 192000, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@stm32_sai_sub_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 1540, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IRQ request returned %d\0A\00", [39 x i8] zeroinitializer }, align 32
@stm32_sai_sub_probe._entry_ptr.11 = internal global ptr @stm32_sai_sub_probe._entry.9, section ".printk_index", align 4
@stm32_sai_pcm_config_spdif = internal constant { %struct.snd_dmaengine_pcm_config, [60 x i8] } { %struct.snd_dmaengine_pcm_config { ptr @snd_dmaengine_pcm_prepare_slave_config, ptr null, ptr @stm32_sai_pcm_process_spdif, ptr null, ptr null, [2 x ptr] zeroinitializer, ptr @stm32_sai_pcm_hw_spdif, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not register pcm dma\0A\00", [36 x i8] zeroinitializer }, align 32
@stm32_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.134, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@stm32_sai_pcm_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 257, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 32768, i32 1024, i32 4096, i32 2, i32 8, i32 0 }, [32 x i8] zeroinitializer }, align 32
@stm32_sai_sub_regmap_config_f4 = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @stm32_sai_sub_writeable_reg, ptr @stm32_sai_sub_readable_reg, ptr @stm32_sai_sub_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 28, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@stm32_sai_sub_regmap_config_h7 = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @stm32_sai_sub_writeable_reg, ptr @stm32_sai_sub_readable_reg, ptr @stm32_sai_sub_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 68, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@stm32_sai_sub_parse_of._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"stm32_sai_sub:1381:(sai->regmap_config)->lock\00", [50 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Regmap init error\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dma-names\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@stm32_sai_sub_parse_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.6, i32 1392, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unsupported direction\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stm32_sai_sub_parse_of\00", [41 x i8] zeroinitializer }, align 32
@stm32_sai_sub_parse_of._entry_ptr = internal global ptr @stm32_sai_sub_parse_of._entry, section ".printk_index", align 4
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"st,iec60958\00", [20 x i8] zeroinitializer }, align 32
@stm32_sai_sub_parse_of._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.6, i32 1401, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"S/PDIF IEC60958 not supported\0A\00", [33 x i8] zeroinitializer }, align 32
@stm32_sai_sub_parse_of._entry_ptr.23 = internal global ptr @stm32_sai_sub_parse_of._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"st,sync\00", [24 x i8] zeroinitializer }, align 32
@stm32_sai_sub_parse_of._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.19, ptr @.str.6, i32 1413, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get st,sync property\0A\00", [32 x i8] zeroinitializer }, align 32
@stm32_sai_sub_parse_of._entry_ptr.27 = internal global ptr @stm32_sai_sub_parse_of._entry.25, section ".printk_index", align 4
@stm32_sai_sub_parse_of._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.19, ptr @.str.6, i32 1420, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%pOFn sync own reference\0A\00", [38 x i8] zeroinitializer }, align 32
@stm32_sai_sub_parse_of._entry_ptr.30 = internal global ptr @stm32_sai_sub_parse_of._entry.28, section ".printk_index", align 4
@stm32_sai_sub_parse_of._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.19, ptr @.str.6, i32 1428, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%pOFn parent node not found\0A\00", [35 x i8] zeroinitializer }, align 32
@stm32_sai_sub_parse_of._entry_ptr.33 = internal global ptr @stm32_sai_sub_parse_of._entry.31, section ".printk_index", align 4
@stm32_sai_sub_parse_of._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.19, ptr @.str.6, i32 1437, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"External synchro not supported\0A\00", [32 x i8] zeroinitializer }, align 32
@stm32_sai_sub_parse_of._entry_ptr.36 = internal global ptr @stm32_sai_sub_parse_of._entry.34, section ".printk_index", align 4
@stm32_sai_sub_parse_of._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.19, ptr @.str.6, i32 1446, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Wrong SAI index\0A\00", [47 x i8] zeroinitializer }, align 32
@stm32_sai_sub_parse_of._entry_ptr.39 = internal global ptr @stm32_sai_sub_parse_of._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compatible\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"st,stm32-sai-sub-a\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"st,stm32-sai-sub-b\00", [45 x i8] zeroinitializer }, align 32
@stm32_sai_sub_parse_of._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.19, ptr @.str.6, i32 1460, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown SAI sub-block\0A\00", [41 x i8] zeroinitializer }, align 32
@stm32_sai_sub_parse_of._entry_ptr.45 = internal global ptr @stm32_sai_sub_parse_of._entry.43, section ".printk_index", align 4
@stm32_sai_sub_parse_of.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.46, ptr @.str.19, ptr @.str.6, ptr @.str.47, i8 1, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_soc_stm32_sai_sub\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s synchronized with %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sai_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Missing kernel clock sai_ck\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"#clock-cells\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MCLK\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"a_mclk\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"b_mclk\00", [25 x i8] zeroinitializer }, align 32
@mclk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @stm32_sai_mclk_enable, ptr @stm32_sai_mclk_disable, ptr null, ptr null, ptr null, ptr null, ptr @stm32_sai_mclk_recalc_rate, ptr @stm32_sai_mclk_round_rate, ptr null, ptr null, ptr null, ptr @stm32_sai_mclk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@stm32_sai_add_mclk_provider.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.46, ptr @.str.54, ptr @.str.6, ptr @.str.55, i8 0, i8 120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"stm32_sai_add_mclk_provider\00", [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Register master clock %s\0A\00", [38 x i8] zeroinitializer }, align 32
@stm32_sai_add_mclk_provider._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.6, i32 484, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mclk register returned %d\0A\00", [37 x i8] zeroinitializer }, align 32
@stm32_sai_add_mclk_provider._entry_ptr = internal global ptr @stm32_sai_add_mclk_provider._entry, section ".printk_index", align 4
@stm32_sai_mclk_enable.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.46, ptr @.str.57, ptr @.str.6, ptr @.str.58, i8 0, i8 106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32_sai_mclk_enable\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Enable master clock\0A\00", [43 x i8] zeroinitializer }, align 32
@stm32_sai_mclk_disable.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.46, ptr @.str.59, ptr @.str.6, ptr @.str.60, i8 0, i8 108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stm32_sai_mclk_disable\00", [41 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Disable master clock\0A\00", [42 x i8] zeroinitializer }, align 32
@stm32_sai_get_clk_div._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.6, i32 323, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Divider %d out of range\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32_sai_get_clk_div\00", [42 x i8] zeroinitializer }, align 32
@stm32_sai_get_clk_div._entry_ptr = internal global ptr @stm32_sai_get_clk_div._entry, section ".printk_index", align 4
@stm32_sai_get_clk_div.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.46, ptr @.str.62, ptr @.str.6, ptr @.str.63, i8 0, i8 81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SAI divider %d\0A\00", [16 x i8] zeroinitializer }, align 32
@stm32_sai_get_clk_div.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.46, ptr @.str.62, ptr @.str.6, ptr @.str.64, i8 0, i8 82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Rate not accurate. requested (%ld), actual (%ld)\0A\00", [46 x i8] zeroinitializer }, align 32
@stm32_sai_set_clk_div._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.65, ptr @.str.6, i32 343, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32_sai_set_clk_div\00", [42 x i8] zeroinitializer }, align 32
@stm32_sai_set_clk_div._entry_ptr = internal global ptr @stm32_sai_set_clk_div._entry, section ".printk_index", align 4
@stm32_sai_set_clk_div._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.6, i32 351, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to update CR1 register\0A\00", [33 x i8] zeroinitializer }, align 32
@stm32_sai_set_clk_div._entry_ptr.68 = internal global ptr @stm32_sai_set_clk_div._entry.66, section ".printk_index", align 4
@stm32_sai_pcm_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @stm32_sai_set_sysclk, ptr null, ptr null, ptr null, ptr @stm32_sai_set_dai_fmt, ptr null, ptr @stm32_sai_set_dai_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_sai_startup, ptr @stm32_sai_shutdown, ptr @stm32_sai_hw_params, ptr null, ptr null, ptr @stm32_sai_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@iec958_ctls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.71, i32 0, i32 7, i32 0, ptr @snd_pcm_iec958_info, ptr @snd_pcm_iec958_get, ptr @snd_pcm_iec958_put, %union.anon.86 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@stm32_sai_pcm_new.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.46, ptr @.str.69, ptr @.str.6, ptr @.str.70, i8 1, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stm32_sai_pcm_new\00", [46 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: register iec controls\00", [38 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 Playback Default\00", [40 x i8] zeroinitializer }, align 32
@stm32_sai_set_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.72, ptr @.str.6, i32 583, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stm32_sai_set_sysclk\00", [43 x i8] zeroinitializer }, align 32
@stm32_sai_set_sysclk._entry_ptr = internal global ptr @stm32_sai_set_sysclk._entry, section ".printk_index", align 4
@.str.73 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Active streams have incompatible rates\00", [57 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not set mclk rate\0A\00", [39 x i8] zeroinitializer }, align 32
@stm32_sai_set_sysclk.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.46, ptr @.str.72, ptr @.str.6, ptr @.str.75, i8 0, i8 -110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SAI MCLK frequency is %uHz\0A\00", [36 x i8] zeroinitializer }, align 32
@stm32_sai_set_parent_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.6, i32 370, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c" Error %d setting sai_ck parent clock. %s\00", [54 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"stm32_sai_set_parent_clock\00", [37 x i8] zeroinitializer }, align 32
@stm32_sai_set_parent_clock._entry_ptr = internal global ptr @stm32_sai_set_parent_clock._entry, section ".printk_index", align 4
@.str.78 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Active stream rates conflict\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@stm32_sai_set_dai_fmt.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.46, ptr @.str.80, ptr @.str.6, ptr @.str.81, i8 0, i8 -93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32_sai_set_dai_fmt\00", [42 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fmt %x\0A\00", [24 x i8] zeroinitializer }, align 32
@stm32_sai_set_dai_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.6, i32 688, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported protocol %#x\0A\00", [38 x i8] zeroinitializer }, align 32
@stm32_sai_set_dai_fmt._entry_ptr = internal global ptr @stm32_sai_set_dai_fmt._entry, section ".printk_index", align 4
@stm32_sai_set_dai_fmt._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.80, ptr @.str.6, i32 713, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported strobing %#x\0A\00", [38 x i8] zeroinitializer }, align 32
@stm32_sai_set_dai_fmt._entry_ptr.85 = internal global ptr @stm32_sai_set_dai_fmt._entry.83, section ".printk_index", align 4
@stm32_sai_set_dai_fmt._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.80, ptr @.str.6, i32 733, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unsupported mode %#x\0A\00", [42 x i8] zeroinitializer }, align 32
@stm32_sai_set_dai_fmt._entry_ptr.88 = internal global ptr @stm32_sai_set_dai_fmt._entry.86, section ".printk_index", align 4
@stm32_sai_set_dai_fmt.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.46, ptr @.str.80, ptr @.str.6, ptr @.str.89, i8 0, i8 -72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Synchronized SAI configured as slave\0A\00", [58 x i8] zeroinitializer }, align 32
@stm32_sai_set_dai_fmt._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.80, ptr @.str.6, i32 749, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@stm32_sai_set_dai_fmt._entry_ptr.91 = internal global ptr @stm32_sai_set_dai_fmt._entry.90, section ".printk_index", align 4
@stm32_sai_set_dai_tdm_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.6, i32 601, ptr @.str.94, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Slot setting relevant only for TDM\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"stm32_sai_set_dai_tdm_slot\00", [37 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@stm32_sai_set_dai_tdm_slot._entry_ptr = internal global ptr @stm32_sai_set_dai_tdm_slot._entry, section ".printk_index", align 4
@stm32_sai_set_dai_tdm_slot.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.46, ptr @.str.93, ptr @.str.6, ptr @.str.95, i8 0, i8 -105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Masks tx/rx:%#x/%#x, slots:%d, width:%d\0A\00", [55 x i8] zeroinitializer }, align 32
@stm32_sai_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.6, i32 779, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable clock: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stm32_sai_startup\00", [46 x i8] zeroinitializer }, align 32
@stm32_sai_startup._entry_ptr = internal global ptr @stm32_sai_startup._entry, section ".printk_index", align 4
@stm32_sai_set_slots._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.6, i32 876, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Data size %d larger than slot width\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32_sai_set_slots\00", [44 x i8] zeroinitializer }, align 32
@stm32_sai_set_slots._entry_ptr = internal global ptr @stm32_sai_set_slots._entry, section ".printk_index", align 4
@stm32_sai_set_slots.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.46, ptr @.str.99, ptr @.str.6, ptr @.str.100, i8 0, i8 -32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Slots %d, slot width %d\0A\00", [39 x i8] zeroinitializer }, align 32
@stm32_sai_set_frame.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.46, ptr @.str.101, ptr @.str.6, ptr @.str.102, i8 0, i8 -26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32_sai_set_frame\00", [44 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Frame length %d, frame active %d\0A\00", [62 x i8] zeroinitializer }, align 32
@stm32_sai_set_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.6, i32 841, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Data format not supported\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stm32_sai_set_config\00", [43 x i8] zeroinitializer }, align 32
@stm32_sai_set_config._entry_ptr = internal global ptr @stm32_sai_set_config._entry, section ".printk_index", align 4
@stm32_sai_set_config._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.104, ptr @.str.6, i32 851, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@stm32_sai_set_config._entry_ptr.106 = internal global ptr @stm32_sai_set_config._entry.105, section ".printk_index", align 4
@stm32_sai_configure_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.6, i32 1044, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Wrong mclk ratio %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stm32_sai_configure_clock\00", [38 x i8] zeroinitializer }, align 32
@stm32_sai_configure_clock._entry_ptr = internal global ptr @stm32_sai_configure_clock._entry, section ".printk_index", align 4
@stm32_sai_trigger.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.46, ptr @.str.109, ptr @.str.6, ptr @.str.110, i8 1, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stm32_sai_trigger\00", [46 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Enable DMA and SAI\0A\00", [44 x i8] zeroinitializer }, align 32
@stm32_sai_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.109, ptr @.str.6, i32 1119, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@stm32_sai_trigger._entry_ptr = internal global ptr @stm32_sai_trigger._entry, section ".printk_index", align 4
@stm32_sai_trigger.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.46, ptr @.str.109, ptr @.str.6, ptr @.str.111, i8 1, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Disable DMA and SAI\0A\00", [43 x i8] zeroinitializer }, align 32
@stm32_sai_trigger._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.109, ptr @.str.6, i32 1137, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@stm32_sai_trigger._entry_ptr.113 = internal global ptr @stm32_sai_trigger._entry.112, section ".printk_index", align 4
@stm32_sai_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.6, i32 511, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Device stopped. Spurious IRQ 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stm32_sai_isr\00", [18 x i8] zeroinitializer }, align 32
@stm32_sai_isr._entry_ptr = internal global ptr @stm32_sai_isr._entry, section ".printk_index", align 4
@stm32_sai_isr._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.115, ptr @.str.6, i32 517, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IRQ %s\0A\00", [24 x i8] zeroinitializer }, align 32
@stm32_sai_isr._entry_ptr.118 = internal global ptr @stm32_sai_isr._entry.116, section ".printk_index", align 4
@.str.119 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"underrun\00", [23 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"overrun\00", [24 x i8] zeroinitializer }, align 32
@stm32_sai_isr.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.46, ptr @.str.115, ptr @.str.6, ptr @.str.121, i8 0, i8 -126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IRQ mute detected\0A\00", [45 x i8] zeroinitializer }, align 32
@stm32_sai_isr._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.115, ptr @.str.6, i32 525, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"IRQ wrong clock configuration\0A\00", [33 x i8] zeroinitializer }, align 32
@stm32_sai_isr._entry_ptr.124 = internal global ptr @stm32_sai_isr._entry.122, section ".printk_index", align 4
@stm32_sai_isr._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.115, ptr @.str.6, i32 530, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IRQ Codec not ready\0A\00", [43 x i8] zeroinitializer }, align 32
@stm32_sai_isr._entry_ptr.127 = internal global ptr @stm32_sai_isr._entry.125, section ".printk_index", align 4
@stm32_sai_isr._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.115, ptr @.str.6, i32 533, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"IRQ Anticipated frame synchro\0A\00", [33 x i8] zeroinitializer }, align 32
@stm32_sai_isr._entry_ptr.130 = internal global ptr @stm32_sai_isr._entry.128, section ".printk_index", align 4
@stm32_sai_isr._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.115, ptr @.str.6, i32 538, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IRQ Late frame synchro\0A\00", [40 x i8] zeroinitializer }, align 32
@stm32_sai_isr._entry_ptr.133 = internal global ptr @stm32_sai_isr._entry.131, section ".printk_index", align 4
@stm32_sai_pcm_hw_spdif = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 256, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 32768, i32 1024, i32 4096, i32 2, i32 8, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stm32-sai\00", [22 x i8] zeroinitializer }, align 32
@switch.table.stm32_sai_set_dai_fmt = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 327680, i32 196608, i32 196608, i32 393216, i32 131072], [44 x i8] zeroinitializer }, align 32
@switch.table.stm32_sai_set_dai_fmt.135 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 524800, i32 524288, i32 524288, i32 524288, i32 524288], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.154 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.160 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.162 = internal global [11 x i64] [i64 9, i64 32, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.163 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 10]
@__sancov_gen_cov_switch_values.164 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.165 = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 512]
@___asan_gen_.166 = private unnamed_addr constant [21 x i8] c"stm32_sai_sub_driver\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1615, i32 31 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1617, i32 11 }
@___asan_gen_.172 = private unnamed_addr constant [18 x i8] c"stm32_sai_sub_ids\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1343, i32 34 }
@___asan_gen_.175 = private unnamed_addr constant [21 x i8] c"stm32_sai_sub_pm_ops\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1611, i32 32 }
@___asan_gen_.178 = private unnamed_addr constant [21 x i8] c"stm32_sai_pcm_config\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1328, i32 46 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1517, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1518, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1523, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant [23 x i8] c"stm32_sai_playback_dai\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1291, i32 34 }
@___asan_gen_.214 = private unnamed_addr constant [22 x i8] c"stm32_sai_capture_dai\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1310, i32 34 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1540, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [27 x i8] c"stm32_sai_pcm_config_spdif\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1333, i32 46 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1549, i32 41 }
@___asan_gen_.229 = private unnamed_addr constant [16 x i8] c"stm32_component\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1339, i32 46 }
@___asan_gen_.232 = private unnamed_addr constant [17 x i8] c"stm32_sai_pcm_hw\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1282, i32 38 }
@___asan_gen_.235 = private unnamed_addr constant [31 x i8] c"stm32_sai_sub_regmap_config_f4\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 238, i32 35 }
@___asan_gen_.238 = private unnamed_addr constant [31 x i8] c"stm32_sai_sub_regmap_config_h7\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 250, i32 35 }
@___asan_gen_.241 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1380, i32 16 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1384, i32 10 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1387, i32 35 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1387, i32 48 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1389, i32 55 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1392, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1398, i32 26 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1401, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1411, i32 45 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1413, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1420, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1427, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1436, i32 5 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1446, i32 5 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1451, i32 42 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1452, i32 12 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1456, i32 12 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1460, i32 5 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1466, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1471, i32 41 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1474, i32 10 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1484, i32 27 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1489, i32 44 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 475, i32 36 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 475, i32 58 }
@___asan_gen_.349 = private unnamed_addr constant [9 x i8] c"mclk_ops\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 440, i32 29 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 481, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 484, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 424, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 435, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 323, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 326, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 329, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 343, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 351, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant [22 x i8] c"stm32_sai_pcm_dai_ops\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1226, i32 37 }
@___asan_gen_.406 = private unnamed_addr constant [12 x i8] c"iec958_ctls\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 295, i32 38 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1171, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 299, i32 10 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 580, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 587, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 368, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 652, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 687, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 712, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 732, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 739, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 749, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 601, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 605, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 779, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 874, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 897, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 921, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 841, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 851, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1042, i32 6 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1110, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1119, i32 4 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1124, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1137, i32 4 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 511, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 516, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 522, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 525, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 530, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 533, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 538, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant [23 x i8] c"stm32_sai_pcm_hw_spdif\00", align 1
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1273, i32 38 }
@___asan_gen_.607 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.608 = private constant [33 x i8] c"../sound/soc/stm/stm32_sai_sub.c\00", align 1
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1340, i32 10 }
@___asan_gen_.610 = private unnamed_addr constant [35 x i8] c"switch.table.stm32_sai_set_dai_fmt\00", align 1
@___asan_gen_.611 = private unnamed_addr constant [39 x i8] c"switch.table.stm32_sai_set_dai_fmt.135\00", align 1
@llvm.compiler.used = appending global [192 x ptr] [ptr @__UNIQUE_ID_alias265, ptr @__UNIQUE_ID_author264, ptr @__UNIQUE_ID_description263, ptr @__UNIQUE_ID_file266, ptr @__UNIQUE_ID_license267, ptr @__exitcall_stm32_sai_sub_driver_exit, ptr @__initcall__kmod_snd_soc_stm32_sai_sub__262_1625_stm32_sai_sub_driver_init6, ptr @stm32_sai_add_mclk_provider._entry, ptr @stm32_sai_add_mclk_provider._entry_ptr, ptr @stm32_sai_configure_clock._entry, ptr @stm32_sai_configure_clock._entry_ptr, ptr @stm32_sai_get_clk_div._entry, ptr @stm32_sai_get_clk_div._entry_ptr, ptr @stm32_sai_isr._entry, ptr @stm32_sai_isr._entry.116, ptr @stm32_sai_isr._entry.122, ptr @stm32_sai_isr._entry.125, ptr @stm32_sai_isr._entry.128, ptr @stm32_sai_isr._entry.131, ptr @stm32_sai_isr._entry_ptr, ptr @stm32_sai_isr._entry_ptr.118, ptr @stm32_sai_isr._entry_ptr.124, ptr @stm32_sai_isr._entry_ptr.127, ptr @stm32_sai_isr._entry_ptr.130, ptr @stm32_sai_isr._entry_ptr.133, ptr @stm32_sai_set_clk_div._entry, ptr @stm32_sai_set_clk_div._entry.66, ptr @stm32_sai_set_clk_div._entry_ptr, ptr @stm32_sai_set_clk_div._entry_ptr.68, ptr @stm32_sai_set_config._entry, ptr @stm32_sai_set_config._entry.105, ptr @stm32_sai_set_config._entry_ptr, ptr @stm32_sai_set_config._entry_ptr.106, ptr @stm32_sai_set_dai_fmt._entry, ptr @stm32_sai_set_dai_fmt._entry.83, ptr @stm32_sai_set_dai_fmt._entry.86, ptr @stm32_sai_set_dai_fmt._entry.90, ptr @stm32_sai_set_dai_fmt._entry_ptr, ptr @stm32_sai_set_dai_fmt._entry_ptr.85, ptr @stm32_sai_set_dai_fmt._entry_ptr.88, ptr @stm32_sai_set_dai_fmt._entry_ptr.91, ptr @stm32_sai_set_dai_tdm_slot._entry, ptr @stm32_sai_set_dai_tdm_slot._entry_ptr, ptr @stm32_sai_set_parent_clock._entry, ptr @stm32_sai_set_parent_clock._entry_ptr, ptr @stm32_sai_set_slots._entry, ptr @stm32_sai_set_slots._entry_ptr, ptr @stm32_sai_set_sysclk._entry, ptr @stm32_sai_set_sysclk._entry_ptr, ptr @stm32_sai_startup._entry, ptr @stm32_sai_startup._entry_ptr, ptr @stm32_sai_sub_driver_exit, ptr @stm32_sai_sub_parse_of._entry, ptr @stm32_sai_sub_parse_of._entry.21, ptr @stm32_sai_sub_parse_of._entry.25, ptr @stm32_sai_sub_parse_of._entry.28, ptr @stm32_sai_sub_parse_of._entry.31, ptr @stm32_sai_sub_parse_of._entry.34, ptr @stm32_sai_sub_parse_of._entry.37, ptr @stm32_sai_sub_parse_of._entry.43, ptr @stm32_sai_sub_parse_of._entry_ptr, ptr @stm32_sai_sub_parse_of._entry_ptr.23, ptr @stm32_sai_sub_parse_of._entry_ptr.27, ptr @stm32_sai_sub_parse_of._entry_ptr.30, ptr @stm32_sai_sub_parse_of._entry_ptr.33, ptr @stm32_sai_sub_parse_of._entry_ptr.36, ptr @stm32_sai_sub_parse_of._entry_ptr.39, ptr @stm32_sai_sub_parse_of._entry_ptr.45, ptr @stm32_sai_sub_probe._entry, ptr @stm32_sai_sub_probe._entry.9, ptr @stm32_sai_sub_probe._entry_ptr, ptr @stm32_sai_sub_probe._entry_ptr.11, ptr @stm32_sai_trigger._entry, ptr @stm32_sai_trigger._entry.112, ptr @stm32_sai_trigger._entry_ptr, ptr @stm32_sai_trigger._entry_ptr.113, ptr @stm32_sai_sub_driver, ptr @.str, ptr @stm32_sai_sub_ids, ptr @stm32_sai_sub_pm_ops, ptr @stm32_sai_pcm_config, ptr @stm32_sai_sub_probe.__key, ptr @.str.1, ptr @stm32_sai_sub_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @stm32_sai_playback_dai, ptr @stm32_sai_capture_dai, ptr @.str.10, ptr @stm32_sai_pcm_config_spdif, ptr @.str.12, ptr @stm32_component, ptr @stm32_sai_pcm_hw, ptr @stm32_sai_sub_regmap_config_f4, ptr @stm32_sai_sub_regmap_config_h7, ptr @stm32_sai_sub_parse_of._key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @mclk_ops, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @stm32_sai_pcm_dai_ops, ptr @iec958_ctls, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.87, ptr @.str.89, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.126, ptr @.str.129, ptr @.str.132, ptr @stm32_sai_pcm_hw_spdif, ptr @.str.134, ptr @switch.table.stm32_sai_set_dai_fmt, ptr @switch.table.stm32_sai_set_dai_fmt.135], section "llvm.metadata"
@0 = internal global [150 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_sub_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_sub_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_sub_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_pcm_config to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_sub_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_sub_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_sub_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_playback_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_capture_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_sub_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_pcm_config_spdif to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_pcm_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_sub_regmap_config_f4 to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_sub_regmap_config_h7 to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_sub_parse_of._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_sub_parse_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_sub_parse_of._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_sub_parse_of._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_sub_parse_of._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_sub_parse_of._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_sub_parse_of._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_sub_parse_of._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_sub_parse_of._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mclk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_add_mclk_provider._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_get_clk_div._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_set_clk_div._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_set_clk_div._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_pcm_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iec958_ctls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_set_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_set_parent_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_set_dai_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_set_dai_fmt._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_set_dai_fmt._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_set_dai_fmt._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_set_dai_tdm_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_set_slots._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_set_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_set_config._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_configure_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_trigger._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_isr._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_isr._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_isr._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_isr._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_isr._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_sai_pcm_hw_spdif to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.stm32_sai_set_dai_fmt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.stm32_sai_set_dai_fmt.135 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_sai_sub_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_sai_sub_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_sai_sub_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_sai_sub_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_sai_sub_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 616, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_match_device(ptr noundef nonnull @stm32_sai_sub_ids, ptr noundef %dev) #12
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call2, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  %id = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %call.i, i32 0, i32 13
  %3 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %id, align 8
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pdev, ptr %call.i, align 8
  %ctrl_lock = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %call.i, i32 0, i32 28
  tail call void @__mutex_init(ptr noundef %ctrl_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @stm32_sai_sub_probe.__key) #12
  %irq_lock = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %call.i, i32 0, i32 29
  tail call void @__raw_spin_lock_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @stm32_sai_sub_probe.__key.2, i16 noundef signext 3) #12
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i, align 4
  %pdata = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %pdata, align 8
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %do.end18, label %if.end20

do.end18:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #15
  br label %cleanup

if.end20:                                         ; preds = %if.end5
  %call21 = tail call fastcc i32 @stm32_sai_sub_parse_of(ptr noundef %pdev, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %dir = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %call.i, i32 0, i32 14
  %11 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  %cpu_dai_drv = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %call.i, i32 0, i32 4
  br i1 %cmp, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %13 = call ptr @memcpy(ptr %cpu_dai_drv, ptr @stm32_sai_playback_dai, i32 168)
  br label %if.end27

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %14 = call ptr @memcpy(ptr %cpu_dai_drv, ptr @stm32_sai_capture_dai, i32 168)
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then25
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i106, label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %cpu_dai_drv30 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %call.i, i32 0, i32 4
  %17 = ptrtoint ptr %cpu_dai_drv30 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %cpu_dai_drv30, align 8
  br label %dev_name.exit108

if.end.i106:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %cpu_dai_drv30111 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %call.i, i32 0, i32 4
  %20 = ptrtoint ptr %cpu_dai_drv30111 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %cpu_dai_drv30111, align 8
  br label %dev_name.exit108

dev_name.exit108:                                 ; preds = %if.end.i106, %dev_name.exit
  %cpu_dai_drv30113 = phi ptr [ %cpu_dai_drv30111, %if.end.i106 ], [ %cpu_dai_drv30, %dev_name.exit ]
  %retval.0.i107 = phi ptr [ %19, %if.end.i106 ], [ %16, %dev_name.exit ]
  %21 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load ptr, ptr %pdata, align 8
  %.in = getelementptr inbounds %struct.stm32_sai_data, ptr %.pn, i32 0, i32 6
  %22 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %.in, align 4
  %call.i109 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %23, ptr noundef nonnull @stm32_sai_isr, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i107, ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %tobool36.not = icmp eq i32 %call.i109, 0
  br i1 %tobool36.not, label %if.end42, label %do.end40

do.end40:                                         ; preds = %dev_name.exit108
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call.i109) #15
  br label %cleanup

if.end42:                                         ; preds = %dev_name.exit108
  %spdif = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %call.i, i32 0, i32 16
  %24 = ptrtoint ptr %spdif to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %spdif, align 1, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool43.not = icmp eq i8 %25, 0
  %spec.select = select i1 %tobool43.not, ptr @stm32_sai_pcm_config, ptr @stm32_sai_pcm_config_spdif
  %call47 = tail call i32 @snd_dmaengine_pcm_register(ptr noundef %dev, ptr noundef nonnull %spec.select, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end52, label %if.then49

if.then49:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  %call51 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call47, ptr noundef nonnull @.str.12) #12
  br label %cleanup

if.end52:                                         ; preds = %if.end42
  %call55 = tail call i32 @snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @stm32_component, ptr noundef %cpu_dai_drv30113, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end59, label %if.then57

if.then57:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @snd_dmaengine_pcm_unregister(ptr noundef %dev) #12
  br label %cleanup

if.end59:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pm_runtime_enable(ptr noundef %dev) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.then57, %if.then49, %do.end40, %if.end20.cleanup_crit_edge, %do.end18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i109, %do.end40 ], [ %call51, %if.then49 ], [ %call55, %if.then57 ], [ 0, %if.end59 ], [ -22, %do.end18 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_sai_sub_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pdata = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 8
  %pclk = getelementptr inbounds %struct.stm32_sai_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pclk, align 4
  tail call void @clk_unprepare(ptr noundef %5) #12
  tail call void @snd_dmaengine_pcm_unregister(ptr noundef %dev) #12
  tail call void @snd_soc_unregister_component(ptr noundef %dev) #12
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_sai_sub_parse_of(ptr noundef %pdev, ptr noundef %sai) unnamed_addr #2 align 64 {
entry:
  %res = alloca ptr, align 4
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #12
  %2 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !307
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #12
  %3 = call ptr @memset(ptr %args, i32 255, i32 72)
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %res, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %phys_addr = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %sai, i32 0, i32 11
  %9 = ptrtoint ptr %phys_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %phys_addr, align 8
  %regmap_config = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %sai, i32 0, i32 2
  %10 = ptrtoint ptr %regmap_config to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @stm32_sai_sub_regmap_config_f4, ptr %regmap_config, align 8
  %pdata = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %sai, i32 0, i32 7
  %11 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdata, align 8
  %has_spdif_pdm = getelementptr inbounds %struct.stm32_sai_data, ptr %12, i32 0, i32 5, i32 2
  %13 = ptrtoint ptr %has_spdif_pdm to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %has_spdif_pdm, align 4, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool5.not = icmp eq i8 %14, 0
  br i1 %tobool5.not, label %if.end4.if.end8_crit_edge, label %land.lhs.true

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end4
  %id = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %sai, i32 0, i32 13
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %if.then6, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %regmap_config to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @stm32_sai_sub_regmap_config_h7, ptr %regmap_config, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %land.lhs.true.if.end8_crit_edge, %if.end4.if.end8_crit_edge
  %18 = ptrtoint ptr %regmap_config to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap_config, align 8
  %call11 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call, ptr noundef %19, ptr noundef nonnull @stm32_sai_sub_parse_of._key, ptr noundef nonnull @.str.13) #12
  %regmap = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %sai, i32 0, i32 1
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call11, ptr %regmap, align 4
  %cmp.i289 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i289, label %if.then14, label %if.end19

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %call11 to i32
  %call18 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %21, ptr noundef nonnull @.str.14) #12
  br label %cleanup

if.end19:                                         ; preds = %if.end8
  %call20 = call i32 @of_property_match_string(ptr noundef nonnull %1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call20)
  %cmp21 = icmp sgt i32 %call20, -1
  br i1 %cmp21, label %if.end19.if.end30_crit_edge, label %if.else

if.end19.if.end30_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.else:                                          ; preds = %if.end19
  %call23 = call i32 @of_property_match_string(ptr noundef nonnull %1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call23)
  %cmp24 = icmp sgt i32 %call23, -1
  br i1 %cmp24, label %if.else.if.end30_crit_edge, label %do.end

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #15
  br label %cleanup

if.end30:                                         ; preds = %if.else.if.end30_crit_edge, %if.end19.if.end30_crit_edge
  %.sink = phi i32 [ 0, %if.end19.if.end30_crit_edge ], [ 1, %if.else.if.end30_crit_edge ]
  %dir26 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %sai, i32 0, i32 14
  %22 = ptrtoint ptr %dir26 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink, ptr %dir26, align 4
  %spdif = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %sai, i32 0, i32 16
  %23 = ptrtoint ptr %spdif to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %spdif, align 1
  %call31 = call ptr @of_get_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.20, ptr noundef null) #12
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.end30.if.end47_crit_edge, label %if.then33

if.end30.if.end47_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then33:                                        ; preds = %if.end30
  %24 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdata, align 8
  %has_spdif_pdm36 = getelementptr inbounds %struct.stm32_sai_data, ptr %25, i32 0, i32 5, i32 2
  %26 = ptrtoint ptr %has_spdif_pdm36 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %has_spdif_pdm36, align 4, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool37.not = icmp eq i8 %27, 0
  br i1 %tobool37.not, label %if.then33.do.end43_crit_edge, label %lor.lhs.false

if.then33.do.end43_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end43

lor.lhs.false:                                    ; preds = %if.then33
  %dir38 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %sai, i32 0, i32 14
  %28 = ptrtoint ptr %dir38 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dir38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp39 = icmp eq i32 %29, 1
  br i1 %cmp39, label %lor.lhs.false.do.end43_crit_edge, label %if.end45

lor.lhs.false.do.end43_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end43

do.end43:                                         ; preds = %lor.lhs.false.do.end43_crit_edge, %if.then33.do.end43_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #15
  br label %cleanup

if.end45:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %iec958.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %sai, i32 0, i32 27
  %30 = ptrtoint ptr %iec958.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 4, ptr %iec958.i, align 1
  %arrayidx1.i = getelementptr %struct.stm32_sai_sub_data, ptr %sai, i32 0, i32 27, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr %struct.stm32_sai_sub_data, ptr %sai, i32 0, i32 27, i32 0, i32 2
  %32 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx2.i, align 1
  %arrayidx3.i = getelementptr %struct.stm32_sai_sub_data, ptr %sai, i32 0, i32 27, i32 0, i32 3
  %33 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %arrayidx3.i, align 1
  %34 = ptrtoint ptr %spdif to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %spdif, align 1
  %master = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %sai, i32 0, i32 15
  %35 = ptrtoint ptr %master to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %master, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.end45, %if.end30.if.end47_crit_edge
  %36 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %args, align 4
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %1, ptr noundef nonnull @.str.24, ptr noundef null, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %args) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp50 = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call.i)
  %cmp52.not = icmp eq i32 %call.i, -2
  %or.cond = or i1 %cmp50, %cmp52.not
  br i1 %or.cond, label %if.end58, label %do.end56

do.end56:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #15
  br label %cleanup

if.end58:                                         ; preds = %if.end47
  %sync = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %sai, i32 0, i32 18
  %37 = ptrtoint ptr %sync to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %sync, align 8
  %38 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %args, align 4
  %tobool60.not = icmp eq ptr %39, null
  br i1 %tobool60.not, label %if.end58.if.end163_crit_edge, label %if.then61

if.end58.if.end163_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end163

if.then61:                                        ; preds = %if.end58
  %cmp63 = icmp eq ptr %39, %1
  br i1 %cmp63, label %do.end67, label %if.end70

do.end67:                                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull %1) #15
  %40 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %args, align 4
  call void @of_node_put(ptr noundef %41) #12
  br label %cleanup

if.end70:                                         ; preds = %if.then61
  %call72 = call ptr @of_get_parent(ptr noundef nonnull %39) #12
  %np_sync_provider = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %sai, i32 0, i32 8
  %42 = ptrtoint ptr %np_sync_provider to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call72, ptr %np_sync_provider, align 4
  %tobool74.not = icmp eq ptr %call72, null
  br i1 %tobool74.not, label %do.end78, label %if.end81

do.end78:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull %1) #15
  %43 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %args, align 4
  call void @of_node_put(ptr noundef %44) #12
  br label %cleanup

if.end81:                                         ; preds = %if.end70
  %45 = ptrtoint ptr %sync to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %sync, align 8
  %46 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdata, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %of_node87 = getelementptr inbounds %struct.platform_device, ptr %49, i32 0, i32 3, i32 27
  %50 = ptrtoint ptr %of_node87 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %of_node87, align 8
  %cmp88.not = icmp eq ptr %call72, %51
  br i1 %cmp88.not, label %if.end81.do.body151_crit_edge, label %if.then89

if.end81.do.body151_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body151

if.then89:                                        ; preds = %if.end81
  %conf91 = getelementptr inbounds %struct.stm32_sai_data, ptr %47, i32 0, i32 5
  %52 = ptrtoint ptr %conf91 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %conf91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %53)
  %cmp92 = icmp eq i32 %53, 16
  br i1 %cmp92, label %do.end96, label %if.end99

do.end96:                                         ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #15
  %54 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %args, align 4
  call void @of_node_put(ptr noundef %55) #12
  br label %cleanup

if.end99:                                         ; preds = %if.then89
  %56 = ptrtoint ptr %sync to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 2, ptr %sync, align 8
  %args101 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %57 = ptrtoint ptr %args101 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %args101, align 4
  %synci = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %sai, i32 0, i32 20
  %59 = ptrtoint ptr %synci to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %synci, align 8
  %60 = add i32 %58, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %60)
  %61 = icmp ult i32 %60, -4
  br i1 %61, label %do.end126, label %if.end129

do.end126:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #15
  %62 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %args, align 4
  call void @of_node_put(ptr noundef %63) #12
  br label %cleanup

if.end129:                                        ; preds = %if.end99
  %64 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %args, align 4
  %call131 = call i32 @of_property_match_string(ptr noundef %65, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call131)
  %cmp132 = icmp sgt i32 %call131, -1
  br i1 %cmp132, label %if.then133, label %if.end129.if.end134_crit_edge

if.end129.if.end134_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end134

if.then133:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #14
  %synco = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %sai, i32 0, i32 19
  %66 = ptrtoint ptr %synco to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %synco, align 4
  br label %if.end134

if.end134:                                        ; preds = %if.then133, %if.end129.if.end134_crit_edge
  %67 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %args, align 4
  %call136 = call i32 @of_property_match_string(ptr noundef %68, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.42) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call136)
  %cmp137 = icmp sgt i32 %call136, -1
  br i1 %cmp137, label %if.then138, label %if.end134.if.end140_crit_edge

if.end134.if.end140_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end140

if.then138:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #14
  %synco139 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %sai, i32 0, i32 19
  %69 = ptrtoint ptr %synco139 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 2, ptr %synco139, align 4
  br label %if.end140

if.end140:                                        ; preds = %if.then138, %if.end134.if.end140_crit_edge
  %synco141 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %sai, i32 0, i32 19
  %70 = ptrtoint ptr %synco141 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %synco141, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool142.not = icmp eq i32 %71, 0
  br i1 %tobool142.not, label %do.end146, label %if.end140.do.body151_crit_edge

if.end140.do.body151_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body151

do.end146:                                        ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44) #15
  %72 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %args, align 4
  call void @of_node_put(ptr noundef %73) #12
  br label %cleanup

do.body151:                                       ; preds = %if.end140.do.body151_crit_edge, %if.end81.do.body151_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_sai_sub_parse_of.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_sai_sub_parse_of, %if.then157)) #12
          to label %if.end163 [label %if.then157], !srcloc !308

if.then157:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pdev, align 8
  %76 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %args, align 4
  %full_name = getelementptr inbounds %struct.device_node, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %full_name, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_sai_sub_parse_of.__UNIQUE_ID_ddebug261, ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef %75, ptr noundef %79) #12
  br label %if.end163

if.end163:                                        ; preds = %if.then157, %do.body151, %if.end58.if.end163_crit_edge
  %80 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %args, align 4
  call void @of_node_put(ptr noundef %81) #12
  %call166 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.48) #12
  %sai_ck = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %sai, i32 0, i32 9
  %82 = ptrtoint ptr %sai_ck to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call166, ptr %sai_ck, align 8
  %cmp.i290 = icmp ugt ptr %call166, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i290, label %if.then169, label %if.end174

if.then169:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #14
  %83 = ptrtoint ptr %call166 to i32
  %call173 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %83, ptr noundef nonnull @.str.49) #12
  br label %cleanup

if.end174:                                        ; preds = %if.end163
  %84 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdata, align 8
  %pclk = getelementptr inbounds %struct.stm32_sai_data, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pclk, align 4
  %call176 = call i32 @clk_prepare(ptr noundef %87) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %cmp177 = icmp slt i32 %call176, 0
  br i1 %cmp177, label %if.end174.cleanup_crit_edge, label %if.end179

if.end174.cleanup_crit_edge:                      ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end179:                                        ; preds = %if.end174
  %88 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pdata, align 8
  %conf181 = getelementptr inbounds %struct.stm32_sai_data, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %conf181 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %conf181, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %91)
  %cmp183 = icmp eq i32 %91, 16
  br i1 %cmp183, label %if.end179.cleanup_crit_edge, label %if.end185

if.end179.cleanup_crit_edge:                      ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end185:                                        ; preds = %if.end179
  %call186 = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.50, ptr noundef null) #12
  %tobool187.not = icmp eq ptr %call186, null
  br i1 %tobool187.not, label %if.else193, label %if.then188

if.then188:                                       ; preds = %if.end185
  %call189 = call fastcc i32 @stm32_sai_add_mclk_provider(ptr noundef %sai)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %cmp190 = icmp slt i32 %call189, 0
  br i1 %cmp190, label %if.then188.cleanup_crit_edge, label %if.then188.if.end208_crit_edge

if.then188.if.end208_crit_edge:                   ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end208

if.then188.cleanup_crit_edge:                     ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else193:                                       ; preds = %if.end185
  %call195 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.51) #12
  %sai_mclk = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %sai, i32 0, i32 10
  %92 = ptrtoint ptr %sai_mclk to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call195, ptr %sai_mclk, align 4
  %cmp.i291 = icmp ugt ptr %call195, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i291, label %if.then198, label %if.else193.if.end208_crit_edge

if.else193.if.end208_crit_edge:                   ; preds = %if.else193
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end208

if.then198:                                       ; preds = %if.else193
  %93 = ptrtoint ptr %call195 to i32
  %cmp201.not = icmp eq ptr %call195, inttoptr (i32 -2 to ptr)
  br i1 %cmp201.not, label %if.end205, label %if.then198.cleanup_crit_edge

if.then198.cleanup_crit_edge:                     ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end205:                                        ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #14
  %94 = ptrtoint ptr %sai_mclk to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %sai_mclk, align 4
  br label %if.end208

if.end208:                                        ; preds = %if.end205, %if.else193.if.end208_crit_edge, %if.then188.if.end208_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end208, %if.then198.cleanup_crit_edge, %if.then188.cleanup_crit_edge, %if.end179.cleanup_crit_edge, %if.end174.cleanup_crit_edge, %if.then169, %do.end146, %do.end126, %do.end96, %do.end78, %do.end67, %do.end56, %do.end43, %do.end, %if.then14, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then2 ], [ %call18, %if.then14 ], [ -22, %do.end43 ], [ %call.i, %do.end56 ], [ -22, %do.end67 ], [ -22, %do.end96 ], [ -22, %do.end126 ], [ %call173, %if.then169 ], [ 0, %if.end208 ], [ -22, %do.end146 ], [ -19, %do.end78 ], [ -22, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ %call176, %if.end174.cleanup_crit_edge ], [ 0, %if.end179.cleanup_crit_edge ], [ %call189, %if.then188.cleanup_crit_edge ], [ %93, %if.then198.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_sai_isr(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  %sr = alloca i32, align 4
  %imr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devid, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sr) #12
  %2 = ptrtoint ptr %sr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %sr, align 4, !annotation !307
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %imr) #12
  %3 = ptrtoint ptr %imr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %imr, align 4, !annotation !307
  %pdata.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %devid, i32 0, i32 7
  %4 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata.i, align 8
  %pclk.i = getelementptr inbounds %struct.stm32_sai_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pclk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.stm32_sai_sub_reg_rd.exit_crit_edge, label %if.end.i

entry.stm32_sai_sub_reg_rd.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %stm32_sai_sub_reg_rd.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %regmap.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %devid, i32 0, i32 1
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %9, i32 noundef 16, ptr noundef nonnull %imr) #12
  %10 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata.i, align 8
  %pclk3.i = getelementptr inbounds %struct.stm32_sai_data, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %pclk3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pclk3.i, align 4
  call void @clk_disable(ptr noundef %13) #12
  br label %stm32_sai_sub_reg_rd.exit

stm32_sai_sub_reg_rd.exit:                        ; preds = %if.end.i, %entry.stm32_sai_sub_reg_rd.exit_crit_edge
  %14 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata.i, align 8
  %pclk.i96 = getelementptr inbounds %struct.stm32_sai_data, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %pclk.i96 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pclk.i96, align 4
  %call.i97 = call i32 @clk_enable(ptr noundef %17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %cmp.i98 = icmp slt i32 %call.i97, 0
  br i1 %cmp.i98, label %stm32_sai_sub_reg_rd.exit.stm32_sai_sub_reg_rd.exit103_crit_edge, label %if.end.i102

stm32_sai_sub_reg_rd.exit.stm32_sai_sub_reg_rd.exit103_crit_edge: ; preds = %stm32_sai_sub_reg_rd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %stm32_sai_sub_reg_rd.exit103

if.end.i102:                                      ; preds = %stm32_sai_sub_reg_rd.exit
  call void @__sanitizer_cov_trace_pc() #14
  %regmap.i99 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %devid, i32 0, i32 1
  %18 = ptrtoint ptr %regmap.i99 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i99, align 4
  %call1.i100 = call i32 @regmap_read(ptr noundef %19, i32 noundef 20, ptr noundef nonnull %sr) #12
  %20 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdata.i, align 8
  %pclk3.i101 = getelementptr inbounds %struct.stm32_sai_data, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %pclk3.i101 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pclk3.i101, align 4
  call void @clk_disable(ptr noundef %23) #12
  br label %stm32_sai_sub_reg_rd.exit103

stm32_sai_sub_reg_rd.exit103:                     ; preds = %if.end.i102, %stm32_sai_sub_reg_rd.exit.stm32_sai_sub_reg_rd.exit103_crit_edge
  %24 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sr, align 4
  %26 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %imr, align 4
  %and = and i32 %27, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %stm32_sai_sub_reg_rd.exit103.cleanup_crit_edge, label %if.end

stm32_sai_sub_reg_rd.exit103.cleanup_crit_edge:   ; preds = %stm32_sai_sub_reg_rd.exit103
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %stm32_sai_sub_reg_rd.exit103
  %28 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdata.i, align 8
  %pclk.i105 = getelementptr inbounds %struct.stm32_sai_data, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %pclk.i105 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pclk.i105, align 4
  %call.i106 = call i32 @clk_enable(ptr noundef %31) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %cmp.i107 = icmp slt i32 %call.i106, 0
  br i1 %cmp.i107, label %if.end.stm32_sai_sub_reg_wr.exit_crit_edge, label %if.end.i110

if.end.stm32_sai_sub_reg_wr.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %stm32_sai_sub_reg_wr.exit

if.end.i110:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %regmap.i108 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %devid, i32 0, i32 1
  %32 = ptrtoint ptr %regmap.i108 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i108, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 24, i32 noundef 127, i32 noundef 127, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #12
  %34 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdata.i, align 8
  %pclk3.i109 = getelementptr inbounds %struct.stm32_sai_data, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %pclk3.i109 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pclk3.i109, align 4
  call void @clk_disable(ptr noundef %37) #12
  br label %stm32_sai_sub_reg_wr.exit

stm32_sai_sub_reg_wr.exit:                        ; preds = %if.end.i110, %if.end.stm32_sai_sub_reg_wr.exit_crit_edge
  %substream = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %devid, i32 0, i32 6
  %38 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %substream, align 4
  %tobool4.not = icmp eq ptr %39, null
  br i1 %tobool4.not, label %do.end, label %if.end6

do.end:                                           ; preds = %stm32_sai_sub_reg_wr.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %40 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.114, i32 noundef %41) #15
  br label %cleanup

if.end6:                                          ; preds = %stm32_sai_sub_reg_wr.exit
  %and7 = and i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end14_crit_edge, label %do.end12

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %dev13 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %dir = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %devid, i32 0, i32 14
  %42 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp = icmp eq i32 %43, 0
  %cond = select i1 %cmp, ptr @.str.119, ptr @.str.120
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.117, ptr noundef nonnull %cond) #15
  br label %if.end14

if.end14:                                         ; preds = %do.end12, %if.end6.if.end14_crit_edge
  %status.0 = phi i32 [ 4, %do.end12 ], [ 3, %if.end6.if.end14_crit_edge ]
  %and15 = and i32 %and, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end28_crit_edge, label %do.body18

if.end14.if.end28_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

do.body18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_sai_isr.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_sai_isr, %if.then23)) #12
          to label %if.end28 [label %if.then23], !srcloc !308

if.then23:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #14
  %dev24 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_sai_isr.__UNIQUE_ID_ddebug246, ptr noundef %dev24, ptr noundef nonnull @.str.121) #12
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %do.body18, %if.end14.if.end28_crit_edge
  %and29 = and i32 %and, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.if.end36_crit_edge, label %do.end34

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %dev35 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35, ptr noundef nonnull @.str.123) #15
  br label %if.end36

if.end36:                                         ; preds = %do.end34, %if.end28.if.end36_crit_edge
  %status.1 = phi i32 [ 8, %do.end34 ], [ %status.0, %if.end28.if.end36_crit_edge ]
  %and37 = and i32 %and, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end44_crit_edge, label %do.end42

if.end36.if.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %dev43 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev43, ptr noundef nonnull @.str.126) #15
  br label %if.end44

if.end44:                                         ; preds = %do.end42, %if.end36.if.end44_crit_edge
  %and45 = and i32 %and, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end44.if.end52_crit_edge, label %do.end50

if.end44.if.end52_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  %dev51 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev51, ptr noundef nonnull @.str.129) #15
  br label %if.end52

if.end52:                                         ; preds = %do.end50, %if.end44.if.end52_crit_edge
  %status.2 = phi i32 [ 4, %do.end50 ], [ %status.1, %if.end44.if.end52_crit_edge ]
  %and53 = and i32 %and, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end60, label %if.end60.thread

if.end60.thread:                                  ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  %dev59 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev59, ptr noundef nonnull @.str.132) #15
  %irq_lock113 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %devid, i32 0, i32 29
  call void @_raw_spin_lock(ptr noundef %irq_lock113) #12
  br label %land.lhs.true

if.end60:                                         ; preds = %if.end52
  %irq_lock = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %devid, i32 0, i32 29
  call void @_raw_spin_lock(ptr noundef %irq_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %status.2)
  %cmp61.not = icmp eq i32 %status.2, 3
  br i1 %cmp61.not, label %if.end60.if.end67_crit_edge, label %if.end60.land.lhs.true_crit_edge

if.end60.land.lhs.true_crit_edge:                 ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

if.end60.if.end67_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

land.lhs.true:                                    ; preds = %if.end60.land.lhs.true_crit_edge, %if.end60.thread
  %irq_lock115 = phi ptr [ %irq_lock113, %if.end60.thread ], [ %irq_lock, %if.end60.land.lhs.true_crit_edge ]
  %44 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %substream, align 4
  %tobool63.not = icmp eq ptr %45, null
  br i1 %tobool63.not, label %land.lhs.true.if.end67_crit_edge, label %if.then64

land.lhs.true.if.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.then64:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call66 = call i32 @snd_pcm_stop_xrun(ptr noundef nonnull %45) #12
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %land.lhs.true.if.end67_crit_edge, %if.end60.if.end67_crit_edge
  %irq_lock116 = phi ptr [ %irq_lock115, %if.then64 ], [ %irq_lock115, %land.lhs.true.if.end67_crit_edge ], [ %irq_lock, %if.end60.if.end67_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %irq_lock116) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %do.end, %stm32_sai_sub_reg_rd.exit103.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end67 ], [ 0, %do.end ], [ 0, %stm32_sai_sub_reg_rd.exit103.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %imr) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sr) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dmaengine_pcm_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_prepare_slave_config(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_sai_add_mclk_provider(ptr noundef %sai) unnamed_addr #2 align 64 {
entry:
  %.compoundliteral = alloca %struct.clk_init_data, align 4
  %.compoundliteral17 = alloca [1 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sai to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sai, align 8
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %sai_ck = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %sai, i32 0, i32 9
  %2 = ptrtoint ptr %sai_ck to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sai_ck, align 8
  %call = tail call ptr @__clk_get_name(ptr noundef %3) #12
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 20, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #12
  %tobool4.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %while.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %call, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %land.rhs [
    i8 0, label %while.cond.preheader.while.end_crit_edge
    i8 95, label %while.cond.preheader.while.end_crit_edge73
  ]

while.cond.preheader.while.end_crit_edge73:       ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs:                                         ; preds = %while.cond.preheader
  %incdec.ptr = getelementptr i8, ptr %call, i32 1
  %incdec.ptr12 = getelementptr i8, ptr %call5.i.i, i32 1
  %7 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %5, ptr %call5.i.i, align 1
  %8 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %incdec.ptr, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.136)
  switch i8 %9, label %land.rhs.1 [
    i8 0, label %land.rhs.while.end_crit_edge
    i8 95, label %land.rhs.while.end_crit_edge74
  ]

land.rhs.while.end_crit_edge74:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.1:                                       ; preds = %land.rhs
  %incdec.ptr.1 = getelementptr i8, ptr %call, i32 2
  %incdec.ptr12.1 = getelementptr i8, ptr %call5.i.i, i32 2
  %11 = ptrtoint ptr %incdec.ptr12 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %9, ptr %incdec.ptr12, align 1
  %12 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr.1, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.137)
  switch i8 %13, label %land.rhs.2 [
    i8 0, label %land.rhs.1.while.end_crit_edge
    i8 95, label %land.rhs.1.while.end_crit_edge75
  ]

land.rhs.1.while.end_crit_edge75:                 ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.1.while.end_crit_edge:                   ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.2:                                       ; preds = %land.rhs.1
  %incdec.ptr.2 = getelementptr i8, ptr %call, i32 3
  %incdec.ptr12.2 = getelementptr i8, ptr %call5.i.i, i32 3
  %15 = ptrtoint ptr %incdec.ptr12.1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %13, ptr %incdec.ptr12.1, align 1
  %16 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %incdec.ptr.2, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.138)
  switch i8 %17, label %land.rhs.3 [
    i8 0, label %land.rhs.2.while.end_crit_edge
    i8 95, label %land.rhs.2.while.end_crit_edge76
  ]

land.rhs.2.while.end_crit_edge76:                 ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.2.while.end_crit_edge:                   ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.3:                                       ; preds = %land.rhs.2
  %incdec.ptr.3 = getelementptr i8, ptr %call, i32 4
  %incdec.ptr12.3 = getelementptr i8, ptr %call5.i.i, i32 4
  %19 = ptrtoint ptr %incdec.ptr12.2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %17, ptr %incdec.ptr12.2, align 1
  %20 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %incdec.ptr.3, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.139)
  switch i8 %21, label %land.rhs.4 [
    i8 0, label %land.rhs.3.while.end_crit_edge
    i8 95, label %land.rhs.3.while.end_crit_edge77
  ]

land.rhs.3.while.end_crit_edge77:                 ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.3.while.end_crit_edge:                   ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.4:                                       ; preds = %land.rhs.3
  %incdec.ptr.4 = getelementptr i8, ptr %call, i32 5
  %incdec.ptr12.4 = getelementptr i8, ptr %call5.i.i, i32 5
  %23 = ptrtoint ptr %incdec.ptr12.3 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %21, ptr %incdec.ptr12.3, align 1
  %24 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %incdec.ptr.4, align 1
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.140)
  switch i8 %25, label %land.rhs.5 [
    i8 0, label %land.rhs.4.while.end_crit_edge
    i8 95, label %land.rhs.4.while.end_crit_edge78
  ]

land.rhs.4.while.end_crit_edge78:                 ; preds = %land.rhs.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.4.while.end_crit_edge:                   ; preds = %land.rhs.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.5:                                       ; preds = %land.rhs.4
  %incdec.ptr.5 = getelementptr i8, ptr %call, i32 6
  %incdec.ptr12.5 = getelementptr i8, ptr %call5.i.i, i32 6
  %27 = ptrtoint ptr %incdec.ptr12.4 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %25, ptr %incdec.ptr12.4, align 1
  %28 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %incdec.ptr.5, align 1
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.141)
  switch i8 %29, label %land.rhs.6 [
    i8 0, label %land.rhs.5.while.end_crit_edge
    i8 95, label %land.rhs.5.while.end_crit_edge79
  ]

land.rhs.5.while.end_crit_edge79:                 ; preds = %land.rhs.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.5.while.end_crit_edge:                   ; preds = %land.rhs.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.6:                                       ; preds = %land.rhs.5
  %incdec.ptr.6 = getelementptr i8, ptr %call, i32 7
  %incdec.ptr12.6 = getelementptr i8, ptr %call5.i.i, i32 7
  %31 = ptrtoint ptr %incdec.ptr12.5 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %29, ptr %incdec.ptr12.5, align 1
  %32 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %incdec.ptr.6, align 1
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.142)
  switch i8 %33, label %land.rhs.7 [
    i8 0, label %land.rhs.6.while.end_crit_edge
    i8 95, label %land.rhs.6.while.end_crit_edge80
  ]

land.rhs.6.while.end_crit_edge80:                 ; preds = %land.rhs.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.6.while.end_crit_edge:                   ; preds = %land.rhs.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.7:                                       ; preds = %land.rhs.6
  %incdec.ptr.7 = getelementptr i8, ptr %call, i32 8
  %incdec.ptr12.7 = getelementptr i8, ptr %call5.i.i, i32 8
  %35 = ptrtoint ptr %incdec.ptr12.6 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %33, ptr %incdec.ptr12.6, align 1
  %36 = ptrtoint ptr %incdec.ptr.7 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %incdec.ptr.7, align 1
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.143)
  switch i8 %37, label %land.rhs.8 [
    i8 0, label %land.rhs.7.while.end_crit_edge
    i8 95, label %land.rhs.7.while.end_crit_edge81
  ]

land.rhs.7.while.end_crit_edge81:                 ; preds = %land.rhs.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.7.while.end_crit_edge:                   ; preds = %land.rhs.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.8:                                       ; preds = %land.rhs.7
  %incdec.ptr.8 = getelementptr i8, ptr %call, i32 9
  %incdec.ptr12.8 = getelementptr i8, ptr %call5.i.i, i32 9
  %39 = ptrtoint ptr %incdec.ptr12.7 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %37, ptr %incdec.ptr12.7, align 1
  %40 = ptrtoint ptr %incdec.ptr.8 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %incdec.ptr.8, align 1
  %42 = zext i8 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.144)
  switch i8 %41, label %land.rhs.9 [
    i8 0, label %land.rhs.8.while.end_crit_edge
    i8 95, label %land.rhs.8.while.end_crit_edge82
  ]

land.rhs.8.while.end_crit_edge82:                 ; preds = %land.rhs.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.8.while.end_crit_edge:                   ; preds = %land.rhs.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.9:                                       ; preds = %land.rhs.8
  %incdec.ptr.9 = getelementptr i8, ptr %call, i32 10
  %incdec.ptr12.9 = getelementptr i8, ptr %call5.i.i, i32 10
  %43 = ptrtoint ptr %incdec.ptr12.8 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %41, ptr %incdec.ptr12.8, align 1
  %44 = ptrtoint ptr %incdec.ptr.9 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %incdec.ptr.9, align 1
  %46 = zext i8 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.145)
  switch i8 %45, label %land.rhs.10 [
    i8 0, label %land.rhs.9.while.end_crit_edge
    i8 95, label %land.rhs.9.while.end_crit_edge83
  ]

land.rhs.9.while.end_crit_edge83:                 ; preds = %land.rhs.9
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.9.while.end_crit_edge:                   ; preds = %land.rhs.9
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.10:                                      ; preds = %land.rhs.9
  %incdec.ptr.10 = getelementptr i8, ptr %call, i32 11
  %incdec.ptr12.10 = getelementptr i8, ptr %call5.i.i, i32 11
  %47 = ptrtoint ptr %incdec.ptr12.9 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %45, ptr %incdec.ptr12.9, align 1
  %48 = ptrtoint ptr %incdec.ptr.10 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %incdec.ptr.10, align 1
  %50 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.146)
  switch i8 %49, label %land.rhs.11 [
    i8 0, label %land.rhs.10.while.end_crit_edge
    i8 95, label %land.rhs.10.while.end_crit_edge84
  ]

land.rhs.10.while.end_crit_edge84:                ; preds = %land.rhs.10
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.10.while.end_crit_edge:                  ; preds = %land.rhs.10
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.11:                                      ; preds = %land.rhs.10
  %incdec.ptr.11 = getelementptr i8, ptr %call, i32 12
  %incdec.ptr12.11 = getelementptr i8, ptr %call5.i.i, i32 12
  %51 = ptrtoint ptr %incdec.ptr12.10 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %49, ptr %incdec.ptr12.10, align 1
  %52 = ptrtoint ptr %incdec.ptr.11 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %incdec.ptr.11, align 1
  %54 = zext i8 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.147)
  switch i8 %53, label %land.rhs.12 [
    i8 0, label %land.rhs.11.while.end_crit_edge
    i8 95, label %land.rhs.11.while.end_crit_edge85
  ]

land.rhs.11.while.end_crit_edge85:                ; preds = %land.rhs.11
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.11.while.end_crit_edge:                  ; preds = %land.rhs.11
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.12:                                      ; preds = %land.rhs.11
  %incdec.ptr.12 = getelementptr i8, ptr %call, i32 13
  %incdec.ptr12.12 = getelementptr i8, ptr %call5.i.i, i32 13
  %55 = ptrtoint ptr %incdec.ptr12.11 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %53, ptr %incdec.ptr12.11, align 1
  %56 = ptrtoint ptr %incdec.ptr.12 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %incdec.ptr.12, align 1
  %58 = zext i8 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.148)
  switch i8 %57, label %land.rhs.13 [
    i8 0, label %land.rhs.12.while.end_crit_edge
    i8 95, label %land.rhs.12.while.end_crit_edge86
  ]

land.rhs.12.while.end_crit_edge86:                ; preds = %land.rhs.12
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.12.while.end_crit_edge:                  ; preds = %land.rhs.12
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.13:                                      ; preds = %land.rhs.12
  %incdec.ptr.13 = getelementptr i8, ptr %call, i32 14
  %incdec.ptr12.13 = getelementptr i8, ptr %call5.i.i, i32 14
  %59 = ptrtoint ptr %incdec.ptr12.12 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %57, ptr %incdec.ptr12.12, align 1
  %60 = ptrtoint ptr %incdec.ptr.13 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %incdec.ptr.13, align 1
  %62 = zext i8 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.149)
  switch i8 %61, label %land.rhs.14 [
    i8 0, label %land.rhs.13.while.end_crit_edge
    i8 95, label %land.rhs.13.while.end_crit_edge87
  ]

land.rhs.13.while.end_crit_edge87:                ; preds = %land.rhs.13
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.13.while.end_crit_edge:                  ; preds = %land.rhs.13
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.14:                                      ; preds = %land.rhs.13
  %incdec.ptr.14 = getelementptr i8, ptr %call, i32 15
  %incdec.ptr12.14 = getelementptr i8, ptr %call5.i.i, i32 15
  %63 = ptrtoint ptr %incdec.ptr12.13 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %61, ptr %incdec.ptr12.13, align 1
  %64 = ptrtoint ptr %incdec.ptr.14 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %incdec.ptr.14, align 1
  %66 = zext i8 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.150)
  switch i8 %65, label %land.rhs.15 [
    i8 0, label %land.rhs.14.while.end_crit_edge
    i8 95, label %land.rhs.14.while.end_crit_edge88
  ]

land.rhs.14.while.end_crit_edge88:                ; preds = %land.rhs.14
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.14.while.end_crit_edge:                  ; preds = %land.rhs.14
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.15:                                      ; preds = %land.rhs.14
  %incdec.ptr.15 = getelementptr i8, ptr %call, i32 16
  %incdec.ptr12.15 = getelementptr i8, ptr %call5.i.i, i32 16
  %67 = ptrtoint ptr %incdec.ptr12.14 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %65, ptr %incdec.ptr12.14, align 1
  %68 = ptrtoint ptr %incdec.ptr.15 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %incdec.ptr.15, align 1
  %70 = zext i8 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.151)
  switch i8 %69, label %land.rhs.16 [
    i8 0, label %land.rhs.15.while.end_crit_edge
    i8 95, label %land.rhs.15.while.end_crit_edge89
  ]

land.rhs.15.while.end_crit_edge89:                ; preds = %land.rhs.15
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.15.while.end_crit_edge:                  ; preds = %land.rhs.15
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.16:                                      ; preds = %land.rhs.15
  %incdec.ptr.16 = getelementptr i8, ptr %call, i32 17
  %incdec.ptr12.16 = getelementptr i8, ptr %call5.i.i, i32 17
  %71 = ptrtoint ptr %incdec.ptr12.15 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %69, ptr %incdec.ptr12.15, align 1
  %72 = ptrtoint ptr %incdec.ptr.16 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %incdec.ptr.16, align 1
  %74 = zext i8 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.152)
  switch i8 %73, label %land.rhs.17 [
    i8 0, label %land.rhs.16.while.end_crit_edge
    i8 95, label %land.rhs.16.while.end_crit_edge90
  ]

land.rhs.16.while.end_crit_edge90:                ; preds = %land.rhs.16
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.16.while.end_crit_edge:                  ; preds = %land.rhs.16
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.17:                                      ; preds = %land.rhs.16
  %incdec.ptr.17 = getelementptr i8, ptr %call, i32 18
  %incdec.ptr12.17 = getelementptr i8, ptr %call5.i.i, i32 18
  %75 = ptrtoint ptr %incdec.ptr12.16 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %73, ptr %incdec.ptr12.16, align 1
  %76 = ptrtoint ptr %incdec.ptr.17 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %incdec.ptr.17, align 1
  %78 = zext i8 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.153)
  switch i8 %77, label %land.rhs.18 [
    i8 0, label %land.rhs.17.while.end_crit_edge
    i8 95, label %land.rhs.17.while.end_crit_edge91
  ]

land.rhs.17.while.end_crit_edge91:                ; preds = %land.rhs.17
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.17.while.end_crit_edge:                  ; preds = %land.rhs.17
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.18:                                      ; preds = %land.rhs.17
  %incdec.ptr.18 = getelementptr i8, ptr %call, i32 19
  %incdec.ptr12.18 = getelementptr i8, ptr %call5.i.i, i32 19
  %79 = ptrtoint ptr %incdec.ptr12.17 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %77, ptr %incdec.ptr12.17, align 1
  %80 = ptrtoint ptr %incdec.ptr.18 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %incdec.ptr.18, align 1
  %82 = zext i8 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.154)
  switch i8 %81, label %land.rhs.19 [
    i8 0, label %land.rhs.18.while.end_crit_edge
    i8 95, label %land.rhs.18.while.end_crit_edge92
  ]

land.rhs.18.while.end_crit_edge92:                ; preds = %land.rhs.18
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.18.while.end_crit_edge:                  ; preds = %land.rhs.18
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.19:                                      ; preds = %land.rhs.18
  %incdec.ptr.19 = getelementptr i8, ptr %call, i32 20
  %incdec.ptr12.19 = getelementptr i8, ptr %call5.i.i, i32 20
  %83 = ptrtoint ptr %incdec.ptr12.18 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %81, ptr %incdec.ptr12.18, align 1
  %84 = ptrtoint ptr %incdec.ptr.19 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %incdec.ptr.19, align 1
  %86 = zext i8 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.155)
  switch i8 %85, label %land.rhs.20 [
    i8 0, label %land.rhs.19.while.end_crit_edge
    i8 95, label %land.rhs.19.while.end_crit_edge93
  ]

land.rhs.19.while.end_crit_edge93:                ; preds = %land.rhs.19
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.19.while.end_crit_edge:                  ; preds = %land.rhs.19
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.20:                                      ; preds = %land.rhs.19
  %incdec.ptr.20 = getelementptr i8, ptr %call, i32 21
  %incdec.ptr12.20 = getelementptr i8, ptr %call5.i.i, i32 21
  %87 = ptrtoint ptr %incdec.ptr12.19 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %85, ptr %incdec.ptr12.19, align 1
  %88 = ptrtoint ptr %incdec.ptr.20 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %incdec.ptr.20, align 1
  %90 = zext i8 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.156)
  switch i8 %89, label %land.rhs.21 [
    i8 0, label %land.rhs.20.while.end_crit_edge
    i8 95, label %land.rhs.20.while.end_crit_edge94
  ]

land.rhs.20.while.end_crit_edge94:                ; preds = %land.rhs.20
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.20.while.end_crit_edge:                  ; preds = %land.rhs.20
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.21:                                      ; preds = %land.rhs.20
  %incdec.ptr.21 = getelementptr i8, ptr %call, i32 22
  %incdec.ptr12.21 = getelementptr i8, ptr %call5.i.i, i32 22
  %91 = ptrtoint ptr %incdec.ptr12.20 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %89, ptr %incdec.ptr12.20, align 1
  %92 = ptrtoint ptr %incdec.ptr.21 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %incdec.ptr.21, align 1
  %94 = zext i8 %93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.157)
  switch i8 %93, label %land.rhs.22 [
    i8 0, label %land.rhs.21.while.end_crit_edge
    i8 95, label %land.rhs.21.while.end_crit_edge95
  ]

land.rhs.21.while.end_crit_edge95:                ; preds = %land.rhs.21
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.21.while.end_crit_edge:                  ; preds = %land.rhs.21
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.22:                                      ; preds = %land.rhs.21
  %incdec.ptr.22 = getelementptr i8, ptr %call, i32 23
  %incdec.ptr12.22 = getelementptr i8, ptr %call5.i.i, i32 23
  %95 = ptrtoint ptr %incdec.ptr12.21 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %93, ptr %incdec.ptr12.21, align 1
  %96 = ptrtoint ptr %incdec.ptr.22 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %incdec.ptr.22, align 1
  %98 = zext i8 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.158)
  switch i8 %97, label %land.rhs.23 [
    i8 0, label %land.rhs.22.while.end_crit_edge
    i8 95, label %land.rhs.22.while.end_crit_edge96
  ]

land.rhs.22.while.end_crit_edge96:                ; preds = %land.rhs.22
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.22.while.end_crit_edge:                  ; preds = %land.rhs.22
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.23:                                      ; preds = %land.rhs.22
  %incdec.ptr.23 = getelementptr i8, ptr %call, i32 24
  %incdec.ptr12.23 = getelementptr i8, ptr %call5.i.i, i32 24
  %99 = ptrtoint ptr %incdec.ptr12.22 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %97, ptr %incdec.ptr12.22, align 1
  %100 = ptrtoint ptr %incdec.ptr.23 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %incdec.ptr.23, align 1
  %102 = zext i8 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.159)
  switch i8 %101, label %land.rhs.24 [
    i8 0, label %land.rhs.23.while.end_crit_edge
    i8 95, label %land.rhs.23.while.end_crit_edge97
  ]

land.rhs.23.while.end_crit_edge97:                ; preds = %land.rhs.23
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.23.while.end_crit_edge:                  ; preds = %land.rhs.23
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.24:                                      ; preds = %land.rhs.23
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr12.24 = getelementptr i8, ptr %call5.i.i, i32 25
  %103 = ptrtoint ptr %incdec.ptr12.23 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %101, ptr %incdec.ptr12.23, align 1
  br label %while.end

while.end:                                        ; preds = %land.rhs.24, %land.rhs.23.while.end_crit_edge, %land.rhs.23.while.end_crit_edge97, %land.rhs.22.while.end_crit_edge, %land.rhs.22.while.end_crit_edge96, %land.rhs.21.while.end_crit_edge, %land.rhs.21.while.end_crit_edge95, %land.rhs.20.while.end_crit_edge, %land.rhs.20.while.end_crit_edge94, %land.rhs.19.while.end_crit_edge, %land.rhs.19.while.end_crit_edge93, %land.rhs.18.while.end_crit_edge, %land.rhs.18.while.end_crit_edge92, %land.rhs.17.while.end_crit_edge, %land.rhs.17.while.end_crit_edge91, %land.rhs.16.while.end_crit_edge, %land.rhs.16.while.end_crit_edge90, %land.rhs.15.while.end_crit_edge, %land.rhs.15.while.end_crit_edge89, %land.rhs.14.while.end_crit_edge, %land.rhs.14.while.end_crit_edge88, %land.rhs.13.while.end_crit_edge, %land.rhs.13.while.end_crit_edge87, %land.rhs.12.while.end_crit_edge, %land.rhs.12.while.end_crit_edge86, %land.rhs.11.while.end_crit_edge, %land.rhs.11.while.end_crit_edge85, %land.rhs.10.while.end_crit_edge, %land.rhs.10.while.end_crit_edge84, %land.rhs.9.while.end_crit_edge, %land.rhs.9.while.end_crit_edge83, %land.rhs.8.while.end_crit_edge, %land.rhs.8.while.end_crit_edge82, %land.rhs.7.while.end_crit_edge, %land.rhs.7.while.end_crit_edge81, %land.rhs.6.while.end_crit_edge, %land.rhs.6.while.end_crit_edge80, %land.rhs.5.while.end_crit_edge, %land.rhs.5.while.end_crit_edge79, %land.rhs.4.while.end_crit_edge, %land.rhs.4.while.end_crit_edge78, %land.rhs.3.while.end_crit_edge, %land.rhs.3.while.end_crit_edge77, %land.rhs.2.while.end_crit_edge, %land.rhs.2.while.end_crit_edge76, %land.rhs.1.while.end_crit_edge, %land.rhs.1.while.end_crit_edge75, %land.rhs.while.end_crit_edge, %land.rhs.while.end_crit_edge74, %while.cond.preheader.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge73
  %p.0.lcssa = phi ptr [ %call5.i.i, %while.cond.preheader.while.end_crit_edge ], [ %call5.i.i, %while.cond.preheader.while.end_crit_edge73 ], [ %incdec.ptr12, %land.rhs.while.end_crit_edge ], [ %incdec.ptr12, %land.rhs.while.end_crit_edge74 ], [ %incdec.ptr12.1, %land.rhs.1.while.end_crit_edge ], [ %incdec.ptr12.1, %land.rhs.1.while.end_crit_edge75 ], [ %incdec.ptr12.2, %land.rhs.2.while.end_crit_edge ], [ %incdec.ptr12.2, %land.rhs.2.while.end_crit_edge76 ], [ %incdec.ptr12.3, %land.rhs.3.while.end_crit_edge ], [ %incdec.ptr12.3, %land.rhs.3.while.end_crit_edge77 ], [ %incdec.ptr12.4, %land.rhs.4.while.end_crit_edge ], [ %incdec.ptr12.4, %land.rhs.4.while.end_crit_edge78 ], [ %incdec.ptr12.5, %land.rhs.5.while.end_crit_edge ], [ %incdec.ptr12.5, %land.rhs.5.while.end_crit_edge79 ], [ %incdec.ptr12.6, %land.rhs.6.while.end_crit_edge ], [ %incdec.ptr12.6, %land.rhs.6.while.end_crit_edge80 ], [ %incdec.ptr12.7, %land.rhs.7.while.end_crit_edge ], [ %incdec.ptr12.7, %land.rhs.7.while.end_crit_edge81 ], [ %incdec.ptr12.8, %land.rhs.8.while.end_crit_edge ], [ %incdec.ptr12.8, %land.rhs.8.while.end_crit_edge82 ], [ %incdec.ptr12.9, %land.rhs.9.while.end_crit_edge ], [ %incdec.ptr12.9, %land.rhs.9.while.end_crit_edge83 ], [ %incdec.ptr12.10, %land.rhs.10.while.end_crit_edge ], [ %incdec.ptr12.10, %land.rhs.10.while.end_crit_edge84 ], [ %incdec.ptr12.11, %land.rhs.11.while.end_crit_edge ], [ %incdec.ptr12.11, %land.rhs.11.while.end_crit_edge85 ], [ %incdec.ptr12.12, %land.rhs.12.while.end_crit_edge ], [ %incdec.ptr12.12, %land.rhs.12.while.end_crit_edge86 ], [ %incdec.ptr12.13, %land.rhs.13.while.end_crit_edge ], [ %incdec.ptr12.13, %land.rhs.13.while.end_crit_edge87 ], [ %incdec.ptr12.14, %land.rhs.14.while.end_crit_edge ], [ %incdec.ptr12.14, %land.rhs.14.while.end_crit_edge88 ], [ %incdec.ptr12.15, %land.rhs.15.while.end_crit_edge ], [ %incdec.ptr12.15, %land.rhs.15.while.end_crit_edge89 ], [ %incdec.ptr12.16, %land.rhs.16.while.end_crit_edge ], [ %incdec.ptr12.16, %land.rhs.16.while.end_crit_edge90 ], [ %incdec.ptr12.17, %land.rhs.17.while.end_crit_edge ], [ %incdec.ptr12.17, %land.rhs.17.while.end_crit_edge91 ], [ %incdec.ptr12.18, %land.rhs.18.while.end_crit_edge ], [ %incdec.ptr12.18, %land.rhs.18.while.end_crit_edge92 ], [ %incdec.ptr12.19, %land.rhs.19.while.end_crit_edge ], [ %incdec.ptr12.19, %land.rhs.19.while.end_crit_edge93 ], [ %incdec.ptr12.20, %land.rhs.20.while.end_crit_edge ], [ %incdec.ptr12.20, %land.rhs.20.while.end_crit_edge94 ], [ %incdec.ptr12.21, %land.rhs.21.while.end_crit_edge ], [ %incdec.ptr12.21, %land.rhs.21.while.end_crit_edge95 ], [ %incdec.ptr12.22, %land.rhs.22.while.end_crit_edge ], [ %incdec.ptr12.22, %land.rhs.22.while.end_crit_edge96 ], [ %incdec.ptr12.23, %land.rhs.23.while.end_crit_edge ], [ %incdec.ptr12.23, %land.rhs.23.while.end_crit_edge97 ], [ %incdec.ptr12.24, %land.rhs.24 ]
  %id = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %sai, i32 0, i32 13
  %104 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp13 = icmp eq i32 %105, 0
  %strlen70 = tail call i32 @strlen(ptr noundef %p.0.lcssa) #16
  %endptr71 = getelementptr i8, ptr %p.0.lcssa, i32 %strlen70
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %106 = call ptr @memcpy(ptr %endptr71, ptr @.str.52, i32 7)
  br label %cond.end

cond.false:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %107 = call ptr @memcpy(ptr %endptr71, ptr @.str.53, i32 7)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %108 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call5.i.i, ptr %.compoundliteral, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral, i32 0, i32 1
  %109 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @mclk_ops, ptr %ops, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral, i32 0, i32 2
  %110 = ptrtoint ptr %.compoundliteral17 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call, ptr %.compoundliteral17, align 4
  %111 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %.compoundliteral17, ptr %parent_names, align 4
  %parent_data = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral, i32 0, i32 3
  %112 = ptrtoint ptr %parent_data to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %parent_data, align 4
  %parent_hws = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral, i32 0, i32 4
  %113 = ptrtoint ptr %parent_hws to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %parent_hws, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral, i32 0, i32 5
  %114 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 1, ptr %num_parents, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral, i32 0, i32 6
  %115 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %flags, align 4
  %init = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 2
  %116 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %.compoundliteral, ptr %init, align 4
  %sai_data = getelementptr inbounds %struct.stm32_sai_mclk_data, ptr %call.i, i32 0, i32 2
  %117 = ptrtoint ptr %sai_data to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %sai, ptr %sai_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_sai_add_mclk_provider.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_sai_add_mclk_provider, %if.then24)) #12
          to label %do.end [label %if.then24], !srcloc !308

if.then24:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_sai_add_mclk_provider.__UNIQUE_ID_ddebug245, ptr noundef %dev1, ptr noundef nonnull @.str.55, ptr noundef nonnull %call5.i.i) #12
  br label %do.end

do.end:                                           ; preds = %if.then24, %cond.end
  %118 = ptrtoint ptr %sai to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %sai, align 8
  %dev27 = getelementptr inbounds %struct.platform_device, ptr %119, i32 0, i32 3
  %call28 = call i32 @devm_clk_hw_register(ptr noundef %dev27, ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end34, label %do.end33

do.end33:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.56, i32 noundef %call28) #15
  br label %cleanup

if.end34:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %clk = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 1
  %120 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %clk, align 4
  %sai_mclk = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %sai, i32 0, i32 10
  %122 = ptrtoint ptr %sai_mclk to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %121, ptr %sai_mclk, align 4
  %call35 = call i32 @devm_of_clk_add_hw_provider(ptr noundef %dev1, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef nonnull %call.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %do.end33, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %do.end33 ], [ %call35, %if.end34 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stm32_sai_sub_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.fshl.i32(i32 %reg, i32 %reg, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %0)
  %1 = icmp ult i32 %0, 18
  %switch.cast = trunc i32 %0 to i18
  %switch.downshift = lshr i18 -65313, %switch.cast
  %2 = and i18 %switch.downshift, 1
  %switch.masked = icmp ne i18 %2, 0
  %retval.0 = select i1 %1, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stm32_sai_sub_readable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.fshl.i32(i32 %reg, i32 %reg, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %0)
  %1 = icmp ult i32 %0, 18
  %switch.cast = trunc i32 %0 to i18
  %switch.downshift = lshr i18 -65281, %switch.cast
  %2 = and i18 %switch.downshift, 1
  %switch.masked = icmp ne i18 %2, 0
  %retval.0 = select i1 %1, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stm32_sai_sub_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -20
  %switch.and = and i32 %0, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  ret i1 %switch.selectcmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_sai_mclk_enable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sai_data = getelementptr inbounds %struct.stm32_sai_mclk_data, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %sai_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sai_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_sai_mclk_enable.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_sai_mclk_enable, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !308

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_sai_mclk_enable.__UNIQUE_ID_ddebug243, ptr noundef %dev, ptr noundef nonnull @.str.58) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pdata.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata.i, align 8
  %pclk.i = getelementptr inbounds %struct.stm32_sai_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pclk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.stm32_sai_sub_reg_up.exit_crit_edge, label %if.end.i

do.end.stm32_sai_sub_reg_up.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %stm32_sai_sub_reg_up.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %regmap.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 0, i32 noundef 134217728, i32 noundef 134217728, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %10 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata.i, align 8
  %pclk3.i = getelementptr inbounds %struct.stm32_sai_data, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %pclk3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pclk3.i, align 4
  tail call void @clk_disable(ptr noundef %13) #12
  br label %stm32_sai_sub_reg_up.exit

stm32_sai_sub_reg_up.exit:                        ; preds = %if.end.i, %do.end.stm32_sai_sub_reg_up.exit_crit_edge
  %retval.0.i6 = phi i32 [ %call.i.i, %if.end.i ], [ %call.i, %do.end.stm32_sai_sub_reg_up.exit_crit_edge ]
  ret i32 %retval.0.i6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_sai_mclk_disable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sai_data = getelementptr inbounds %struct.stm32_sai_mclk_data, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %sai_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sai_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_sai_mclk_disable.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_sai_mclk_disable, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !308

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_sai_mclk_disable.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.60) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pdata.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata.i, align 8
  %pclk.i = getelementptr inbounds %struct.stm32_sai_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pclk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.stm32_sai_sub_reg_up.exit_crit_edge, label %if.end.i

do.end.stm32_sai_sub_reg_up.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %stm32_sai_sub_reg_up.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %regmap.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 0, i32 noundef 134217728, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %10 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata.i, align 8
  %pclk3.i = getelementptr inbounds %struct.stm32_sai_data, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %pclk3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pclk3.i, align 4
  tail call void @clk_disable(ptr noundef %13) #12
  br label %stm32_sai_sub_reg_up.exit

stm32_sai_sub_reg_up.exit:                        ; preds = %if.end.i, %do.end.stm32_sai_sub_reg_up.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_sai_mclk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %freq = getelementptr inbounds %struct.stm32_sai_mclk_data, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %freq, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_sai_mclk_round_rate(ptr nocapture noundef %hw, i32 noundef %rate, ptr nocapture noundef readonly %prate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sai_data = getelementptr inbounds %struct.stm32_sai_mclk_data, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %sai_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sai_data, align 4
  %2 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prate, align 4
  %pdata.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata.i, align 8
  %conf.i = getelementptr inbounds %struct.stm32_sai_data, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %conf.i, align 4
  %div250.i = lshr i32 %rate, 1
  %add.i = add i32 %3, %div250.i
  %div3.i = udiv i32 %add.i, %rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp.i = icmp eq i32 %7, 16
  %sub.i = select i1 %cmp.i, i32 15, i32 63
  call void @__sanitizer_cov_trace_cmp4(i32 %div3.i, i32 %sub.i)
  %cmp4.i = icmp sgt i32 %div3.i, %sub.i
  br i1 %cmp4.i, label %stm32_sai_get_clk_div.exit.thread, label %do.body5.i

stm32_sai_get_clk_div.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.61, i32 noundef %div3.i) #15
  br label %cleanup

do.body5.i:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_sai_get_clk_div.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_sai_mclk_round_rate, %if.then9.i)) #12
          to label %do.end14.i [label %if.then9.i], !srcloc !308

if.then9.i:                                       ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %dev11.i = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_sai_get_clk_div.__UNIQUE_ID_ddebug241, ptr noundef %dev11.i, ptr noundef nonnull @.str.63, i32 noundef %div3.i) #12
  br label %do.end14.i

do.end14.i:                                       ; preds = %if.then9.i, %do.body5.i
  %.frozen = freeze i32 %3
  %div3.i.frozen = freeze i32 %div3.i
  %div32.i = udiv i32 %.frozen, %div3.i.frozen
  %12 = mul i32 %div32.i, %div3.i.frozen
  %rem.i.decomposed = sub i32 %.frozen, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool15.not.i = icmp eq i32 %rem.i.decomposed, 0
  br i1 %tobool15.not.i, label %do.end14.i.stm32_sai_get_clk_div.exit_crit_edge, label %do.body17.i

do.end14.i.stm32_sai_get_clk_div.exit_crit_edge:  ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %stm32_sai_get_clk_div.exit

do.body17.i:                                      ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_sai_get_clk_div.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_sai_mclk_round_rate, %if.then29.i)) #12
          to label %stm32_sai_get_clk_div.exit [label %if.then29.i], !srcloc !308

if.then29.i:                                      ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %dev31.i = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_sai_get_clk_div.__UNIQUE_ID_ddebug242, ptr noundef %dev31.i, ptr noundef nonnull @.str.64, i32 noundef %rate, i32 noundef %div32.i) #12
  br label %stm32_sai_get_clk_div.exit

stm32_sai_get_clk_div.exit:                       ; preds = %if.then29.i, %do.body17.i, %do.end14.i.stm32_sai_get_clk_div.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div3.i)
  %cmp = icmp slt i32 %div3.i, 0
  br i1 %cmp, label %stm32_sai_get_clk_div.exit.cleanup_crit_edge, label %if.end

stm32_sai_get_clk_div.exit.cleanup_crit_edge:     ; preds = %stm32_sai_get_clk_div.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %stm32_sai_get_clk_div.exit
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %prate, align 4
  %div1 = udiv i32 %16, %div3.i
  %freq = getelementptr inbounds %struct.stm32_sai_mclk_data, ptr %hw, i32 0, i32 1
  %17 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div1, ptr %freq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %stm32_sai_get_clk_div.exit.cleanup_crit_edge, %stm32_sai_get_clk_div.exit.thread
  %retval.0 = phi i32 [ %div1, %if.end ], [ %div3.i, %stm32_sai_get_clk_div.exit.cleanup_crit_edge ], [ -22, %stm32_sai_get_clk_div.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_sai_mclk_set_rate(ptr nocapture noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sai_data = getelementptr inbounds %struct.stm32_sai_mclk_data, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %sai_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sai_data, align 4
  %pdata.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata.i, align 8
  %conf.i = getelementptr inbounds %struct.stm32_sai_data, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %conf.i, align 4
  %div250.i = lshr i32 %rate, 1
  %add.i = add i32 %div250.i, %parent_rate
  %div3.i = udiv i32 %add.i, %rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp.i = icmp eq i32 %5, 16
  %sub.i = select i1 %cmp.i, i32 15, i32 63
  call void @__sanitizer_cov_trace_cmp4(i32 %div3.i, i32 %sub.i)
  %cmp4.i = icmp sgt i32 %div3.i, %sub.i
  br i1 %cmp4.i, label %stm32_sai_get_clk_div.exit.thread, label %do.body5.i

stm32_sai_get_clk_div.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.61, i32 noundef %div3.i) #15
  br label %cleanup

do.body5.i:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_sai_get_clk_div.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_sai_mclk_set_rate, %if.then9.i)) #12
          to label %do.end14.i [label %if.then9.i], !srcloc !308

if.then9.i:                                       ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %dev11.i = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_sai_get_clk_div.__UNIQUE_ID_ddebug241, ptr noundef %dev11.i, ptr noundef nonnull @.str.63, i32 noundef %div3.i) #12
  br label %do.end14.i

do.end14.i:                                       ; preds = %if.then9.i, %do.body5.i
  %div32.i = udiv i32 %parent_rate, %div3.i
  %10 = mul i32 %div32.i, %div3.i
  %rem.i.decomposed = sub i32 %parent_rate, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool15.not.i = icmp eq i32 %rem.i.decomposed, 0
  br i1 %tobool15.not.i, label %do.end14.i.stm32_sai_get_clk_div.exit_crit_edge, label %do.body17.i

do.end14.i.stm32_sai_get_clk_div.exit_crit_edge:  ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %stm32_sai_get_clk_div.exit

do.body17.i:                                      ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_sai_get_clk_div.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_sai_mclk_set_rate, %if.then29.i)) #12
          to label %stm32_sai_get_clk_div.exit [label %if.then29.i], !srcloc !308

if.then29.i:                                      ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %dev31.i = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_sai_get_clk_div.__UNIQUE_ID_ddebug242, ptr noundef %dev31.i, ptr noundef nonnull @.str.64, i32 noundef %rate, i32 noundef %div32.i) #12
  br label %stm32_sai_get_clk_div.exit

stm32_sai_get_clk_div.exit:                       ; preds = %if.then29.i, %do.body17.i, %do.end14.i.stm32_sai_get_clk_div.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div3.i)
  %cmp = icmp slt i32 %div3.i, 0
  br i1 %cmp, label %stm32_sai_get_clk_div.exit.cleanup_crit_edge, label %if.end

stm32_sai_get_clk_div.exit.cleanup_crit_edge:     ; preds = %stm32_sai_get_clk_div.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %stm32_sai_get_clk_div.exit
  %call1 = tail call fastcc i32 @stm32_sai_set_clk_div(ptr noundef %1, i32 noundef %div3.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %freq = getelementptr inbounds %struct.stm32_sai_mclk_data, ptr %hw, i32 0, i32 1
  %13 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %rate, ptr %freq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %stm32_sai_get_clk_div.exit.cleanup_crit_edge, %stm32_sai_get_clk_div.exit.thread
  %retval.0 = phi i32 [ 0, %if.end3 ], [ %div3.i, %stm32_sai_get_clk_div.exit.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -22, %stm32_sai_get_clk_div.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_sai_set_clk_div(ptr nocapture noundef readonly %sai, i32 noundef %div) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %sai, i32 0, i32 7
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 8
  %conf = getelementptr inbounds %struct.stm32_sai_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %conf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp = icmp eq i32 %3, 16
  %cond = select i1 %cmp, i32 4, i32 6
  %div.highbits = lshr i32 %div, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.highbits)
  %cmp2.not = icmp eq i32 %div.highbits, 0
  br i1 %cmp2.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %sai to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sai, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61, i32 noundef %div) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %pclk.i = getelementptr inbounds %struct.stm32_sai_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pclk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.do.end13_crit_edge, label %stm32_sai_sub_reg_up.exit

if.end.do.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13

stm32_sai_sub_reg_up.exit:                        ; preds = %if.end
  %shl8 = shl i32 %div, 20
  %sub6 = sub nuw nsw i32 12, %cond
  %shr = lshr i32 -1, %sub6
  %and = and i32 %shr, -1048576
  %regmap.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %sai, i32 0, i32 1
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 0, i32 noundef %and, i32 noundef %shl8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %10 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata, align 8
  %pclk3.i = getelementptr inbounds %struct.stm32_sai_data, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %pclk3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pclk3.i, align 4
  tail call void @clk_disable(ptr noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp9 = icmp slt i32 %call.i.i, 0
  br i1 %cmp9, label %stm32_sai_sub_reg_up.exit.do.end13_crit_edge, label %stm32_sai_sub_reg_up.exit.cleanup_crit_edge

stm32_sai_sub_reg_up.exit.cleanup_crit_edge:      ; preds = %stm32_sai_sub_reg_up.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

stm32_sai_sub_reg_up.exit.do.end13_crit_edge:     ; preds = %stm32_sai_sub_reg_up.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13

do.end13:                                         ; preds = %stm32_sai_sub_reg_up.exit.do.end13_crit_edge, %if.end.do.end13_crit_edge
  %retval.0.i29 = phi i32 [ %call.i.i, %stm32_sai_sub_reg_up.exit.do.end13_crit_edge ], [ %call.i, %if.end.do.end13_crit_edge ]
  %14 = ptrtoint ptr %sai to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sai, align 8
  %dev15 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.67) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %stm32_sai_sub_reg_up.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %retval.0.i29, %do.end13 ], [ %call.i.i, %stm32_sai_sub_reg_up.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_sai_dai_probe(ptr noundef %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %cpu_dai1 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %cpu_dai1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cpu_dai, ptr %cpu_dai1, align 8
  %phys_addr = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 11
  %5 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %phys_addr, align 8
  %add = add i32 %6, 28
  %dma_params = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %dma_params to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %dma_params, align 4
  %maxburst = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %maxburst to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %maxburst, align 4
  %pdata = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdata, align 8
  %fifo_size = getelementptr inbounds %struct.stm32_sai_data, ptr %10, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fifo_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %cmp = icmp ult i32 %12, 8
  %spec.store.select = select i1 %cmp, i32 1, i32 4
  %13 = ptrtoint ptr %maxburst to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.store.select, ptr %maxburst, align 4
  %addr_width = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %addr_width to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %addr_width, align 4
  %dir = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 14
  %15 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp6 = icmp eq i32 %16, 0
  %spec.select61 = select i1 %cmp6, ptr %dma_params, ptr null
  %spec.select62 = select i1 %cmp6, ptr null, ptr %dma_params
  %17 = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 7
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %spec.select61, ptr %17, align 4
  %19 = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %spec.select62, ptr %19, align 4
  %spdif = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 16
  %21 = ptrtoint ptr %spdif to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %spdif, align 1, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %if.end12, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %entry
  %23 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp14 = icmp eq i32 %24, 1
  %spec.select = zext i1 %cmp14 to i32
  %sync = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 18
  %25 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sync, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp17 = icmp eq i32 %26, 2
  br i1 %cmp17, label %if.then18, label %if.end12.if.end25_crit_edge

if.end12.if.end25_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then18:                                        ; preds = %if.end12
  %27 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdata, align 8
  %set_sync = getelementptr inbounds %struct.stm32_sai_data, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %set_sync to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_sync, align 4
  %np_sync_provider = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 8
  %31 = ptrtoint ptr %np_sync_provider to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %np_sync_provider, align 4
  %synco = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 19
  %33 = ptrtoint ptr %synco to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %synco, align 4
  %synci = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 20
  %35 = ptrtoint ptr %synci to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %synci, align 8
  %call21 = tail call i32 %30(ptr noundef %28, ptr noundef %32, i32 noundef %34, i32 noundef %36) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then18.if.end25_crit_edge, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then18.if.end25_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.end25:                                         ; preds = %if.then18.if.end25_crit_edge, %if.end12.if.end25_crit_edge
  %37 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sync, align 8
  %39 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdata, align 8
  %pclk.i = getelementptr inbounds %struct.stm32_sai_data, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pclk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %42) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end25.cleanup_crit_edge, label %if.end.i

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %shl = shl i32 %38, 10
  %or28 = or i32 %shl, %spec.select
  %regmap.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 1
  %43 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef 0, i32 noundef 3073, i32 noundef %or28, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %45 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdata, align 8
  %pclk3.i = getelementptr inbounds %struct.stm32_sai_data, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %pclk3.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pclk3.i, align 4
  tail call void @clk_disable(ptr noundef %48) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end25.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call21, %if.then18.cleanup_crit_edge ], [ %call.i.i, %if.end.i ], [ %call.i, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_sai_pcm_new(ptr nocapture noundef readonly %rtd, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  %knew = alloca %struct.snd_kcontrol_new, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %knew) #12
  %4 = call ptr @memcpy(ptr %knew, ptr @iec958_ctls, i32 48)
  %spdif = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 16
  %5 = ptrtoint ptr %spdif to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %spdif, align 1, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_sai_pcm_new.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_sai_pcm_new, %if.then5)) #12
          to label %do.end [label %if.then5], !srcloc !308

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 8
  %dev6 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_sai_pcm_new.__UNIQUE_ID_ddebug255, ptr noundef %dev6, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69) #12
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %pcm = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 7
  %9 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcm, align 4
  %device = getelementptr inbounds %struct.snd_pcm, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %device, align 4
  %device7 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew, i32 0, i32 1
  %13 = ptrtoint ptr %device7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %device7, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %10, align 8
  %call9 = call ptr @snd_ctl_new1(ptr noundef nonnull %knew, ptr noundef %3) #12
  %call10 = call i32 @snd_ctl_add(ptr noundef %15, ptr noundef %call9) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %knew) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_pcm_iec958_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
define internal i32 @snd_pcm_iec958_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uctl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ctrl_lock = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %1, i32 0, i32 28
  tail call void @mutex_lock_nested(ptr noundef %ctrl_lock, i32 noundef 0) #12
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uctl, i32 0, i32 2
  %iec958 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %iec958 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iec958, align 4
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %ctrl_lock) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_pcm_iec958_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %uctl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ctrl_lock = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %1, i32 0, i32 28
  tail call void @mutex_lock_nested(ptr noundef %ctrl_lock, i32 noundef 0) #12
  %iec958 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %1, i32 0, i32 27
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uctl, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %4 = ptrtoint ptr %iec958 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %iec958, align 4
  tail call void @mutex_unlock(ptr noundef %ctrl_lock) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_sai_set_sysclk(ptr nocapture noundef readonly %cpu_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %sai_mclk = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %sai_mclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sai_mclk, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq)
  %tobool1.not = icmp eq i32 %freq, 0
  %pdata.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata.i, align 8
  %pclk.i = getelementptr inbounds %struct.stm32_sai_data, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pclk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %stm32_sai_sub_reg_up.exit

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

stm32_sai_sub_reg_up.exit:                        ; preds = %if.then
  %cond = select i1 %tobool1.not, i32 524288, i32 0
  %regmap.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 0, i32 noundef 524288, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %12 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdata.i, align 8
  %pclk3.i = getelementptr inbounds %struct.stm32_sai_data, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %pclk3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pclk3.i, align 4
  tail call void @clk_disable(ptr noundef %15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3 = icmp slt i32 %call.i.i, 0
  br i1 %cmp3, label %stm32_sai_sub_reg_up.exit.cleanup_crit_edge, label %if.end

stm32_sai_sub_reg_up.exit.cleanup_crit_edge:      ; preds = %stm32_sai_sub_reg_up.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %stm32_sai_sub_reg_up.exit
  br i1 %tobool1.not, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.end
  %mclk_rate = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 12
  %16 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mclk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool7.not = icmp eq i32 %17, 0
  br i1 %tobool7.not, label %if.then6.cleanup_crit_edge, label %if.then8

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %sai_mclk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sai_mclk, align 4
  tail call void @clk_rate_exclusive_put(ptr noundef %19) #12
  %20 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %mclk_rate, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 8
  %23 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdata.i, align 8
  %clk_x8k.i = getelementptr inbounds %struct.stm32_sai_data, ptr %24, i32 0, i32 3
  %rem.i = urem i32 %freq, 11025
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %clk_x11k.i = getelementptr inbounds %struct.stm32_sai_data, ptr %24, i32 0, i32 4
  %spec.select.i = select i1 %tobool.not.i, ptr %clk_x11k.i, ptr %clk_x8k.i
  %25 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %parent_clk.0.i = load ptr, ptr %spec.select.i, align 4
  %sai_ck.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 9
  %26 = ptrtoint ptr %sai_ck.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sai_ck.i, align 8
  %call.i61 = tail call i32 @clk_set_parent(ptr noundef %27, ptr noundef %parent_clk.0.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool3.not.i = icmp eq i32 %call.i61, 0
  br i1 %tobool3.not.i, label %if.end16, label %stm32_sai_set_parent_clock.exit

stm32_sai_set_parent_clock.exit:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i62 = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call.i61)
  %cmp.i63 = icmp eq i32 %call.i61, -16
  %cond.i = select i1 %cmp.i63, ptr @.str.78, ptr @.str.79
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i62, ptr noundef nonnull @.str.76, i32 noundef %call.i61, ptr noundef nonnull %cond.i) #15
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %28 = ptrtoint ptr %sai_mclk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sai_mclk, align 4
  %call18 = tail call i32 @clk_set_rate_exclusive(ptr noundef %29, i32 noundef %freq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.body26, label %do.end

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call18)
  %cmp23 = icmp eq i32 %call18, -16
  %cond24 = select i1 %cmp23, ptr @.str.73, ptr @.str.74
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull %cond24) #15
  br label %cleanup

do.body26:                                        ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_sai_set_sysclk.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_sai_set_sysclk, %if.then31)) #12
          to label %do.end35 [label %if.then31], !srcloc !308

if.then31:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_sai_set_sysclk.__UNIQUE_ID_ddebug247, ptr noundef %33, ptr noundef nonnull @.str.75, i32 noundef %freq) #12
  br label %do.end35

do.end35:                                         ; preds = %if.then31, %do.body26
  %mclk_rate36 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 12
  %34 = ptrtoint ptr %mclk_rate36 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %freq, ptr %mclk_rate36, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %do.end, %stm32_sai_set_parent_clock.exit, %if.then8, %if.then6.cleanup_crit_edge, %stm32_sai_sub_reg_up.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %do.end ], [ %call.i.i, %stm32_sai_sub_reg_up.exit.cleanup_crit_edge ], [ 0, %if.then8 ], [ 0, %if.then6.cleanup_crit_edge ], [ %call.i61, %stm32_sai_set_parent_clock.exit ], [ 0, %do.end35 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_sai_set_dai_fmt(ptr nocapture noundef readonly %cpu_dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_sai_set_dai_fmt.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_sai_set_dai_fmt, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !308

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_sai_set_dai_fmt.__UNIQUE_ID_ddebug249, ptr noundef %5, ptr noundef nonnull @.str.81, i32 noundef %fmt) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %spdif = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %spdif to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %spdif, align 1, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.end7, label %do.end.conf_update_crit_edge

do.end.conf_update_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %conf_update

if.end7:                                          ; preds = %do.end
  %and = and i32 %fmt, 15
  %switch.tableidx = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 5
  br i1 %8, label %switch.lookup, label %do.end21

do.end21:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.82, i32 noundef %and) #15
  br label %cleanup

switch.lookup:                                    ; preds = %if.end7
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.stm32_sai_set_dai_fmt, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep151 = getelementptr inbounds [5 x i32], ptr @switch.table.stm32_sai_set_dai_fmt.135, i32 0, i32 %switch.tableidx
  %12 = ptrtoint ptr %switch.gep151 to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load152 = load i32, ptr %switch.gep151, align 4
  %and26 = and i32 %fmt, 3840
  %13 = lshr exact i32 %and26, 8
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %13, label %do.end36 [
    i32 0, label %switch.lookup.sw.epilog39_crit_edge
    i32 3, label %sw.bb27
    i32 2, label %sw.bb28
    i32 4, label %sw.bb30
  ]

switch.lookup.sw.epilog39_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog39

sw.bb27:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  %xor = xor i32 %switch.load152, 512
  br label %sw.epilog39

sw.bb28:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  %xor29 = xor i32 %switch.load, 131072
  br label %sw.epilog39

sw.bb30:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  %xor31 = xor i32 %switch.load152, 512
  %xor32 = xor i32 %switch.load, 131072
  br label %sw.epilog39

do.end36:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.84, i32 noundef %and26) #15
  br label %cleanup

sw.epilog39:                                      ; preds = %sw.bb30, %sw.bb28, %sw.bb27, %switch.lookup.sw.epilog39_crit_edge
  %frcr.1 = phi i32 [ %xor32, %sw.bb30 ], [ %xor29, %sw.bb28 ], [ %switch.load, %sw.bb27 ], [ %switch.load, %switch.lookup.sw.epilog39_crit_edge ]
  %cr1.1 = phi i32 [ %xor31, %sw.bb30 ], [ %switch.load152, %sw.bb28 ], [ %xor, %sw.bb27 ], [ %switch.load152, %switch.lookup.sw.epilog39_crit_edge ]
  %pdata.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 7
  %17 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdata.i, align 8
  %pclk.i = getelementptr inbounds %struct.stm32_sai_data, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pclk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.epilog39.stm32_sai_sub_reg_up.exit_crit_edge, label %if.end.i

sw.epilog39.stm32_sai_sub_reg_up.exit_crit_edge:  ; preds = %sw.epilog39
  call void @__sanitizer_cov_trace_pc() #14
  br label %stm32_sai_sub_reg_up.exit

if.end.i:                                         ; preds = %sw.epilog39
  call void @__sanitizer_cov_trace_pc() #14
  %regmap.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 8, i32 noundef 458752, i32 noundef %frcr.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %23 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdata.i, align 8
  %pclk3.i = getelementptr inbounds %struct.stm32_sai_data, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %pclk3.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pclk3.i, align 4
  tail call void @clk_disable(ptr noundef %26) #12
  br label %stm32_sai_sub_reg_up.exit

stm32_sai_sub_reg_up.exit:                        ; preds = %if.end.i, %sw.epilog39.stm32_sai_sub_reg_up.exit_crit_edge
  %and43 = and i32 %fmt, 61440
  %trunc = trunc i32 %and43 to i16
  %27 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.161)
  switch i16 %trunc, label %do.end51 [
    i16 4096, label %sw.bb44
    i16 16384, label %stm32_sai_sub_reg_up.exit.sw.epilog54_crit_edge
  ]

stm32_sai_sub_reg_up.exit.sw.epilog54_crit_edge:  ; preds = %stm32_sai_sub_reg_up.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog54

sw.bb44:                                          ; preds = %stm32_sai_sub_reg_up.exit
  call void @__sanitizer_cov_trace_pc() #14
  %or45 = or i32 %cr1.1, 2
  br label %sw.epilog54

do.end51:                                         ; preds = %stm32_sai_sub_reg_up.exit
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.87, i32 noundef %and43) #15
  br label %cleanup

sw.epilog54:                                      ; preds = %sw.bb44, %stm32_sai_sub_reg_up.exit.sw.epilog54_crit_edge
  %.sink = phi i8 [ 0, %sw.bb44 ], [ 1, %stm32_sai_sub_reg_up.exit.sw.epilog54_crit_edge ]
  %cr1.2 = phi i32 [ %or45, %sw.bb44 ], [ %cr1.1, %stm32_sai_sub_reg_up.exit.sw.epilog54_crit_edge ]
  %master47 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 15
  %30 = ptrtoint ptr %master47 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %.sink, ptr %master47, align 8
  %sync = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 18
  %31 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sync, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool55.not = icmp eq i32 %32, 0
  br i1 %tobool55.not, label %sw.epilog54.conf_update_crit_edge, label %do.body57

sw.epilog54.conf_update_crit_edge:                ; preds = %sw.epilog54
  call void @__sanitizer_cov_trace_pc() #14
  br label %conf_update

do.body57:                                        ; preds = %sw.epilog54
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_sai_set_dai_fmt.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_sai_set_dai_fmt, %if.then69)) #12
          to label %do.end73 [label %if.then69], !srcloc !308

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_sai_set_dai_fmt.__UNIQUE_ID_ddebug250, ptr noundef %34, ptr noundef nonnull @.str.89) #12
  br label %do.end73

do.end73:                                         ; preds = %if.then69, %do.body57
  %or74 = or i32 %cr1.2, 2
  %master75 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 15
  %35 = ptrtoint ptr %master75 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %master75, align 8
  br label %conf_update

conf_update:                                      ; preds = %do.end73, %sw.epilog54.conf_update_crit_edge, %do.end.conf_update_crit_edge
  %cr1_mask.0 = phi i32 [ 524300, %do.end.conf_update_crit_edge ], [ 524814, %do.end73 ], [ 524814, %sw.epilog54.conf_update_crit_edge ]
  %cr1.4 = phi i32 [ 524292, %do.end.conf_update_crit_edge ], [ %or74, %do.end73 ], [ %cr1.2, %sw.epilog54.conf_update_crit_edge ]
  %pdata.i136 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 7
  %36 = ptrtoint ptr %pdata.i136 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdata.i136, align 8
  %pclk.i137 = getelementptr inbounds %struct.stm32_sai_data, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %pclk.i137 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pclk.i137, align 4
  %call.i138 = tail call i32 @clk_enable(ptr noundef %39) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %cmp.i139 = icmp slt i32 %call.i138, 0
  br i1 %cmp.i139, label %conf_update.do.end82_crit_edge, label %stm32_sai_sub_reg_up.exit145

conf_update.do.end82_crit_edge:                   ; preds = %conf_update
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end82

stm32_sai_sub_reg_up.exit145:                     ; preds = %conf_update
  %regmap.i140 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 1
  %40 = ptrtoint ptr %regmap.i140 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i140, align 4
  %call.i.i141 = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 0, i32 noundef %cr1_mask.0, i32 noundef %cr1.4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %42 = ptrtoint ptr %pdata.i136 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdata.i136, align 8
  %pclk3.i142 = getelementptr inbounds %struct.stm32_sai_data, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %pclk3.i142 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pclk3.i142, align 4
  tail call void @clk_disable(ptr noundef %45) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i141)
  %cmp = icmp slt i32 %call.i.i141, 0
  br i1 %cmp, label %stm32_sai_sub_reg_up.exit145.do.end82_crit_edge, label %if.end84

stm32_sai_sub_reg_up.exit145.do.end82_crit_edge:  ; preds = %stm32_sai_sub_reg_up.exit145
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end82

do.end82:                                         ; preds = %stm32_sai_sub_reg_up.exit145.do.end82_crit_edge, %conf_update.do.end82_crit_edge
  %retval.0.i144150 = phi i32 [ %call.i.i141, %stm32_sai_sub_reg_up.exit145.do.end82_crit_edge ], [ %call.i138, %conf_update.do.end82_crit_edge ]
  %46 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.67) #15
  br label %cleanup

if.end84:                                         ; preds = %stm32_sai_sub_reg_up.exit145
  call void @__sanitizer_cov_trace_pc() #14
  %fmt85 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 17
  %48 = ptrtoint ptr %fmt85 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %fmt, ptr %fmt85, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %do.end82, %do.end51, %do.end36, %do.end21
  %retval.0 = phi i32 [ %retval.0.i144150, %do.end82 ], [ 0, %if.end84 ], [ -22, %do.end21 ], [ -22, %do.end36 ], [ -22, %do.end51 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_sai_set_dai_tdm_slot(ptr nocapture noundef readonly %cpu_dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %spdif = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %spdif to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %spdif, align 1, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.body1, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.92) #15
  br label %cleanup

do.body1:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_sai_set_dai_tdm_slot.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_sai_set_dai_tdm_slot, %if.then6)) #12
          to label %do.end10 [label %if.then6], !srcloc !308

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_sai_set_dai_tdm_slot.__UNIQUE_ID_ddebug248, ptr noundef %7, ptr noundef nonnull @.str.95, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #12
  br label %do.end10

do.end10:                                         ; preds = %if.then6, %do.body1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %slot_width)
  %switch.selectcmp = icmp eq i32 %slot_width, 32
  %switch.select = select i1 %switch.selectcmp, i32 128, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %slot_width)
  %switch.selectcmp51 = icmp eq i32 %slot_width, 16
  %switch.select52 = select i1 %switch.selectcmp51, i32 64, i32 %switch.select
  %sub = shl i32 %slots, 8
  %shl12 = add i32 %sub, -256
  %or = or i32 %switch.select52, %shl12
  %dir = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then13, label %do.end10.if.end16_crit_edge

do.end10.if.end16_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then13:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  %slot_mask = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 24
  %10 = ptrtoint ptr %slot_mask to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %tx_mask, ptr %slot_mask, align 8
  %shl14 = shl i32 %tx_mask, 16
  %or15 = or i32 %or, %shl14
  %11 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %dir, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %do.end10.if.end16_crit_edge
  %12 = phi i32 [ %.pr, %if.then13 ], [ %9, %do.end10.if.end16_crit_edge ]
  %slotr.0 = phi i32 [ %or15, %if.then13 ], [ %or, %do.end10.if.end16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp18 = icmp eq i32 %12, 1
  br i1 %cmp18, label %if.then19, label %if.end16.if.end23_crit_edge

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %slot_mask20 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 24
  %13 = ptrtoint ptr %slot_mask20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %rx_mask, ptr %slot_mask20, align 8
  %shl21 = shl i32 %rx_mask, 16
  %or22 = or i32 %slotr.0, %shl21
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end16.if.end23_crit_edge
  %slotr.1 = phi i32 [ %or22, %if.then19 ], [ %slotr.0, %if.end16.if.end23_crit_edge ]
  %pdata.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata.i, align 8
  %pclk.i = getelementptr inbounds %struct.stm32_sai_data, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pclk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end23.stm32_sai_sub_reg_up.exit_crit_edge, label %if.end.i

if.end23.stm32_sai_sub_reg_up.exit_crit_edge:     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %stm32_sai_sub_reg_up.exit

if.end.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %regmap.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 12, i32 noundef -61504, i32 noundef %slotr.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %20 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdata.i, align 8
  %pclk3.i = getelementptr inbounds %struct.stm32_sai_data, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %pclk3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pclk3.i, align 4
  tail call void @clk_disable(ptr noundef %23) #12
  br label %stm32_sai_sub_reg_up.exit

stm32_sai_sub_reg_up.exit:                        ; preds = %if.end.i, %if.end23.stm32_sai_sub_reg_up.exit_crit_edge
  %slot_width26 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 23
  %24 = ptrtoint ptr %slot_width26 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %slot_width, ptr %slot_width26, align 4
  %slots27 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 22
  %25 = ptrtoint ptr %slots27 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %slots, ptr %slots27, align 8
  br label %cleanup

cleanup:                                          ; preds = %stm32_sai_sub_reg_up.exit, %do.end
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_sai_startup(ptr noundef %substream, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  %cr2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cr2) #12
  %4 = ptrtoint ptr %cr2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %cr2, align 4, !annotation !307
  %irq_lock = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 29
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #12
  %substream6 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %substream6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %substream, ptr %substream6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call3) #12
  %spdif = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %spdif to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %spdif, align 1, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %8 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime, align 4
  %call8 = tail call i32 @snd_pcm_hw_constraint_mask64(ptr noundef %9, i32 noundef 1, i64 noundef 1024) #12
  %10 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime, align 4
  %call.i = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %11, i32 noundef 10, i32 noundef 2, i32 noundef 2) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sai_ck = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %sai_ck to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sai_ck, align 8
  %call.i55 = tail call i32 @clk_prepare(ptr noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool.not.i = icmp eq i32 %call.i55, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.clk_prepare_enable.exit_crit_edge

if.end.clk_prepare_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end18_crit_edge, label %if.then3.i

if.end.i.if.end18_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %13) #12
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i55, %if.end.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp12 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp12, label %do.end17, label %clk_prepare_enable.exit.if.end18_crit_edge

clk_prepare_enable.exit.if.end18_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

do.end17:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.96, i32 noundef %retval.0.i) #15
  br label %cleanup

if.end18:                                         ; preds = %clk_prepare_enable.exit.if.end18_crit_edge, %if.end.i.if.end18_crit_edge
  %pdata.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 7
  %16 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdata.i, align 8
  %pclk.i = getelementptr inbounds %struct.stm32_sai_data, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pclk.i, align 4
  %call.i56 = tail call i32 @clk_enable(ptr noundef %19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %cmp.i = icmp slt i32 %call.i56, 0
  br i1 %cmp.i, label %if.end18.stm32_sai_sub_reg_wr.exit_crit_edge, label %if.end.i57

if.end18.stm32_sai_sub_reg_wr.exit_crit_edge:     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %stm32_sai_sub_reg_wr.exit

if.end.i57:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %regmap.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 24, i32 noundef 127, i32 noundef 127, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #12
  %22 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdata.i, align 8
  %pclk3.i = getelementptr inbounds %struct.stm32_sai_data, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %pclk3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pclk3.i, align 4
  tail call void @clk_disable(ptr noundef %25) #12
  br label %stm32_sai_sub_reg_wr.exit

stm32_sai_sub_reg_wr.exit:                        ; preds = %if.end.i57, %if.end18.stm32_sai_sub_reg_wr.exit_crit_edge
  %dir = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 14
  %26 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp20 = icmp eq i32 %27, 1
  br i1 %cmp20, label %if.then22, label %stm32_sai_sub_reg_wr.exit.if.end27_crit_edge

stm32_sai_sub_reg_wr.exit.if.end27_crit_edge:     ; preds = %stm32_sai_sub_reg_wr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then22:                                        ; preds = %stm32_sai_sub_reg_wr.exit
  %28 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdata.i, align 8
  %pclk.i59 = getelementptr inbounds %struct.stm32_sai_data, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %pclk.i59 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pclk.i59, align 4
  %call.i60 = tail call i32 @clk_enable(ptr noundef %31) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp.i61 = icmp slt i32 %call.i60, 0
  br i1 %cmp.i61, label %if.then22.stm32_sai_sub_reg_rd.exit_crit_edge, label %if.end.i65

if.then22.stm32_sai_sub_reg_rd.exit_crit_edge:    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %stm32_sai_sub_reg_rd.exit

if.end.i65:                                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  %regmap.i62 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 1
  %32 = ptrtoint ptr %regmap.i62 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i62, align 4
  %call1.i63 = call i32 @regmap_read(ptr noundef %33, i32 noundef 4, ptr noundef nonnull %cr2) #12
  %34 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdata.i, align 8
  %pclk3.i64 = getelementptr inbounds %struct.stm32_sai_data, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %pclk3.i64 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pclk3.i64, align 4
  call void @clk_disable(ptr noundef %37) #12
  br label %stm32_sai_sub_reg_rd.exit

stm32_sai_sub_reg_rd.exit:                        ; preds = %if.end.i65, %if.then22.stm32_sai_sub_reg_rd.exit_crit_edge
  %38 = ptrtoint ptr %cr2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cr2, align 4
  %and = and i32 %39, 8064
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool24.not, i32 1, i32 3
  br label %if.end27

if.end27:                                         ; preds = %stm32_sai_sub_reg_rd.exit, %stm32_sai_sub_reg_wr.exit.if.end27_crit_edge
  %imr.0 = phi i32 [ 1, %stm32_sai_sub_reg_wr.exit.if.end27_crit_edge ], [ %spec.select, %stm32_sai_sub_reg_rd.exit ]
  %master = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 15
  %40 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %master, align 8, !range !306
  %42 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdata.i, align 8
  %pclk.i67 = getelementptr inbounds %struct.stm32_sai_data, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %pclk.i67 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pclk.i67, align 4
  %call.i68 = call i32 @clk_enable(ptr noundef %45) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %cmp.i69 = icmp slt i32 %call.i68, 0
  br i1 %cmp.i69, label %if.end27.cleanup_crit_edge, label %if.end.i73

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i73:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool28.not = icmp eq i8 %41, 0
  %imr.1.v = select i1 %tobool28.not, i32 96, i32 4
  %imr.1 = or i32 %imr.1.v, %imr.0
  %regmap.i70 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 1
  %46 = ptrtoint ptr %regmap.i70 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap.i70, align 4
  %call.i.i71 = call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 16, i32 noundef 127, i32 noundef %imr.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %48 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdata.i, align 8
  %pclk3.i72 = getelementptr inbounds %struct.stm32_sai_data, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %pclk3.i72 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pclk3.i72, align 4
  call void @clk_disable(ptr noundef %51) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i73, %if.end27.cleanup_crit_edge, %do.end17
  %retval.0 = phi i32 [ %retval.0.i, %do.end17 ], [ 0, %if.end27.cleanup_crit_edge ], [ 0, %if.end.i73 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cr2) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_sai_shutdown(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %pdata.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata.i, align 8
  %pclk.i = getelementptr inbounds %struct.stm32_sai_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pclk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.stm32_sai_sub_reg_up.exit_crit_edge, label %if.end.i

entry.stm32_sai_sub_reg_up.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %stm32_sai_sub_reg_up.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %regmap.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 16, i32 noundef 127, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %10 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata.i, align 8
  %pclk3.i = getelementptr inbounds %struct.stm32_sai_data, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %pclk3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pclk3.i, align 4
  tail call void @clk_disable(ptr noundef %13) #12
  br label %stm32_sai_sub_reg_up.exit

stm32_sai_sub_reg_up.exit:                        ; preds = %if.end.i, %entry.stm32_sai_sub_reg_up.exit_crit_edge
  %sai_ck = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 9
  %14 = ptrtoint ptr %sai_ck to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sai_ck, align 8
  tail call void @clk_disable(ptr noundef %15) #12
  tail call void @clk_unprepare(ptr noundef %15) #12
  %irq_lock = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 29
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #12
  %substream7 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %substream7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %substream7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_sai_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %5, %entry.if.then.i.i.i_crit_edge ], [ %8, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %6 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #12, !range !309
  %add.i.i.i = or i32 %6, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.1.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #12
  %data_size = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 25
  %9 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call1.i, ptr %data_size, align 4
  %spdif = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 16
  %10 = ptrtoint ptr %spdif to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %spdif, align 1, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %params_width.exit
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %14 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %runtime, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %rate, align 4
  %17 = load ptr, ptr %runtime, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.then.if.end6_crit_edge, label %if.end.i

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end.i:                                         ; preds = %if.then
  %ctrl_lock.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 28
  tail call void @mutex_lock_nested(ptr noundef %ctrl_lock.i, i32 noundef 0) #12
  %rate.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rate.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %19, label %sw.default.i [
    i32 22050, label %if.end.i.sw.epilog.i_crit_edge
    i32 44100, label %sw.bb1.i
    i32 88200, label %sw.bb5.i
    i32 176400, label %sw.bb9.i
    i32 24000, label %sw.bb13.i
    i32 48000, label %sw.bb17.i
    i32 96000, label %sw.bb21.i
    i32 192000, label %sw.bb25.i
    i32 32000, label %sw.bb29.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb17.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb21.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb25.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb29.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb29.i, %sw.bb25.i, %sw.bb21.i, %sw.bb17.i, %sw.bb13.i, %sw.bb9.i, %sw.bb5.i, %sw.bb1.i, %if.end.i.sw.epilog.i_crit_edge
  %.sink.i = phi i8 [ 1, %sw.default.i ], [ 3, %sw.bb29.i ], [ 14, %sw.bb25.i ], [ 10, %sw.bb21.i ], [ 2, %sw.bb17.i ], [ 6, %sw.bb13.i ], [ 12, %sw.bb9.i ], [ 8, %sw.bb5.i ], [ 0, %sw.bb1.i ], [ 4, %if.end.i.sw.epilog.i_crit_edge ]
  %arrayidx35.i = getelementptr %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 27, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.sink.i, ptr %arrayidx35.i, align 1
  tail call void @mutex_unlock(ptr noundef %ctrl_lock.i) #12
  br label %if.end6

if.else:                                          ; preds = %params_width.exit
  %call4 = tail call fastcc i32 @stm32_sai_set_slots(ptr noundef %cpu_dai)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.else.cleanup_crit_edge, label %if.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @stm32_sai_set_frame(ptr noundef %cpu_dai)
  br label %if.end6

if.end6:                                          ; preds = %if.end, %sw.epilog.i, %if.then.if.end6_crit_edge
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i.i, align 4
  %pdata.i.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdata.i.i, align 8
  %pclk.i.i = getelementptr inbounds %struct.stm32_sai_data, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %pclk.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pclk.i.i, align 4
  %call.i.i = tail call i32 @clk_enable(ptr noundef %29) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end6.stm32_sai_sub_reg_wr.exit.i_crit_edge, label %if.end.i.i

if.end6.stm32_sai_sub_reg_wr.exit.i_crit_edge:    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %stm32_sai_sub_reg_wr.exit.i

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %regmap.i.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %25, i32 0, i32 1
  %30 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 4, i32 noundef 15, i32 noundef 10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #12
  %32 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdata.i.i, align 8
  %pclk3.i.i = getelementptr inbounds %struct.stm32_sai_data, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %pclk3.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pclk3.i.i, align 4
  tail call void @clk_disable(ptr noundef %35) #12
  br label %stm32_sai_sub_reg_wr.exit.i

stm32_sai_sub_reg_wr.exit.i:                      ; preds = %if.end.i.i, %if.end6.stm32_sai_sub_reg_wr.exit.i_crit_edge
  %spdif.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %25, i32 0, i32 16
  %36 = ptrtoint ptr %spdif.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %spdif.i, align 1, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i32 = icmp eq i8 %37, 0
  br i1 %tobool.not.i32, label %if.end.i35, label %if.then.i

if.then.i:                                        ; preds = %stm32_sai_sub_reg_wr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %spdif_frm_cnt.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %25, i32 0, i32 26
  %38 = ptrtoint ptr %spdif_frm_cnt.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %spdif_frm_cnt.i, align 8
  br label %if.end10

if.end.i35:                                       ; preds = %stm32_sai_sub_reg_wr.exit.i
  %39 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i.i34 = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i.i34, label %for.inc.i.i.i38, label %if.end.i35.params_format.exit.i_crit_edge

if.end.i35.params_format.exit.i_crit_edge:        ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #14
  br label %params_format.exit.i

for.inc.i.i.i38:                                  ; preds = %if.end.i35
  %arrayidx.1.i.i.i36 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %41 = ptrtoint ptr %arrayidx.1.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.1.i.i.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.1.i.i.i37 = icmp eq i32 %42, 0
  br i1 %tobool.not.1.i.i.i37, label %for.inc.i.i.i38.sw.epilog.i42_crit_edge, label %for.inc.i.i.i38.params_format.exit.i_crit_edge

for.inc.i.i.i38.params_format.exit.i_crit_edge:   ; preds = %for.inc.i.i.i38
  call void @__sanitizer_cov_trace_pc() #14
  br label %params_format.exit.i

for.inc.i.i.i38.sw.epilog.i42_crit_edge:          ; preds = %for.inc.i.i.i38
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i42

params_format.exit.i:                             ; preds = %for.inc.i.i.i38.params_format.exit.i_crit_edge, %if.end.i35.params_format.exit.i_crit_edge
  %i.09.lcssa.i.i.i39 = phi i32 [ 0, %if.end.i35.params_format.exit.i_crit_edge ], [ 32, %for.inc.i.i.i38.params_format.exit.i_crit_edge ]
  %.lcssa.i.i.i40 = phi i32 [ %40, %if.end.i35.params_format.exit.i_crit_edge ], [ %42, %for.inc.i.i.i38.params_format.exit.i_crit_edge ]
  %43 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i40, i1 true) #12, !range !309
  %add.i.i.i41 = or i32 %43, %i.09.lcssa.i.i.i39
  %44 = zext i32 %add.i.i.i41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %add.i.i.i41, label %do.end.i [
    i32 0, label %params_format.exit.i.sw.epilog.i42_crit_edge
    i32 2, label %sw.bb3.i
    i32 10, label %sw.bb4.i
  ]

params_format.exit.i.sw.epilog.i42_crit_edge:     ; preds = %params_format.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i42

sw.bb3.i:                                         ; preds = %params_format.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i42

sw.bb4.i:                                         ; preds = %params_format.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i42

do.end.i:                                         ; preds = %params_format.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.103) #15
  br label %cleanup

sw.epilog.i42:                                    ; preds = %sw.bb4.i, %sw.bb3.i, %params_format.exit.i.sw.epilog.i42_crit_edge, %for.inc.i.i.i38.sw.epilog.i42_crit_edge
  %cr1.0.i = phi i32 [ 224, %sw.bb4.i ], [ 128, %sw.bb3.i ], [ 64, %params_format.exit.i.sw.epilog.i42_crit_edge ], [ 64, %for.inc.i.i.i38.sw.epilog.i42_crit_edge ]
  %slots.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %25, i32 0, i32 22
  %47 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %slots.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %cmp.i = icmp eq i32 %48, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.epilog.i42.if.end9.i_crit_edge

sw.epilog.i42.if.end9.i_crit_edge:                ; preds = %sw.epilog.i42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %sw.epilog.i42
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i1.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %49 = ptrtoint ptr %arrayidx.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.i1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp6.i = icmp eq i32 %50, 1
  %or8.i = or i32 %cr1.0.i, 4096
  %spec.select.i = select i1 %cmp6.i, i32 %or8.i, i32 %cr1.0.i
  br label %if.end9.i

if.end9.i:                                        ; preds = %land.lhs.true.i, %sw.epilog.i42.if.end9.i_crit_edge
  %cr1.1.i = phi i32 [ %cr1.0.i, %sw.epilog.i42.if.end9.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %51 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdata.i.i, align 8
  %pclk.i3.i = getelementptr inbounds %struct.stm32_sai_data, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %pclk.i3.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pclk.i3.i, align 4
  %call.i4.i = tail call i32 @clk_enable(ptr noundef %54) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %cmp.i5.i = icmp slt i32 %call.i4.i, 0
  br i1 %cmp.i5.i, label %if.end9.i.do.end15.i_crit_edge, label %stm32_sai_sub_reg_up.exit.i

if.end9.i.do.end15.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15.i

stm32_sai_sub_reg_up.exit.i:                      ; preds = %if.end9.i
  %regmap.i6.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %25, i32 0, i32 1
  %55 = ptrtoint ptr %regmap.i6.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap.i6.i, align 4
  %call.i.i7.i = tail call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef 0, i32 noundef 4320, i32 noundef %cr1.1.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %57 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdata.i.i, align 8
  %pclk3.i8.i = getelementptr inbounds %struct.stm32_sai_data, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %pclk3.i8.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pclk3.i8.i, align 4
  tail call void @clk_disable(ptr noundef %60) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i7.i)
  %cmp11.i = icmp slt i32 %call.i.i7.i, 0
  br i1 %cmp11.i, label %stm32_sai_sub_reg_up.exit.i.do.end15.i_crit_edge, label %stm32_sai_sub_reg_up.exit.i.if.end10_crit_edge

stm32_sai_sub_reg_up.exit.i.if.end10_crit_edge:   ; preds = %stm32_sai_sub_reg_up.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

stm32_sai_sub_reg_up.exit.i.do.end15.i_crit_edge: ; preds = %stm32_sai_sub_reg_up.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15.i

do.end15.i:                                       ; preds = %stm32_sai_sub_reg_up.exit.i.do.end15.i_crit_edge, %if.end9.i.do.end15.i_crit_edge
  %retval.0.i13.i = phi i32 [ %call.i.i7.i, %stm32_sai_sub_reg_up.exit.i.do.end15.i_crit_edge ], [ %call.i4.i, %if.end9.i.do.end15.i_crit_edge ]
  %61 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.67) #15
  br label %cleanup

if.end10:                                         ; preds = %stm32_sai_sub_reg_up.exit.i.if.end10_crit_edge, %if.then.i
  %master = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 15
  %63 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %master, align 8, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool11.not = icmp eq i8 %64, 0
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %if.then12

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %call13 = tail call fastcc i32 @stm32_sai_configure_clock(ptr noundef %cpu_dai, ptr noundef %params)
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end10.cleanup_crit_edge, %do.end15.i, %do.end.i, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.else.cleanup_crit_edge ], [ %call13, %if.then12 ], [ 0, %if.end10.cleanup_crit_edge ], [ -22, %do.end.i ], [ %retval.0.i13.i, %do.end15.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_sai_trigger(ptr nocapture noundef readnone %substream, i32 noundef %cmd, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.do.body_crit_edge
    i32 6, label %entry.do.body_crit_edge109
    i32 4, label %entry.do.body_crit_edge110
    i32 5, label %entry.do.body13_crit_edge
    i32 3, label %entry.do.body13_crit_edge111
    i32 0, label %entry.do.body13_crit_edge112
  ]

entry.do.body13_crit_edge112:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body13

entry.do.body13_crit_edge111:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body13

entry.do.body13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body13

entry.do.body_crit_edge110:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

entry.do.body_crit_edge109:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge109, %entry.do.body_crit_edge110
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_sai_trigger.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_sai_trigger, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !308

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_sai_trigger.__UNIQUE_ID_ddebug253, ptr noundef %6, ptr noundef nonnull @.str.110) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %pdata.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdata.i, align 8
  %pclk.i = getelementptr inbounds %struct.stm32_sai_data, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pclk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.stm32_sai_sub_reg_up.exit_crit_edge, label %if.end.i

do.end.stm32_sai_sub_reg_up.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %stm32_sai_sub_reg_up.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %regmap.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 0, i32 noundef 131072, i32 noundef 131072, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %13 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdata.i, align 8
  %pclk3.i = getelementptr inbounds %struct.stm32_sai_data, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %pclk3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pclk3.i, align 4
  tail call void @clk_disable(ptr noundef %16) #12
  br label %stm32_sai_sub_reg_up.exit

stm32_sai_sub_reg_up.exit:                        ; preds = %if.end.i, %do.end.stm32_sai_sub_reg_up.exit_crit_edge
  %17 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdata.i, align 8
  %pclk.i61 = getelementptr inbounds %struct.stm32_sai_data, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %pclk.i61 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pclk.i61, align 4
  %call.i62 = tail call i32 @clk_enable(ptr noundef %20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %cmp.i63 = icmp slt i32 %call.i62, 0
  br i1 %cmp.i63, label %stm32_sai_sub_reg_up.exit.do.end9_crit_edge, label %stm32_sai_sub_reg_up.exit69

stm32_sai_sub_reg_up.exit.do.end9_crit_edge:      ; preds = %stm32_sai_sub_reg_up.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

stm32_sai_sub_reg_up.exit69:                      ; preds = %stm32_sai_sub_reg_up.exit
  %regmap.i64 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %regmap.i64 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i64, align 4
  %call.i.i65 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 0, i32 noundef 65536, i32 noundef 65536, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %23 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdata.i, align 8
  %pclk3.i66 = getelementptr inbounds %struct.stm32_sai_data, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %pclk3.i66 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pclk3.i66, align 4
  tail call void @clk_disable(ptr noundef %26) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i65)
  %cmp = icmp slt i32 %call.i.i65, 0
  br i1 %cmp, label %stm32_sai_sub_reg_up.exit69.do.end9_crit_edge, label %stm32_sai_sub_reg_up.exit69.cleanup_crit_edge

stm32_sai_sub_reg_up.exit69.cleanup_crit_edge:    ; preds = %stm32_sai_sub_reg_up.exit69
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

stm32_sai_sub_reg_up.exit69.do.end9_crit_edge:    ; preds = %stm32_sai_sub_reg_up.exit69
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

do.end9:                                          ; preds = %stm32_sai_sub_reg_up.exit69.do.end9_crit_edge, %stm32_sai_sub_reg_up.exit.do.end9_crit_edge
  %retval.0.i68103 = phi i32 [ %call.i.i65, %stm32_sai_sub_reg_up.exit69.do.end9_crit_edge ], [ %call.i62, %stm32_sai_sub_reg_up.exit.do.end9_crit_edge ]
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.67) #15
  br label %cleanup

do.body13:                                        ; preds = %entry.do.body13_crit_edge, %entry.do.body13_crit_edge111, %entry.do.body13_crit_edge112
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_sai_trigger.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_sai_trigger, %if.then25)) #12
          to label %do.end29 [label %if.then25], !srcloc !308

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_sai_trigger.__UNIQUE_ID_ddebug254, ptr noundef %30, ptr noundef nonnull @.str.111) #12
  br label %do.end29

do.end29:                                         ; preds = %if.then25, %do.body13
  %pdata.i70 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 7
  %31 = ptrtoint ptr %pdata.i70 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdata.i70, align 8
  %pclk.i71 = getelementptr inbounds %struct.stm32_sai_data, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %pclk.i71 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pclk.i71, align 4
  %call.i72 = tail call i32 @clk_enable(ptr noundef %34) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %cmp.i73 = icmp slt i32 %call.i72, 0
  br i1 %cmp.i73, label %do.end29.stm32_sai_sub_reg_up.exit79_crit_edge, label %if.end.i77

do.end29.stm32_sai_sub_reg_up.exit79_crit_edge:   ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %stm32_sai_sub_reg_up.exit79

if.end.i77:                                       ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #14
  %regmap.i74 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 1
  %35 = ptrtoint ptr %regmap.i74 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i74, align 4
  %call.i.i75 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 16, i32 noundef 127, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %37 = ptrtoint ptr %pdata.i70 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdata.i70, align 8
  %pclk3.i76 = getelementptr inbounds %struct.stm32_sai_data, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %pclk3.i76 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pclk3.i76, align 4
  tail call void @clk_disable(ptr noundef %40) #12
  br label %stm32_sai_sub_reg_up.exit79

stm32_sai_sub_reg_up.exit79:                      ; preds = %if.end.i77, %do.end29.stm32_sai_sub_reg_up.exit79_crit_edge
  %41 = ptrtoint ptr %pdata.i70 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdata.i70, align 8
  %pclk.i81 = getelementptr inbounds %struct.stm32_sai_data, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %pclk.i81 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pclk.i81, align 4
  %call.i82 = tail call i32 @clk_enable(ptr noundef %44) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %cmp.i83 = icmp slt i32 %call.i82, 0
  br i1 %cmp.i83, label %stm32_sai_sub_reg_up.exit79.stm32_sai_sub_reg_up.exit89_crit_edge, label %if.end.i87

stm32_sai_sub_reg_up.exit79.stm32_sai_sub_reg_up.exit89_crit_edge: ; preds = %stm32_sai_sub_reg_up.exit79
  call void @__sanitizer_cov_trace_pc() #14
  br label %stm32_sai_sub_reg_up.exit89

if.end.i87:                                       ; preds = %stm32_sai_sub_reg_up.exit79
  call void @__sanitizer_cov_trace_pc() #14
  %regmap.i84 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 1
  %45 = ptrtoint ptr %regmap.i84 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap.i84, align 4
  %call.i.i85 = tail call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 0, i32 noundef 65536, i32 noundef -65537, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %47 = ptrtoint ptr %pdata.i70 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdata.i70, align 8
  %pclk3.i86 = getelementptr inbounds %struct.stm32_sai_data, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %pclk3.i86 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pclk3.i86, align 4
  tail call void @clk_disable(ptr noundef %50) #12
  br label %stm32_sai_sub_reg_up.exit89

stm32_sai_sub_reg_up.exit89:                      ; preds = %if.end.i87, %stm32_sai_sub_reg_up.exit79.stm32_sai_sub_reg_up.exit89_crit_edge
  %51 = ptrtoint ptr %pdata.i70 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdata.i70, align 8
  %pclk.i91 = getelementptr inbounds %struct.stm32_sai_data, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %pclk.i91 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pclk.i91, align 4
  %call.i92 = tail call i32 @clk_enable(ptr noundef %54) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %cmp.i93 = icmp slt i32 %call.i92, 0
  br i1 %cmp.i93, label %stm32_sai_sub_reg_up.exit89.do.end37_crit_edge, label %stm32_sai_sub_reg_up.exit99

stm32_sai_sub_reg_up.exit89.do.end37_crit_edge:   ; preds = %stm32_sai_sub_reg_up.exit89
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end37

stm32_sai_sub_reg_up.exit99:                      ; preds = %stm32_sai_sub_reg_up.exit89
  %regmap.i94 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 1
  %55 = ptrtoint ptr %regmap.i94 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap.i94, align 4
  %call.i.i95 = tail call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef 0, i32 noundef 131072, i32 noundef -131073, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %57 = ptrtoint ptr %pdata.i70 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdata.i70, align 8
  %pclk3.i96 = getelementptr inbounds %struct.stm32_sai_data, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %pclk3.i96 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pclk3.i96, align 4
  tail call void @clk_disable(ptr noundef %60) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i95)
  %cmp33 = icmp slt i32 %call.i.i95, 0
  br i1 %cmp33, label %stm32_sai_sub_reg_up.exit99.do.end37_crit_edge, label %stm32_sai_sub_reg_up.exit99.if.end39_crit_edge

stm32_sai_sub_reg_up.exit99.if.end39_crit_edge:   ; preds = %stm32_sai_sub_reg_up.exit99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

stm32_sai_sub_reg_up.exit99.do.end37_crit_edge:   ; preds = %stm32_sai_sub_reg_up.exit99
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end37

do.end37:                                         ; preds = %stm32_sai_sub_reg_up.exit99.do.end37_crit_edge, %stm32_sai_sub_reg_up.exit89.do.end37_crit_edge
  %retval.0.i98108 = phi i32 [ %call.i.i95, %stm32_sai_sub_reg_up.exit99.do.end37_crit_edge ], [ %call.i92, %stm32_sai_sub_reg_up.exit89.do.end37_crit_edge ]
  %61 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.67) #15
  br label %if.end39

if.end39:                                         ; preds = %do.end37, %stm32_sai_sub_reg_up.exit99.if.end39_crit_edge
  %retval.0.i98107 = phi i32 [ %retval.0.i98108, %do.end37 ], [ %call.i.i95, %stm32_sai_sub_reg_up.exit99.if.end39_crit_edge ]
  %spdif = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 16
  %63 = ptrtoint ptr %spdif to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %spdif, align 1, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool40.not = icmp eq i8 %64, 0
  br i1 %tobool40.not, label %if.end39.cleanup_crit_edge, label %if.then41

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %spdif_frm_cnt = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 26
  %65 = ptrtoint ptr %spdif_frm_cnt to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %spdif_frm_cnt, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.end39.cleanup_crit_edge, %do.end9, %stm32_sai_sub_reg_up.exit69.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.i98107, %if.then41 ], [ %retval.0.i98107, %if.end39.cleanup_crit_edge ], [ %retval.0.i68103, %do.end9 ], [ %call.i.i65, %stm32_sai_sub_reg_up.exit69.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_rate_exclusive_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate_exclusive(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_mask64(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_sai_set_slots(ptr nocapture noundef readonly %cpu_dai) unnamed_addr #2 align 64 {
entry:
  %slotr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slotr) #12
  %4 = ptrtoint ptr %slotr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %slotr, align 4, !annotation !307
  %pdata.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdata.i, align 8
  %pclk.i = getelementptr inbounds %struct.stm32_sai_data, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pclk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.stm32_sai_sub_reg_rd.exit_crit_edge, label %if.end.i

entry.stm32_sai_sub_reg_rd.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %stm32_sai_sub_reg_rd.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %regmap.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %10, i32 noundef 12, ptr noundef nonnull %slotr) #12
  %11 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdata.i, align 8
  %pclk3.i = getelementptr inbounds %struct.stm32_sai_data, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %pclk3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pclk3.i, align 4
  call void @clk_disable(ptr noundef %14) #12
  br label %stm32_sai_sub_reg_rd.exit

stm32_sai_sub_reg_rd.exit:                        ; preds = %if.end.i, %entry.stm32_sai_sub_reg_rd.exit_crit_edge
  %15 = ptrtoint ptr %slotr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %slotr, align 4
  %and = and i32 %16, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %stm32_sai_sub_reg_rd.exit.if.end_crit_edge

stm32_sai_sub_reg_rd.exit.if.end_crit_edge:       ; preds = %stm32_sai_sub_reg_rd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %stm32_sai_sub_reg_rd.exit
  call void @__sanitizer_cov_trace_pc() #14
  %data_size = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 25
  %17 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_size, align 4
  %slot_width = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 23
  %19 = ptrtoint ptr %slot_width to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %slot_width, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %stm32_sai_sub_reg_rd.exit.if.end_crit_edge
  %slot_width2 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 23
  %20 = ptrtoint ptr %slot_width2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %slot_width2, align 4
  %data_size3 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 25
  %22 = ptrtoint ptr %data_size3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_size3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp4 = icmp slt i32 %21, %23
  br i1 %cmp4, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.98, i32 noundef %23) #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %slots = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 22
  %26 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %slots, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not = icmp eq i32 %27, 0
  br i1 %tobool.not, label %if.then8, label %if.end7.if.end10_crit_edge

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %slots, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end7.if.end10_crit_edge
  %29 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %slots, align 8
  %31 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdata.i, align 8
  %pclk.i55 = getelementptr inbounds %struct.stm32_sai_data, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %pclk.i55 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pclk.i55, align 4
  %call.i56 = call i32 @clk_enable(ptr noundef %34) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %cmp.i57 = icmp slt i32 %call.i56, 0
  br i1 %cmp.i57, label %if.end10.stm32_sai_sub_reg_up.exit_crit_edge, label %if.end.i60

if.end10.stm32_sai_sub_reg_up.exit_crit_edge:     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %stm32_sai_sub_reg_up.exit

if.end.i60:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %sub = shl i32 %30, 8
  %shl = add i32 %sub, -256
  %regmap.i58 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 1
  %35 = ptrtoint ptr %regmap.i58 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i58, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 12, i32 noundef 3840, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %37 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdata.i, align 8
  %pclk3.i59 = getelementptr inbounds %struct.stm32_sai_data, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %pclk3.i59 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pclk3.i59, align 4
  call void @clk_disable(ptr noundef %40) #12
  br label %stm32_sai_sub_reg_up.exit

stm32_sai_sub_reg_up.exit:                        ; preds = %if.end.i60, %if.end10.stm32_sai_sub_reg_up.exit_crit_edge
  %41 = ptrtoint ptr %slotr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %slotr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %42)
  %tobool14.not = icmp ult i32 %42, 65536
  br i1 %tobool14.not, label %if.then15, label %stm32_sai_sub_reg_up.exit.do.body23_crit_edge

stm32_sai_sub_reg_up.exit.do.body23_crit_edge:    ; preds = %stm32_sai_sub_reg_up.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body23

if.then15:                                        ; preds = %stm32_sai_sub_reg_up.exit
  %43 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %slots, align 8
  %notmask = shl nsw i32 -1, %44
  %sub18 = xor i32 %notmask, -1
  %slot_mask = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 24
  %45 = ptrtoint ptr %slot_mask to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub18, ptr %slot_mask, align 8
  %46 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdata.i, align 8
  %pclk.i63 = getelementptr inbounds %struct.stm32_sai_data, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %pclk.i63 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pclk.i63, align 4
  %call.i64 = call i32 @clk_enable(ptr noundef %49) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %cmp.i65 = icmp slt i32 %call.i64, 0
  br i1 %cmp.i65, label %if.then15.do.body23_crit_edge, label %if.end.i69

if.then15.do.body23_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body23

if.end.i69:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  %shl20 = shl i32 %sub18, 16
  %regmap.i66 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 1
  %50 = ptrtoint ptr %regmap.i66 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap.i66, align 4
  %call.i.i67 = call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 12, i32 noundef -65536, i32 noundef %shl20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %52 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdata.i, align 8
  %pclk3.i68 = getelementptr inbounds %struct.stm32_sai_data, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %pclk3.i68 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pclk3.i68, align 4
  call void @clk_disable(ptr noundef %55) #12
  br label %do.body23

do.body23:                                        ; preds = %if.end.i69, %if.then15.do.body23_crit_edge, %stm32_sai_sub_reg_up.exit.do.body23_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_sai_set_slots.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_sai_set_slots, %if.then28)) #12
          to label %cleanup [label %if.then28], !srcloc !308

if.then28:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 4
  %58 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %slots, align 8
  %60 = ptrtoint ptr %slot_width2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %slot_width2, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_sai_set_slots.__UNIQUE_ID_ddebug251, ptr noundef %57, ptr noundef nonnull @.str.100, i32 noundef %59, i32 noundef %61) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %do.body23, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then28 ], [ 0, %do.body23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slotr) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_sai_set_frame(ptr nocapture noundef readonly %cpu_dai) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %fmt = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt, align 4
  %slot_width = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 23
  %6 = ptrtoint ptr %slot_width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slot_width, align 4
  %slots = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 22
  %8 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %slots, align 8
  %mul = mul i32 %9, %7
  %fs_length = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 21
  %10 = ptrtoint ptr %fs_length to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %fs_length, align 4
  %div = sdiv i32 %mul, 2
  %11 = and i32 %5, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %12 = icmp eq i32 %11, 4
  %fs_active.0 = select i1 %12, i32 1, i32 %div
  %sub = add i32 %mul, -1
  %sub4 = shl i32 %fs_active.0, 8
  %shl5 = add i32 %sub4, -256
  %or = or i32 %shl5, %sub
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_sai_set_frame.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_sai_set_frame, %if.then9)) #12
          to label %do.end [label %if.then9], !srcloc !308

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %15 = ptrtoint ptr %fs_length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fs_length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_sai_set_frame.__UNIQUE_ID_ddebug252, ptr noundef %14, ptr noundef nonnull @.str.102, i32 noundef %16, i32 noundef %fs_active.0) #12
  br label %do.end

do.end:                                           ; preds = %if.then9, %entry
  %pdata.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 7
  %17 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdata.i, align 8
  %pclk.i = getelementptr inbounds %struct.stm32_sai_data, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pclk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.stm32_sai_sub_reg_up.exit_crit_edge, label %if.end.i

do.end.stm32_sai_sub_reg_up.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %stm32_sai_sub_reg_up.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %regmap.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 8, i32 noundef 32767, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %23 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdata.i, align 8
  %pclk3.i = getelementptr inbounds %struct.stm32_sai_data, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %pclk3.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pclk3.i, align 4
  tail call void @clk_disable(ptr noundef %26) #12
  br label %stm32_sai_sub_reg_up.exit

stm32_sai_sub_reg_up.exit:                        ; preds = %if.end.i, %do.end.stm32_sai_sub_reg_up.exit_crit_edge
  %27 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fmt, align 4
  %and14 = and i32 %28, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and14)
  %cmp15 = icmp eq i32 %and14, 2
  br i1 %cmp15, label %if.then16, label %stm32_sai_sub_reg_up.exit.if.end21_crit_edge

stm32_sai_sub_reg_up.exit.if.end21_crit_edge:     ; preds = %stm32_sai_sub_reg_up.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then16:                                        ; preds = %stm32_sai_sub_reg_up.exit
  %29 = ptrtoint ptr %slot_width to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %slot_width, align 4
  %data_size = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 25
  %31 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_size, align 4
  %33 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdata.i, align 8
  %pclk.i39 = getelementptr inbounds %struct.stm32_sai_data, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %pclk.i39 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pclk.i39, align 4
  %call.i40 = tail call i32 @clk_enable(ptr noundef %36) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %cmp.i41 = icmp slt i32 %call.i40, 0
  br i1 %cmp.i41, label %if.then16.if.end21_crit_edge, label %if.end.i45

if.then16.if.end21_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.end.i45:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  %sub18 = sub i32 %30, %32
  %regmap.i42 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 1
  %37 = ptrtoint ptr %regmap.i42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i42, align 4
  %call.i.i43 = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 12, i32 noundef 31, i32 noundef %sub18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %39 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdata.i, align 8
  %pclk3.i44 = getelementptr inbounds %struct.stm32_sai_data, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %pclk3.i44 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pclk3.i44, align 4
  tail call void @clk_disable(ptr noundef %42) #12
  br label %if.end21

if.end21:                                         ; preds = %if.end.i45, %if.then16.if.end21_crit_edge, %stm32_sai_sub_reg_up.exit.if.end21_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_sai_configure_clock(ptr nocapture noundef readonly %cpu_dai, ptr nocapture noundef readonly %params) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %sai_mclk = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %sai_mclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sai_mclk, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %pdata.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata.i, align 8
  %clk_x8k.i = getelementptr inbounds %struct.stm32_sai_data, ptr %11, i32 0, i32 3
  %rem.i = urem i32 %5, 11025
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %clk_x11k.i = getelementptr inbounds %struct.stm32_sai_data, ptr %11, i32 0, i32 4
  %spec.select.i = select i1 %tobool.not.i, ptr %clk_x11k.i, ptr %clk_x8k.i
  %12 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %parent_clk.0.i = load ptr, ptr %spec.select.i, align 4
  %sai_ck.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 9
  %13 = ptrtoint ptr %sai_ck.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sai_ck.i, align 8
  %call.i = tail call i32 @clk_set_parent(ptr noundef %14, ptr noundef %parent_clk.0.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.then.if.end5_crit_edge, label %stm32_sai_set_parent_clock.exit

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

stm32_sai_set_parent_clock.exit:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i103 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -16
  %cond.i = select i1 %cmp.i, ptr @.str.78, ptr @.str.79
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i103, ptr noundef nonnull @.str.76, i32 noundef %call.i, ptr noundef nonnull %cond.i) #15
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %sai_ck = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 9
  %15 = ptrtoint ptr %sai_ck to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sai_ck, align 8
  %call6 = tail call i32 @clk_get_rate(ptr noundef %16) #12
  %pdata = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 7
  %17 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdata, align 8
  %conf = getelementptr inbounds %struct.stm32_sai_data, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %conf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %20)
  %cmp = icmp eq i32 %20, 16
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %mclk_rate = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 12
  %21 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mclk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool8.not = icmp eq i32 %22, 0
  br i1 %tobool8.not, label %if.then7.cleanup_crit_edge, label %if.end10

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.then7
  %mul = shl i32 %call6, 1
  %mul12 = mul i32 %22, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %mul12)
  %cmp13.not = icmp ult i32 %mul, %mul12
  br i1 %cmp13.not, label %if.end10.if.end57_crit_edge, label %if.then14

if.end10.if.end57_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then14:                                        ; preds = %if.end10
  %mul16 = shl i32 %22, 1
  %div250.i = and i32 %22, 2147483647
  %add.i = add i32 %div250.i, %call6
  %div3.i = udiv i32 %add.i, %mul16
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %div3.i)
  %cmp4.i = icmp sgt i32 %div3.i, 15
  br i1 %cmp4.i, label %stm32_sai_get_clk_div.exit.thread, label %do.body5.i

stm32_sai_get_clk_div.exit.thread:                ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 8
  %dev.i106 = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i106, ptr noundef nonnull @.str.61, i32 noundef %div3.i) #15
  br label %cleanup

do.body5.i:                                       ; preds = %if.then14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_sai_get_clk_div.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_sai_configure_clock, %if.then9.i)) #12
          to label %do.end14.i [label %if.then9.i], !srcloc !308

if.then9.i:                                       ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 8
  %dev11.i = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_sai_get_clk_div.__UNIQUE_ID_ddebug241, ptr noundef %dev11.i, ptr noundef nonnull @.str.63, i32 noundef %div3.i) #12
  br label %do.end14.i

do.end14.i:                                       ; preds = %if.then9.i, %do.body5.i
  %call6.frozen = freeze i32 %call6
  %div3.i.frozen = freeze i32 %div3.i
  %div32.i = udiv i32 %call6.frozen, %div3.i.frozen
  %27 = mul i32 %div32.i, %div3.i.frozen
  %rem.i108.decomposed = sub i32 %call6.frozen, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i108.decomposed)
  %tobool15.not.i = icmp eq i32 %rem.i108.decomposed, 0
  br i1 %tobool15.not.i, label %do.end14.i.stm32_sai_get_clk_div.exit_crit_edge, label %do.body17.i

do.end14.i.stm32_sai_get_clk_div.exit_crit_edge:  ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %stm32_sai_get_clk_div.exit

do.body17.i:                                      ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_sai_get_clk_div.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_sai_configure_clock, %if.then29.i)) #12
          to label %stm32_sai_get_clk_div.exit [label %if.then29.i], !srcloc !308

if.then29.i:                                      ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 8
  %dev31.i = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_sai_get_clk_div.__UNIQUE_ID_ddebug242, ptr noundef %dev31.i, ptr noundef nonnull @.str.64, i32 noundef %mul16, i32 noundef %div32.i) #12
  br label %stm32_sai_get_clk_div.exit

stm32_sai_get_clk_div.exit:                       ; preds = %if.then29.i, %do.body17.i, %do.end14.i.stm32_sai_get_clk_div.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div3.i)
  %cmp18 = icmp slt i32 %div3.i, 0
  br i1 %cmp18, label %stm32_sai_get_clk_div.exit.cleanup_crit_edge, label %stm32_sai_get_clk_div.exit.if.end57_crit_edge

stm32_sai_get_clk_div.exit.if.end57_crit_edge:    ; preds = %stm32_sai_get_clk_div.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

stm32_sai_get_clk_div.exit.cleanup_crit_edge:     ; preds = %stm32_sai_get_clk_div.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %if.end5
  %spdif = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 16
  %30 = ptrtoint ptr %spdif to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %spdif, align 1, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool22.not = icmp eq i8 %31, 0
  br i1 %tobool22.not, label %if.else29, label %if.then23

if.then23:                                        ; preds = %if.else
  %mul24 = shl i32 %5, 7
  %div250.i111 = lshr exact i32 %mul24, 1
  %add.i112 = add i32 %call6, %div250.i111
  %div3.i113 = udiv i32 %add.i112, %mul24
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %div3.i113)
  %cmp4.i116 = icmp sgt i32 %div3.i113, 63
  br i1 %cmp4.i116, label %stm32_sai_get_clk_div.exit130.thread, label %do.body5.i119

stm32_sai_get_clk_div.exit130.thread:             ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 8
  %dev.i117 = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i117, ptr noundef nonnull @.str.61, i32 noundef %div3.i113) #15
  br label %cleanup

do.body5.i119:                                    ; preds = %if.then23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_sai_get_clk_div.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_sai_configure_clock, %if.then9.i121)) #12
          to label %do.end14.i124 [label %if.then9.i121], !srcloc !308

if.then9.i121:                                    ; preds = %do.body5.i119
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 8
  %dev11.i120 = getelementptr inbounds %struct.platform_device, ptr %35, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_sai_get_clk_div.__UNIQUE_ID_ddebug241, ptr noundef %dev11.i120, ptr noundef nonnull @.str.63, i32 noundef %div3.i113) #12
  br label %do.end14.i124

do.end14.i124:                                    ; preds = %if.then9.i121, %do.body5.i119
  %call6.frozen188 = freeze i32 %call6
  %div3.i113.frozen = freeze i32 %div3.i113
  %div32.i127 = udiv i32 %call6.frozen188, %div3.i113.frozen
  %36 = mul i32 %div32.i127, %div3.i113.frozen
  %rem.i122.decomposed = sub i32 %call6.frozen188, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i122.decomposed)
  %tobool15.not.i123 = icmp eq i32 %rem.i122.decomposed, 0
  br i1 %tobool15.not.i123, label %do.end14.i124.stm32_sai_get_clk_div.exit130_crit_edge, label %do.body17.i125

do.end14.i124.stm32_sai_get_clk_div.exit130_crit_edge: ; preds = %do.end14.i124
  call void @__sanitizer_cov_trace_pc() #14
  br label %stm32_sai_get_clk_div.exit130

do.body17.i125:                                   ; preds = %do.end14.i124
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_sai_get_clk_div.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_sai_configure_clock, %if.then29.i128)) #12
          to label %stm32_sai_get_clk_div.exit130 [label %if.then29.i128], !srcloc !308

if.then29.i128:                                   ; preds = %do.body17.i125
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %3, align 8
  %dev31.i126 = getelementptr inbounds %struct.platform_device, ptr %38, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_sai_get_clk_div.__UNIQUE_ID_ddebug242, ptr noundef %dev31.i126, ptr noundef nonnull @.str.64, i32 noundef %mul24, i32 noundef %div32.i127) #12
  br label %stm32_sai_get_clk_div.exit130

stm32_sai_get_clk_div.exit130:                    ; preds = %if.then29.i128, %do.body17.i125, %do.end14.i124.stm32_sai_get_clk_div.exit130_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div3.i113)
  %cmp26 = icmp slt i32 %div3.i113, 0
  br i1 %cmp26, label %stm32_sai_get_clk_div.exit130.cleanup_crit_edge, label %stm32_sai_get_clk_div.exit130.if.end57_crit_edge

stm32_sai_get_clk_div.exit130.if.end57_crit_edge: ; preds = %stm32_sai_get_clk_div.exit130
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

stm32_sai_get_clk_div.exit130.cleanup_crit_edge:  ; preds = %stm32_sai_get_clk_div.exit130
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else29:                                        ; preds = %if.else
  %mclk_rate30 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 12
  %39 = ptrtoint ptr %mclk_rate30 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mclk_rate30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool31.not = icmp eq i32 %40, 0
  br i1 %tobool31.not, label %if.else48, label %if.then32

if.then32:                                        ; preds = %if.else29
  %div34 = udiv i32 %40, %5
  %41 = zext i32 %div34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %div34, label %do.end [
    i32 512, label %if.then32.if.end41_crit_edge
    i32 256, label %if.end41.fold.split
  ]

if.then32.if.end41_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

do.end:                                           ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.107, i32 noundef %div34) #15
  br label %cleanup

if.end41.fold.split:                              ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.end41:                                         ; preds = %if.end41.fold.split, %if.then32.if.end41_crit_edge
  %cr1.0 = phi i32 [ 67108864, %if.then32.if.end41_crit_edge ], [ 0, %if.end41.fold.split ]
  %pclk.i = getelementptr inbounds %struct.stm32_sai_data, ptr %18, i32 0, i32 2
  %44 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pclk.i, align 4
  %call.i132 = tail call i32 @clk_enable(ptr noundef %45) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %cmp.i133 = icmp slt i32 %call.i132, 0
  br i1 %cmp.i133, label %if.end41.stm32_sai_sub_reg_up.exit_crit_edge, label %if.end.i

if.end41.stm32_sai_sub_reg_up.exit_crit_edge:     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %stm32_sai_sub_reg_up.exit

if.end.i:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  %regmap.i = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 1
  %46 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 0, i32 noundef 67108864, i32 noundef %cr1.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %48 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdata, align 8
  %pclk3.i = getelementptr inbounds %struct.stm32_sai_data, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %pclk3.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pclk3.i, align 4
  tail call void @clk_disable(ptr noundef %51) #12
  br label %stm32_sai_sub_reg_up.exit

stm32_sai_sub_reg_up.exit:                        ; preds = %if.end.i, %if.end41.stm32_sai_sub_reg_up.exit_crit_edge
  %52 = ptrtoint ptr %mclk_rate30 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mclk_rate30, align 4
  %54 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdata, align 8
  %conf.i136 = getelementptr inbounds %struct.stm32_sai_data, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %conf.i136 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %conf.i136, align 4
  %div250.i137 = lshr i32 %53, 1
  %add.i138 = add i32 %div250.i137, %call6
  %div3.i139 = udiv i32 %add.i138, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %57)
  %cmp.i140 = icmp eq i32 %57, 16
  %sub.i141 = select i1 %cmp.i140, i32 15, i32 63
  call void @__sanitizer_cov_trace_cmp4(i32 %div3.i139, i32 %sub.i141)
  %cmp4.i142 = icmp sgt i32 %div3.i139, %sub.i141
  br i1 %cmp4.i142, label %stm32_sai_get_clk_div.exit156.thread, label %do.body5.i145

stm32_sai_get_clk_div.exit156.thread:             ; preds = %stm32_sai_sub_reg_up.exit
  call void @__sanitizer_cov_trace_pc() #14
  %58 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %3, align 8
  %dev.i143 = getelementptr inbounds %struct.platform_device, ptr %59, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i143, ptr noundef nonnull @.str.61, i32 noundef %div3.i139) #15
  br label %cleanup

do.body5.i145:                                    ; preds = %stm32_sai_sub_reg_up.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_sai_get_clk_div.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_sai_configure_clock, %if.then9.i147)) #12
          to label %do.end14.i150 [label %if.then9.i147], !srcloc !308

if.then9.i147:                                    ; preds = %do.body5.i145
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %3, align 8
  %dev11.i146 = getelementptr inbounds %struct.platform_device, ptr %61, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_sai_get_clk_div.__UNIQUE_ID_ddebug241, ptr noundef %dev11.i146, ptr noundef nonnull @.str.63, i32 noundef %div3.i139) #12
  br label %do.end14.i150

do.end14.i150:                                    ; preds = %if.then9.i147, %do.body5.i145
  %call6.frozen189 = freeze i32 %call6
  %div3.i139.frozen = freeze i32 %div3.i139
  %div32.i153 = udiv i32 %call6.frozen189, %div3.i139.frozen
  %62 = mul i32 %div32.i153, %div3.i139.frozen
  %rem.i148.decomposed = sub i32 %call6.frozen189, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i148.decomposed)
  %tobool15.not.i149 = icmp eq i32 %rem.i148.decomposed, 0
  br i1 %tobool15.not.i149, label %do.end14.i150.stm32_sai_get_clk_div.exit156_crit_edge, label %do.body17.i151

do.end14.i150.stm32_sai_get_clk_div.exit156_crit_edge: ; preds = %do.end14.i150
  call void @__sanitizer_cov_trace_pc() #14
  br label %stm32_sai_get_clk_div.exit156

do.body17.i151:                                   ; preds = %do.end14.i150
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_sai_get_clk_div.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_sai_configure_clock, %if.then29.i154)) #12
          to label %stm32_sai_get_clk_div.exit156 [label %if.then29.i154], !srcloc !308

if.then29.i154:                                   ; preds = %do.body17.i151
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %3, align 8
  %dev31.i152 = getelementptr inbounds %struct.platform_device, ptr %64, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_sai_get_clk_div.__UNIQUE_ID_ddebug242, ptr noundef %dev31.i152, ptr noundef nonnull @.str.64, i32 noundef %53, i32 noundef %div32.i153) #12
  br label %stm32_sai_get_clk_div.exit156

stm32_sai_get_clk_div.exit156:                    ; preds = %if.then29.i154, %do.body17.i151, %do.end14.i150.stm32_sai_get_clk_div.exit156_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div3.i139)
  %cmp45 = icmp slt i32 %div3.i139, 0
  br i1 %cmp45, label %stm32_sai_get_clk_div.exit156.cleanup_crit_edge, label %stm32_sai_get_clk_div.exit156.if.end57_crit_edge

stm32_sai_get_clk_div.exit156.if.end57_crit_edge: ; preds = %stm32_sai_get_clk_div.exit156
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

stm32_sai_get_clk_div.exit156.cleanup_crit_edge:  ; preds = %stm32_sai_get_clk_div.exit156
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else48:                                        ; preds = %if.else29
  %fs_length = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 21
  %65 = ptrtoint ptr %fs_length to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fs_length, align 4
  %67 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i.i, align 4
  %mul50 = mul i32 %68, %66
  %div250.i160 = lshr i32 %mul50, 1
  %add.i161 = add i32 %div250.i160, %call6
  %div3.i162 = udiv i32 %add.i161, %mul50
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %div3.i162)
  %cmp4.i165 = icmp sgt i32 %div3.i162, 63
  br i1 %cmp4.i165, label %stm32_sai_get_clk_div.exit179.thread, label %do.body5.i168

stm32_sai_get_clk_div.exit179.thread:             ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %3, align 8
  %dev.i166 = getelementptr inbounds %struct.platform_device, ptr %70, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i166, ptr noundef nonnull @.str.61, i32 noundef %div3.i162) #15
  br label %cleanup

do.body5.i168:                                    ; preds = %if.else48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_sai_get_clk_div.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_sai_configure_clock, %if.then9.i170)) #12
          to label %do.end14.i173 [label %if.then9.i170], !srcloc !308

if.then9.i170:                                    ; preds = %do.body5.i168
  call void @__sanitizer_cov_trace_pc() #14
  %71 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %3, align 8
  %dev11.i169 = getelementptr inbounds %struct.platform_device, ptr %72, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_sai_get_clk_div.__UNIQUE_ID_ddebug241, ptr noundef %dev11.i169, ptr noundef nonnull @.str.63, i32 noundef %div3.i162) #12
  br label %do.end14.i173

do.end14.i173:                                    ; preds = %if.then9.i170, %do.body5.i168
  %call6.frozen190 = freeze i32 %call6
  %div3.i162.frozen = freeze i32 %div3.i162
  %div32.i176 = udiv i32 %call6.frozen190, %div3.i162.frozen
  %73 = mul i32 %div32.i176, %div3.i162.frozen
  %rem.i171.decomposed = sub i32 %call6.frozen190, %73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i171.decomposed)
  %tobool15.not.i172 = icmp eq i32 %rem.i171.decomposed, 0
  br i1 %tobool15.not.i172, label %do.end14.i173.stm32_sai_get_clk_div.exit179_crit_edge, label %do.body17.i174

do.end14.i173.stm32_sai_get_clk_div.exit179_crit_edge: ; preds = %do.end14.i173
  call void @__sanitizer_cov_trace_pc() #14
  br label %stm32_sai_get_clk_div.exit179

do.body17.i174:                                   ; preds = %do.end14.i173
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_sai_get_clk_div.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_sai_configure_clock, %if.then29.i177)) #12
          to label %stm32_sai_get_clk_div.exit179 [label %if.then29.i177], !srcloc !308

if.then29.i177:                                   ; preds = %do.body17.i174
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %3, align 8
  %dev31.i175 = getelementptr inbounds %struct.platform_device, ptr %75, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_sai_get_clk_div.__UNIQUE_ID_ddebug242, ptr noundef %dev31.i175, ptr noundef nonnull @.str.64, i32 noundef %mul50, i32 noundef %div32.i176) #12
  br label %stm32_sai_get_clk_div.exit179

stm32_sai_get_clk_div.exit179:                    ; preds = %if.then29.i177, %do.body17.i174, %do.end14.i173.stm32_sai_get_clk_div.exit179_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div3.i162)
  %cmp52 = icmp slt i32 %div3.i162, 0
  br i1 %cmp52, label %stm32_sai_get_clk_div.exit179.cleanup_crit_edge, label %stm32_sai_get_clk_div.exit179.if.end57_crit_edge

stm32_sai_get_clk_div.exit179.if.end57_crit_edge: ; preds = %stm32_sai_get_clk_div.exit179
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

stm32_sai_get_clk_div.exit179.cleanup_crit_edge:  ; preds = %stm32_sai_get_clk_div.exit179
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end57:                                         ; preds = %stm32_sai_get_clk_div.exit179.if.end57_crit_edge, %stm32_sai_get_clk_div.exit156.if.end57_crit_edge, %stm32_sai_get_clk_div.exit130.if.end57_crit_edge, %stm32_sai_get_clk_div.exit.if.end57_crit_edge, %if.end10.if.end57_crit_edge
  %div.0 = phi i32 [ %div3.i, %stm32_sai_get_clk_div.exit.if.end57_crit_edge ], [ 0, %if.end10.if.end57_crit_edge ], [ %div3.i113, %stm32_sai_get_clk_div.exit130.if.end57_crit_edge ], [ %div3.i139, %stm32_sai_get_clk_div.exit156.if.end57_crit_edge ], [ %div3.i162, %stm32_sai_get_clk_div.exit179.if.end57_crit_edge ]
  %call58 = tail call fastcc i32 @stm32_sai_set_clk_div(ptr noundef %3, i32 noundef %div.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %stm32_sai_get_clk_div.exit179.cleanup_crit_edge, %stm32_sai_get_clk_div.exit179.thread, %stm32_sai_get_clk_div.exit156.cleanup_crit_edge, %stm32_sai_get_clk_div.exit156.thread, %do.end, %stm32_sai_get_clk_div.exit130.cleanup_crit_edge, %stm32_sai_get_clk_div.exit130.thread, %stm32_sai_get_clk_div.exit.cleanup_crit_edge, %stm32_sai_get_clk_div.exit.thread, %if.then7.cleanup_crit_edge, %stm32_sai_set_parent_clock.exit
  %retval.0 = phi i32 [ %call58, %if.end57 ], [ -22, %do.end ], [ %call.i, %stm32_sai_set_parent_clock.exit ], [ 0, %if.then7.cleanup_crit_edge ], [ %div3.i, %stm32_sai_get_clk_div.exit.cleanup_crit_edge ], [ %div3.i113, %stm32_sai_get_clk_div.exit130.cleanup_crit_edge ], [ %div3.i139, %stm32_sai_get_clk_div.exit156.cleanup_crit_edge ], [ %div3.i162, %stm32_sai_get_clk_div.exit179.cleanup_crit_edge ], [ -22, %stm32_sai_get_clk_div.exit.thread ], [ -22, %stm32_sai_get_clk_div.exit130.thread ], [ -22, %stm32_sai_get_clk_div.exit156.thread ], [ -22, %stm32_sai_get_clk_div.exit179.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop_xrun(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_sai_pcm_process_spdif(ptr nocapture noundef readonly %substream, i32 noundef %channel, i32 noundef %hwoff, ptr nocapture noundef readnone %buf, i32 noundef %bytes) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i, align 4
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 50
  %12 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_area, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %hwoff
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 52
  %14 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_bytes, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 15
  %16 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channels, align 8
  %div = udiv i32 %15, %17
  %mul = mul i32 %div, %channel
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %mul
  %mul.i = shl i32 %bytes, 3
  %sample_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 22
  %18 = ptrtoint ptr %sample_bits.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sample_bits.i, align 4
  %div.i = udiv i32 %mul.i, %19
  %spdif_frm_cnt = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %11, i32 0, i32 26
  %20 = ptrtoint ptr %spdif_frm_cnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %spdif_frm_cnt, align 8
  %iec958 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %11, i32 0, i32 27
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %ptr.0 = phi ptr [ %add.ptr2, %entry ], [ %incdec.ptr, %if.end.do.body_crit_edge ]
  %cnt.0 = phi i32 [ %div.i, %entry ], [ %dec, %if.end.do.body_crit_edge ]
  %frm_cnt.0 = phi i32 [ %21, %entry ], [ %spec.store.select, %if.end.do.body_crit_edge ]
  %22 = ptrtoint ptr %ptr.0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ptr.0, align 4
  %24 = lshr i32 %23, 8
  store i32 %24, ptr %ptr.0, align 4
  %shr4 = lshr i32 %frm_cnt.0, 3
  %sub = and i32 %frm_cnt.0, 7
  %shl5 = shl nuw nsw i32 1, %sub
  %arrayidx6 = getelementptr [24 x i8], ptr %iec958, i32 0, i32 %shr4
  %25 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx6, align 1
  %conv = zext i8 %26 to i32
  %and7 = and i32 %shl5, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %do.body.if.end_crit_edge, label %if.then

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %24, 67108864
  %27 = ptrtoint ptr %ptr.0 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or, ptr %ptr.0, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body.if.end_crit_edge
  %incdec.ptr = getelementptr i32, ptr %ptr.0, i32 1
  %28 = and i32 %cnt.0, 1
  %29 = xor i32 %28, 1
  %spec.select = add i32 %29, %frm_cnt.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %spec.select)
  %cmp = icmp eq i32 %spec.select, 192
  %spec.store.select = select i1 %cmp, i32 0, i32 %spec.select
  %dec = add i32 %cnt.0, -1
  %tobool14.not = icmp eq i32 %dec, 0
  br i1 %tobool14.not, label %do.end, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %spdif_frm_cnt to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %spec.store.select, ptr %spdif_frm_cnt, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_unregister_component(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_sai_sub_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pdata = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 8
  %pclk = getelementptr inbounds %struct.stm32_sai_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pclk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %regmap = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %7, i1 noundef zeroext true) #12
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %9) #12
  %10 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata, align 8
  %pclk4 = getelementptr inbounds %struct.stm32_sai_data, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %pclk4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pclk4, align 4
  tail call void @clk_disable(ptr noundef %13) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_sai_sub_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pdata = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 8
  %pclk = getelementptr inbounds %struct.stm32_sai_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pclk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %regmap = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %7, i1 noundef zeroext false) #12
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call3 = tail call i32 @regcache_sync(ptr noundef %9) #12
  %10 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata, align 8
  %pclk5 = getelementptr inbounds %struct.stm32_sai_data, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %pclk5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pclk5, align 4
  tail call void @clk_disable(ptr noundef %13) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strlen(ptr nocapture) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 150)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 150)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !38, !40, !42, !43, !45, !47, !49, !51, !53, !54, !55, !56, !58, !60, !61, !62, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !88, !90, !92, !93, !94, !96, !97, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !117, !118, !120, !121, !122, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !137, !139, !140, !142, !143, !145, !146, !147, !149, !150, !151, !153, !155, !156, !157, !159, !161, !163, !165, !166, !167, !168, !169, !171, !172, !174, !175, !176, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !200, !201, !203, !204, !205, !206, !207, !209, !210, !212, !213, !214, !215, !217, !218, !219, !220, !222, !223, !225, !226, !227, !229, !230, !231, !232, !234, !235, !237, !238, !239, !240, !242, !243, !244, !246, !247, !249, !250, !252, !253, !255, !257, !258, !259, !260, !262, !263, !264, !265, !266, !268, !269, !271, !272, !273, !275, !276, !277, !279, !280, !281, !283, !284, !285, !287, !289, !291, !293, !295}
!llvm.module.flags = !{!297, !298, !299, !300, !301, !302, !303, !304}
!llvm.ident = !{!305}

!0 = !{ptr @__initcall__kmod_snd_soc_stm32_sai_sub__262_1625_stm32_sai_sub_driver_init6, !1, !"__initcall__kmod_snd_soc_stm32_sai_sub__262_1625_stm32_sai_sub_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1625, i32 1}
!2 = !{ptr @__exitcall_stm32_sai_sub_driver_exit, !1, !"__exitcall_stm32_sai_sub_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description263, !4, !"__UNIQUE_ID_description263", i1 false, i1 false}
!4 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1627, i32 1}
!5 = !{ptr @__UNIQUE_ID_author264, !6, !"__UNIQUE_ID_author264", i1 false, i1 false}
!6 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1628, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias265, !8, !"__UNIQUE_ID_alias265", i1 false, i1 false}
!8 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1629, i32 1}
!9 = !{ptr @__UNIQUE_ID_file266, !10, !"__UNIQUE_ID_file266", i1 false, i1 false}
!10 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1630, i32 1}
!11 = !{ptr @__UNIQUE_ID_license267, !10, !"__UNIQUE_ID_license267", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1617, i32 11}
!14 = !{ptr @stm32_sai_sub_driver, !15, !"stm32_sai_sub_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1615, i32 31}
!16 = !{ptr @stm32_sai_sub_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1517, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @stm32_sai_sub_probe.__key.2, !20, !"__key", i1 false, i1 false}
!20 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1518, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1523, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @stm32_sai_sub_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @stm32_sai_sub_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1540, i32 3}
!32 = !{ptr @stm32_sai_sub_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @stm32_sai_sub_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1549, i32 41}
!36 = !{ptr @stm32_sai_pcm_config, !37, !"stm32_sai_pcm_config", i1 false, i1 false}
!37 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1328, i32 46}
!38 = !{ptr @stm32_sai_pcm_hw, !39, !"stm32_sai_pcm_hw", i1 false, i1 false}
!39 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1282, i32 38}
!40 = !{ptr @stm32_sai_sub_parse_of._key, !41, !"_key", i1 false, i1 false}
!41 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1380, i32 16}
!42 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1384, i32 10}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1387, i32 35}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1387, i32 48}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1389, i32 55}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1392, i32 3}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @stm32_sai_sub_parse_of._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @stm32_sai_sub_parse_of._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1398, i32 26}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1401, i32 4}
!60 = !{ptr @stm32_sai_sub_parse_of._entry.21, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @stm32_sai_sub_parse_of._entry_ptr.23, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1411, i32 45}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1413, i32 3}
!66 = !{ptr @stm32_sai_sub_parse_of._entry.25, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @stm32_sai_sub_parse_of._entry_ptr.27, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1420, i32 4}
!70 = !{ptr @stm32_sai_sub_parse_of._entry.28, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @stm32_sai_sub_parse_of._entry_ptr.30, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1427, i32 4}
!74 = !{ptr @stm32_sai_sub_parse_of._entry.31, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @stm32_sai_sub_parse_of._entry_ptr.33, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1436, i32 5}
!78 = !{ptr @stm32_sai_sub_parse_of._entry.34, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @stm32_sai_sub_parse_of._entry_ptr.36, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1446, i32 5}
!82 = !{ptr @stm32_sai_sub_parse_of._entry.37, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @stm32_sai_sub_parse_of._entry_ptr.39, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1451, i32 42}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1452, i32 12}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1456, i32 12}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1460, i32 5}
!92 = !{ptr @stm32_sai_sub_parse_of._entry.43, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @stm32_sai_sub_parse_of._entry_ptr.45, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1466, i32 3}
!96 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @stm32_sai_sub_parse_of.__UNIQUE_ID_ddebug261, !95, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1471, i32 41}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1474, i32 10}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1484, i32 27}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1489, i32 44}
!106 = !{ptr @stm32_sai_sub_regmap_config_f4, !107, !"stm32_sai_sub_regmap_config_f4", i1 false, i1 false}
!107 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 238, i32 35}
!108 = !{ptr @stm32_sai_sub_regmap_config_h7, !109, !"stm32_sai_sub_regmap_config_h7", i1 false, i1 false}
!109 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 250, i32 35}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 475, i32 36}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 475, i32 58}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 481, i32 2}
!116 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @stm32_sai_add_mclk_provider.__UNIQUE_ID_ddebug245, !115, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 484, i32 3}
!120 = !{ptr @stm32_sai_add_mclk_provider._entry, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @stm32_sai_add_mclk_provider._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @mclk_ops, !123, !"mclk_ops", i1 false, i1 false}
!123 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 440, i32 29}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 424, i32 2}
!126 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @stm32_sai_mclk_enable.__UNIQUE_ID_ddebug243, !125, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 435, i32 2}
!130 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @stm32_sai_mclk_disable.__UNIQUE_ID_ddebug244, !129, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!132 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 323, i32 3}
!134 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @stm32_sai_get_clk_div._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @stm32_sai_get_clk_div._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.63, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 326, i32 2}
!139 = !{ptr @stm32_sai_get_clk_div.__UNIQUE_ID_ddebug241, !138, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 329, i32 3}
!142 = !{ptr @stm32_sai_get_clk_div.__UNIQUE_ID_ddebug242, !141, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 343, i32 3}
!145 = !{ptr @stm32_sai_set_clk_div._entry, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @stm32_sai_set_clk_div._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 351, i32 3}
!149 = !{ptr @stm32_sai_set_clk_div._entry.66, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @stm32_sai_set_clk_div._entry_ptr.68, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @stm32_sai_playback_dai, !152, !"stm32_sai_playback_dai", i1 false, i1 false}
!152 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1291, i32 34}
!153 = !{ptr @.str.69, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1171, i32 3}
!155 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @stm32_sai_pcm_new.__UNIQUE_ID_ddebug255, !154, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!157 = !{ptr @.str.71, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 299, i32 10}
!159 = !{ptr @iec958_ctls, !160, !"iec958_ctls", i1 false, i1 false}
!160 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 295, i32 38}
!161 = !{ptr @stm32_sai_pcm_dai_ops, !162, !"stm32_sai_pcm_dai_ops", i1 false, i1 false}
!162 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1226, i32 37}
!163 = !{ptr @.str.72, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 580, i32 4}
!165 = !{ptr @stm32_sai_set_sysclk._entry, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @stm32_sai_set_sysclk._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.73, !164, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.74, !164, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.75, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 587, i32 3}
!171 = !{ptr @stm32_sai_set_sysclk.__UNIQUE_ID_ddebug247, !170, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!172 = !{ptr @.str.76, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 368, i32 3}
!174 = !{ptr @.str.77, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @stm32_sai_set_parent_clock._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @stm32_sai_set_parent_clock._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.78, !173, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.79, !173, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.80, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 652, i32 2}
!181 = !{ptr @.str.81, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @stm32_sai_set_dai_fmt.__UNIQUE_ID_ddebug249, !180, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!183 = !{ptr @.str.82, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 687, i32 3}
!185 = !{ptr @stm32_sai_set_dai_fmt._entry, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @stm32_sai_set_dai_fmt._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.84, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 712, i32 3}
!189 = !{ptr @stm32_sai_set_dai_fmt._entry.83, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @stm32_sai_set_dai_fmt._entry_ptr.85, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.87, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 732, i32 3}
!193 = !{ptr @stm32_sai_set_dai_fmt._entry.86, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @stm32_sai_set_dai_fmt._entry_ptr.88, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.89, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 739, i32 3}
!197 = !{ptr @stm32_sai_set_dai_fmt.__UNIQUE_ID_ddebug250, !196, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!198 = !{ptr @stm32_sai_set_dai_fmt._entry.90, !199, !"_entry", i1 false, i1 false}
!199 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 749, i32 3}
!200 = !{ptr @stm32_sai_set_dai_fmt._entry_ptr.91, !199, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.92, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 601, i32 3}
!203 = !{ptr @.str.93, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.94, !202, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @stm32_sai_set_dai_tdm_slot._entry, !202, !"_entry", i1 false, i1 false}
!206 = !{ptr @stm32_sai_set_dai_tdm_slot._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.95, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 605, i32 2}
!209 = !{ptr @stm32_sai_set_dai_tdm_slot.__UNIQUE_ID_ddebug248, !208, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!210 = !{ptr @.str.96, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 779, i32 3}
!212 = !{ptr @.str.97, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @stm32_sai_startup._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @stm32_sai_startup._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.98, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 874, i32 3}
!217 = !{ptr @.str.99, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @stm32_sai_set_slots._entry, !216, !"_entry", i1 false, i1 false}
!219 = !{ptr @stm32_sai_set_slots._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.100, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 897, i32 2}
!222 = !{ptr @stm32_sai_set_slots.__UNIQUE_ID_ddebug251, !221, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!223 = !{ptr @.str.101, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 921, i32 2}
!225 = !{ptr @.str.102, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @stm32_sai_set_frame.__UNIQUE_ID_ddebug252, !224, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!227 = !{ptr @.str.103, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 841, i32 3}
!229 = !{ptr @.str.104, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @stm32_sai_set_config._entry, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @stm32_sai_set_config._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @stm32_sai_set_config._entry.105, !233, !"_entry", i1 false, i1 false}
!233 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 851, i32 3}
!234 = !{ptr @stm32_sai_set_config._entry_ptr.106, !233, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.107, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1042, i32 6}
!237 = !{ptr @.str.108, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @stm32_sai_configure_clock._entry, !236, !"_entry", i1 false, i1 false}
!239 = !{ptr @stm32_sai_configure_clock._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.109, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1110, i32 3}
!242 = !{ptr @.str.110, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @stm32_sai_trigger.__UNIQUE_ID_ddebug253, !241, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!244 = !{ptr @stm32_sai_trigger._entry, !245, !"_entry", i1 false, i1 false}
!245 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1119, i32 4}
!246 = !{ptr @stm32_sai_trigger._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.111, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1124, i32 3}
!249 = !{ptr @stm32_sai_trigger.__UNIQUE_ID_ddebug254, !248, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!250 = !{ptr @stm32_sai_trigger._entry.112, !251, !"_entry", i1 false, i1 false}
!251 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1137, i32 4}
!252 = !{ptr @stm32_sai_trigger._entry_ptr.113, !251, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @stm32_sai_capture_dai, !254, !"stm32_sai_capture_dai", i1 false, i1 false}
!254 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1310, i32 34}
!255 = !{ptr @.str.114, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 511, i32 3}
!257 = !{ptr @.str.115, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @stm32_sai_isr._entry, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @stm32_sai_isr._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.117, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 516, i32 3}
!262 = !{ptr @stm32_sai_isr._entry.116, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @stm32_sai_isr._entry_ptr.118, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.119, !261, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @.str.120, !261, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @.str.121, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 522, i32 3}
!268 = !{ptr @stm32_sai_isr.__UNIQUE_ID_ddebug246, !267, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!269 = !{ptr @.str.123, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 525, i32 3}
!271 = !{ptr @stm32_sai_isr._entry.122, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @stm32_sai_isr._entry_ptr.124, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.126, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 530, i32 3}
!275 = !{ptr @stm32_sai_isr._entry.125, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @stm32_sai_isr._entry_ptr.127, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.129, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 533, i32 3}
!279 = !{ptr @stm32_sai_isr._entry.128, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @stm32_sai_isr._entry_ptr.130, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.132, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 538, i32 3}
!283 = !{ptr @stm32_sai_isr._entry.131, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @stm32_sai_isr._entry_ptr.133, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @stm32_sai_pcm_config_spdif, !286, !"stm32_sai_pcm_config_spdif", i1 false, i1 false}
!286 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1333, i32 46}
!287 = !{ptr @stm32_sai_pcm_hw_spdif, !288, !"stm32_sai_pcm_hw_spdif", i1 false, i1 false}
!288 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1273, i32 38}
!289 = !{ptr @.str.134, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1340, i32 10}
!291 = !{ptr @stm32_component, !292, !"stm32_component", i1 false, i1 false}
!292 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1339, i32 46}
!293 = !{ptr @stm32_sai_sub_ids, !294, !"stm32_sai_sub_ids", i1 false, i1 false}
!294 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1343, i32 34}
!295 = !{ptr @stm32_sai_sub_pm_ops, !296, !"stm32_sai_sub_pm_ops", i1 false, i1 false}
!296 = !{!"../sound/soc/stm/stm32_sai_sub.c", i32 1611, i32 32}
!297 = !{i32 1, !"wchar_size", i32 2}
!298 = !{i32 1, !"min_enum_size", i32 4}
!299 = !{i32 8, !"branch-target-enforcement", i32 0}
!300 = !{i32 8, !"sign-return-address", i32 0}
!301 = !{i32 8, !"sign-return-address-all", i32 0}
!302 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!303 = !{i32 7, !"uwtable", i32 1}
!304 = !{i32 7, !"frame-pointer", i32 2}
!305 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!306 = !{i8 0, i8 2}
!307 = !{!"auto-init"}
!308 = !{i64 2148762751, i64 2148762756, i64 2148762769, i64 2148762813, i64 2148762847, i64 2148762868}
!309 = !{i32 0, i32 33}
