; ModuleID = '/llk/IR_all_yes/sound/soc/qcom/qdsp6/q6afe-dai.c_pt.bc'
source_filename = "../sound/soc/qcom/qdsp6/q6afe-dai.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.q6dsp_audio_port_dai_driver_config = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.q6afe_dai_data = type { [129 x ptr], [129 x %struct.q6afe_port_config], [129 x i8], [129 x %struct.q6afe_dai_priv_data] }
%struct.q6afe_port_config = type { %struct.q6afe_hdmi_cfg, %struct.q6afe_slim_cfg, %struct.q6afe_i2s_cfg, %struct.q6afe_tdm_cfg, %struct.q6afe_cdc_dma_cfg }
%struct.q6afe_hdmi_cfg = type { i16, i16, i32, i16 }
%struct.q6afe_slim_cfg = type { i32, i16, i16, i16, [8 x i8] }
%struct.q6afe_i2s_cfg = type { i32, i16, i16, i16, i32, i32 }
%struct.q6afe_tdm_cfg = type { i16, i32, i16, i16, i16, i16, i16, i16, i16, i32, [8 x i16] }
%struct.q6afe_cdc_dma_cfg = type { i16, i16, i16, i16, i16 }
%struct.q6afe_dai_priv_data = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_q6afe_dai__238_1091_q6afe_dai_platform_driver_init6 = internal global ptr @q6afe_dai_platform_driver_init, section ".initcall6.init", align 4
@q6afe_dai_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @q6afe_dai_dev_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @q6afe_dai_device_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_q6afe_dai_platform_driver_exit = internal global ptr @q6afe_dai_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description239 = internal constant [51 x i8] c"q6afe_dai.description=Q6 Audio Frontend dai driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [46 x i8] c"q6afe_dai.file=sound/soc/qcom/qdsp6/q6afe-dai\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [25 x i8] c"q6afe_dai.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"q6afe-dai\00", [22 x i8] zeroinitializer }, align 32
@q6afe_dai_device_id = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,q6afe-dais\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@q6hdmi_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @q6afe_dai_shutdown, ptr @q6hdmi_hw_params, ptr null, ptr @q6afe_dai_prepare, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@q6slim_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @q6slim_set_channel_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @q6afe_dai_shutdown, ptr @q6slim_hw_params, ptr null, ptr @q6afe_dai_prepare, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@q6i2s_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @q6afe_mi2s_set_sysclk, ptr null, ptr null, ptr null, ptr @q6i2s_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @q6afe_dai_shutdown, ptr @q6i2s_hw_params, ptr null, ptr @q6afe_dai_prepare, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@q6tdm_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @q6afe_mi2s_set_sysclk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @q6tdm_set_tdm_slot, ptr @q6tdm_set_channel_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @q6afe_dai_shutdown, ptr @q6tdm_hw_params, ptr null, ptr @q6afe_dai_prepare, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@q6dma_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @q6afe_mi2s_set_sysclk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @q6dma_set_channel_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @q6afe_dai_shutdown, ptr @q6dma_hw_params, ptr null, ptr @q6afe_dai_prepare, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@q6afe_dai_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.82, ptr null, i32 0, ptr @q6afe_dai_widgets, i32 129, ptr @q6afe_dapm_routes, i32 128, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @q6dsp_audio_ports_of_xlate_dai_name, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@of_q6afe_parse_dai_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 980, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"valid dai id not found:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"of_q6afe_parse_dai_data\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sound/soc/qcom/qdsp6/q6afe-dai.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@of_q6afe_parse_dai_data._entry_ptr = internal global ptr @of_q6afe_parse_dai_data._entry, section ".printk_index", align 4
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qcom,sd-lines\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom,tdm-sync-mode\00", [45 x i8] zeroinitializer }, align 32
@of_q6afe_parse_dai_data._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 1009, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"No Sync mode from DT\0A\00", [42 x i8] zeroinitializer }, align 32
@of_q6afe_parse_dai_data._entry_ptr.11 = internal global ptr @of_q6afe_parse_dai_data._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qcom,tdm-sync-src\00", [46 x i8] zeroinitializer }, align 32
@of_q6afe_parse_dai_data._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 1015, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No Sync Src from DT\0A\00", [43 x i8] zeroinitializer }, align 32
@of_q6afe_parse_dai_data._entry_ptr.15 = internal global ptr @of_q6afe_parse_dai_data._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qcom,tdm-data-out\00", [46 x i8] zeroinitializer }, align 32
@of_q6afe_parse_dai_data._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 1021, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No Data out enable from DT\0A\00", [36 x i8] zeroinitializer }, align 32
@of_q6afe_parse_dai_data._entry_ptr.19 = internal global ptr @of_q6afe_parse_dai_data._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom,tdm-invert-sync\00", [43 x i8] zeroinitializer }, align 32
@of_q6afe_parse_dai_data._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 1027, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No Invert sync from DT\0A\00", [40 x i8] zeroinitializer }, align 32
@of_q6afe_parse_dai_data._entry_ptr.23 = internal global ptr @of_q6afe_parse_dai_data._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom,tdm-data-delay\00", [44 x i8] zeroinitializer }, align 32
@of_q6afe_parse_dai_data._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 1033, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"No Data Delay from DT\0A\00", [41 x i8] zeroinitializer }, align 32
@of_q6afe_parse_dai_data._entry_ptr.27 = internal global ptr @of_q6afe_parse_dai_data._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom,tdm-data-align\00", [44 x i8] zeroinitializer }, align 32
@of_q6afe_parse_dai_data._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 1039, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"No Data align from DT\0A\00", [41 x i8] zeroinitializer }, align 32
@of_q6afe_parse_dai_data._entry_ptr.31 = internal global ptr @of_q6afe_parse_dai_data._entry.29, section ".printk_index", align 4
@msm_dai_q6_dai_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 687, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to get afe port\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"msm_dai_q6_dai_probe\00", [43 x i8] zeroinitializer }, align 32
@msm_dai_q6_dai_probe._entry_ptr = internal global ptr @msm_dai_q6_dai_probe._entry, section ".printk_index", align 4
@q6afe_dai_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 365, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fail to close AFE port (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"q6afe_dai_shutdown\00", [45 x i8] zeroinitializer }, align 32
@q6afe_dai_shutdown._entry_ptr = internal global ptr @q6afe_dai_shutdown._entry, section ".printk_index", align 4
@q6hdmi_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 107, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid Channels = %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"q6hdmi_hw_params\00", [47 x i8] zeroinitializer }, align 32
@q6hdmi_hw_params._entry_ptr = internal global ptr @q6hdmi_hw_params._entry, section ".printk_index", align 4
@q6afe_dai_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.38, ptr @.str.4, i32 381, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"q6afe_dai_prepare\00", [46 x i8] zeroinitializer }, align 32
@q6afe_dai_prepare._entry_ptr = internal global ptr @q6afe_dai_prepare._entry, section ".printk_index", align 4
@q6afe_dai_prepare._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.4, i32 402, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fail to prepare AFE port %x\0A\00", [35 x i8] zeroinitializer }, align 32
@q6afe_dai_prepare._entry_ptr.41 = internal global ptr @q6afe_dai_prepare._entry.39, section ".printk_index", align 4
@q6afe_dai_prepare._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.4, i32 420, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fail to start AFE port %x\0A\00", [37 x i8] zeroinitializer }, align 32
@q6afe_dai_prepare._entry_ptr.44 = internal global ptr @q6afe_dai_prepare._entry.42, section ".printk_index", align 4
@q6slim_set_channel_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: tx slot not found\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"q6slim_set_channel_map\00", [41 x i8] zeroinitializer }, align 32
@q6slim_set_channel_map._entry_ptr = internal global ptr @q6slim_set_channel_map._entry, section ".printk_index", align 4
@q6slim_set_channel_map._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.4, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: rx slot not found\0A\00", [39 x i8] zeroinitializer }, align 32
@q6slim_set_channel_map._entry_ptr.49 = internal global ptr @q6slim_set_channel_map._entry.47, section ".printk_index", align 4
@q6slim_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.4, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013%s: format %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"q6slim_hw_params\00", [47 x i8] zeroinitializer }, align 32
@q6slim_hw_params._entry_ptr = internal global ptr @q6slim_hw_params._entry, section ".printk_index", align 4
@q6tdm_set_tdm_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.4, i32 153, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: invalid slot_width %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"q6tdm_set_tdm_slot\00", [45 x i8] zeroinitializer }, align 32
@q6tdm_set_tdm_slot._entry_ptr = internal global ptr @q6tdm_set_tdm_slot._entry, section ".printk_index", align 4
@q6tdm_set_tdm_slot._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.4, i32 173, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: invalid slots %d\0A\00", [42 x i8] zeroinitializer }, align 32
@q6tdm_set_tdm_slot._entry_ptr.56 = internal global ptr @q6tdm_set_tdm_slot._entry.54, section ".printk_index", align 4
@q6tdm_set_tdm_slot._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.4, i32 186, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: invalid dai id 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@q6tdm_set_tdm_slot._entry_ptr.59 = internal global ptr @q6tdm_set_tdm_slot._entry.57, section ".printk_index", align 4
@q6tdm_set_channel_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.4, i32 207, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tx slot not found\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"q6tdm_set_channel_map\00", [42 x i8] zeroinitializer }, align 32
@q6tdm_set_channel_map._entry_ptr = internal global ptr @q6tdm_set_channel_map._entry, section ".printk_index", align 4
@q6tdm_set_channel_map._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.4, i32 212, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"invalid tx num %d\0A\00", [45 x i8] zeroinitializer }, align 32
@q6tdm_set_channel_map._entry_ptr.64 = internal global ptr @q6tdm_set_channel_map._entry.62, section ".printk_index", align 4
@q6tdm_set_channel_map._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.61, ptr @.str.4, i32 226, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx slot not found\0A\00", [45 x i8] zeroinitializer }, align 32
@q6tdm_set_channel_map._entry_ptr.67 = internal global ptr @q6tdm_set_channel_map._entry.65, section ".printk_index", align 4
@q6tdm_set_channel_map._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.61, ptr @.str.4, i32 231, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"invalid rx num %d\0A\00", [45 x i8] zeroinitializer }, align 32
@q6tdm_set_channel_map._entry_ptr.70 = internal global ptr @q6tdm_set_channel_map._entry.68, section ".printk_index", align 4
@q6tdm_set_channel_map._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.61, ptr @.str.4, i32 247, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@q6tdm_set_channel_map._entry_ptr.72 = internal global ptr @q6tdm_set_channel_map._entry.71, section ".printk_index", align 4
@q6dma_set_channel_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.73, ptr @.str.4, i32 295, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"q6dma_set_channel_map\00", [42 x i8] zeroinitializer }, align 32
@q6dma_set_channel_map._entry_ptr = internal global ptr @q6dma_set_channel_map._entry, section ".printk_index", align 4
@q6dma_set_channel_map._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.73, ptr @.str.4, i32 301, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@q6dma_set_channel_map._entry_ptr.75 = internal global ptr @q6dma_set_channel_map._entry.74, section ".printk_index", align 4
@q6dma_set_channel_map._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.73, ptr @.str.4, i32 319, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@q6dma_set_channel_map._entry_ptr.77 = internal global ptr @q6dma_set_channel_map._entry.76, section ".printk_index", align 4
@q6dma_set_channel_map._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.73, ptr @.str.4, i32 324, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@q6dma_set_channel_map._entry_ptr.79 = internal global ptr @q6dma_set_channel_map._entry.78, section ".printk_index", align 4
@q6dma_set_channel_map._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.73, ptr @.str.4, i32 332, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@q6dma_set_channel_map._entry_ptr.81 = internal global ptr @q6dma_set_channel_map._entry.80, section ".printk_index", align 4
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"q6afe-dai-component\00", [44 x i8] zeroinitializer }, align 32
@q6afe_dapm_routes = internal constant { [128 x %struct.snd_soc_dapm_route], [1664 x i8] } { [128 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.215, ptr null, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.216, ptr null, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.217, ptr null, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.218, ptr null, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.219, ptr null, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.220, ptr null, ptr @.str.87, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.221, ptr null, ptr @.str.88, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.222, ptr null, ptr @.str.89, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.223, ptr null, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr null, ptr @.str.224, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr null, ptr @.str.225, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr null, ptr @.str.226, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr null, ptr @.str.227, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr null, ptr @.str.228, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr null, ptr @.str.229, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr null, ptr @.str.230, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.231, ptr null, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.232, ptr null, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.233, ptr null, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.234, ptr null, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.235, ptr null, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.236, ptr null, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.237, ptr null, ptr @.str.111, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.238, ptr null, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.239, ptr null, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.240, ptr null, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.241, ptr null, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.242, ptr null, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.243, ptr null, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.244, ptr null, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.245, ptr null, ptr @.str.127, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.246, ptr null, ptr @.str.128, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.247, ptr null, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.248, ptr null, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.249, ptr null, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.250, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.251, ptr null, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.252, ptr null, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.253, ptr null, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.254, ptr null, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.255, ptr null, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.256, ptr null, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.257, ptr null, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.258, ptr null, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.259, ptr null, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.260, ptr null, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.261, ptr null, ptr @.str.159, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.262, ptr null, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.263, ptr null, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.264, ptr null, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.265, ptr null, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.266, ptr null, ptr @.str.164, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.267, ptr null, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.268, ptr null, ptr @.str.174, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.269, ptr null, ptr @.str.175, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.270, ptr null, ptr @.str.176, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.271, ptr null, ptr @.str.177, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.272, ptr null, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.273, ptr null, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.274, ptr null, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.275, ptr null, ptr @.str.181, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr null, ptr @.str.276, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr null, ptr @.str.277, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr null, ptr @.str.278, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr null, ptr @.str.279, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr null, ptr @.str.280, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr null, ptr @.str.281, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr null, ptr @.str.282, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr null, ptr @.str.283, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr null, ptr @.str.284, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr null, ptr @.str.285, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr null, ptr @.str.286, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr null, ptr @.str.287, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr null, ptr @.str.288, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.289, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr null, ptr @.str.290, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr null, ptr @.str.291, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr null, ptr @.str.292, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr null, ptr @.str.293, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr null, ptr @.str.294, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr null, ptr @.str.295, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr null, ptr @.str.296, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr null, ptr @.str.297, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr null, ptr @.str.298, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr null, ptr @.str.299, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr null, ptr @.str.300, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr null, ptr @.str.301, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr null, ptr @.str.302, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr null, ptr @.str.303, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr null, ptr @.str.304, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr null, ptr @.str.305, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr null, ptr @.str.306, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr null, ptr @.str.307, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.182, ptr null, ptr @.str.308, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.183, ptr null, ptr @.str.309, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.184, ptr null, ptr @.str.310, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.185, ptr null, ptr @.str.311, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr null, ptr @.str.312, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.187, ptr null, ptr @.str.313, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.188, ptr null, ptr @.str.314, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.189, ptr null, ptr @.str.315, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr null, ptr @.str.316, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr null, ptr @.str.317, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr null, ptr @.str.318, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr null, ptr @.str.319, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr null, ptr @.str.320, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.321, ptr null, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.193, ptr null, ptr @.str.322, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.323, ptr null, ptr @.str.194, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.195, ptr null, ptr @.str.324, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.196, ptr null, ptr @.str.325, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.197, ptr null, ptr @.str.326, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.198, ptr null, ptr @.str.327, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.199, ptr null, ptr @.str.328, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.329, ptr null, ptr @.str.200, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.201, ptr null, ptr @.str.330, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.331, ptr null, ptr @.str.202, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.203, ptr null, ptr @.str.332, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.333, ptr null, ptr @.str.204, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.205, ptr null, ptr @.str.334, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.335, ptr null, ptr @.str.206, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr null, ptr @.str.336, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.337, ptr null, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.209, ptr null, ptr @.str.338, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.339, ptr null, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.211, ptr null, ptr @.str.340, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.341, ptr null, ptr @.str.212, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.342, ptr null, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }], [1664 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HDMI_RX\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SLIMBUS_0_RX\00", [19 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SLIMBUS_1_RX\00", [19 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SLIMBUS_2_RX\00", [19 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SLIMBUS_3_RX\00", [19 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SLIMBUS_4_RX\00", [19 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SLIMBUS_5_RX\00", [19 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SLIMBUS_6_RX\00", [19 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SLIMBUS_0_TX\00", [19 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SLIMBUS_1_TX\00", [19 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SLIMBUS_2_TX\00", [19 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SLIMBUS_3_TX\00", [19 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SLIMBUS_4_TX\00", [19 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SLIMBUS_5_TX\00", [19 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SLIMBUS_6_TX\00", [19 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"QUIN_MI2S_RX\00", [19 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"QUIN_MI2S_TX\00", [19 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"QUAT_MI2S_RX\00", [19 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"QUAT_MI2S_TX\00", [19 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TERT_MI2S_RX\00", [19 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TERT_MI2S_TX\00", [19 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SEC_MI2S_RX\00", [20 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SEC_MI2S_TX\00", [20 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SEC_MI2S_RX_SD1\00", [16 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Secondary MI2S Playback SD1\00", [36 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PRI_MI2S_RX\00", [20 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PRI_MI2S_TX\00", [20 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PRIMARY_TDM_RX_0\00", [47 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PRIMARY_TDM_RX_1\00", [47 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PRIMARY_TDM_RX_2\00", [47 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PRIMARY_TDM_RX_3\00", [47 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PRIMARY_TDM_RX_4\00", [47 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PRIMARY_TDM_RX_5\00", [47 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PRIMARY_TDM_RX_6\00", [47 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PRIMARY_TDM_RX_7\00", [47 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PRIMARY_TDM_TX_0\00", [47 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PRIMARY_TDM_TX_1\00", [47 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PRIMARY_TDM_TX_2\00", [47 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PRIMARY_TDM_TX_3\00", [47 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PRIMARY_TDM_TX_4\00", [47 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PRIMARY_TDM_TX_5\00", [47 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PRIMARY_TDM_TX_6\00", [47 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PRIMARY_TDM_TX_7\00", [47 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SEC_TDM_RX_0\00", [19 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SEC_TDM_RX_1\00", [19 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SEC_TDM_RX_2\00", [19 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SEC_TDM_RX_3\00", [19 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SEC_TDM_RX_4\00", [19 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SEC_TDM_RX_5\00", [19 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SEC_TDM_RX_6\00", [19 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SEC_TDM_RX_7\00", [19 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SEC_TDM_TX_0\00", [19 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SEC_TDM_TX_1\00", [19 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SEC_TDM_TX_2\00", [19 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SEC_TDM_TX_3\00", [19 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SEC_TDM_TX_4\00", [19 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SEC_TDM_TX_5\00", [19 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SEC_TDM_TX_6\00", [19 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SEC_TDM_TX_7\00", [19 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TERT_TDM_RX_0\00", [18 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TERT_TDM_RX_1\00", [18 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TERT_TDM_RX_2\00", [18 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TERT_TDM_RX_3\00", [18 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TERT_TDM_RX_4\00", [18 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TERT_TDM_RX_5\00", [18 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TERT_TDM_RX_6\00", [18 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TERT_TDM_RX_7\00", [18 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TERT_TDM_TX_0\00", [18 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TERT_TDM_TX_1\00", [18 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TERT_TDM_TX_2\00", [18 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TERT_TDM_TX_3\00", [18 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TERT_TDM_TX_4\00", [18 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TERT_TDM_TX_5\00", [18 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TERT_TDM_TX_6\00", [18 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TERT_TDM_TX_7\00", [18 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUAT_TDM_RX_0\00", [18 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUAT_TDM_RX_1\00", [18 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUAT_TDM_RX_2\00", [18 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUAT_TDM_RX_3\00", [18 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUAT_TDM_RX_4\00", [18 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUAT_TDM_RX_5\00", [18 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUAT_TDM_RX_6\00", [18 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUAT_TDM_RX_7\00", [18 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUAT_TDM_TX_0\00", [18 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUAT_TDM_TX_1\00", [18 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUAT_TDM_TX_2\00", [18 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUAT_TDM_TX_3\00", [18 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUAT_TDM_TX_4\00", [18 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUAT_TDM_TX_5\00", [18 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUAT_TDM_TX_6\00", [18 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUAT_TDM_TX_7\00", [18 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUIN_TDM_RX_0\00", [18 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUIN_TDM_RX_1\00", [18 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUIN_TDM_RX_2\00", [18 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUIN_TDM_RX_3\00", [18 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUIN_TDM_RX_4\00", [18 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUIN_TDM_RX_5\00", [18 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUIN_TDM_RX_6\00", [18 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUIN_TDM_RX_7\00", [18 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUIN_TDM_TX_0\00", [18 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUIN_TDM_TX_1\00", [18 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUIN_TDM_TX_2\00", [18 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUIN_TDM_TX_3\00", [18 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUIN_TDM_TX_4\00", [18 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUIN_TDM_TX_5\00", [18 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUIN_TDM_TX_6\00", [18 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUIN_TDM_TX_7\00", [18 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DISPLAY_PORT_RX\00", [16 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WSA_CODEC_DMA_RX_0\00", [45 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WSA_CODEC_DMA_TX_0\00", [45 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WSA_CODEC_DMA_RX_1\00", [45 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WSA_CODEC_DMA_TX_1\00", [45 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WSA_CODEC_DMA_TX_2\00", [45 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"VA_CODEC_DMA_TX_0\00", [46 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"VA_CODEC_DMA_TX_1\00", [46 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"VA_CODEC_DMA_TX_2\00", [46 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX_CODEC_DMA_RX_0\00", [46 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TX_CODEC_DMA_TX_0\00", [46 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX_CODEC_DMA_RX_1\00", [46 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TX_CODEC_DMA_TX_1\00", [46 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX_CODEC_DMA_RX_2\00", [46 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TX_CODEC_DMA_TX_2\00", [46 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX_CODEC_DMA_RX_3\00", [46 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TX_CODEC_DMA_TX_3\00", [46 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX_CODEC_DMA_RX_4\00", [46 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TX_CODEC_DMA_TX_4\00", [46 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX_CODEC_DMA_RX_5\00", [46 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TX_CODEC_DMA_TX_5\00", [46 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX_CODEC_DMA_RX_6\00", [46 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX_CODEC_DMA_RX_7\00", [46 x i8] zeroinitializer }, align 32
@q6afe_dai_widgets = internal constant { [129 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [5804 x i8] } { [129 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.83, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.84, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.85, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.86, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.87, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.88, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.89, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.90, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.91, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.92, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.93, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.94, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.95, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.96, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.97, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.98, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.99, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.100, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.101, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.102, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.103, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.104, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.105, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.106, ptr @.str.107, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.108, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.109, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.110, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.111, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.112, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.113, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.114, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.115, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.116, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.117, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.118, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.119, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.120, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.121, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.122, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.123, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.124, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.125, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.126, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.127, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.128, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.129, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.130, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.131, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.132, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.133, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.134, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.135, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.136, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.137, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.138, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.139, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.140, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.141, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.142, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.143, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.144, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.145, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.146, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.147, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.148, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.149, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.150, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.151, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.152, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.153, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.154, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.155, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.156, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.157, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.158, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.159, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.160, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.161, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.162, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.163, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.164, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.165, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.166, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.167, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.168, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.169, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.170, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.171, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.172, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.173, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.174, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.175, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.176, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.177, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.178, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.179, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.180, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.181, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.182, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.183, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.184, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.185, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.186, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.187, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.188, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.189, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.190, ptr @.str.191, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.192, ptr @.str.191, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.193, ptr @.str.191, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.194, ptr @.str.191, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.195, ptr @.str.191, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.196, ptr @.str.191, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.197, ptr @.str.191, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.198, ptr @.str.191, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.199, ptr @.str.191, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.200, ptr @.str.191, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.201, ptr @.str.191, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.202, ptr @.str.191, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.203, ptr @.str.191, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.204, ptr @.str.191, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.205, ptr @.str.191, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.206, ptr @.str.191, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.207, ptr @.str.191, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.208, ptr @.str.191, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.209, ptr @.str.191, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.210, ptr @.str.191, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.211, ptr @.str.191, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.212, ptr @.str.191, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.213, ptr @.str.191, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [5804 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HDMI Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Display Port Playback\00", [42 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Slimbus Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Slimbus1 Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Slimbus2 Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Slimbus3 Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Slimbus4 Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Slimbus5 Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Slimbus6 Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Slimbus Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Slimbus1 Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Slimbus2 Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Slimbus3 Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Slimbus4 Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Slimbus5 Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Slimbus6 Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Primary MI2S Playback\00", [42 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Secondary MI2S Playback\00", [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Tertiary MI2S Playback\00", [41 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Quaternary MI2S Playback\00", [39 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Quinary MI2S Playback\00", [42 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Primary TDM0 Playback\00", [42 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Primary TDM1 Playback\00", [42 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Primary TDM2 Playback\00", [42 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Primary TDM3 Playback\00", [42 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Primary TDM4 Playback\00", [42 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Primary TDM5 Playback\00", [42 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Primary TDM6 Playback\00", [42 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Primary TDM7 Playback\00", [42 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Secondary TDM0 Playback\00", [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Secondary TDM1 Playback\00", [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Secondary TDM2 Playback\00", [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Secondary TDM3 Playback\00", [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Secondary TDM4 Playback\00", [40 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Secondary TDM5 Playback\00", [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Secondary TDM6 Playback\00", [40 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Secondary TDM7 Playback\00", [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Tertiary TDM0 Playback\00", [41 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Tertiary TDM1 Playback\00", [41 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Tertiary TDM2 Playback\00", [41 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Tertiary TDM3 Playback\00", [41 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Tertiary TDM4 Playback\00", [41 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Tertiary TDM5 Playback\00", [41 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Tertiary TDM6 Playback\00", [41 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Tertiary TDM7 Playback\00", [41 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Quaternary TDM0 Playback\00", [39 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Quaternary TDM1 Playback\00", [39 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Quaternary TDM2 Playback\00", [39 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Quaternary TDM3 Playback\00", [39 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Quaternary TDM4 Playback\00", [39 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Quaternary TDM5 Playback\00", [39 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Quaternary TDM6 Playback\00", [39 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Quaternary TDM7 Playback\00", [39 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Quinary TDM0 Playback\00", [42 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Quinary TDM1 Playback\00", [42 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Quinary TDM2 Playback\00", [42 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Quinary TDM3 Playback\00", [42 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Quinary TDM4 Playback\00", [42 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Quinary TDM5 Playback\00", [42 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Quinary TDM6 Playback\00", [42 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Quinary TDM7 Playback\00", [42 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Primary TDM0 Capture\00", [43 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Primary TDM1 Capture\00", [43 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Primary TDM2 Capture\00", [43 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Primary TDM3 Capture\00", [43 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Primary TDM4 Capture\00", [43 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Primary TDM5 Capture\00", [43 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Primary TDM6 Capture\00", [43 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Primary TDM7 Capture\00", [43 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Secondary TDM0 Capture\00", [41 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Secondary TDM1 Capture\00", [41 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Secondary TDM2 Capture\00", [41 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Secondary TDM3 Capture\00", [41 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Secondary TDM4 Capture\00", [41 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Secondary TDM5 Capture\00", [41 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Secondary TDM6 Capture\00", [41 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Secondary TDM7 Capture\00", [41 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Tertiary TDM0 Capture\00", [42 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Tertiary TDM1 Capture\00", [42 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Tertiary TDM2 Capture\00", [42 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Tertiary TDM3 Capture\00", [42 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Tertiary TDM4 Capture\00", [42 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Tertiary TDM5 Capture\00", [42 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Tertiary TDM6 Capture\00", [42 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Tertiary TDM7 Capture\00", [42 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Quaternary TDM0 Capture\00", [40 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Quaternary TDM1 Capture\00", [40 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Quaternary TDM2 Capture\00", [40 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Quaternary TDM3 Capture\00", [40 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Quaternary TDM4 Capture\00", [40 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Quaternary TDM5 Capture\00", [40 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Quaternary TDM6 Capture\00", [40 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Quaternary TDM7 Capture\00", [40 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Quinary TDM0 Capture\00", [43 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Quinary TDM1 Capture\00", [43 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Quinary TDM2 Capture\00", [43 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Quinary TDM3 Capture\00", [43 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Quinary TDM4 Capture\00", [43 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Quinary TDM5 Capture\00", [43 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Quinary TDM6 Capture\00", [43 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Quinary TDM7 Capture\00", [43 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Tertiary MI2S Capture\00", [42 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Primary MI2S Capture\00", [43 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Secondary MI2S Capture\00", [41 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Quaternary MI2S Capture\00", [40 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Quinary MI2S Capture\00", [43 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"WSA_CODEC_DMA_RX_0 Playback\00", [36 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"WSA_CODEC_DMA_TX_0 Capture\00", [37 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"WSA_CODEC_DMA_RX_1 Playback\00", [36 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"WSA_CODEC_DMA_TX_1 Capture\00", [37 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"WSA_CODEC_DMA_TX_2 Capture\00", [37 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"VA_CODEC_DMA_TX_0 Capture\00", [38 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"VA_CODEC_DMA_TX_1 Capture\00", [38 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"VA_CODEC_DMA_TX_2 Capture\00", [38 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RX_CODEC_DMA_RX_0 Playback\00", [37 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TX_CODEC_DMA_TX_0 Capture\00", [38 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RX_CODEC_DMA_RX_1 Playback\00", [37 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TX_CODEC_DMA_TX_1 Capture\00", [38 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RX_CODEC_DMA_RX_2 Playback\00", [37 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TX_CODEC_DMA_TX_2 Capture\00", [38 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RX_CODEC_DMA_RX_3 Playback\00", [37 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TX_CODEC_DMA_TX_3 Capture\00", [38 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RX_CODEC_DMA_RX_4 Playback\00", [37 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TX_CODEC_DMA_TX_4 Capture\00", [38 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RX_CODEC_DMA_RX_5 Playback\00", [37 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TX_CODEC_DMA_TX_5 Capture\00", [38 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RX_CODEC_DMA_RX_6 Playback\00", [37 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RX_CODEC_DMA_RX_7 Playback\00", [37 x i8] zeroinitializer }, align 32
@switch.table.q6tdm_set_tdm_slot = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 3, i32 15, i32 3, i32 255, i32 3, i32 3, i32 3, i32 65535], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 127, i64 128]
@__sancov_gen_cov_switch_values.343 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.344 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.345 = internal global [50 x i64] [i64 48, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111, i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119, i64 120, i64 121, i64 122, i64 123, i64 124, i64 125, i64 126, i64 127, i64 128]
@__sancov_gen_cov_switch_values.346 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 6, i64 10, i64 31]
@__sancov_gen_cov_switch_values.347 = internal global [53 x i64] [i64 51, i64 32, i64 1, i64 2, i64 3, i64 256, i64 257, i64 258, i64 259, i64 260, i64 261, i64 262, i64 263, i64 264, i64 265, i64 266, i64 267, i64 268, i64 269, i64 270, i64 271, i64 272, i64 273, i64 274, i64 275, i64 276, i64 277, i64 278, i64 512, i64 513, i64 514, i64 515, i64 516, i64 517, i64 518, i64 519, i64 520, i64 521, i64 768, i64 769, i64 770, i64 771, i64 772, i64 773, i64 774, i64 777, i64 778, i64 779, i64 780, i64 781, i64 782, i64 783, i64 784]
@__sancov_gen_cov_switch_values.348 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.349 = internal global [24 x i64] [i64 22, i64 32, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111, i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119, i64 120, i64 121, i64 122, i64 123, i64 124, i64 125, i64 126]
@___asan_gen_.350 = private unnamed_addr constant [26 x i8] c"q6afe_dai_platform_driver\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 1084, i32 31 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 1086, i32 11 }
@___asan_gen_.356 = private unnamed_addr constant [20 x i8] c"q6afe_dai_device_id\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 1077, i32 34 }
@___asan_gen_.359 = private unnamed_addr constant [11 x i8] c"q6hdmi_ops\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 642, i32 37 }
@___asan_gen_.362 = private unnamed_addr constant [11 x i8] c"q6slim_ops\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 656, i32 37 }
@___asan_gen_.365 = private unnamed_addr constant [10 x i8] c"q6i2s_ops\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 648, i32 37 }
@___asan_gen_.368 = private unnamed_addr constant [10 x i8] c"q6tdm_ops\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 663, i32 37 }
@___asan_gen_.371 = private unnamed_addr constant [10 x i8] c"q6dma_ops\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 672, i32 37 }
@___asan_gen_.374 = private unnamed_addr constant [20 x i8] c"q6afe_dai_component\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 957, i32 46 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 978, i32 36 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 980, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 990, i32 8 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 1006, i32 37 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 1009, i32 5 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 1012, i32 37 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 1015, i32 5 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 1018, i32 37 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 1021, i32 5 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 1024, i32 37 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 1027, i32 5 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 1030, i32 37 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 1033, i32 5 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 1036, i32 37 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 1039, i32 5 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 687, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 365, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 107, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 381, i32 4 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 401, i32 4 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 420, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 439, i32 4 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 451, i32 4 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 57, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 152, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 172, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 185, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 207, i32 5 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 211, i32 5 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 226, i32 5 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 230, i32 5 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 246, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 295, i32 4 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 300, i32 4 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 319, i32 4 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 323, i32 4 }
@___asan_gen_.590 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 331, i32 3 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 958, i32 11 }
@___asan_gen_.596 = private unnamed_addr constant [18 x i8] c"q6afe_dapm_routes\00", align 1
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 497, i32 40 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 706, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 707, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 708, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 709, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 710, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 711, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 712, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 713, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 714, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 715, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 716, i32 2 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 717, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 718, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 719, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 720, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 721, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 723, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 725, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 727, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 729, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 731, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 733, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 735, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 737, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 740, i32 2 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 742, i32 2 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 745, i32 2 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 747, i32 2 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 749, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 751, i32 2 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 753, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 755, i32 2 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 757, i32 2 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 759, i32 2 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 761, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 763, i32 2 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 765, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 767, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 769, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 771, i32 2 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 773, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 775, i32 2 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 778, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 780, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 782, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 784, i32 2 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 786, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 788, i32 2 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 790, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 792, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 794, i32 2 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 796, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 798, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 800, i32 2 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 802, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 804, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 806, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 808, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 811, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 813, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 815, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 817, i32 2 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 819, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 821, i32 2 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 823, i32 2 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 825, i32 2 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 827, i32 2 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 829, i32 2 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 831, i32 2 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 833, i32 2 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 835, i32 2 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 837, i32 2 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 839, i32 2 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 841, i32 2 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 844, i32 2 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 846, i32 2 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 848, i32 2 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 850, i32 2 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 852, i32 2 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 854, i32 2 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 856, i32 2 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 858, i32 2 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 860, i32 2 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 862, i32 2 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 864, i32 2 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 866, i32 2 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 868, i32 2 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 870, i32 2 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 872, i32 2 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 874, i32 2 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 877, i32 2 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 879, i32 2 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 881, i32 2 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 883, i32 2 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 885, i32 2 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 887, i32 2 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 889, i32 2 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 891, i32 2 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 893, i32 2 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 895, i32 2 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 897, i32 2 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 899, i32 2 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 901, i32 2 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 903, i32 2 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 905, i32 2 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 907, i32 2 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 909, i32 2 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 911, i32 2 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 913, i32 2 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 915, i32 2 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 917, i32 2 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 919, i32 2 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 921, i32 2 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 923, i32 2 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 925, i32 2 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 927, i32 2 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 929, i32 2 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 931, i32 2 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 933, i32 2 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 935, i32 2 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 937, i32 2 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 939, i32 2 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 941, i32 2 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 943, i32 2 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 945, i32 2 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 947, i32 2 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 949, i32 2 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 951, i32 2 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 953, i32 2 }
@___asan_gen_.992 = private unnamed_addr constant [18 x i8] c"q6afe_dai_widgets\00", align 1
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 705, i32 41 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 498, i32 3 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 499, i32 3 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 500, i32 3 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 501, i32 3 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 502, i32 3 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 503, i32 3 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 504, i32 3 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 505, i32 3 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 506, i32 3 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 508, i32 25 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 509, i32 25 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 510, i32 25 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 511, i32 25 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 512, i32 25 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 513, i32 25 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 514, i32 25 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 516, i32 3 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 517, i32 3 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 518, i32 3 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 519, i32 3 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 520, i32 3 }
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 522, i32 3 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 523, i32 3 }
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 524, i32 3 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 525, i32 3 }
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 526, i32 3 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 527, i32 3 }
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 528, i32 3 }
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 529, i32 3 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 531, i32 3 }
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 532, i32 3 }
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 533, i32 3 }
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 534, i32 3 }
@___asan_gen_.1096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 535, i32 3 }
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 536, i32 3 }
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 537, i32 3 }
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 538, i32 3 }
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 540, i32 3 }
@___asan_gen_.1111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 541, i32 3 }
@___asan_gen_.1114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 542, i32 3 }
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 543, i32 3 }
@___asan_gen_.1120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 544, i32 3 }
@___asan_gen_.1123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 545, i32 3 }
@___asan_gen_.1126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 546, i32 3 }
@___asan_gen_.1129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 547, i32 3 }
@___asan_gen_.1132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 549, i32 3 }
@___asan_gen_.1135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 550, i32 3 }
@___asan_gen_.1138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 551, i32 3 }
@___asan_gen_.1141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 552, i32 3 }
@___asan_gen_.1144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 553, i32 3 }
@___asan_gen_.1147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 554, i32 3 }
@___asan_gen_.1150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 555, i32 3 }
@___asan_gen_.1153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 556, i32 3 }
@___asan_gen_.1156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 558, i32 3 }
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 559, i32 3 }
@___asan_gen_.1162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 560, i32 3 }
@___asan_gen_.1165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 561, i32 3 }
@___asan_gen_.1168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 562, i32 3 }
@___asan_gen_.1171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 563, i32 3 }
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 564, i32 3 }
@___asan_gen_.1177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 565, i32 3 }
@___asan_gen_.1180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 567, i32 29 }
@___asan_gen_.1183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 568, i32 29 }
@___asan_gen_.1186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 569, i32 29 }
@___asan_gen_.1189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 570, i32 29 }
@___asan_gen_.1192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 571, i32 29 }
@___asan_gen_.1195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 572, i32 29 }
@___asan_gen_.1198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 573, i32 29 }
@___asan_gen_.1201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 574, i32 29 }
@___asan_gen_.1204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 576, i32 25 }
@___asan_gen_.1207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 577, i32 25 }
@___asan_gen_.1210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 578, i32 25 }
@___asan_gen_.1213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 579, i32 25 }
@___asan_gen_.1216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 580, i32 25 }
@___asan_gen_.1219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 581, i32 25 }
@___asan_gen_.1222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 582, i32 25 }
@___asan_gen_.1225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 583, i32 25 }
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 585, i32 26 }
@___asan_gen_.1231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 586, i32 26 }
@___asan_gen_.1234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 587, i32 26 }
@___asan_gen_.1237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 588, i32 26 }
@___asan_gen_.1240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 589, i32 26 }
@___asan_gen_.1243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 590, i32 26 }
@___asan_gen_.1246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 591, i32 26 }
@___asan_gen_.1249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 592, i32 26 }
@___asan_gen_.1252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 594, i32 26 }
@___asan_gen_.1255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 595, i32 26 }
@___asan_gen_.1258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 596, i32 26 }
@___asan_gen_.1261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 597, i32 26 }
@___asan_gen_.1264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 598, i32 26 }
@___asan_gen_.1267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 599, i32 26 }
@___asan_gen_.1270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 600, i32 26 }
@___asan_gen_.1273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 601, i32 26 }
@___asan_gen_.1276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 603, i32 26 }
@___asan_gen_.1279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 604, i32 26 }
@___asan_gen_.1282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 605, i32 26 }
@___asan_gen_.1285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 606, i32 26 }
@___asan_gen_.1288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 607, i32 26 }
@___asan_gen_.1291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 608, i32 26 }
@___asan_gen_.1294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 609, i32 26 }
@___asan_gen_.1297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 610, i32 26 }
@___asan_gen_.1300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 612, i32 25 }
@___asan_gen_.1303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 613, i32 24 }
@___asan_gen_.1306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 614, i32 24 }
@___asan_gen_.1309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 615, i32 25 }
@___asan_gen_.1312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 616, i32 25 }
@___asan_gen_.1315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 618, i32 3 }
@___asan_gen_.1318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 619, i32 31 }
@___asan_gen_.1321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 620, i32 3 }
@___asan_gen_.1324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 621, i32 31 }
@___asan_gen_.1327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 622, i32 31 }
@___asan_gen_.1330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 623, i32 30 }
@___asan_gen_.1333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 624, i32 30 }
@___asan_gen_.1336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 625, i32 30 }
@___asan_gen_.1339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 626, i32 3 }
@___asan_gen_.1342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 627, i32 30 }
@___asan_gen_.1345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 628, i32 3 }
@___asan_gen_.1348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 629, i32 30 }
@___asan_gen_.1351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 630, i32 3 }
@___asan_gen_.1354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 631, i32 30 }
@___asan_gen_.1357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 632, i32 3 }
@___asan_gen_.1360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 633, i32 30 }
@___asan_gen_.1363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 634, i32 3 }
@___asan_gen_.1366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 635, i32 30 }
@___asan_gen_.1369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 636, i32 3 }
@___asan_gen_.1372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 637, i32 30 }
@___asan_gen_.1375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 638, i32 3 }
@___asan_gen_.1376 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1377 = private constant [36 x i8] c"../sound/soc/qcom/qdsp6/q6afe-dai.c\00", align 1
@___asan_gen_.1378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1377, i32 639, i32 3 }
@___asan_gen_.1379 = private unnamed_addr constant [32 x i8] c"switch.table.q6tdm_set_tdm_slot\00", align 1
@llvm.compiler.used = appending global [379 x ptr] [ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_q6afe_dai_platform_driver_exit, ptr @__initcall__kmod_q6afe_dai__238_1091_q6afe_dai_platform_driver_init6, ptr @msm_dai_q6_dai_probe._entry, ptr @msm_dai_q6_dai_probe._entry_ptr, ptr @of_q6afe_parse_dai_data._entry, ptr @of_q6afe_parse_dai_data._entry.13, ptr @of_q6afe_parse_dai_data._entry.17, ptr @of_q6afe_parse_dai_data._entry.21, ptr @of_q6afe_parse_dai_data._entry.25, ptr @of_q6afe_parse_dai_data._entry.29, ptr @of_q6afe_parse_dai_data._entry.9, ptr @of_q6afe_parse_dai_data._entry_ptr, ptr @of_q6afe_parse_dai_data._entry_ptr.11, ptr @of_q6afe_parse_dai_data._entry_ptr.15, ptr @of_q6afe_parse_dai_data._entry_ptr.19, ptr @of_q6afe_parse_dai_data._entry_ptr.23, ptr @of_q6afe_parse_dai_data._entry_ptr.27, ptr @of_q6afe_parse_dai_data._entry_ptr.31, ptr @q6afe_dai_platform_driver_exit, ptr @q6afe_dai_prepare._entry, ptr @q6afe_dai_prepare._entry.39, ptr @q6afe_dai_prepare._entry.42, ptr @q6afe_dai_prepare._entry_ptr, ptr @q6afe_dai_prepare._entry_ptr.41, ptr @q6afe_dai_prepare._entry_ptr.44, ptr @q6afe_dai_shutdown._entry, ptr @q6afe_dai_shutdown._entry_ptr, ptr @q6dma_set_channel_map._entry, ptr @q6dma_set_channel_map._entry.74, ptr @q6dma_set_channel_map._entry.76, ptr @q6dma_set_channel_map._entry.78, ptr @q6dma_set_channel_map._entry.80, ptr @q6dma_set_channel_map._entry_ptr, ptr @q6dma_set_channel_map._entry_ptr.75, ptr @q6dma_set_channel_map._entry_ptr.77, ptr @q6dma_set_channel_map._entry_ptr.79, ptr @q6dma_set_channel_map._entry_ptr.81, ptr @q6hdmi_hw_params._entry, ptr @q6hdmi_hw_params._entry_ptr, ptr @q6slim_hw_params._entry, ptr @q6slim_hw_params._entry_ptr, ptr @q6slim_set_channel_map._entry, ptr @q6slim_set_channel_map._entry.47, ptr @q6slim_set_channel_map._entry_ptr, ptr @q6slim_set_channel_map._entry_ptr.49, ptr @q6tdm_set_channel_map._entry, ptr @q6tdm_set_channel_map._entry.62, ptr @q6tdm_set_channel_map._entry.65, ptr @q6tdm_set_channel_map._entry.68, ptr @q6tdm_set_channel_map._entry.71, ptr @q6tdm_set_channel_map._entry_ptr, ptr @q6tdm_set_channel_map._entry_ptr.64, ptr @q6tdm_set_channel_map._entry_ptr.67, ptr @q6tdm_set_channel_map._entry_ptr.70, ptr @q6tdm_set_channel_map._entry_ptr.72, ptr @q6tdm_set_tdm_slot._entry, ptr @q6tdm_set_tdm_slot._entry.54, ptr @q6tdm_set_tdm_slot._entry.57, ptr @q6tdm_set_tdm_slot._entry_ptr, ptr @q6tdm_set_tdm_slot._entry_ptr.56, ptr @q6tdm_set_tdm_slot._entry_ptr.59, ptr @q6afe_dai_platform_driver, ptr @.str, ptr @q6afe_dai_device_id, ptr @q6hdmi_ops, ptr @q6slim_ops, ptr @q6i2s_ops, ptr @q6tdm_ops, ptr @q6dma_ops, ptr @q6afe_dai_component, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.73, ptr @.str.82, ptr @q6afe_dapm_routes, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @q6afe_dai_widgets, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr @.str.333, ptr @.str.334, ptr @.str.335, ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.341, ptr @.str.342, ptr @switch.table.q6tdm_set_tdm_slot], section "llvm.metadata"
@0 = internal global [344 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6afe_dai_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6afe_dai_device_id to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6hdmi_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6slim_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6i2s_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6tdm_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6dma_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6afe_dai_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_q6afe_parse_dai_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_q6afe_parse_dai_data._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_q6afe_parse_dai_data._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_q6afe_parse_dai_data._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_q6afe_parse_dai_data._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_q6afe_parse_dai_data._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_q6afe_parse_dai_data._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dai_q6_dai_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6afe_dai_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6hdmi_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6afe_dai_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6afe_dai_prepare._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6afe_dai_prepare._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6slim_set_channel_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6slim_set_channel_map._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6slim_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6tdm_set_tdm_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6tdm_set_tdm_slot._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6tdm_set_tdm_slot._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6tdm_set_channel_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6tdm_set_channel_map._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6tdm_set_channel_map._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6tdm_set_channel_map._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6tdm_set_channel_map._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6dma_set_channel_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6dma_set_channel_map._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6dma_set_channel_map._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6dma_set_channel_map._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6dma_set_channel_map._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6afe_dapm_routes to i32), i32 6656, i32 8320, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6afe_dai_widgets to i32), i32 23220, i32 29024, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.q6tdm_set_tdm_slot to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @q6afe_dai_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @q6afe_dai_platform_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @q6afe_dai_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @q6afe_dai_platform_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6afe_dai_dev_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %lines.i = alloca [4 x i32], align 4
  %id.i = alloca i32, align 4
  %cfg = alloca %struct.q6dsp_audio_port_dai_driver_config, align 4
  %num_dais = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %cfg) #7
  %0 = getelementptr inbounds %struct.q6dsp_audio_port_dai_driver_config, ptr %cfg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.q6dsp_audio_port_dai_driver_config, ptr %cfg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.q6dsp_audio_port_dai_driver_config, ptr %cfg, i32 0, i32 3
  %3 = getelementptr inbounds %struct.q6dsp_audio_port_dai_driver_config, ptr %cfg, i32 0, i32 4
  %4 = getelementptr inbounds %struct.q6dsp_audio_port_dai_driver_config, ptr %cfg, i32 0, i32 5
  %5 = getelementptr inbounds %struct.q6dsp_audio_port_dai_driver_config, ptr %cfg, i32 0, i32 6
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_dais) #7
  %6 = ptrtoint ptr %num_dais to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %num_dais, align 4, !annotation !695
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 18192, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %8 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node.i, align 8
  %call.i14 = tail call ptr @of_get_next_child(ptr noundef %9, ptr noundef null) #7
  %cmp.not114.i = icmp eq ptr %call.i14, null
  br i1 %cmp.not114.i, label %if.end.of_q6afe_parse_dai_data.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.of_q6afe_parse_dai_data.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_q6afe_parse_dai_data.exit

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %node.0115.i = phi ptr [ %call67.i, %cleanup.i.for.body.i_crit_edge ], [ %call.i14, %if.end.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %lines.i) #7
  %10 = call ptr @memset(ptr %lines.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i) #7
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %id.i, align 4, !annotation !695
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node.0115.i, ptr noundef nonnull @.str.1, ptr noundef nonnull %id.i, i32 noundef 1, i32 noundef 0) #7
  %12 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.body.i.do.end.i_crit_edge

for.body.i.do.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %13 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %14)
  %15 = icmp ugt i32 %14, 128
  br i1 %15, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %for.body.i.do.end.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %12) #10
  br label %cleanup.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %16 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %sw.caserange.i [
    i32 16, label %if.end.i.sw.bb5.i_crit_edge
    i32 17, label %if.end.i.sw.bb5.i_crit_edge15
    i32 18, label %if.end.i.sw.bb5.i_crit_edge16
    i32 19, label %if.end.i.sw.bb5.i_crit_edge17
    i32 20, label %if.end.i.sw.bb5.i_crit_edge18
    i32 21, label %if.end.i.sw.bb5.i_crit_edge19
    i32 22, label %if.end.i.sw.bb5.i_crit_edge20
    i32 23, label %if.end.i.sw.bb5.i_crit_edge21
    i32 127, label %if.end.i.sw.bb5.i_crit_edge22
    i32 128, label %if.end.i.sw.bb5.i_crit_edge23
  ]

if.end.i.sw.bb5.i_crit_edge23:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5.i

if.end.i.sw.bb5.i_crit_edge22:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5.i

if.end.i.sw.bb5.i_crit_edge21:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5.i

if.end.i.sw.bb5.i_crit_edge20:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5.i

if.end.i.sw.bb5.i_crit_edge19:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5.i

if.end.i.sw.bb5.i_crit_edge18:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5.i

if.end.i.sw.bb5.i_crit_edge17:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5.i

if.end.i.sw.bb5.i_crit_edge16:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5.i

if.end.i.sw.bb5.i_crit_edge15:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5.i

if.end.i.sw.bb5.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5.i

sw.bb5.i:                                         ; preds = %if.end.i.sw.bb5.i_crit_edge, %if.end.i.sw.bb5.i_crit_edge15, %if.end.i.sw.bb5.i_crit_edge16, %if.end.i.sw.bb5.i_crit_edge17, %if.end.i.sw.bb5.i_crit_edge18, %if.end.i.sw.bb5.i_crit_edge19, %if.end.i.sw.bb5.i_crit_edge20, %if.end.i.sw.bb5.i_crit_edge21, %if.end.i.sw.bb5.i_crit_edge22, %if.end.i.sw.bb5.i_crit_edge23
  %arrayidx.i = getelementptr %struct.q6afe_dai_data, ptr %call.i, i32 0, i32 3, i32 %14
  %call7.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node.0115.i, ptr noundef nonnull @.str.7, ptr noundef nonnull %lines.i, i32 noundef 0, i32 noundef 4) #7
  %17 = call i32 @llvm.smax.i32(i32 %call7.i, i32 0) #7
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %cmp12111.not.i = icmp slt i32 %call7.i, 1
  br i1 %cmp12111.not.i, label %sw.bb5.i.cleanup.i_crit_edge, label %sw.bb5.i.for.body13.i_crit_edge

sw.bb5.i.for.body13.i_crit_edge:                  ; preds = %sw.bb5.i
  br label %for.body13.i

sw.bb5.i.cleanup.i_crit_edge:                     ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

for.body13.i:                                     ; preds = %for.body13.i.for.body13.i_crit_edge, %sw.bb5.i.for.body13.i_crit_edge
  %or113.i = phi i32 [ %or.i, %for.body13.i.for.body13.i_crit_edge ], [ 0, %sw.bb5.i.for.body13.i_crit_edge ]
  %i.0112.i = phi i32 [ %inc.i, %for.body13.i.for.body13.i_crit_edge ], [ 0, %sw.bb5.i.for.body13.i_crit_edge ]
  %arrayidx14.i = getelementptr [4 x i32], ptr %lines.i, i32 0, i32 %i.0112.i
  %19 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx14.i, align 4
  %shl.i = shl nuw i32 1, %20
  %or.i = or i32 %shl.i, %or113.i
  %inc.i = add nuw nsw i32 %i.0112.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %17
  br i1 %exitcond.not.i, label %for.cond11.cleanup.loopexit_crit_edge.i, label %for.body13.i.for.body13.i_crit_edge

for.body13.i.for.body13.i_crit_edge:              ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body13.i

sw.bb16.i:                                        ; preds = %sw.caserange.i
  %sync_mode.i = getelementptr %struct.q6afe_dai_data, ptr %call.i, i32 0, i32 3, i32 %14, i32 1
  %call.i.i105.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node.0115.i, ptr noundef nonnull @.str.8, ptr noundef %sync_mode.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i105.i)
  %tobool20.not.i = icmp sgt i32 %call.i.i105.i, -1
  br i1 %tobool20.not.i, label %if.end25.i, label %do.end24.i

do.end24.i:                                       ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #10
  br label %cleanup.i

sw.caserange.i:                                   ; preds = %if.end.i
  %21 = add nsw i32 %14, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %21)
  %inbounds.i = icmp ult i32 %21, 80
  br i1 %inbounds.i, label %sw.bb16.i, label %sw.caserange.i.cleanup.i_crit_edge

sw.caserange.i.cleanup.i_crit_edge:               ; preds = %sw.caserange.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end25.i:                                       ; preds = %sw.bb16.i
  %sync_src.i = getelementptr %struct.q6afe_dai_data, ptr %call.i, i32 0, i32 3, i32 %14, i32 2
  %call.i.i106.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node.0115.i, ptr noundef nonnull @.str.12, ptr noundef %sync_src.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i106.i)
  %tobool27.not.i = icmp sgt i32 %call.i.i106.i, -1
  br i1 %tobool27.not.i, label %if.end32.i, label %do.end31.i

do.end31.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #10
  br label %cleanup.i

if.end32.i:                                       ; preds = %if.end25.i
  %data_out_enable.i = getelementptr %struct.q6afe_dai_data, ptr %call.i, i32 0, i32 3, i32 %14, i32 3
  %call.i.i107.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node.0115.i, ptr noundef nonnull @.str.16, ptr noundef %data_out_enable.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i107.i)
  %tobool34.not.i = icmp sgt i32 %call.i.i107.i, -1
  br i1 %tobool34.not.i, label %if.end39.i, label %do.end38.i

do.end38.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #10
  br label %cleanup.i

if.end39.i:                                       ; preds = %if.end32.i
  %invert_sync.i = getelementptr %struct.q6afe_dai_data, ptr %call.i, i32 0, i32 3, i32 %14, i32 4
  %call.i.i108.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node.0115.i, ptr noundef nonnull @.str.20, ptr noundef %invert_sync.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i108.i)
  %tobool41.not.i = icmp sgt i32 %call.i.i108.i, -1
  br i1 %tobool41.not.i, label %if.end46.i, label %do.end45.i

do.end45.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #10
  br label %cleanup.i

if.end46.i:                                       ; preds = %if.end39.i
  %data_delay.i = getelementptr %struct.q6afe_dai_data, ptr %call.i, i32 0, i32 3, i32 %14, i32 5
  %call.i.i109.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node.0115.i, ptr noundef nonnull @.str.24, ptr noundef %data_delay.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i109.i)
  %tobool48.not.i = icmp sgt i32 %call.i.i109.i, -1
  br i1 %tobool48.not.i, label %if.end53.i, label %do.end52.i

do.end52.i:                                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26) #10
  br label %cleanup.i

if.end53.i:                                       ; preds = %if.end46.i
  %data_align.i = getelementptr %struct.q6afe_dai_data, ptr %call.i, i32 0, i32 3, i32 %14, i32 6
  %call.i.i110.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node.0115.i, ptr noundef nonnull @.str.28, ptr noundef %data_align.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i110.i)
  %tobool55.not.i = icmp sgt i32 %call.i.i110.i, -1
  br i1 %tobool55.not.i, label %if.end53.i.cleanup.i_crit_edge, label %do.end59.i

if.end53.i.cleanup.i_crit_edge:                   ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

do.end59.i:                                       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30) #10
  br label %cleanup.i

for.cond11.cleanup.loopexit_crit_edge.i:          ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or.i, ptr %arrayidx.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %for.cond11.cleanup.loopexit_crit_edge.i, %do.end59.i, %if.end53.i.cleanup.i_crit_edge, %do.end52.i, %do.end45.i, %do.end38.i, %do.end31.i, %sw.caserange.i.cleanup.i_crit_edge, %do.end24.i, %sw.bb5.i.cleanup.i_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %lines.i) #7
  %23 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node.i, align 8
  %call67.i = call ptr @of_get_next_child(ptr noundef %24, ptr noundef nonnull %node.0115.i) #7
  %cmp.not.i = icmp eq ptr %call67.i, null
  br i1 %cmp.not.i, label %cleanup.i.of_q6afe_parse_dai_data.exit_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cleanup.i.of_q6afe_parse_dai_data.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_q6afe_parse_dai_data.exit

of_q6afe_parse_dai_data.exit:                     ; preds = %cleanup.i.of_q6afe_parse_dai_data.exit_crit_edge, %if.end.of_q6afe_parse_dai_data.exit_crit_edge
  %25 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @msm_dai_q6_dai_probe, ptr %cfg, align 4
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @msm_dai_q6_dai_remove, ptr %0, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @q6hdmi_ops, ptr %1, align 4
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @q6slim_ops, ptr %2, align 4
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @q6i2s_ops, ptr %3, align 4
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @q6tdm_ops, ptr %4, align 4
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @q6dma_ops, ptr %5, align 4
  %call2 = call ptr @q6dsp_audio_ports_set_config(ptr noundef %dev1, ptr noundef nonnull %cfg, ptr noundef nonnull %num_dais) #7
  %32 = ptrtoint ptr %num_dais to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_dais, align 4
  %call3 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @q6afe_dai_component, ptr noundef %call2, i32 noundef %33) #7
  br label %cleanup

cleanup:                                          ; preds = %of_q6afe_parse_dai_data.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %of_q6afe_parse_dai_data.exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_dais) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %cfg) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_dai_q6_dai_probe(ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %call2 = tail call ptr @q6afe_port_get_from_id(ptr noundef %1, i32 noundef %5) #7
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.32) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %arrayidx = getelementptr [129 x ptr], ptr %3, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call2, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_dai_q6_dai_remove(ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %arrayidx = getelementptr [129 x ptr], ptr %3, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @q6afe_port_put(ptr noundef %7) #7
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %arrayidx3 = getelementptr [129 x ptr], ptr %3, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx3, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @q6dsp_audio_ports_set_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @q6afe_port_get_from_id(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @q6afe_port_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @q6afe_dai_shutdown(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 2, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1, !range !696
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx2 = getelementptr [129 x ptr], ptr %3, i32 0, i32 %5
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  %call3 = tail call i32 @q6afe_port_stop(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.34, i32 noundef %call3) #10
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  %arrayidx9 = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 2, i32 %13
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx9, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6hdmi_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %7
  %arrayidx.i.i38 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i38 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i38, align 4
  %sample_rate = getelementptr inbounds %struct.q6afe_hdmi_cfg, ptr %arrayidx, i32 0, i32 2
  %10 = ptrtoint ptr %sample_rate to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %sample_rate, align 4
  %arrayidx.i.i39 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx.i.i39 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.params_format.exit_crit_edge

entry.params_format.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.1.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.sw.epilog_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit

for.inc.i.i.sw.epilog_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %entry.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %12, %entry.params_format.exit_crit_edge ], [ %14, %for.inc.i.i.params_format.exit_crit_edge ]
  %15 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #7, !range !697
  %add.i.i = or i32 %15, %i.09.lcssa.i.i
  %16 = zext i32 %add.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.343)
  switch i32 %add.i.i, label %params_format.exit.sw.epilog_crit_edge [
    i32 2, label %params_format.exit.sw.epilog.sink.split_crit_edge
    i32 6, label %sw.bb5
  ]

params_format.exit.sw.epilog.sink.split_crit_edge: ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

params_format.exit.sw.epilog_crit_edge:           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb5, %params_format.exit.sw.epilog.sink.split_crit_edge
  %.sink = phi i16 [ 24, %sw.bb5 ], [ 16, %params_format.exit.sw.epilog.sink.split_crit_edge ]
  %bit_width6 = getelementptr inbounds %struct.q6afe_hdmi_cfg, ptr %arrayidx, i32 0, i32 3
  %17 = ptrtoint ptr %bit_width6 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %.sink, ptr %bit_width6, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %params_format.exit.sw.epilog_crit_edge, %for.inc.i.i.sw.epilog_crit_edge
  %18 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.344)
  switch i32 %5, label %do.end [
    i32 2, label %sw.bb7
    i32 3, label %sw.bb8
    i32 4, label %sw.bb10
    i32 5, label %sw.bb12
    i32 6, label %sw.bb14
    i32 7, label %sw.bb16
    i32 8, label %sw.bb18
  ]

sw.bb7:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %channel_allocation = getelementptr inbounds %struct.q6afe_hdmi_cfg, ptr %arrayidx, i32 0, i32 1
  %19 = ptrtoint ptr %channel_allocation to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %channel_allocation, align 2
  br label %cleanup

sw.bb8:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %channel_allocation9 = getelementptr inbounds %struct.q6afe_hdmi_cfg, ptr %arrayidx, i32 0, i32 1
  %20 = ptrtoint ptr %channel_allocation9 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %channel_allocation9, align 2
  br label %cleanup

sw.bb10:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %channel_allocation11 = getelementptr inbounds %struct.q6afe_hdmi_cfg, ptr %arrayidx, i32 0, i32 1
  %21 = ptrtoint ptr %channel_allocation11 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 6, ptr %channel_allocation11, align 2
  br label %cleanup

sw.bb12:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %channel_allocation13 = getelementptr inbounds %struct.q6afe_hdmi_cfg, ptr %arrayidx, i32 0, i32 1
  %22 = ptrtoint ptr %channel_allocation13 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 10, ptr %channel_allocation13, align 2
  br label %cleanup

sw.bb14:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %channel_allocation15 = getelementptr inbounds %struct.q6afe_hdmi_cfg, ptr %arrayidx, i32 0, i32 1
  %23 = ptrtoint ptr %channel_allocation15 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 11, ptr %channel_allocation15, align 2
  br label %cleanup

sw.bb16:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %channel_allocation17 = getelementptr inbounds %struct.q6afe_hdmi_cfg, ptr %arrayidx, i32 0, i32 1
  %24 = ptrtoint ptr %channel_allocation17 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 18, ptr %channel_allocation17, align 2
  br label %cleanup

sw.bb18:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %channel_allocation19 = getelementptr inbounds %struct.q6afe_hdmi_cfg, ptr %arrayidx, i32 0, i32 1
  %25 = ptrtoint ptr %channel_allocation19 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 19, ptr %channel_allocation19, align 2
  br label %cleanup

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.36, i32 noundef %5) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb7
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb18 ], [ 0, %sw.bb16 ], [ 0, %sw.bb14 ], [ 0, %sw.bb12 ], [ 0, %sw.bb10 ], [ 0, %sw.bb8 ], [ 0, %sw.bb7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6afe_dai_prepare(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 2, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1, !range !696
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %entry
  %arrayidx2 = getelementptr [129 x ptr], ptr %3, i32 0, i32 %5
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  %call3 = tail call i32 @q6afe_port_stop(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end6thread-pre-split

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.34, i32 noundef %call3) #10
  br label %cleanup

if.end6thread-pre-split:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %id, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end6thread-pre-split, %entry.if.end6_crit_edge
  %13 = phi i32 [ %.pr, %if.end6thread-pre-split ], [ %5, %entry.if.end6_crit_edge ]
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.345)
  switch i32 %13, label %sw.caserange [
    i32 1, label %if.end6.sw.bb_crit_edge
    i32 104, label %if.end6.sw.bb_crit_edge106
    i32 2, label %if.end6.sw.bb13_crit_edge
    i32 3, label %if.end6.sw.bb13_crit_edge107
    i32 4, label %if.end6.sw.bb13_crit_edge108
    i32 5, label %if.end6.sw.bb13_crit_edge109
    i32 6, label %if.end6.sw.bb13_crit_edge110
    i32 7, label %if.end6.sw.bb13_crit_edge111
    i32 8, label %if.end6.sw.bb13_crit_edge112
    i32 9, label %if.end6.sw.bb13_crit_edge113
    i32 10, label %if.end6.sw.bb13_crit_edge114
    i32 11, label %if.end6.sw.bb13_crit_edge115
    i32 12, label %if.end6.sw.bb13_crit_edge116
    i32 13, label %if.end6.sw.bb13_crit_edge117
    i32 14, label %if.end6.sw.bb13_crit_edge118
    i32 15, label %if.end6.sw.bb13_crit_edge119
    i32 16, label %if.end6.sw.bb21_crit_edge
    i32 17, label %if.end6.sw.bb21_crit_edge120
    i32 18, label %if.end6.sw.bb21_crit_edge121
    i32 19, label %if.end6.sw.bb21_crit_edge122
    i32 20, label %if.end6.sw.bb21_crit_edge123
    i32 21, label %if.end6.sw.bb21_crit_edge124
    i32 22, label %if.end6.sw.bb21_crit_edge125
    i32 23, label %if.end6.sw.bb21_crit_edge126
    i32 127, label %if.end6.sw.bb21_crit_edge127
    i32 128, label %if.end6.sw.bb21_crit_edge128
    i32 105, label %if.end6.sw.bb44_crit_edge
    i32 106, label %if.end6.sw.bb44_crit_edge129
    i32 107, label %if.end6.sw.bb44_crit_edge130
    i32 108, label %if.end6.sw.bb44_crit_edge131
    i32 109, label %if.end6.sw.bb44_crit_edge132
    i32 110, label %if.end6.sw.bb44_crit_edge133
    i32 111, label %if.end6.sw.bb44_crit_edge134
    i32 112, label %if.end6.sw.bb44_crit_edge135
    i32 113, label %if.end6.sw.bb44_crit_edge136
    i32 114, label %if.end6.sw.bb44_crit_edge137
    i32 115, label %if.end6.sw.bb44_crit_edge138
    i32 116, label %if.end6.sw.bb44_crit_edge139
    i32 117, label %if.end6.sw.bb44_crit_edge140
    i32 118, label %if.end6.sw.bb44_crit_edge141
    i32 119, label %if.end6.sw.bb44_crit_edge142
    i32 120, label %if.end6.sw.bb44_crit_edge143
    i32 121, label %if.end6.sw.bb44_crit_edge144
    i32 122, label %if.end6.sw.bb44_crit_edge145
    i32 123, label %if.end6.sw.bb44_crit_edge146
    i32 124, label %if.end6.sw.bb44_crit_edge147
    i32 125, label %if.end6.sw.bb44_crit_edge148
    i32 126, label %if.end6.sw.bb44_crit_edge149
  ]

if.end6.sw.bb44_crit_edge149:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end6.sw.bb44_crit_edge148:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end6.sw.bb44_crit_edge147:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end6.sw.bb44_crit_edge146:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end6.sw.bb44_crit_edge145:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end6.sw.bb44_crit_edge144:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end6.sw.bb44_crit_edge143:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end6.sw.bb44_crit_edge142:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end6.sw.bb44_crit_edge141:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end6.sw.bb44_crit_edge140:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end6.sw.bb44_crit_edge139:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end6.sw.bb44_crit_edge138:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end6.sw.bb44_crit_edge137:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end6.sw.bb44_crit_edge136:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end6.sw.bb44_crit_edge135:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end6.sw.bb44_crit_edge134:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end6.sw.bb44_crit_edge133:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end6.sw.bb44_crit_edge132:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end6.sw.bb44_crit_edge131:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end6.sw.bb44_crit_edge130:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end6.sw.bb44_crit_edge129:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end6.sw.bb44_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end6.sw.bb21_crit_edge128:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

if.end6.sw.bb21_crit_edge127:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

if.end6.sw.bb21_crit_edge126:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

if.end6.sw.bb21_crit_edge125:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

if.end6.sw.bb21_crit_edge124:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

if.end6.sw.bb21_crit_edge123:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

if.end6.sw.bb21_crit_edge122:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

if.end6.sw.bb21_crit_edge121:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

if.end6.sw.bb21_crit_edge120:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

if.end6.sw.bb21_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

if.end6.sw.bb13_crit_edge119:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end6.sw.bb13_crit_edge118:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end6.sw.bb13_crit_edge117:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end6.sw.bb13_crit_edge116:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end6.sw.bb13_crit_edge115:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end6.sw.bb13_crit_edge114:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end6.sw.bb13_crit_edge113:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end6.sw.bb13_crit_edge112:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end6.sw.bb13_crit_edge111:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end6.sw.bb13_crit_edge110:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end6.sw.bb13_crit_edge109:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end6.sw.bb13_crit_edge108:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end6.sw.bb13_crit_edge107:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end6.sw.bb13_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end6.sw.bb_crit_edge106:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end6.sw.bb_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %if.end6.sw.bb_crit_edge, %if.end6.sw.bb_crit_edge106
  %arrayidx10 = getelementptr [129 x ptr], ptr %3, i32 0, i32 %13
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %13
  tail call void @q6afe_hdmi_port_prepare(ptr noundef %16, ptr noundef %arrayidx12) #7
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end6.sw.bb13_crit_edge, %if.end6.sw.bb13_crit_edge107, %if.end6.sw.bb13_crit_edge108, %if.end6.sw.bb13_crit_edge109, %if.end6.sw.bb13_crit_edge110, %if.end6.sw.bb13_crit_edge111, %if.end6.sw.bb13_crit_edge112, %if.end6.sw.bb13_crit_edge113, %if.end6.sw.bb13_crit_edge114, %if.end6.sw.bb13_crit_edge115, %if.end6.sw.bb13_crit_edge116, %if.end6.sw.bb13_crit_edge117, %if.end6.sw.bb13_crit_edge118, %if.end6.sw.bb13_crit_edge119
  %arrayidx16 = getelementptr [129 x ptr], ptr %3, i32 0, i32 %13
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx16, align 4
  %slim = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %13, i32 1
  tail call void @q6afe_slim_port_prepare(ptr noundef %18, ptr noundef %slim) #7
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end6.sw.bb21_crit_edge, %if.end6.sw.bb21_crit_edge120, %if.end6.sw.bb21_crit_edge121, %if.end6.sw.bb21_crit_edge122, %if.end6.sw.bb21_crit_edge123, %if.end6.sw.bb21_crit_edge124, %if.end6.sw.bb21_crit_edge125, %if.end6.sw.bb21_crit_edge126, %if.end6.sw.bb21_crit_edge127, %if.end6.sw.bb21_crit_edge128
  %arrayidx24 = getelementptr [129 x ptr], ptr %3, i32 0, i32 %13
  %19 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx24, align 4
  %i2s_cfg = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %13, i32 2
  %call28 = tail call i32 @q6afe_i2s_port_prepare(ptr noundef %20, ptr noundef %i2s_cfg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end33, label %sw.bb21.sw.epilog_crit_edge

sw.bb21.sw.epilog_crit_edge:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end33:                                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.40, i32 noundef %24) #10
  br label %cleanup

sw.bb37:                                          ; preds = %sw.caserange
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx40 = getelementptr [129 x ptr], ptr %3, i32 0, i32 %13
  %25 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx40, align 4
  %tdm = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %13, i32 3
  tail call void @q6afe_tdm_port_prepare(ptr noundef %26, ptr noundef %tdm) #7
  br label %sw.epilog

sw.caserange:                                     ; preds = %if.end6
  %27 = add i32 %13, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %27)
  %inbounds = icmp ult i32 %27, 80
  br i1 %inbounds, label %sw.bb37, label %sw.caserange.cleanup_crit_edge

sw.caserange.cleanup_crit_edge:                   ; preds = %sw.caserange
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb44:                                          ; preds = %if.end6.sw.bb44_crit_edge, %if.end6.sw.bb44_crit_edge129, %if.end6.sw.bb44_crit_edge130, %if.end6.sw.bb44_crit_edge131, %if.end6.sw.bb44_crit_edge132, %if.end6.sw.bb44_crit_edge133, %if.end6.sw.bb44_crit_edge134, %if.end6.sw.bb44_crit_edge135, %if.end6.sw.bb44_crit_edge136, %if.end6.sw.bb44_crit_edge137, %if.end6.sw.bb44_crit_edge138, %if.end6.sw.bb44_crit_edge139, %if.end6.sw.bb44_crit_edge140, %if.end6.sw.bb44_crit_edge141, %if.end6.sw.bb44_crit_edge142, %if.end6.sw.bb44_crit_edge143, %if.end6.sw.bb44_crit_edge144, %if.end6.sw.bb44_crit_edge145, %if.end6.sw.bb44_crit_edge146, %if.end6.sw.bb44_crit_edge147, %if.end6.sw.bb44_crit_edge148, %if.end6.sw.bb44_crit_edge149
  %arrayidx47 = getelementptr [129 x ptr], ptr %3, i32 0, i32 %13
  %28 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx47, align 4
  %dma_cfg = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %13, i32 4
  tail call void @q6afe_cdc_dma_port_prepare(ptr noundef %29, ptr noundef %dma_cfg) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb44, %sw.bb37, %sw.bb21.sw.epilog_crit_edge, %sw.bb13, %sw.bb
  %30 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id, align 4
  %arrayidx53 = getelementptr [129 x ptr], ptr %3, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx53, align 4
  %call54 = tail call i32 @q6afe_port_start(ptr noundef %33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %do.end59, label %if.end62

do.end59:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %36 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.43, i32 noundef %37) #10
  br label %cleanup

if.end62:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id, align 4
  %arrayidx65 = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 2, i32 %39
  %40 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %arrayidx65, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %do.end59, %sw.caserange.cleanup_crit_edge, %do.end33, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ %call54, %do.end59 ], [ 0, %if.end62 ], [ %call28, %do.end33 ], [ -22, %sw.caserange.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6afe_port_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @q6afe_hdmi_port_prepare(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @q6afe_slim_port_prepare(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6afe_i2s_port_prepare(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @q6afe_tdm_port_prepare(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @q6afe_cdc_dma_port_prepare(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6afe_port_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6slim_set_channel_map(ptr nocapture noundef readonly %dai, i32 noundef %tx_num, ptr noundef readonly %tx_slot, i32 noundef %rx_num, ptr noundef readonly %rx_slot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %tobool2.not = icmp eq ptr %tx_slot, null
  br i1 %tobool2.not, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_num)
  %cmp51.not = icmp eq i32 %tx_num, 0
  br i1 %cmp51.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46) #10
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.052 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx5 = getelementptr i32, ptr %tx_slot, i32 %i.052
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5, align 4
  %conv = trunc i32 %7 to i8
  %arrayidx6 = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 1, i32 4, i32 %i.052
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %arrayidx6, align 1
  %inc = add nuw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc, %tx_num
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %conv7 = trunc i32 %tx_num to i16
  %num_channels = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 1, i32 3
  %9 = ptrtoint ptr %num_channels to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv7, ptr %num_channels, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %tobool9.not = icmp eq ptr %rx_slot, null
  br i1 %tobool9.not, label %do.end13, label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_num)
  %cmp1853.not = icmp eq i32 %rx_num, 0
  br i1 %cmp1853.not, label %for.cond17.preheader.for.end28_crit_edge, label %for.cond17.preheader.for.body20_crit_edge

for.cond17.preheader.for.body20_crit_edge:        ; preds = %for.cond17.preheader
  br label %for.body20

for.cond17.preheader.for.end28_crit_edge:         ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end28

do.end13:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.46) #10
  br label %cleanup

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %for.cond17.preheader.for.body20_crit_edge
  %i.154 = phi i32 [ %inc27, %for.body20.for.body20_crit_edge ], [ 0, %for.cond17.preheader.for.body20_crit_edge ]
  %arrayidx21 = getelementptr i32, ptr %rx_slot, i32 %i.154
  %10 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx21, align 4
  %conv22 = trunc i32 %11 to i8
  %arrayidx25 = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 1, i32 4, i32 %i.154
  %12 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv22, ptr %arrayidx25, align 1
  %inc27 = add nuw i32 %i.154, 1
  %exitcond55.not = icmp eq i32 %inc27, %rx_num
  br i1 %exitcond55.not, label %for.body20.for.end28_crit_edge, label %for.body20.for.body20_crit_edge

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body20

for.body20.for.end28_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end28

for.end28:                                        ; preds = %for.body20.for.end28_crit_edge, %for.cond17.preheader.for.end28_crit_edge
  %conv29 = trunc i32 %rx_num to i16
  %num_channels31 = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 1, i32 3
  %13 = ptrtoint ptr %num_channels31 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv29, ptr %num_channels31, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end28, %do.end13, %for.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end13 ], [ 0, %for.end28 ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6slim_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %slim1 = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 1
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %8 = ptrtoint ptr %slim1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %slim1, align 4
  %arrayidx.i.i17 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx.i.i17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.params_format.exit_crit_edge

entry.params_format.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.1.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.for.inc.i.i26_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit

for.inc.i.i.for.inc.i.i26_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i26

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %entry.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %10, %entry.params_format.exit_crit_edge ], [ %12, %for.inc.i.i.params_format.exit_crit_edge ]
  %13 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #7, !range !697
  %add.i.i = or i32 %13, %i.09.lcssa.i.i
  %14 = zext i32 %add.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.346)
  switch i32 %add.i.i, label %do.end [
    i32 2, label %params_format.exit.sw.bb_crit_edge
    i32 31, label %params_format.exit.sw.bb_crit_edge30
    i32 6, label %sw.bb4
    i32 10, label %sw.bb6
  ]

params_format.exit.sw.bb_crit_edge30:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

params_format.exit.sw.bb_crit_edge:               ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %params_format.exit.sw.bb_crit_edge, %params_format.exit.sw.bb_crit_edge30
  %bit_width = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 1, i32 1
  %15 = ptrtoint ptr %bit_width to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 16, ptr %bit_width, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  %bit_width5 = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 1, i32 1
  %16 = ptrtoint ptr %bit_width5 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 24, ptr %bit_width5, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  %bit_width7 = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 1, i32 1
  %17 = ptrtoint ptr %bit_width7 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 32, ptr %bit_width7, align 4
  br label %cleanup

do.end:                                           ; preds = %params_format.exit
  br i1 %tobool.not.i.i, label %do.end.for.inc.i.i26_crit_edge, label %do.end.if.then.i.i23_crit_edge

do.end.if.then.i.i23_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i23

do.end.for.inc.i.i26_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i26

if.then.i.i23:                                    ; preds = %for.inc.i.i26.if.then.i.i23_crit_edge, %do.end.if.then.i.i23_crit_edge
  %i.09.lcssa.i.i20 = phi i32 [ 0, %do.end.if.then.i.i23_crit_edge ], [ 32, %for.inc.i.i26.if.then.i.i23_crit_edge ]
  %.lcssa.i.i21 = phi i32 [ %10, %do.end.if.then.i.i23_crit_edge ], [ %20, %for.inc.i.i26.if.then.i.i23_crit_edge ]
  %18 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i21, i1 true) #7, !range !697
  %add.i.i22 = or i32 %18, %i.09.lcssa.i.i20
  br label %params_format.exit28

for.inc.i.i26:                                    ; preds = %do.end.for.inc.i.i26_crit_edge, %for.inc.i.i.for.inc.i.i26_crit_edge
  %arrayidx.1.i.i24 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx.1.i.i24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.1.i.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.1.i.i25 = icmp eq i32 %20, 0
  br i1 %tobool.not.1.i.i25, label %for.inc.i.i26.params_format.exit28_crit_edge, label %for.inc.i.i26.if.then.i.i23_crit_edge

for.inc.i.i26.if.then.i.i23_crit_edge:            ; preds = %for.inc.i.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i23

for.inc.i.i26.params_format.exit28_crit_edge:     ; preds = %for.inc.i.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit28

params_format.exit28:                             ; preds = %for.inc.i.i26.params_format.exit28_crit_edge, %if.then.i.i23
  %retval.0.i.i27 = phi i32 [ %add.i.i22, %if.then.i.i23 ], [ 0, %for.inc.i.i26.params_format.exit28_crit_edge ]
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef %retval.0.i.i27) #10
  br label %cleanup

cleanup:                                          ; preds = %params_format.exit28, %sw.bb6, %sw.bb4, %sw.bb
  %retval.0 = phi i32 [ -22, %params_format.exit28 ], [ 0, %sw.bb6 ], [ 0, %sw.bb4 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6afe_mi2s_set_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %arrayidx = getelementptr [129 x ptr], ptr %3, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = zext i32 %clk_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.347)
  switch i32 %clk_id, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %entry.sw.bb3_crit_edge
    i32 3, label %entry.sw.bb3_crit_edge26
    i32 777, label %entry.sw.bb7_crit_edge
    i32 778, label %entry.sw.bb7_crit_edge27
    i32 779, label %entry.sw.bb7_crit_edge28
    i32 780, label %entry.sw.bb7_crit_edge29
    i32 781, label %entry.sw.bb7_crit_edge30
    i32 782, label %entry.sw.bb7_crit_edge31
    i32 783, label %entry.sw.bb7_crit_edge32
    i32 784, label %entry.sw.bb7_crit_edge33
    i32 768, label %entry.sw.bb7_crit_edge34
    i32 769, label %entry.sw.bb7_crit_edge35
    i32 770, label %entry.sw.bb7_crit_edge36
    i32 771, label %entry.sw.bb7_crit_edge37
    i32 772, label %entry.sw.bb7_crit_edge38
    i32 773, label %entry.sw.bb7_crit_edge39
    i32 774, label %entry.sw.bb7_crit_edge40
    i32 256, label %entry.sw.bb7_crit_edge41
    i32 257, label %entry.sw.bb7_crit_edge42
    i32 258, label %entry.sw.bb7_crit_edge43
    i32 259, label %entry.sw.bb7_crit_edge44
    i32 260, label %entry.sw.bb7_crit_edge45
    i32 261, label %entry.sw.bb7_crit_edge46
    i32 262, label %entry.sw.bb7_crit_edge47
    i32 263, label %entry.sw.bb7_crit_edge48
    i32 264, label %entry.sw.bb7_crit_edge49
    i32 265, label %entry.sw.bb7_crit_edge50
    i32 266, label %entry.sw.bb7_crit_edge51
    i32 267, label %entry.sw.bb7_crit_edge52
    i32 268, label %entry.sw.bb7_crit_edge53
    i32 269, label %entry.sw.bb7_crit_edge54
    i32 270, label %entry.sw.bb7_crit_edge55
    i32 271, label %entry.sw.bb7_crit_edge56
    i32 272, label %entry.sw.bb7_crit_edge57
    i32 273, label %entry.sw.bb7_crit_edge58
    i32 274, label %entry.sw.bb7_crit_edge59
    i32 275, label %entry.sw.bb7_crit_edge60
    i32 276, label %entry.sw.bb7_crit_edge61
    i32 277, label %entry.sw.bb7_crit_edge62
    i32 278, label %entry.sw.bb7_crit_edge63
    i32 512, label %entry.sw.bb9_crit_edge
    i32 513, label %entry.sw.bb9_crit_edge64
    i32 514, label %entry.sw.bb9_crit_edge65
    i32 515, label %entry.sw.bb9_crit_edge66
    i32 516, label %entry.sw.bb9_crit_edge67
    i32 517, label %entry.sw.bb9_crit_edge68
    i32 518, label %entry.sw.bb9_crit_edge69
    i32 519, label %entry.sw.bb9_crit_edge70
    i32 520, label %entry.sw.bb9_crit_edge71
    i32 521, label %entry.sw.bb9_crit_edge72
  ]

entry.sw.bb9_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

entry.sw.bb9_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

entry.sw.bb9_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

entry.sw.bb9_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

entry.sw.bb9_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

entry.sw.bb9_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

entry.sw.bb9_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

entry.sw.bb9_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

entry.sw.bb9_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

entry.sw.bb7_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb3_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @q6afe_port_set_sysclk(ptr noundef %7, i32 noundef 1, i32 noundef 0, i32 noundef 5, i32 noundef %freq, i32 noundef %dir) #7
  br label %cleanup

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge26
  %call4 = tail call i32 @q6afe_port_set_sysclk(ptr noundef %7, i32 noundef %clk_id, i32 noundef 1, i32 noundef 0, i32 noundef %freq, i32 noundef %dir) #7
  br label %cleanup

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge27, %entry.sw.bb7_crit_edge28, %entry.sw.bb7_crit_edge29, %entry.sw.bb7_crit_edge30, %entry.sw.bb7_crit_edge31, %entry.sw.bb7_crit_edge32, %entry.sw.bb7_crit_edge33, %entry.sw.bb7_crit_edge34, %entry.sw.bb7_crit_edge35, %entry.sw.bb7_crit_edge36, %entry.sw.bb7_crit_edge37, %entry.sw.bb7_crit_edge38, %entry.sw.bb7_crit_edge39, %entry.sw.bb7_crit_edge40, %entry.sw.bb7_crit_edge41, %entry.sw.bb7_crit_edge42, %entry.sw.bb7_crit_edge43, %entry.sw.bb7_crit_edge44, %entry.sw.bb7_crit_edge45, %entry.sw.bb7_crit_edge46, %entry.sw.bb7_crit_edge47, %entry.sw.bb7_crit_edge48, %entry.sw.bb7_crit_edge49, %entry.sw.bb7_crit_edge50, %entry.sw.bb7_crit_edge51, %entry.sw.bb7_crit_edge52, %entry.sw.bb7_crit_edge53, %entry.sw.bb7_crit_edge54, %entry.sw.bb7_crit_edge55, %entry.sw.bb7_crit_edge56, %entry.sw.bb7_crit_edge57, %entry.sw.bb7_crit_edge58, %entry.sw.bb7_crit_edge59, %entry.sw.bb7_crit_edge60, %entry.sw.bb7_crit_edge61, %entry.sw.bb7_crit_edge62, %entry.sw.bb7_crit_edge63
  %call8 = tail call i32 @q6afe_port_set_sysclk(ptr noundef %7, i32 noundef %clk_id, i32 noundef 1, i32 noundef 0, i32 noundef %freq, i32 noundef %dir) #7
  br label %cleanup

sw.bb9:                                           ; preds = %entry.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge64, %entry.sw.bb9_crit_edge65, %entry.sw.bb9_crit_edge66, %entry.sw.bb9_crit_edge67, %entry.sw.bb9_crit_edge68, %entry.sw.bb9_crit_edge69, %entry.sw.bb9_crit_edge70, %entry.sw.bb9_crit_edge71, %entry.sw.bb9_crit_edge72
  %call10 = tail call i32 @q6afe_port_set_sysclk(ptr noundef %7, i32 noundef %clk_id, i32 noundef 4, i32 noundef 0, i32 noundef %freq, i32 noundef %dir) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb9, %sw.bb7, %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %sw.bb9 ], [ %call8, %sw.bb7 ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @q6i2s_set_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %fmt1 = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 2, i32 5
  %6 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %fmt, ptr %fmt1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6i2s_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %i2s_cfg = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 2
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %8 = ptrtoint ptr %i2s_cfg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %i2s_cfg, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %10, %entry.if.then.i.i.i_crit_edge ], [ %13, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %11 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #7, !range !697
  %add.i.i.i = or i32 %11, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.1.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #7
  %conv = trunc i32 %call1.i to i16
  %bit_width = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 2, i32 1
  %14 = ptrtoint ptr %bit_width to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv, ptr %bit_width, align 4
  %arrayidx.i.i16 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %arrayidx.i.i16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i16, align 4
  %conv4 = trunc i32 %16 to i16
  %num_channels = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 2, i32 3
  %17 = ptrtoint ptr %num_channels to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv4, ptr %num_channels, align 4
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  %arrayidx6 = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 3, i32 %19
  %20 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx6, align 4
  %sd_line_mask7 = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 2, i32 4
  %22 = ptrtoint ptr %sd_line_mask7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %sd_line_mask7, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6afe_port_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6tdm_set_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %6 = zext i32 %slot_width to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.348)
  switch i32 %slot_width, label %do.end [
    i32 16, label %entry.if.end_crit_edge
    i32 32, label %entry.if.end_crit_edge42
  ]

entry.if.end_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef %slot_width) #10
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge42
  %7 = add i32 %slots, -2
  %8 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %9 = icmp ult i32 %8, 8
  br i1 %9, label %switch.hole_check, label %if.end.do.end9_crit_edge

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.end9:                                          ; preds = %switch.hole_check.do.end9_crit_edge, %if.end.do.end9_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53, i32 noundef %slots) #10
  br label %cleanup

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %8 to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %10 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %switch.lobit.not = icmp eq i8 %10, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end9_crit_edge, label %switch.lookup

switch.hole_check.do.end9_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

switch.lookup:                                    ; preds = %switch.hole_check
  %11 = add i32 %5, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %11)
  %inbounds = icmp ult i32 %11, 80
  br i1 %inbounds, label %sw.bb12, label %do.end21

sw.bb12:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.q6tdm_set_tdm_slot, i32 0, i32 %8
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  %conv = trunc i32 %slots to i16
  %nslots_per_frame = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 3, i32 6
  %13 = ptrtoint ptr %nslots_per_frame to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv, ptr %nslots_per_frame, align 4
  %conv13 = trunc i32 %slot_width to i16
  %slot_width14 = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 3, i32 7
  %14 = ptrtoint ptr %slot_width14 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv13, ptr %slot_width14, align 2
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 4
  %and = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %rx_mask.tx_mask = select i1 %tobool.not, i32 %rx_mask, i32 %tx_mask
  %and16 = and i32 %rx_mask.tx_mask, %switch.load
  %conv17 = trunc i32 %and16 to i16
  %slot_mask = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 3, i32 8
  %17 = ptrtoint ptr %slot_mask to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv17, ptr %slot_mask, align 4
  br label %cleanup

do.end21:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.53, i32 noundef %5) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %sw.bb12, %do.end9, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end9 ], [ 0, %sw.bb12 ], [ -22, %do.end21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6tdm_set_channel_map(ptr nocapture noundef readonly %dai, i32 noundef %tx_num, ptr noundef readonly %tx_slot, i32 noundef %rx_num, ptr noundef readonly %rx_slot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %tdm1 = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 3
  %6 = add i32 %5, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %6)
  %inbounds = icmp ult i32 %6, 80
  br i1 %inbounds, label %sw.bb, label %do.end66

sw.bb:                                            ; preds = %entry
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  %tobool4.not = icmp eq ptr %tx_slot, null
  br i1 %tobool4.not, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.60) #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %tx_num)
  %cmp = icmp ugt i32 %tx_num, 8
  br i1 %cmp, label %do.end10, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_num)
  %cmp13110.not = icmp eq i32 %tx_num, 0
  br i1 %cmp13110.not, label %for.cond.preheader.for.body19.preheader_crit_edge, label %for.body

for.cond.preheader.for.body19.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body19.preheader

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.63, i32 noundef %tx_num) #10
  br label %cleanup

for.cond16.preheader:                             ; preds = %for.body.7, %for.body.6.for.cond16.preheader_crit_edge, %for.body.5.for.cond16.preheader_crit_edge, %for.body.4.for.cond16.preheader_crit_edge, %for.body.3.for.cond16.preheader_crit_edge, %for.body.2.for.cond16.preheader_crit_edge, %for.body.1.for.cond16.preheader_crit_edge, %for.body.for.cond16.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %tx_num)
  %cmp17112 = icmp slt i32 %tx_num, 8
  br i1 %cmp17112, label %for.cond16.preheader.for.body19.preheader_crit_edge, label %for.cond16.preheader.sw.epilog_crit_edge

for.cond16.preheader.sw.epilog_crit_edge:         ; preds = %for.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.cond16.preheader.for.body19.preheader_crit_edge: ; preds = %for.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body19.preheader

for.body19.preheader:                             ; preds = %for.cond16.preheader.for.body19.preheader_crit_edge, %for.cond.preheader.for.body19.preheader_crit_edge
  %7 = mul i32 %5, 108
  %8 = shl i32 %tx_num, 1
  %9 = add i32 %7, %8
  br label %sw.epilog.sink.split

for.body:                                         ; preds = %for.cond.preheader
  %10 = ptrtoint ptr %tx_slot to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_slot, align 4
  %conv = trunc i32 %11 to i16
  %arrayidx15 = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 3, i32 10, i32 0
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %arrayidx15, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %tx_num)
  %exitcond.not = icmp eq i32 %tx_num, 1
  br i1 %exitcond.not, label %for.body.for.cond16.preheader_crit_edge, label %for.body.1

for.body.for.cond16.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond16.preheader

for.body.1:                                       ; preds = %for.body
  %arrayidx14.1 = getelementptr i32, ptr %tx_slot, i32 1
  %13 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx14.1, align 4
  %conv.1 = trunc i32 %14 to i16
  %arrayidx15.1 = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 3, i32 10, i32 1
  %15 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.1, ptr %arrayidx15.1, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %tx_num)
  %exitcond.not.1 = icmp eq i32 %tx_num, 2
  br i1 %exitcond.not.1, label %for.body.1.for.cond16.preheader_crit_edge, label %for.body.2

for.body.1.for.cond16.preheader_crit_edge:        ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond16.preheader

for.body.2:                                       ; preds = %for.body.1
  %arrayidx14.2 = getelementptr i32, ptr %tx_slot, i32 2
  %16 = ptrtoint ptr %arrayidx14.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx14.2, align 4
  %conv.2 = trunc i32 %17 to i16
  %arrayidx15.2 = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 3, i32 10, i32 2
  %18 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.2, ptr %arrayidx15.2, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %tx_num)
  %exitcond.not.2 = icmp eq i32 %tx_num, 3
  br i1 %exitcond.not.2, label %for.body.2.for.cond16.preheader_crit_edge, label %for.body.3

for.body.2.for.cond16.preheader_crit_edge:        ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond16.preheader

for.body.3:                                       ; preds = %for.body.2
  %arrayidx14.3 = getelementptr i32, ptr %tx_slot, i32 3
  %19 = ptrtoint ptr %arrayidx14.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx14.3, align 4
  %conv.3 = trunc i32 %20 to i16
  %arrayidx15.3 = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 3, i32 10, i32 3
  %21 = ptrtoint ptr %arrayidx15.3 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.3, ptr %arrayidx15.3, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %tx_num)
  %exitcond.not.3 = icmp eq i32 %tx_num, 4
  br i1 %exitcond.not.3, label %for.body.3.for.cond16.preheader_crit_edge, label %for.body.4

for.body.3.for.cond16.preheader_crit_edge:        ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond16.preheader

for.body.4:                                       ; preds = %for.body.3
  %arrayidx14.4 = getelementptr i32, ptr %tx_slot, i32 4
  %22 = ptrtoint ptr %arrayidx14.4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx14.4, align 4
  %conv.4 = trunc i32 %23 to i16
  %arrayidx15.4 = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 3, i32 10, i32 4
  %24 = ptrtoint ptr %arrayidx15.4 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.4, ptr %arrayidx15.4, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %tx_num)
  %exitcond.not.4 = icmp eq i32 %tx_num, 5
  br i1 %exitcond.not.4, label %for.body.4.for.cond16.preheader_crit_edge, label %for.body.5

for.body.4.for.cond16.preheader_crit_edge:        ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond16.preheader

for.body.5:                                       ; preds = %for.body.4
  %arrayidx14.5 = getelementptr i32, ptr %tx_slot, i32 5
  %25 = ptrtoint ptr %arrayidx14.5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx14.5, align 4
  %conv.5 = trunc i32 %26 to i16
  %arrayidx15.5 = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 3, i32 10, i32 5
  %27 = ptrtoint ptr %arrayidx15.5 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.5, ptr %arrayidx15.5, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %tx_num)
  %exitcond.not.5 = icmp eq i32 %tx_num, 6
  br i1 %exitcond.not.5, label %for.body.5.for.cond16.preheader_crit_edge, label %for.body.6

for.body.5.for.cond16.preheader_crit_edge:        ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond16.preheader

for.body.6:                                       ; preds = %for.body.5
  %arrayidx14.6 = getelementptr i32, ptr %tx_slot, i32 6
  %28 = ptrtoint ptr %arrayidx14.6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx14.6, align 4
  %conv.6 = trunc i32 %29 to i16
  %arrayidx15.6 = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 3, i32 10, i32 6
  %30 = ptrtoint ptr %arrayidx15.6 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.6, ptr %arrayidx15.6, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %tx_num)
  %exitcond.not.6 = icmp eq i32 %tx_num, 7
  br i1 %exitcond.not.6, label %for.body.6.for.cond16.preheader_crit_edge, label %for.body.7

for.body.6.for.cond16.preheader_crit_edge:        ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond16.preheader

for.body.7:                                       ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx14.7 = getelementptr i32, ptr %tx_slot, i32 7
  %31 = ptrtoint ptr %arrayidx14.7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx14.7, align 4
  %conv.7 = trunc i32 %32 to i16
  %arrayidx15.7 = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 3, i32 10, i32 7
  %33 = ptrtoint ptr %arrayidx15.7 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.7, ptr %arrayidx15.7, align 2
  br label %for.cond16.preheader

if.else:                                          ; preds = %sw.bb
  %tobool26.not = icmp eq ptr %rx_slot, null
  br i1 %tobool26.not, label %do.end30, label %if.end32

do.end30:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.66) #10
  br label %cleanup

if.end32:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %rx_num)
  %cmp33 = icmp ugt i32 %rx_num, 8
  br i1 %cmp33, label %do.end38, label %for.cond41.preheader

for.cond41.preheader:                             ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_num)
  %cmp42114.not = icmp eq i32 %rx_num, 0
  br i1 %cmp42114.not, label %for.cond41.preheader.for.body55.preheader_crit_edge, label %for.body44

for.cond41.preheader.for.body55.preheader_crit_edge: ; preds = %for.cond41.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body55.preheader

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.69, i32 noundef %rx_num) #10
  br label %cleanup

for.cond52.preheader:                             ; preds = %for.body44.7, %for.body44.6.for.cond52.preheader_crit_edge, %for.body44.5.for.cond52.preheader_crit_edge, %for.body44.4.for.cond52.preheader_crit_edge, %for.body44.3.for.cond52.preheader_crit_edge, %for.body44.2.for.cond52.preheader_crit_edge, %for.body44.1.for.cond52.preheader_crit_edge, %for.body44.for.cond52.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %rx_num)
  %cmp53116 = icmp slt i32 %rx_num, 8
  br i1 %cmp53116, label %for.cond52.preheader.for.body55.preheader_crit_edge, label %for.cond52.preheader.sw.epilog_crit_edge

for.cond52.preheader.sw.epilog_crit_edge:         ; preds = %for.cond52.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.cond52.preheader.for.body55.preheader_crit_edge: ; preds = %for.cond52.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body55.preheader

for.body55.preheader:                             ; preds = %for.cond52.preheader.for.body55.preheader_crit_edge, %for.cond41.preheader.for.body55.preheader_crit_edge
  %34 = mul i32 %5, 108
  %35 = shl i32 %rx_num, 1
  %36 = add i32 %34, %35
  br label %sw.epilog.sink.split

for.body44:                                       ; preds = %for.cond41.preheader
  %37 = ptrtoint ptr %rx_slot to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_slot, align 4
  %conv46 = trunc i32 %38 to i16
  %arrayidx48 = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 3, i32 10, i32 0
  %39 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv46, ptr %arrayidx48, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rx_num)
  %exitcond119.not = icmp eq i32 %rx_num, 1
  br i1 %exitcond119.not, label %for.body44.for.cond52.preheader_crit_edge, label %for.body44.1

for.body44.for.cond52.preheader_crit_edge:        ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond52.preheader

for.body44.1:                                     ; preds = %for.body44
  %arrayidx45.1 = getelementptr i32, ptr %rx_slot, i32 1
  %40 = ptrtoint ptr %arrayidx45.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx45.1, align 4
  %conv46.1 = trunc i32 %41 to i16
  %arrayidx48.1 = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 3, i32 10, i32 1
  %42 = ptrtoint ptr %arrayidx48.1 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv46.1, ptr %arrayidx48.1, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rx_num)
  %exitcond119.not.1 = icmp eq i32 %rx_num, 2
  br i1 %exitcond119.not.1, label %for.body44.1.for.cond52.preheader_crit_edge, label %for.body44.2

for.body44.1.for.cond52.preheader_crit_edge:      ; preds = %for.body44.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond52.preheader

for.body44.2:                                     ; preds = %for.body44.1
  %arrayidx45.2 = getelementptr i32, ptr %rx_slot, i32 2
  %43 = ptrtoint ptr %arrayidx45.2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx45.2, align 4
  %conv46.2 = trunc i32 %44 to i16
  %arrayidx48.2 = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 3, i32 10, i32 2
  %45 = ptrtoint ptr %arrayidx48.2 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv46.2, ptr %arrayidx48.2, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rx_num)
  %exitcond119.not.2 = icmp eq i32 %rx_num, 3
  br i1 %exitcond119.not.2, label %for.body44.2.for.cond52.preheader_crit_edge, label %for.body44.3

for.body44.2.for.cond52.preheader_crit_edge:      ; preds = %for.body44.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond52.preheader

for.body44.3:                                     ; preds = %for.body44.2
  %arrayidx45.3 = getelementptr i32, ptr %rx_slot, i32 3
  %46 = ptrtoint ptr %arrayidx45.3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx45.3, align 4
  %conv46.3 = trunc i32 %47 to i16
  %arrayidx48.3 = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 3, i32 10, i32 3
  %48 = ptrtoint ptr %arrayidx48.3 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv46.3, ptr %arrayidx48.3, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rx_num)
  %exitcond119.not.3 = icmp eq i32 %rx_num, 4
  br i1 %exitcond119.not.3, label %for.body44.3.for.cond52.preheader_crit_edge, label %for.body44.4

for.body44.3.for.cond52.preheader_crit_edge:      ; preds = %for.body44.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond52.preheader

for.body44.4:                                     ; preds = %for.body44.3
  %arrayidx45.4 = getelementptr i32, ptr %rx_slot, i32 4
  %49 = ptrtoint ptr %arrayidx45.4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx45.4, align 4
  %conv46.4 = trunc i32 %50 to i16
  %arrayidx48.4 = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 3, i32 10, i32 4
  %51 = ptrtoint ptr %arrayidx48.4 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv46.4, ptr %arrayidx48.4, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %rx_num)
  %exitcond119.not.4 = icmp eq i32 %rx_num, 5
  br i1 %exitcond119.not.4, label %for.body44.4.for.cond52.preheader_crit_edge, label %for.body44.5

for.body44.4.for.cond52.preheader_crit_edge:      ; preds = %for.body44.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond52.preheader

for.body44.5:                                     ; preds = %for.body44.4
  %arrayidx45.5 = getelementptr i32, ptr %rx_slot, i32 5
  %52 = ptrtoint ptr %arrayidx45.5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx45.5, align 4
  %conv46.5 = trunc i32 %53 to i16
  %arrayidx48.5 = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 3, i32 10, i32 5
  %54 = ptrtoint ptr %arrayidx48.5 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv46.5, ptr %arrayidx48.5, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %rx_num)
  %exitcond119.not.5 = icmp eq i32 %rx_num, 6
  br i1 %exitcond119.not.5, label %for.body44.5.for.cond52.preheader_crit_edge, label %for.body44.6

for.body44.5.for.cond52.preheader_crit_edge:      ; preds = %for.body44.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond52.preheader

for.body44.6:                                     ; preds = %for.body44.5
  %arrayidx45.6 = getelementptr i32, ptr %rx_slot, i32 6
  %55 = ptrtoint ptr %arrayidx45.6 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx45.6, align 4
  %conv46.6 = trunc i32 %56 to i16
  %arrayidx48.6 = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 3, i32 10, i32 6
  %57 = ptrtoint ptr %arrayidx48.6 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv46.6, ptr %arrayidx48.6, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %rx_num)
  %exitcond119.not.6 = icmp eq i32 %rx_num, 7
  br i1 %exitcond119.not.6, label %for.body44.6.for.cond52.preheader_crit_edge, label %for.body44.7

for.body44.6.for.cond52.preheader_crit_edge:      ; preds = %for.body44.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond52.preheader

for.body44.7:                                     ; preds = %for.body44.6
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx45.7 = getelementptr i32, ptr %rx_slot, i32 7
  %58 = ptrtoint ptr %arrayidx45.7 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx45.7, align 4
  %conv46.7 = trunc i32 %59 to i16
  %arrayidx48.7 = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 3, i32 10, i32 7
  %60 = ptrtoint ptr %arrayidx48.7 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv46.7, ptr %arrayidx48.7, align 2
  br label %for.cond52.preheader

do.end66:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.61, i32 noundef %5) #10
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %for.body55.preheader, %for.body19.preheader
  %.sink124 = phi i32 [ %9, %for.body19.preheader ], [ %36, %for.body55.preheader ]
  %.sink123 = phi i32 [ %8, %for.body19.preheader ], [ %35, %for.body55.preheader ]
  %storemerge.in.ph = phi i32 [ %tx_num, %for.body19.preheader ], [ %rx_num, %for.body55.preheader ]
  %61 = add i32 %.sink124, 596
  %uglygep = getelementptr i8, ptr %3, i32 %61
  %62 = sub i32 16, %.sink123
  %63 = call ptr @memset(ptr %uglygep, i32 255, i32 %62)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.cond52.preheader.sw.epilog_crit_edge, %for.cond16.preheader.sw.epilog_crit_edge
  %storemerge.in = phi i32 [ %rx_num, %for.cond52.preheader.sw.epilog_crit_edge ], [ %tx_num, %for.cond16.preheader.sw.epilog_crit_edge ], [ %storemerge.in.ph, %sw.epilog.sink.split ]
  %storemerge = trunc i32 %storemerge.in to i16
  %64 = ptrtoint ptr %tdm1 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %storemerge, ptr %tdm1, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end66, %do.end38, %do.end30, %do.end10, %do.end
  %retval.0 = phi i32 [ -22, %do.end10 ], [ 0, %sw.epilog ], [ -22, %do.end ], [ -22, %do.end38 ], [ -22, %do.end30 ], [ -22, %do.end66 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6tdm_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %7, %entry.if.then.i.i.i_crit_edge ], [ %10, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %8 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #7, !range !697
  %add.i.i.i = or i32 %8, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.1.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %tdm1 = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 3
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #7
  %conv = trunc i32 %call1.i to i16
  %bit_width = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 3, i32 2
  %11 = ptrtoint ptr %bit_width to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %bit_width, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  %sample_rate = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 3, i32 1
  %14 = ptrtoint ptr %sample_rate to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %sample_rate, align 4
  %arrayidx.i.i32 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %arrayidx.i.i32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i32, align 4
  %conv5 = trunc i32 %16 to i16
  %17 = ptrtoint ptr %tdm1 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv5, ptr %tdm1, align 4
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  %data_align = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 3, i32 %19, i32 6
  %20 = ptrtoint ptr %data_align to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_align, align 4
  %data_align_type = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 3, i32 9
  %22 = ptrtoint ptr %data_align_type to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %data_align_type, align 4
  %23 = load i32, ptr %id, align 4
  %sync_src = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 3, i32 %23, i32 2
  %24 = ptrtoint ptr %sync_src to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sync_src, align 4
  %conv11 = trunc i32 %25 to i16
  %sync_src12 = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 3, i32 5
  %26 = ptrtoint ptr %sync_src12 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv11, ptr %sync_src12, align 2
  %27 = load i32, ptr %id, align 4
  %sync_mode = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 3, i32 %27, i32 1
  %28 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sync_mode, align 4
  %conv16 = trunc i32 %29 to i16
  %sync_mode17 = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 3, i32 4
  %30 = ptrtoint ptr %sync_mode17 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv16, ptr %sync_mode17, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6dma_set_channel_map(ptr nocapture noundef readonly %dai, i32 noundef %tx_num, ptr noundef readonly %tx_ch_mask, i32 noundef %rx_num, ptr noundef readonly %rx_ch_mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.349)
  switch i32 %5, label %do.end26 [
    i32 106, label %entry.sw.bb_crit_edge
    i32 108, label %entry.sw.bb_crit_edge44
    i32 109, label %entry.sw.bb_crit_edge45
    i32 110, label %entry.sw.bb_crit_edge46
    i32 111, label %entry.sw.bb_crit_edge47
    i32 112, label %entry.sw.bb_crit_edge48
    i32 114, label %entry.sw.bb_crit_edge49
    i32 116, label %entry.sw.bb_crit_edge50
    i32 118, label %entry.sw.bb_crit_edge51
    i32 120, label %entry.sw.bb_crit_edge52
    i32 122, label %entry.sw.bb_crit_edge53
    i32 124, label %entry.sw.bb_crit_edge54
    i32 105, label %entry.sw.bb9_crit_edge
    i32 107, label %entry.sw.bb9_crit_edge55
    i32 113, label %entry.sw.bb9_crit_edge56
    i32 115, label %entry.sw.bb9_crit_edge57
    i32 117, label %entry.sw.bb9_crit_edge58
    i32 119, label %entry.sw.bb9_crit_edge59
    i32 121, label %entry.sw.bb9_crit_edge60
    i32 123, label %entry.sw.bb9_crit_edge61
    i32 125, label %entry.sw.bb9_crit_edge62
    i32 126, label %entry.sw.bb9_crit_edge63
  ]

entry.sw.bb9_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

entry.sw.bb9_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

entry.sw.bb9_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

entry.sw.bb9_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

entry.sw.bb9_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

entry.sw.bb9_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

entry.sw.bb9_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

entry.sw.bb9_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

entry.sw.bb9_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

entry.sw.bb_crit_edge54:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge53:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge52:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge51:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge50:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge49:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge48:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge47:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge46:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge45:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge44:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge44, %entry.sw.bb_crit_edge45, %entry.sw.bb_crit_edge46, %entry.sw.bb_crit_edge47, %entry.sw.bb_crit_edge48, %entry.sw.bb_crit_edge49, %entry.sw.bb_crit_edge50, %entry.sw.bb_crit_edge51, %entry.sw.bb_crit_edge52, %entry.sw.bb_crit_edge53, %entry.sw.bb_crit_edge54
  %tobool.not = icmp eq ptr %tx_ch_mask, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.60) #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %tx_num)
  %cmp = icmp ugt i32 %tx_num, 8
  br i1 %cmp, label %do.end6, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.63, i32 noundef %tx_num) #10
  br label %cleanup

sw.bb9:                                           ; preds = %entry.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge55, %entry.sw.bb9_crit_edge56, %entry.sw.bb9_crit_edge57, %entry.sw.bb9_crit_edge58, %entry.sw.bb9_crit_edge59, %entry.sw.bb9_crit_edge60, %entry.sw.bb9_crit_edge61, %entry.sw.bb9_crit_edge62, %entry.sw.bb9_crit_edge63
  %tobool10.not = icmp eq ptr %rx_ch_mask, null
  br i1 %tobool10.not, label %do.end14, label %if.end16

do.end14:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.66) #10
  br label %cleanup

if.end16:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %rx_num)
  %cmp17 = icmp ugt i32 %rx_num, 8
  br i1 %cmp17, label %do.end21, label %if.end16.sw.epilog_crit_edge

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.69, i32 noundef %rx_num) #10
  br label %cleanup

do.end26:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.73, i32 noundef %5) #10
  br label %cleanup

sw.epilog:                                        ; preds = %if.end16.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %ch_mask.0.in = phi ptr [ %tx_ch_mask, %if.end.sw.epilog_crit_edge ], [ %rx_ch_mask, %if.end16.sw.epilog_crit_edge ]
  %7 = ptrtoint ptr %ch_mask.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %ch_mask.0 = load i32, ptr %ch_mask.0.in, align 4
  %conv = trunc i32 %ch_mask.0 to i16
  %active_channels_mask = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 4, i32 4
  %8 = ptrtoint ptr %active_channels_mask to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %active_channels_mask, align 2
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end26, %do.end21, %do.end14, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end26 ], [ -22, %do.end21 ], [ 0, %sw.epilog ], [ -22, %do.end14 ], [ -22, %do.end6 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6dma_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %7, %entry.if.then.i.i.i_crit_edge ], [ %10, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %8 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #7, !range !697
  %add.i.i.i = or i32 %8, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.1.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %dma_cfg = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 4
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #7
  %conv = trunc i32 %call1.i to i16
  %bit_width = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 4, i32 1
  %11 = ptrtoint ptr %bit_width to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %bit_width, align 2
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  %conv3 = trunc i32 %13 to i16
  %14 = ptrtoint ptr %dma_cfg to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv3, ptr %dma_cfg, align 2
  %arrayidx.i.i11 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %arrayidx.i.i11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i11, align 4
  %conv5 = trunc i32 %16 to i16
  %num_channels = getelementptr %struct.q6afe_dai_data, ptr %3, i32 0, i32 1, i32 %5, i32 4, i32 3
  %17 = ptrtoint ptr %num_channels to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv5, ptr %num_channels, align 2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6dsp_audio_ports_of_xlate_dai_name(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 344)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 344)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !40, !41, !42, !44, !46, !47, !48, !50, !52, !53, !54, !56, !58, !59, !60, !62, !63, !64, !65, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !144, !146, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !598, !600, !602, !604, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660, !662, !664, !666, !668, !670, !672, !674, !676, !678, !680, !682, !684}
!llvm.module.flags = !{!686, !687, !688, !689, !690, !691, !692, !693}
!llvm.ident = !{!694}

!0 = !{ptr @__initcall__kmod_q6afe_dai__238_1091_q6afe_dai_platform_driver_init6, !1, !"__initcall__kmod_q6afe_dai__238_1091_q6afe_dai_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 1091, i32 1}
!2 = !{ptr @__exitcall_q6afe_dai_platform_driver_exit, !1, !"__exitcall_q6afe_dai_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description239, !4, !"__UNIQUE_ID_description239", i1 false, i1 false}
!4 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 1093, i32 1}
!5 = !{ptr @__UNIQUE_ID_file240, !6, !"__UNIQUE_ID_file240", i1 false, i1 false}
!6 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 1094, i32 1}
!7 = !{ptr @__UNIQUE_ID_license241, !6, !"__UNIQUE_ID_license241", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 1086, i32 11}
!10 = !{ptr @q6afe_dai_platform_driver, !11, !"q6afe_dai_platform_driver", i1 false, i1 false}
!11 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 1084, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 978, i32 36}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 980, i32 4}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @of_q6afe_parse_dai_data._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @of_q6afe_parse_dai_data._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 990, i32 8}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 1006, i32 37}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 1009, i32 5}
!28 = !{ptr @of_q6afe_parse_dai_data._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @of_q6afe_parse_dai_data._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 1012, i32 37}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 1015, i32 5}
!34 = !{ptr @of_q6afe_parse_dai_data._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @of_q6afe_parse_dai_data._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 1018, i32 37}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 1021, i32 5}
!40 = !{ptr @of_q6afe_parse_dai_data._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @of_q6afe_parse_dai_data._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 1024, i32 37}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 1027, i32 5}
!46 = !{ptr @of_q6afe_parse_dai_data._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @of_q6afe_parse_dai_data._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 1030, i32 37}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 1033, i32 5}
!52 = !{ptr @of_q6afe_parse_dai_data._entry.25, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @of_q6afe_parse_dai_data._entry_ptr.27, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 1036, i32 37}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 1039, i32 5}
!58 = !{ptr @of_q6afe_parse_dai_data._entry.29, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @of_q6afe_parse_dai_data._entry_ptr.31, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 687, i32 3}
!62 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @msm_dai_q6_dai_probe._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @msm_dai_q6_dai_probe._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @q6hdmi_ops, !66, !"q6hdmi_ops", i1 false, i1 false}
!66 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 642, i32 37}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 365, i32 3}
!69 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @q6afe_dai_shutdown._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @q6afe_dai_shutdown._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 107, i32 3}
!74 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @q6hdmi_hw_params._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @q6hdmi_hw_params._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 381, i32 4}
!79 = !{ptr @q6afe_dai_prepare._entry, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @q6afe_dai_prepare._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 401, i32 4}
!83 = !{ptr @q6afe_dai_prepare._entry.39, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @q6afe_dai_prepare._entry_ptr.41, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 420, i32 3}
!87 = !{ptr @q6afe_dai_prepare._entry.42, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @q6afe_dai_prepare._entry_ptr.44, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @q6slim_ops, !90, !"q6slim_ops", i1 false, i1 false}
!90 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 656, i32 37}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 439, i32 4}
!93 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @q6slim_set_channel_map._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @q6slim_set_channel_map._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 451, i32 4}
!98 = !{ptr @q6slim_set_channel_map._entry.47, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @q6slim_set_channel_map._entry_ptr.49, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 57, i32 3}
!102 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @q6slim_hw_params._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @q6slim_hw_params._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @q6i2s_ops, !106, !"q6i2s_ops", i1 false, i1 false}
!106 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 648, i32 37}
!107 = !{ptr @q6tdm_ops, !108, !"q6tdm_ops", i1 false, i1 false}
!108 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 663, i32 37}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 152, i32 3}
!111 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @q6tdm_set_tdm_slot._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @q6tdm_set_tdm_slot._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 172, i32 3}
!116 = !{ptr @q6tdm_set_tdm_slot._entry.54, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @q6tdm_set_tdm_slot._entry_ptr.56, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 185, i32 3}
!120 = !{ptr @q6tdm_set_tdm_slot._entry.57, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @q6tdm_set_tdm_slot._entry_ptr.59, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 207, i32 5}
!124 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @q6tdm_set_channel_map._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @q6tdm_set_channel_map._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.63, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 211, i32 5}
!129 = !{ptr @q6tdm_set_channel_map._entry.62, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @q6tdm_set_channel_map._entry_ptr.64, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.66, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 226, i32 5}
!133 = !{ptr @q6tdm_set_channel_map._entry.65, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @q6tdm_set_channel_map._entry_ptr.67, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.69, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 230, i32 5}
!137 = !{ptr @q6tdm_set_channel_map._entry.68, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @q6tdm_set_channel_map._entry_ptr.70, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @q6tdm_set_channel_map._entry.71, !140, !"_entry", i1 false, i1 false}
!140 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 246, i32 3}
!141 = !{ptr @q6tdm_set_channel_map._entry_ptr.72, !140, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @q6dma_ops, !143, !"q6dma_ops", i1 false, i1 false}
!143 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 672, i32 37}
!144 = !{ptr @.str.73, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 295, i32 4}
!146 = !{ptr @q6dma_set_channel_map._entry, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @q6dma_set_channel_map._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @q6dma_set_channel_map._entry.74, !149, !"_entry", i1 false, i1 false}
!149 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 300, i32 4}
!150 = !{ptr @q6dma_set_channel_map._entry_ptr.75, !149, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @q6dma_set_channel_map._entry.76, !152, !"_entry", i1 false, i1 false}
!152 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 319, i32 4}
!153 = !{ptr @q6dma_set_channel_map._entry_ptr.77, !152, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @q6dma_set_channel_map._entry.78, !155, !"_entry", i1 false, i1 false}
!155 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 323, i32 4}
!156 = !{ptr @q6dma_set_channel_map._entry_ptr.79, !155, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @q6dma_set_channel_map._entry.80, !158, !"_entry", i1 false, i1 false}
!158 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 331, i32 3}
!159 = !{ptr @q6dma_set_channel_map._entry_ptr.81, !158, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.82, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 958, i32 11}
!162 = !{ptr @q6afe_dai_component, !163, !"q6afe_dai_component", i1 false, i1 false}
!163 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 957, i32 46}
!164 = !{ptr @.str.83, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 706, i32 2}
!166 = !{ptr @.str.84, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 707, i32 2}
!168 = !{ptr @.str.85, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 708, i32 2}
!170 = !{ptr @.str.86, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 709, i32 2}
!172 = !{ptr @.str.87, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 710, i32 2}
!174 = !{ptr @.str.88, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 711, i32 2}
!176 = !{ptr @.str.89, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 712, i32 2}
!178 = !{ptr @.str.90, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 713, i32 2}
!180 = !{ptr @.str.91, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 714, i32 2}
!182 = !{ptr @.str.92, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 715, i32 2}
!184 = !{ptr @.str.93, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 716, i32 2}
!186 = !{ptr @.str.94, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 717, i32 2}
!188 = !{ptr @.str.95, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 718, i32 2}
!190 = !{ptr @.str.96, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 719, i32 2}
!192 = !{ptr @.str.97, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 720, i32 2}
!194 = !{ptr @.str.98, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 721, i32 2}
!196 = !{ptr @.str.99, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 723, i32 2}
!198 = !{ptr @.str.100, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 725, i32 2}
!200 = !{ptr @.str.101, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 727, i32 2}
!202 = !{ptr @.str.102, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 729, i32 2}
!204 = !{ptr @.str.103, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 731, i32 2}
!206 = !{ptr @.str.104, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 733, i32 2}
!208 = !{ptr @.str.105, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 735, i32 2}
!210 = !{ptr @.str.106, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 737, i32 2}
!212 = !{ptr @.str.107, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.108, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 740, i32 2}
!215 = !{ptr @.str.109, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 742, i32 2}
!217 = !{ptr @.str.110, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 745, i32 2}
!219 = !{ptr @.str.111, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 747, i32 2}
!221 = !{ptr @.str.112, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 749, i32 2}
!223 = !{ptr @.str.113, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 751, i32 2}
!225 = !{ptr @.str.114, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 753, i32 2}
!227 = !{ptr @.str.115, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 755, i32 2}
!229 = !{ptr @.str.116, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 757, i32 2}
!231 = !{ptr @.str.117, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 759, i32 2}
!233 = !{ptr @.str.118, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 761, i32 2}
!235 = !{ptr @.str.119, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 763, i32 2}
!237 = !{ptr @.str.120, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 765, i32 2}
!239 = !{ptr @.str.121, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 767, i32 2}
!241 = !{ptr @.str.122, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 769, i32 2}
!243 = !{ptr @.str.123, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 771, i32 2}
!245 = !{ptr @.str.124, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 773, i32 2}
!247 = !{ptr @.str.125, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 775, i32 2}
!249 = !{ptr @.str.126, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 778, i32 2}
!251 = !{ptr @.str.127, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 780, i32 2}
!253 = !{ptr @.str.128, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 782, i32 2}
!255 = !{ptr @.str.129, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 784, i32 2}
!257 = !{ptr @.str.130, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 786, i32 2}
!259 = !{ptr @.str.131, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 788, i32 2}
!261 = !{ptr @.str.132, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 790, i32 2}
!263 = !{ptr @.str.133, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 792, i32 2}
!265 = !{ptr @.str.134, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 794, i32 2}
!267 = !{ptr @.str.135, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 796, i32 2}
!269 = !{ptr @.str.136, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 798, i32 2}
!271 = !{ptr @.str.137, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 800, i32 2}
!273 = !{ptr @.str.138, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 802, i32 2}
!275 = !{ptr @.str.139, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 804, i32 2}
!277 = !{ptr @.str.140, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 806, i32 2}
!279 = !{ptr @.str.141, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 808, i32 2}
!281 = !{ptr @.str.142, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 811, i32 2}
!283 = !{ptr @.str.143, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 813, i32 2}
!285 = !{ptr @.str.144, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 815, i32 2}
!287 = !{ptr @.str.145, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 817, i32 2}
!289 = !{ptr @.str.146, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 819, i32 2}
!291 = !{ptr @.str.147, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 821, i32 2}
!293 = !{ptr @.str.148, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 823, i32 2}
!295 = !{ptr @.str.149, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 825, i32 2}
!297 = !{ptr @.str.150, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 827, i32 2}
!299 = !{ptr @.str.151, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 829, i32 2}
!301 = !{ptr @.str.152, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 831, i32 2}
!303 = !{ptr @.str.153, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 833, i32 2}
!305 = !{ptr @.str.154, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 835, i32 2}
!307 = !{ptr @.str.155, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 837, i32 2}
!309 = !{ptr @.str.156, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 839, i32 2}
!311 = !{ptr @.str.157, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 841, i32 2}
!313 = !{ptr @.str.158, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 844, i32 2}
!315 = !{ptr @.str.159, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 846, i32 2}
!317 = !{ptr @.str.160, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 848, i32 2}
!319 = !{ptr @.str.161, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 850, i32 2}
!321 = !{ptr @.str.162, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 852, i32 2}
!323 = !{ptr @.str.163, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 854, i32 2}
!325 = !{ptr @.str.164, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 856, i32 2}
!327 = !{ptr @.str.165, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 858, i32 2}
!329 = !{ptr @.str.166, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 860, i32 2}
!331 = !{ptr @.str.167, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 862, i32 2}
!333 = !{ptr @.str.168, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 864, i32 2}
!335 = !{ptr @.str.169, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 866, i32 2}
!337 = !{ptr @.str.170, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 868, i32 2}
!339 = !{ptr @.str.171, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 870, i32 2}
!341 = !{ptr @.str.172, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 872, i32 2}
!343 = !{ptr @.str.173, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 874, i32 2}
!345 = !{ptr @.str.174, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 877, i32 2}
!347 = !{ptr @.str.175, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 879, i32 2}
!349 = !{ptr @.str.176, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 881, i32 2}
!351 = !{ptr @.str.177, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 883, i32 2}
!353 = !{ptr @.str.178, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 885, i32 2}
!355 = !{ptr @.str.179, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 887, i32 2}
!357 = !{ptr @.str.180, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 889, i32 2}
!359 = !{ptr @.str.181, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 891, i32 2}
!361 = !{ptr @.str.182, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 893, i32 2}
!363 = !{ptr @.str.183, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 895, i32 2}
!365 = !{ptr @.str.184, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 897, i32 2}
!367 = !{ptr @.str.185, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 899, i32 2}
!369 = !{ptr @.str.186, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 901, i32 2}
!371 = !{ptr @.str.187, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 903, i32 2}
!373 = !{ptr @.str.188, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 905, i32 2}
!375 = !{ptr @.str.189, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 907, i32 2}
!377 = !{ptr @.str.190, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 909, i32 2}
!379 = !{ptr @.str.191, !378, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @.str.192, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 911, i32 2}
!382 = !{ptr @.str.193, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 913, i32 2}
!384 = !{ptr @.str.194, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 915, i32 2}
!386 = !{ptr @.str.195, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 917, i32 2}
!388 = !{ptr @.str.196, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 919, i32 2}
!390 = !{ptr @.str.197, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 921, i32 2}
!392 = !{ptr @.str.198, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 923, i32 2}
!394 = !{ptr @.str.199, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 925, i32 2}
!396 = !{ptr @.str.200, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 927, i32 2}
!398 = !{ptr @.str.201, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 929, i32 2}
!400 = !{ptr @.str.202, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 931, i32 2}
!402 = !{ptr @.str.203, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 933, i32 2}
!404 = !{ptr @.str.204, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 935, i32 2}
!406 = !{ptr @.str.205, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 937, i32 2}
!408 = !{ptr @.str.206, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 939, i32 2}
!410 = !{ptr @.str.207, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 941, i32 2}
!412 = !{ptr @.str.208, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 943, i32 2}
!414 = !{ptr @.str.209, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 945, i32 2}
!416 = !{ptr @.str.210, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 947, i32 2}
!418 = !{ptr @.str.211, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 949, i32 2}
!420 = !{ptr @.str.212, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 951, i32 2}
!422 = !{ptr @.str.213, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 953, i32 2}
!424 = !{ptr @q6afe_dai_widgets, !425, !"q6afe_dai_widgets", i1 false, i1 false}
!425 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 705, i32 41}
!426 = !{ptr @.str.215, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 498, i32 3}
!428 = !{ptr @.str.216, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 499, i32 3}
!430 = !{ptr @.str.217, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 500, i32 3}
!432 = !{ptr @.str.218, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 501, i32 3}
!434 = !{ptr @.str.219, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 502, i32 3}
!436 = !{ptr @.str.220, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 503, i32 3}
!438 = !{ptr @.str.221, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 504, i32 3}
!440 = !{ptr @.str.222, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 505, i32 3}
!442 = !{ptr @.str.223, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 506, i32 3}
!444 = !{ptr @.str.224, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 508, i32 25}
!446 = !{ptr @.str.225, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 509, i32 25}
!448 = !{ptr @.str.226, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 510, i32 25}
!450 = !{ptr @.str.227, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 511, i32 25}
!452 = !{ptr @.str.228, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 512, i32 25}
!454 = !{ptr @.str.229, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 513, i32 25}
!456 = !{ptr @.str.230, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 514, i32 25}
!458 = !{ptr @.str.231, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 516, i32 3}
!460 = !{ptr @.str.232, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 517, i32 3}
!462 = !{ptr @.str.233, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 518, i32 3}
!464 = !{ptr @.str.234, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 519, i32 3}
!466 = !{ptr @.str.235, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 520, i32 3}
!468 = !{ptr @.str.236, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 522, i32 3}
!470 = !{ptr @.str.237, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 523, i32 3}
!472 = !{ptr @.str.238, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 524, i32 3}
!474 = !{ptr @.str.239, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 525, i32 3}
!476 = !{ptr @.str.240, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 526, i32 3}
!478 = !{ptr @.str.241, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 527, i32 3}
!480 = !{ptr @.str.242, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 528, i32 3}
!482 = !{ptr @.str.243, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 529, i32 3}
!484 = !{ptr @.str.244, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 531, i32 3}
!486 = !{ptr @.str.245, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 532, i32 3}
!488 = !{ptr @.str.246, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 533, i32 3}
!490 = !{ptr @.str.247, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 534, i32 3}
!492 = !{ptr @.str.248, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 535, i32 3}
!494 = !{ptr @.str.249, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 536, i32 3}
!496 = !{ptr @.str.250, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 537, i32 3}
!498 = !{ptr @.str.251, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 538, i32 3}
!500 = !{ptr @.str.252, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 540, i32 3}
!502 = !{ptr @.str.253, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 541, i32 3}
!504 = !{ptr @.str.254, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 542, i32 3}
!506 = !{ptr @.str.255, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 543, i32 3}
!508 = !{ptr @.str.256, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 544, i32 3}
!510 = !{ptr @.str.257, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 545, i32 3}
!512 = !{ptr @.str.258, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 546, i32 3}
!514 = !{ptr @.str.259, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 547, i32 3}
!516 = !{ptr @.str.260, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 549, i32 3}
!518 = !{ptr @.str.261, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 550, i32 3}
!520 = !{ptr @.str.262, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 551, i32 3}
!522 = !{ptr @.str.263, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 552, i32 3}
!524 = !{ptr @.str.264, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 553, i32 3}
!526 = !{ptr @.str.265, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 554, i32 3}
!528 = !{ptr @.str.266, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 555, i32 3}
!530 = !{ptr @.str.267, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 556, i32 3}
!532 = !{ptr @.str.268, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 558, i32 3}
!534 = !{ptr @.str.269, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 559, i32 3}
!536 = !{ptr @.str.270, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 560, i32 3}
!538 = !{ptr @.str.271, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 561, i32 3}
!540 = !{ptr @.str.272, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 562, i32 3}
!542 = !{ptr @.str.273, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 563, i32 3}
!544 = !{ptr @.str.274, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 564, i32 3}
!546 = !{ptr @.str.275, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 565, i32 3}
!548 = !{ptr @.str.276, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 567, i32 29}
!550 = !{ptr @.str.277, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 568, i32 29}
!552 = !{ptr @.str.278, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 569, i32 29}
!554 = !{ptr @.str.279, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 570, i32 29}
!556 = !{ptr @.str.280, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 571, i32 29}
!558 = !{ptr @.str.281, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 572, i32 29}
!560 = !{ptr @.str.282, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 573, i32 29}
!562 = !{ptr @.str.283, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 574, i32 29}
!564 = !{ptr @.str.284, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 576, i32 25}
!566 = !{ptr @.str.285, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 577, i32 25}
!568 = !{ptr @.str.286, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 578, i32 25}
!570 = !{ptr @.str.287, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 579, i32 25}
!572 = !{ptr @.str.288, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 580, i32 25}
!574 = !{ptr @.str.289, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 581, i32 25}
!576 = !{ptr @.str.290, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 582, i32 25}
!578 = !{ptr @.str.291, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 583, i32 25}
!580 = !{ptr @.str.292, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 585, i32 26}
!582 = !{ptr @.str.293, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 586, i32 26}
!584 = !{ptr @.str.294, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 587, i32 26}
!586 = !{ptr @.str.295, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 588, i32 26}
!588 = !{ptr @.str.296, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 589, i32 26}
!590 = !{ptr @.str.297, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 590, i32 26}
!592 = !{ptr @.str.298, !593, !"<string literal>", i1 false, i1 false}
!593 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 591, i32 26}
!594 = !{ptr @.str.299, !595, !"<string literal>", i1 false, i1 false}
!595 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 592, i32 26}
!596 = !{ptr @.str.300, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 594, i32 26}
!598 = !{ptr @.str.301, !599, !"<string literal>", i1 false, i1 false}
!599 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 595, i32 26}
!600 = !{ptr @.str.302, !601, !"<string literal>", i1 false, i1 false}
!601 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 596, i32 26}
!602 = !{ptr @.str.303, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 597, i32 26}
!604 = !{ptr @.str.304, !605, !"<string literal>", i1 false, i1 false}
!605 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 598, i32 26}
!606 = !{ptr @.str.305, !607, !"<string literal>", i1 false, i1 false}
!607 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 599, i32 26}
!608 = !{ptr @.str.306, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 600, i32 26}
!610 = !{ptr @.str.307, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 601, i32 26}
!612 = !{ptr @.str.308, !613, !"<string literal>", i1 false, i1 false}
!613 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 603, i32 26}
!614 = !{ptr @.str.309, !615, !"<string literal>", i1 false, i1 false}
!615 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 604, i32 26}
!616 = !{ptr @.str.310, !617, !"<string literal>", i1 false, i1 false}
!617 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 605, i32 26}
!618 = !{ptr @.str.311, !619, !"<string literal>", i1 false, i1 false}
!619 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 606, i32 26}
!620 = !{ptr @.str.312, !621, !"<string literal>", i1 false, i1 false}
!621 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 607, i32 26}
!622 = !{ptr @.str.313, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 608, i32 26}
!624 = !{ptr @.str.314, !625, !"<string literal>", i1 false, i1 false}
!625 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 609, i32 26}
!626 = !{ptr @.str.315, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 610, i32 26}
!628 = !{ptr @.str.316, !629, !"<string literal>", i1 false, i1 false}
!629 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 612, i32 25}
!630 = !{ptr @.str.317, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 613, i32 24}
!632 = !{ptr @.str.318, !633, !"<string literal>", i1 false, i1 false}
!633 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 614, i32 24}
!634 = !{ptr @.str.319, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 615, i32 25}
!636 = !{ptr @.str.320, !637, !"<string literal>", i1 false, i1 false}
!637 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 616, i32 25}
!638 = !{ptr @.str.321, !639, !"<string literal>", i1 false, i1 false}
!639 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 618, i32 3}
!640 = !{ptr @.str.322, !641, !"<string literal>", i1 false, i1 false}
!641 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 619, i32 31}
!642 = !{ptr @.str.323, !643, !"<string literal>", i1 false, i1 false}
!643 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 620, i32 3}
!644 = !{ptr @.str.324, !645, !"<string literal>", i1 false, i1 false}
!645 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 621, i32 31}
!646 = !{ptr @.str.325, !647, !"<string literal>", i1 false, i1 false}
!647 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 622, i32 31}
!648 = !{ptr @.str.326, !649, !"<string literal>", i1 false, i1 false}
!649 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 623, i32 30}
!650 = !{ptr @.str.327, !651, !"<string literal>", i1 false, i1 false}
!651 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 624, i32 30}
!652 = !{ptr @.str.328, !653, !"<string literal>", i1 false, i1 false}
!653 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 625, i32 30}
!654 = !{ptr @.str.329, !655, !"<string literal>", i1 false, i1 false}
!655 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 626, i32 3}
!656 = !{ptr @.str.330, !657, !"<string literal>", i1 false, i1 false}
!657 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 627, i32 30}
!658 = !{ptr @.str.331, !659, !"<string literal>", i1 false, i1 false}
!659 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 628, i32 3}
!660 = !{ptr @.str.332, !661, !"<string literal>", i1 false, i1 false}
!661 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 629, i32 30}
!662 = !{ptr @.str.333, !663, !"<string literal>", i1 false, i1 false}
!663 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 630, i32 3}
!664 = !{ptr @.str.334, !665, !"<string literal>", i1 false, i1 false}
!665 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 631, i32 30}
!666 = !{ptr @.str.335, !667, !"<string literal>", i1 false, i1 false}
!667 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 632, i32 3}
!668 = !{ptr @.str.336, !669, !"<string literal>", i1 false, i1 false}
!669 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 633, i32 30}
!670 = !{ptr @.str.337, !671, !"<string literal>", i1 false, i1 false}
!671 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 634, i32 3}
!672 = !{ptr @.str.338, !673, !"<string literal>", i1 false, i1 false}
!673 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 635, i32 30}
!674 = !{ptr @.str.339, !675, !"<string literal>", i1 false, i1 false}
!675 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 636, i32 3}
!676 = !{ptr @.str.340, !677, !"<string literal>", i1 false, i1 false}
!677 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 637, i32 30}
!678 = !{ptr @.str.341, !679, !"<string literal>", i1 false, i1 false}
!679 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 638, i32 3}
!680 = !{ptr @.str.342, !681, !"<string literal>", i1 false, i1 false}
!681 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 639, i32 3}
!682 = !{ptr @q6afe_dapm_routes, !683, !"q6afe_dapm_routes", i1 false, i1 false}
!683 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 497, i32 40}
!684 = !{ptr @q6afe_dai_device_id, !685, !"q6afe_dai_device_id", i1 false, i1 false}
!685 = !{!"../sound/soc/qcom/qdsp6/q6afe-dai.c", i32 1077, i32 34}
!686 = !{i32 1, !"wchar_size", i32 2}
!687 = !{i32 1, !"min_enum_size", i32 4}
!688 = !{i32 8, !"branch-target-enforcement", i32 0}
!689 = !{i32 8, !"sign-return-address", i32 0}
!690 = !{i32 8, !"sign-return-address-all", i32 0}
!691 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!692 = !{i32 7, !"uwtable", i32 1}
!693 = !{i32 7, !"frame-pointer", i32 2}
!694 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!695 = !{!"auto-init"}
!696 = !{i8 0, i8 2}
!697 = !{i32 0, i32 33}
