; ModuleID = '/llk/IR_all_yes/sound/soc/fsl/fsl_rpmsg.c_pt.bc'
source_filename = "../sound/soc/fsl/fsl_rpmsg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.fsl_rpmsg_soc_data = type { i32, i64 }
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
%struct.fsl_rpmsg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_fsl_rpmsg__241_313_fsl_rpmsg_driver_init6 = internal global ptr @fsl_rpmsg_driver_init, section ".initcall6.init", align 4
@fsl_rpmsg_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fsl_rpmsg_probe, ptr @fsl_rpmsg_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsl_rpmsg_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_rpmsg_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fsl_rpmsg_driver_exit = internal global ptr @fsl_rpmsg_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description242 = internal constant [70 x i8] c"snd_soc_fsl_rpmsg.description=Freescale SoC Audio PRMSG CPU Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [63 x i8] c"snd_soc_fsl_rpmsg.author=Shengjiu Wang <shengjiu.wang@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias244 = internal constant [43 x i8] c"snd_soc_fsl_rpmsg.alias=platform:fsl_rpmsg\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [55 x i8] c"snd_soc_fsl_rpmsg.file=sound/soc/fsl/snd-soc-fsl-rpmsg\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [30 x i8] c"snd_soc_fsl_rpmsg.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fsl_rpmsg\00", [22 x i8] zeroinitializer }, align 32
@fsl_rpmsg_ids = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7ulp-rpmsg-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx7ulp_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mm-rpmsg-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8mm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mn-rpmsg-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8mn_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mp-rpmsg-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8mp_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8ulp-rpmsg-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx7ulp_data }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@fsl_rpmsg_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_rpmsg_runtime_suspend, ptr @fsl_rpmsg_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@fsl_rpmsg_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @fsl_rpmsg_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.13, i64 4, i32 -2147483648, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.14, i64 4, i32 -2147483648, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 -32, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl,enable-lpa\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dma\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll8k\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll11k\00", [25 x i8] zeroinitializer }, align 32
@fsl_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.21, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx-audio-rpmsg\00", [16 x i8] zeroinitializer }, align 32
@fsl_rpmsg_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 241, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register rpmsg card\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl_rpmsg_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/fsl/fsl_rpmsg.c\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsl_rpmsg_probe._entry_ptr = internal global ptr @fsl_rpmsg_probe._entry, section ".printk_index", align 4
@fsl_rpmsg_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_rpmsg_startup, ptr null, ptr @fsl_rpmsg_hw_params, ptr @fsl_rpmsg_hw_free, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CPU-Capture\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CPU-Playback\00", [19 x i8] zeroinitializer }, align 32
@fsl_rpmsg_rate_constraints = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @fsl_rpmsg_rates, i32 17, i32 0 }, [20 x i8] zeroinitializer }, align 32
@fsl_rpmsg_rates = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 8000, i32 11025, i32 16000, i32 22050, i32 44100, i32 32000, i32 48000, i32 96000, i32 88200, i32 176400, i32 192000, i32 352800, i32 384000, i32 705600, i32 768000, i32 1411200, i32 2822400], [60 x i8] zeroinitializer }, align 32
@fsl_rpmsg_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.10, i32 68, ptr @.str.17, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to set parent %s: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fsl_rpmsg_hw_params\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@fsl_rpmsg_hw_params._entry_ptr = internal global ptr @fsl_rpmsg_hw_params._entry, section ".printk_index", align 4
@fsl_rpmsg_hw_params._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.10, i32 75, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable mclk: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@fsl_rpmsg_hw_params._entry_ptr.20 = internal global ptr @fsl_rpmsg_hw_params._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fsl-rpmsg\00", [22 x i8] zeroinitializer }, align 32
@imx7ulp_data = internal constant { %struct.fsl_rpmsg_soc_data, [16 x i8] } { %struct.fsl_rpmsg_soc_data { i32 138, i64 4 }, [16 x i8] zeroinitializer }, align 32
@imx8mm_data = internal constant { %struct.fsl_rpmsg_soc_data, [16 x i8] } { %struct.fsl_rpmsg_soc_data { i32 -2147483648, i64 1970324836975684 }, [16 x i8] zeroinitializer }, align 32
@imx8mn_data = internal constant { %struct.fsl_rpmsg_soc_data, [16 x i8] } { %struct.fsl_rpmsg_soc_data { i32 7904, i64 1092 }, [16 x i8] zeroinitializer }, align 32
@imx8mp_data = internal constant { %struct.fsl_rpmsg_soc_data, [16 x i8] } { %struct.fsl_rpmsg_soc_data { i32 7904, i64 1092 }, [16 x i8] zeroinitializer }, align 32
@fsl_rpmsg_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.10, i32 267, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable ipg clock: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fsl_rpmsg_runtime_resume\00", [39 x i8] zeroinitializer }, align 32
@fsl_rpmsg_runtime_resume._entry_ptr = internal global ptr @fsl_rpmsg_runtime_resume._entry, section ".printk_index", align 4
@fsl_rpmsg_runtime_resume._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.10, i32 273, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable dma clock %d\0A\00", [33 x i8] zeroinitializer }, align 32
@fsl_rpmsg_runtime_resume._entry_ptr.26 = internal global ptr @fsl_rpmsg_runtime_resume._entry.24, section ".printk_index", align 4
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"fsl_rpmsg_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 304, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 308, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"fsl_rpmsg_ids\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 172, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"fsl_rpmsg_pm_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 296, i32 32 }
@___asan_gen_.39 = private unnamed_addr constant [14 x i8] c"fsl_rpmsg_dai\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 116, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 199, i32 32 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 207, i32 49 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 211, i32 50 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 215, i32 49 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 219, i32 51 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 223, i32 52 }
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"fsl_component\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 137, i32 46 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 236, i32 9 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 241, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [18 x i8] c"fsl_rpmsg_dai_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 110, i32 37 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 125, i32 18 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 118, i32 18 }
@___asan_gen_.93 = private unnamed_addr constant [27 x i8] c"fsl_rpmsg_rate_constraints\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 35, i32 48 }
@___asan_gen_.96 = private unnamed_addr constant [16 x i8] c"fsl_rpmsg_rates\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 29, i32 27 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 67, i32 5 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 75, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 138, i32 20 }
@___asan_gen_.120 = private unnamed_addr constant [13 x i8] c"imx7ulp_data\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 141, i32 40 }
@___asan_gen_.123 = private unnamed_addr constant [12 x i8] c"imx8mm_data\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 147, i32 40 }
@___asan_gen_.126 = private unnamed_addr constant [12 x i8] c"imx8mn_data\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 154, i32 40 }
@___asan_gen_.129 = private unnamed_addr constant [12 x i8] c"imx8mp_data\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 163, i32 40 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 267, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private constant [29 x i8] c"../sound/soc/fsl/fsl_rpmsg.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 273, i32 3 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_alias244, ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_fsl_rpmsg_driver_exit, ptr @__initcall__kmod_snd_soc_fsl_rpmsg__241_313_fsl_rpmsg_driver_init6, ptr @fsl_rpmsg_driver_exit, ptr @fsl_rpmsg_hw_params._entry, ptr @fsl_rpmsg_hw_params._entry.18, ptr @fsl_rpmsg_hw_params._entry_ptr, ptr @fsl_rpmsg_hw_params._entry_ptr.20, ptr @fsl_rpmsg_probe._entry, ptr @fsl_rpmsg_probe._entry_ptr, ptr @fsl_rpmsg_runtime_resume._entry, ptr @fsl_rpmsg_runtime_resume._entry.24, ptr @fsl_rpmsg_runtime_resume._entry_ptr, ptr @fsl_rpmsg_runtime_resume._entry_ptr.26, ptr @fsl_rpmsg_driver, ptr @.str, ptr @fsl_rpmsg_ids, ptr @fsl_rpmsg_pm_ops, ptr @fsl_rpmsg_dai, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @fsl_component, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @fsl_rpmsg_dai_ops, ptr @.str.13, ptr @.str.14, ptr @fsl_rpmsg_rate_constraints, ptr @fsl_rpmsg_rates, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @imx7ulp_data, ptr @imx8mm_data, ptr @imx8mn_data, ptr @imx8mp_data, ptr @.str.22, ptr @.str.23, ptr @.str.25], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_rpmsg_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_rpmsg_ids to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_rpmsg_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_rpmsg_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_rpmsg_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_rpmsg_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_rpmsg_rate_constraints to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_rpmsg_rates to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_rpmsg_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_rpmsg_hw_params._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7ulp_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mm_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_rpmsg_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_rpmsg_runtime_resume._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_rpmsg_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsl_rpmsg_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fsl_rpmsg_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsl_rpmsg_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_rpmsg_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %soc_data = getelementptr inbounds %struct.fsl_rpmsg, ptr %call.i, i32 0, i32 6
  %2 = ptrtoint ptr %soc_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %soc_data, align 4
  %3 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call3, align 8
  store i32 %4, ptr getelementptr inbounds (%struct.snd_soc_dai_driver, ptr @fsl_rpmsg_dai, i32 0, i32 11, i32 2), align 8
  %5 = load i32, ptr %call3, align 8
  store i32 %5, ptr getelementptr inbounds (%struct.snd_soc_dai_driver, ptr @fsl_rpmsg_dai, i32 0, i32 10, i32 2), align 8
  %formats = getelementptr inbounds %struct.fsl_rpmsg_soc_data, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %formats to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %formats, align 8
  store i64 %7, ptr getelementptr inbounds (%struct.snd_soc_dai_driver, ptr @fsl_rpmsg_dai, i32 0, i32 11, i32 1), align 8
  %8 = load i64, ptr %formats, align 8
  store i64 %8, ptr getelementptr inbounds (%struct.snd_soc_dai_driver, ptr @fsl_rpmsg_dai, i32 0, i32 10, i32 1), align 8
  %call.i112 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i112, null
  br i1 %tobool.i.not, label %if.end.if.end13_crit_edge, label %if.then11

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %enable_lpa = getelementptr inbounds %struct.fsl_rpmsg, ptr %call.i, i32 0, i32 9
  %9 = ptrtoint ptr %enable_lpa to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %enable_lpa, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end.if.end13_crit_edge
  %.sink = phi i32 [ 100663296, %if.then11 ], [ 65536, %if.end.if.end13_crit_edge ]
  %10 = getelementptr inbounds %struct.fsl_rpmsg, ptr %call.i, i32 0, i32 10
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %10, align 4
  %call15 = tail call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.2) #6
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call15, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %call23 = tail call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.3) #6
  %mclk = getelementptr inbounds %struct.fsl_rpmsg, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call23, ptr %mclk, align 4
  %cmp.i113 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i113, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %call23 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  %call31 = tail call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.4) #6
  %dma = getelementptr inbounds %struct.fsl_rpmsg, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call31, ptr %dma, align 4
  %cmp.i114 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i114, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call31 to i32
  br label %cleanup

if.end37:                                         ; preds = %if.end29
  %call39 = tail call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.5) #6
  %pll8k = getelementptr inbounds %struct.fsl_rpmsg, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %pll8k to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call39, ptr %pll8k, align 4
  %cmp.i115 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i115, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %call39 to i32
  br label %cleanup

if.end45:                                         ; preds = %if.end37
  %call47 = tail call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.6) #6
  %pll11k = getelementptr inbounds %struct.fsl_rpmsg, ptr %call.i, i32 0, i32 4
  %20 = ptrtoint ptr %pll11k to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call47, ptr %pll11k, align 4
  %cmp.i116 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116, label %if.then50, label %if.end53

if.then50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %call47 to i32
  br label %cleanup

if.end53:                                         ; preds = %if.end45
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev) #6
  %call56 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @fsl_component, ptr noundef nonnull @fsl_rpmsg_dai, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end59:                                         ; preds = %if.end53
  %call61 = tail call fastcc ptr @platform_device_register_data(ptr noundef %dev)
  %card_pdev = getelementptr inbounds %struct.fsl_rpmsg, ptr %call.i, i32 0, i32 5
  %23 = ptrtoint ptr %card_pdev to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call61, ptr %card_pdev, align 4
  %cmp.i117 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i117, label %do.end, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  %24 = ptrtoint ptr %card_pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card_pdev, align 4
  %26 = ptrtoint ptr %25 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end59.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.then50, %if.then42, %if.then34, %if.then26, %if.then18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then18 ], [ %15, %if.then26 ], [ %17, %if.then34 ], [ %19, %if.then42 ], [ %21, %if.then50 ], [ %26, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call56, %if.end53.cleanup_crit_edge ], [ 0, %if.end59.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_rpmsg_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %card_pdev = getelementptr inbounds %struct.fsl_rpmsg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %card_pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card_pdev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_device_unregister(ptr noundef nonnull %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @platform_device_register_data(ptr noundef %parent) unnamed_addr #4 align 64 {
entry:
  %pdevinfo.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i) #6
  %0 = getelementptr inbounds i8, ptr %pdevinfo.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 48)
  %2 = ptrtoint ptr %pdevinfo.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %parent, ptr %pdevinfo.i, align 8
  %fwnode.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 1
  %3 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %fwnode.i, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %0, align 8
  %name2.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 3
  %5 = ptrtoint ptr %name2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.7, ptr %name2.i, align 4
  %res4.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 5
  %dma_mask.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 9
  %6 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %dma_mask.i, align 8
  %properties.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 10
  %7 = ptrtoint ptr %properties.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %properties.i, align 8
  %8 = call ptr @memset(ptr %res4.i, i32 0, i32 16)
  %call.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i) #6
  ret ptr %call.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_rpmsg_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %call = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %1, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @fsl_rpmsg_rate_constraints) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_rpmsg_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %mclk = getelementptr inbounds %struct.fsl_rpmsg, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mclk, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %conv = zext i32 %7 to i64
  %pll8k = getelementptr inbounds %struct.fsl_rpmsg, ptr %3, i32 0, i32 3
  %pll11k = getelementptr inbounds %struct.fsl_rpmsg, ptr %3, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %lor.lhs.false.while.cond_crit_edge, %entry
  %p.0 = phi ptr [ %5, %entry ], [ %call4, %lor.lhs.false.while.cond_crit_edge ]
  %tobool.not = icmp eq ptr %p.0, null
  br i1 %tobool.not, label %while.cond.if.end215_crit_edge, label %land.lhs.true

while.cond.if.end215_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end215

land.lhs.true:                                    ; preds = %while.cond
  %8 = ptrtoint ptr %pll8k to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pll8k, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %land.lhs.true.if.end215_crit_edge, label %land.rhs

land.lhs.true.if.end215_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end215

land.rhs:                                         ; preds = %land.lhs.true
  %10 = ptrtoint ptr %pll11k to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pll11k, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %land.rhs.if.end215_crit_edge, label %while.body

land.rhs.if.end215_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end215

while.body:                                       ; preds = %land.rhs
  %call4 = tail call ptr @clk_get_parent(ptr noundef nonnull %p.0) #6
  %12 = ptrtoint ptr %pll8k to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pll8k, align 4
  %call6 = tail call zeroext i1 @clk_is_match(ptr noundef %call4, ptr noundef %13) #6
  br i1 %call6, label %while.body.while.end_crit_edge, label %lor.lhs.false

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

lor.lhs.false:                                    ; preds = %while.body
  %14 = ptrtoint ptr %pll11k to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pll11k, align 4
  %call9 = tail call zeroext i1 @clk_is_match(ptr noundef %call4, ptr noundef %15) #6
  br i1 %call9, label %lor.lhs.false.while.end_crit_edge, label %lor.lhs.false.while.cond_crit_edge

lor.lhs.false.while.cond_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

lor.lhs.false.while.end_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %lor.lhs.false.while.end_crit_edge, %while.body.while.end_crit_edge
  %tobool11.not = icmp eq ptr %call4, null
  br i1 %tobool11.not, label %while.end.if.end215_crit_edge, label %if.end173

while.end.if.end215_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end215

if.end173:                                        ; preds = %while.end
  %16 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %conv, i32 0) #10, !srcloc !94
  %asmresult.i = extractvalue { i64, i32 } %16, 0
  %asmresult4.i = extractvalue { i64, i32 } %16, 1
  %17 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %conv, i64 %asmresult.i, i32 %asmresult4.i) #10, !srcloc !95
  %asmresult10.i = extractvalue { i64, i32 } %17, 0
  %div177345 = lshr i64 %asmresult10.i, 12
  %conv178 = trunc i64 %div177345 to i32
  %mul179.neg = mul i32 %conv178, -8000
  %sub180 = sub i32 0, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %mul179.neg, i32 %sub180)
  %tobool199.not = icmp eq i32 %mul179.neg, %sub180
  %cond205.in = select i1 %tobool199.not, ptr %pll8k, ptr %pll11k
  %18 = ptrtoint ptr %cond205.in to i32
  call void @__asan_load4_noabort(i32 %18)
  %cond205 = load ptr, ptr %cond205.in, align 4
  %call206 = tail call zeroext i1 @clk_is_match(ptr noundef nonnull %call4, ptr noundef %cond205) #6
  br i1 %call206, label %if.end173.if.end215_crit_edge, label %if.then207

if.end173.if.end215_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end215

if.then207:                                       ; preds = %if.end173
  %call208 = tail call i32 @clk_set_parent(ptr noundef nonnull %p.0, ptr noundef %cond205) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208)
  %cmp209 = icmp slt i32 %call208, 0
  br i1 %cmp209, label %do.end, label %if.then207.if.end215_crit_edge

if.then207.if.end215_crit_edge:                   ; preds = %if.then207
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end215

do.end:                                           ; preds = %if.then207
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %call212 = tail call ptr @__clk_get_name(ptr noundef %cond205) #6
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.15, ptr noundef %call212, i32 noundef %call208) #9
  br label %if.end215

if.end215:                                        ; preds = %do.end, %if.then207.if.end215_crit_edge, %if.end173.if.end215_crit_edge, %while.end.if.end215_crit_edge, %land.rhs.if.end215_crit_edge, %land.lhs.true.if.end215_crit_edge, %while.cond.if.end215_crit_edge
  %ret.0 = phi i32 [ 0, %if.end173.if.end215_crit_edge ], [ %call208, %do.end ], [ %call208, %if.then207.if.end215_crit_edge ], [ 0, %while.end.if.end215_crit_edge ], [ 0, %land.rhs.if.end215_crit_edge ], [ 0, %land.lhs.true.if.end215_crit_edge ], [ 0, %while.cond.if.end215_crit_edge ]
  %mclk_streams = getelementptr inbounds %struct.fsl_rpmsg, ptr %3, i32 0, i32 7
  %21 = ptrtoint ptr %mclk_streams to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mclk_streams, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %23 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %stream, align 4
  %shl216 = shl nuw i32 1, %24
  %and217 = and i32 %shl216, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and217)
  %tobool218.not = icmp eq i32 %and217, 0
  br i1 %tobool218.not, label %if.then219, label %if.end215.cleanup234_crit_edge

if.end215.cleanup234_crit_edge:                   ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup234

if.then219:                                       ; preds = %if.end215
  %25 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then219.do.end226_crit_edge

if.then219.do.end226_crit_edge:                   ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end226

if.end.i:                                         ; preds = %if.then219
  %call1.i = tail call i32 @clk_enable(ptr noundef %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end228, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %26) #6
  br label %do.end226

do.end226:                                        ; preds = %if.then3.i, %if.then219.do.end226_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then219.do.end226_crit_edge ]
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.19, i32 noundef %retval.0.i.ph) #9
  br label %cleanup234

if.end228:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stream, align 4
  %shl230 = shl nuw i32 1, %30
  %31 = ptrtoint ptr %mclk_streams to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mclk_streams, align 4
  %or232 = or i32 %32, %shl230
  store i32 %or232, ptr %mclk_streams, align 4
  br label %cleanup234

cleanup234:                                       ; preds = %if.end228, %do.end226, %if.end215.cleanup234_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end226 ], [ %ret.0, %if.end215.cleanup234_crit_edge ], [ 0, %if.end228 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_rpmsg_hw_free(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %mclk_streams = getelementptr inbounds %struct.fsl_rpmsg, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %mclk_streams to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mclk_streams, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %6 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream, align 4
  %shl = shl nuw i32 1, %7
  %and = and i32 %shl, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mclk = getelementptr inbounds %struct.fsl_rpmsg, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mclk, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  %10 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream, align 4
  %shl2 = shl nuw i32 1, %11
  %neg = xor i32 %shl2, -1
  %12 = ptrtoint ptr %mclk_streams to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mclk_streams, align 4
  %and4 = and i32 %13, %neg
  store i32 %and4, ptr %mclk_streams, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clk_is_match(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_rpmsg_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dma = getelementptr inbounds %struct.fsl_rpmsg, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_rpmsg_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %dma = getelementptr inbounds %struct.fsl_rpmsg, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma, align 4
  %call.i19 = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool.not.i20 = icmp eq i32 %call.i19, 0
  br i1 %tobool.not.i20, label %if.end.i23, label %if.end.do.end7_crit_edge

if.end.do.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

if.end.i23:                                       ; preds = %if.end
  %call1.i21 = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21)
  %tobool2.not.i22 = icmp eq i32 %call1.i21, 0
  br i1 %tobool2.not.i22, label %if.end.i23.cleanup_crit_edge, label %if.then3.i24

if.end.i23.cleanup_crit_edge:                     ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.i24:                                     ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %do.end7

do.end7:                                          ; preds = %if.then3.i24, %if.end.do.end7_crit_edge
  %retval.0.i25.ph = phi i32 [ %call1.i21, %if.then3.i24 ], [ %call.i19, %if.end.do.end7_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %retval.0.i25.ph) #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.i23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %retval.0.i25.ph, %do.end7 ], [ 0, %if.end.i23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !53, !54, !55, !56, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !79, !80, !81, !83, !84}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__initcall__kmod_snd_soc_fsl_rpmsg__241_313_fsl_rpmsg_driver_init6, !1, !"__initcall__kmod_snd_soc_fsl_rpmsg__241_313_fsl_rpmsg_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/fsl/fsl_rpmsg.c", i32 313, i32 1}
!2 = !{ptr @__exitcall_fsl_rpmsg_driver_exit, !1, !"__exitcall_fsl_rpmsg_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description242, !4, !"__UNIQUE_ID_description242", i1 false, i1 false}
!4 = !{!"../sound/soc/fsl/fsl_rpmsg.c", i32 315, i32 1}
!5 = !{ptr @__UNIQUE_ID_author243, !6, !"__UNIQUE_ID_author243", i1 false, i1 false}
!6 = !{!"../sound/soc/fsl/fsl_rpmsg.c", i32 316, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias244, !8, !"__UNIQUE_ID_alias244", i1 false, i1 false}
!8 = !{!"../sound/soc/fsl/fsl_rpmsg.c", i32 317, i32 1}
!9 = !{ptr @__UNIQUE_ID_file245, !10, !"__UNIQUE_ID_file245", i1 false, i1 false}
!10 = !{!"../sound/soc/fsl/fsl_rpmsg.c", i32 318, i32 1}
!11 = !{ptr @__UNIQUE_ID_license246, !10, !"__UNIQUE_ID_license246", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/fsl/fsl_rpmsg.c", i32 308, i32 11}
!14 = !{ptr @fsl_rpmsg_driver, !15, !"fsl_rpmsg_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/fsl/fsl_rpmsg.c", i32 304, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/fsl/fsl_rpmsg.c", i32 199, i32 32}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/fsl/fsl_rpmsg.c", i32 207, i32 49}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/fsl/fsl_rpmsg.c", i32 211, i32 50}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/fsl/fsl_rpmsg.c", i32 215, i32 49}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/fsl/fsl_rpmsg.c", i32 219, i32 51}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/fsl/fsl_rpmsg.c", i32 223, i32 52}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/fsl/fsl_rpmsg.c", i32 236, i32 9}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/fsl/fsl_rpmsg.c", i32 241, i32 3}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @fsl_rpmsg_probe._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @fsl_rpmsg_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/fsl/fsl_rpmsg.c", i32 125, i32 18}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/fsl/fsl_rpmsg.c", i32 118, i32 18}
!42 = !{ptr @fsl_rpmsg_dai, !43, !"fsl_rpmsg_dai", i1 false, i1 false}
!43 = !{!"../sound/soc/fsl/fsl_rpmsg.c", i32 116, i32 34}
!44 = !{ptr @fsl_rpmsg_dai_ops, !45, !"fsl_rpmsg_dai_ops", i1 false, i1 false}
!45 = !{!"../sound/soc/fsl/fsl_rpmsg.c", i32 110, i32 37}
!46 = !{ptr @fsl_rpmsg_rate_constraints, !47, !"fsl_rpmsg_rate_constraints", i1 false, i1 false}
!47 = !{!"../sound/soc/fsl/fsl_rpmsg.c", i32 35, i32 48}
!48 = !{ptr @fsl_rpmsg_rates, !49, !"fsl_rpmsg_rates", i1 false, i1 false}
!49 = !{!"../sound/soc/fsl/fsl_rpmsg.c", i32 29, i32 27}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/fsl/fsl_rpmsg.c", i32 67, i32 5}
!52 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @fsl_rpmsg_hw_params._entry, !51, !"_entry", i1 false, i1 false}
!55 = !{ptr @fsl_rpmsg_hw_params._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/fsl/fsl_rpmsg.c", i32 75, i32 4}
!58 = !{ptr @fsl_rpmsg_hw_params._entry.18, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @fsl_rpmsg_hw_params._entry_ptr.20, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/fsl/fsl_rpmsg.c", i32 138, i32 20}
!62 = !{ptr @fsl_component, !63, !"fsl_component", i1 false, i1 false}
!63 = !{!"../sound/soc/fsl/fsl_rpmsg.c", i32 137, i32 46}
!64 = !{ptr @fsl_rpmsg_ids, !65, !"fsl_rpmsg_ids", i1 false, i1 false}
!65 = !{!"../sound/soc/fsl/fsl_rpmsg.c", i32 172, i32 34}
!66 = !{ptr @imx7ulp_data, !67, !"imx7ulp_data", i1 false, i1 false}
!67 = !{!"../sound/soc/fsl/fsl_rpmsg.c", i32 141, i32 40}
!68 = !{ptr @imx8mm_data, !69, !"imx8mm_data", i1 false, i1 false}
!69 = !{!"../sound/soc/fsl/fsl_rpmsg.c", i32 147, i32 40}
!70 = !{ptr @imx8mn_data, !71, !"imx8mn_data", i1 false, i1 false}
!71 = !{!"../sound/soc/fsl/fsl_rpmsg.c", i32 154, i32 40}
!72 = !{ptr @imx8mp_data, !73, !"imx8mp_data", i1 false, i1 false}
!73 = !{!"../sound/soc/fsl/fsl_rpmsg.c", i32 163, i32 40}
!74 = !{ptr @fsl_rpmsg_pm_ops, !75, !"fsl_rpmsg_pm_ops", i1 false, i1 false}
!75 = !{!"../sound/soc/fsl/fsl_rpmsg.c", i32 296, i32 32}
!76 = !{ptr @.str.22, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/fsl/fsl_rpmsg.c", i32 267, i32 3}
!78 = !{ptr @.str.23, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @fsl_rpmsg_runtime_resume._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @fsl_rpmsg_runtime_resume._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/fsl/fsl_rpmsg.c", i32 273, i32 3}
!83 = !{ptr @fsl_rpmsg_runtime_resume._entry.24, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @fsl_rpmsg_runtime_resume._entry_ptr.26, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i64 1151517, i64 1151544, i64 1151566, i64 1151594}
!95 = !{i64 1151925, i64 1151952, i64 1151985, i64 1152006, i64 1152033, i64 1152059}
