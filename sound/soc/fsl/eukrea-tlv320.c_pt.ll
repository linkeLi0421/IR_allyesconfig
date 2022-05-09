; ModuleID = '/llk/IR_all_yes/sound/soc/fsl/eukrea-tlv320.c_pt.bc'
source_filename = "../sound/soc/fsl/eukrea-tlv320.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.104, ptr }
%union.anon.104 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }

@__initcall__kmod_snd_soc_eukrea_tlv320__294_228_eukrea_tlv320_driver_init6 = internal global ptr @eukrea_tlv320_driver_init, section ".initcall6.init", align 4
@eukrea_tlv320_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @eukrea_tlv320_probe, ptr @eukrea_tlv320_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_tlv320_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_eukrea_tlv320_driver_exit = internal global ptr @eukrea_tlv320_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [60 x i8] c"snd_soc_eukrea_tlv320.author=Eric B\C3\A9nard <eric@eukrea.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [57 x i8] c"snd_soc_eukrea_tlv320.description=CPUIMX ALSA SoC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [63 x i8] c"snd_soc_eukrea_tlv320.file=sound/soc/fsl/snd-soc-eukrea-tlv320\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [34 x i8] c"snd_soc_eukrea_tlv320.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias299 = internal constant [51 x i8] c"snd_soc_eukrea_tlv320.alias=platform:eukrea_tlv320\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"eukrea_tlv320\00", [18 x i8] zeroinitializer }, align 32
@imx_tlv320_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"eukrea,asoc-tlv320\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@eukrea_tlv320 = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr null, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @eukrea_tlv320_dai, i32 1, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr null }, [184 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"eukrea,model\00", [19 x i8] zeroinitializer }, align 32
@eukrea_tlv320_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 97, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"eukrea,model node missing or invalid.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"eukrea_tlv320_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/soc/fsl/eukrea-tlv320.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@eukrea_tlv320_probe._entry_ptr = internal global ptr @eukrea_tlv320_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ssi-controller\00", [17 x i8] zeroinitializer }, align 32
@eukrea_tlv320_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 105, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ssi-controller missing or invalid.\0A\00", [60 x i8] zeroinitializer }, align 32
@eukrea_tlv320_probe._entry_ptr.10 = internal global ptr @eukrea_tlv320_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"codec-handle\00", [19 x i8] zeroinitializer }, align 32
@eukrea_tlv320_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 114, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"codec-handle node missing or invalid.\0A\00", [57 x i8] zeroinitializer }, align 32
@eukrea_tlv320_probe._entry_ptr.14 = internal global ptr @eukrea_tlv320_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl,mux-int-port\00", [47 x i8] zeroinitializer }, align 32
@eukrea_tlv320_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 119, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"fsl,mux-int-port node missing or invalid.\0A\00", [53 x i8] zeroinitializer }, align 32
@eukrea_tlv320_probe._entry_ptr.18 = internal global ptr @eukrea_tlv320_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl,mux-ext-port\00", [47 x i8] zeroinitializer }, align 32
@eukrea_tlv320_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 125, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"fsl,mux-ext-port node missing or invalid.\0A\00", [53 x i8] zeroinitializer }, align 32
@eukrea_tlv320_probe._entry_ptr.22 = internal global ptr @eukrea_tlv320_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"imx-ssi.0\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tlv320aic23-codec.0-001a\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cpuimx-audio\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl,imx21-audmux\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl,imx31-audmux\00", [47 x i8] zeroinitializer }, align 32
@eukrea_tlv320_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 187, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Missing or invalid audmux DT node.\0A\00", [60 x i8] zeroinitializer }, align 32
@eukrea_tlv320_probe._entry_ptr.30 = internal global ptr @eukrea_tlv320_probe._entry.28, section ".printk_index", align 4
@eukrea_tlv320_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.3, ptr @.str.4, i32 200, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"snd_soc_register_card failed (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@eukrea_tlv320_probe._entry_ptr.33 = internal global ptr @eukrea_tlv320_probe._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tlv320aic23\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TLV320AIC23\00", [20 x i8] zeroinitializer }, align 32
@hifi_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@hifi_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.37 }], [20 x i8] zeroinitializer }, align 32
@hifi_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@eukrea_tlv320_snd_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr null, ptr null, ptr @eukrea_tlv320_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@eukrea_tlv320_dai = internal global { { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }, [44 x i8] } { { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.34, ptr @.str.35, ptr @hifi_cpus, i32 1, ptr @hifi_codecs, i32 1, ptr @hifi_platforms, i32 1, i32 0, ptr null, i32 0, i32 4097, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @eukrea_tlv320_snd_ops, ptr null, i8 0, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tlv320aic23-hifi\00", [47 x i8] zeroinitializer }, align 32
@eukrea_tlv320_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 42, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to set the codec sysclk.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"eukrea_tlv320_hw_params\00", [40 x i8] zeroinitializer }, align 32
@eukrea_tlv320_hw_params._entry_ptr = internal global ptr @eukrea_tlv320_hw_params._entry, section ".printk_index", align 4
@eukrea_tlv320_hw_params._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.4, i32 53, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Can't set the IMX_SSP_SYS_CLK CPU system clock.\0A\00", [47 x i8] zeroinitializer }, align 32
@eukrea_tlv320_hw_params._entry_ptr.42 = internal global ptr @eukrea_tlv320_hw_params._entry.40, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@___asan_gen_.43 = private unnamed_addr constant [21 x i8] c"eukrea_tlv320_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 219, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 221, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [18 x i8] c"imx_tlv320_dt_ids\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 213, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant [14 x i8] c"eukrea_tlv320\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 78, i32 28 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 94, i32 8 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 96, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 102, i32 8 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 104, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 110, i32 39 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 114, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 116, i32 34 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 118, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 122, i32 34 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 124, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 139, i32 38 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 141, i32 36 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 142, i32 24 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 146, i32 42 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 164, i32 42 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 186, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 200, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 70, i32 11 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 71, i32 17 }
@___asan_gen_.145 = private unnamed_addr constant [10 x i8] c"hifi_cpus\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [12 x i8] c"hifi_codecs\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [15 x i8] c"hifi_platforms\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [22 x i8] c"eukrea_tlv320_snd_ops\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 60, i32 33 }
@___asan_gen_.157 = private unnamed_addr constant [18 x i8] c"eukrea_tlv320_dai\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 69, i32 32 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 64, i32 1 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 41, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.176 = private constant [33 x i8] c"../sound/soc/fsl/eukrea-tlv320.c\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 52, i32 3 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_alias299, ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_eukrea_tlv320_driver_exit, ptr @__initcall__kmod_snd_soc_eukrea_tlv320__294_228_eukrea_tlv320_driver_init6, ptr @eukrea_tlv320_driver_exit, ptr @eukrea_tlv320_hw_params._entry, ptr @eukrea_tlv320_hw_params._entry.40, ptr @eukrea_tlv320_hw_params._entry_ptr, ptr @eukrea_tlv320_hw_params._entry_ptr.42, ptr @eukrea_tlv320_probe._entry, ptr @eukrea_tlv320_probe._entry.12, ptr @eukrea_tlv320_probe._entry.16, ptr @eukrea_tlv320_probe._entry.20, ptr @eukrea_tlv320_probe._entry.28, ptr @eukrea_tlv320_probe._entry.31, ptr @eukrea_tlv320_probe._entry.8, ptr @eukrea_tlv320_probe._entry_ptr, ptr @eukrea_tlv320_probe._entry_ptr.10, ptr @eukrea_tlv320_probe._entry_ptr.14, ptr @eukrea_tlv320_probe._entry_ptr.18, ptr @eukrea_tlv320_probe._entry_ptr.22, ptr @eukrea_tlv320_probe._entry_ptr.30, ptr @eukrea_tlv320_probe._entry_ptr.33, ptr @eukrea_tlv320_driver, ptr @.str, ptr @imx_tlv320_dt_ids, ptr @eukrea_tlv320, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @hifi_cpus, ptr @hifi_codecs, ptr @hifi_platforms, ptr @eukrea_tlv320_snd_ops, ptr @eukrea_tlv320_dai, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eukrea_tlv320_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_tlv320_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eukrea_tlv320 to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eukrea_tlv320_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eukrea_tlv320_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eukrea_tlv320_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eukrea_tlv320_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eukrea_tlv320_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eukrea_tlv320_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eukrea_tlv320_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifi_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifi_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifi_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eukrea_tlv320_snd_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eukrea_tlv320_dai to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eukrea_tlv320_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eukrea_tlv320_hw_params._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @eukrea_tlv320_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @eukrea_tlv320_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @eukrea_tlv320_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @eukrea_tlv320_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eukrea_tlv320_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i114 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  %int_port = alloca i32, align 4
  %ext_port = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_port) #5
  %0 = ptrtoint ptr %int_port to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %int_port, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ext_port) #5
  %1 = ptrtoint ptr %ext_port to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ext_port, align 4, !annotation !103
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  store ptr %dev, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @eukrea_tlv320, i32 0, i32 5), align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else43, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @snd_soc_of_parse_card_name(ptr noundef nonnull @eukrea_tlv320, ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  br label %do.end83

if.end:                                           ; preds = %if.then
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #5
  %6 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  br label %do.end12

of_parse_phandle.exit:                            ; preds = %if.end
  %7 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  %tobool8.not = icmp eq ptr %8, null
  br i1 %tobool8.not, label %of_parse_phandle.exit.do.end12_crit_edge, label %if.end14

of_parse_phandle.exit.do.end12_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end12

do.end12:                                         ; preds = %of_parse_phandle.exit.do.end12_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  br label %do.end83

if.end14:                                         ; preds = %of_parse_phandle.exit
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i114) #5
  %9 = call ptr @memset(ptr %args.i114, i32 255, i32 72)
  %call.i115 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %8, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i114) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %tobool.not.i116 = icmp eq i32 %call.i115, 0
  br i1 %tobool.not.i116, label %of_parse_phandle.exit119, label %of_parse_phandle.exit119.thread

of_parse_phandle.exit119.thread:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i114) #5
  br label %do.end21

of_parse_phandle.exit119:                         ; preds = %if.end14
  %10 = ptrtoint ptr %args.i114 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %args.i114, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i114) #5
  %tobool16.not = icmp eq ptr %11, null
  br i1 %tobool16.not, label %of_parse_phandle.exit119.do.end21_crit_edge, label %if.then17

of_parse_phandle.exit119.do.end21_crit_edge:      ; preds = %of_parse_phandle.exit119
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end21

if.then17:                                        ; preds = %of_parse_phandle.exit119
  call void @__sanitizer_cov_trace_pc() #7
  %12 = load ptr, ptr getelementptr inbounds ({ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }, ptr @eukrea_tlv320_dai, i32 0, i32 4), align 4
  %of_node18 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %of_node18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %of_node18, align 4
  br label %if.end23

do.end21:                                         ; preds = %of_parse_phandle.exit119.do.end21_crit_edge, %of_parse_phandle.exit119.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #8
  br label %if.end23

if.end23:                                         ; preds = %do.end21, %if.then17
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.15, ptr noundef nonnull %int_port, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool25.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool25.not, label %if.end31, label %do.end29

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #8
  br label %do.end83

if.end31:                                         ; preds = %if.end23
  %call.i.i120 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.19, ptr noundef nonnull %ext_port, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i120)
  %tobool33.not = icmp sgt i32 %call.i.i120, -1
  br i1 %tobool33.not, label %if.end39, label %do.end37

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #8
  br label %do.end83

if.end39:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %int_port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %int_port, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %int_port, align 4
  %16 = ptrtoint ptr %ext_port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ext_port, align 4
  %dec40 = add i32 %17, -1
  store i32 %dec40, ptr %ext_port, align 4
  %18 = load ptr, ptr getelementptr inbounds ({ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }, ptr @eukrea_tlv320_dai, i32 0, i32 2), align 4
  %of_node41 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %of_node41 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %8, ptr %of_node41, align 4
  %20 = load ptr, ptr getelementptr inbounds ({ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }, ptr @eukrea_tlv320_dai, i32 0, i32 6), align 4
  %of_node42 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %of_node42 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %8, ptr %of_node42, align 4
  br label %if.end45

if.else43:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %22 = load ptr, ptr getelementptr inbounds ({ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }, ptr @eukrea_tlv320_dai, i32 0, i32 2), align 4
  %dai_name = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dai_name to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.23, ptr %dai_name, align 4
  %24 = load ptr, ptr getelementptr inbounds ({ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }, ptr @eukrea_tlv320_dai, i32 0, i32 6), align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.23, ptr %24, align 4
  %26 = load ptr, ptr getelementptr inbounds ({ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }, ptr @eukrea_tlv320_dai, i32 0, i32 4), align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.24, ptr %26, align 4
  store ptr @.str.25, ptr @eukrea_tlv320, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else43, %if.end39
  %ssi_np.0 = phi ptr [ %8, %if.end39 ], [ null, %if.else43 ]
  %call46 = call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.26) #5
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %if.else51, label %if.then48

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %call49 = call i32 @imx_audmux_v1_configure_port(i32 noundef 0, i32 noundef -887074816) #5
  %call50 = call i32 @imx_audmux_v1_configure_port(i32 noundef 2, i32 noundef 4096) #5
  br label %err

if.else51:                                        ; preds = %if.end45
  %call52 = call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.27) #5
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %if.else68, label %if.then54

if.then54:                                        ; preds = %if.else51
  br i1 %tobool.not, label %if.then56, label %if.then54.if.end57_crit_edge

if.then54.if.end57_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then56:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %ext_port to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %ext_port, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.then54.if.end57_crit_edge
  %29 = ptrtoint ptr %int_port to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %int_port, align 4
  %31 = ptrtoint ptr %ext_port to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ext_port, align 4
  %and = and i32 %32, 15
  %or58 = mul nuw nsw i32 %and, 138412032
  %or61 = add nuw nsw i32 %or58, -2080372736
  %and62 = shl i32 %32, 13
  %shl63 = and i32 %and62, 57344
  %call64 = call i32 @imx_audmux_v2_configure_port(i32 noundef %30, i32 noundef %or61, i32 noundef %shl63) #5
  %33 = ptrtoint ptr %ext_port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ext_port, align 4
  %35 = ptrtoint ptr %int_port to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %int_port, align 4
  %and65 = shl i32 %36, 13
  %shl66 = and i32 %and65, 57344
  %call67 = call i32 @imx_audmux_v2_configure_port(i32 noundef %34, i32 noundef 2048, i32 noundef %shl66) #5
  br label %err

if.else68:                                        ; preds = %if.else51
  br i1 %tobool.not, label %if.else68.cleanup_crit_edge, label %do.end73

if.else68.cleanup_crit_edge:                      ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end73:                                         ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #8
  br label %cleanup

err:                                              ; preds = %if.end57, %if.then48
  %call78 = call i32 @snd_soc_register_card(ptr noundef nonnull @eukrea_tlv320) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %err.if.end85_crit_edge, label %err.do.end83_crit_edge

err.do.end83_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end83

err.if.end85_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

do.end83:                                         ; preds = %err.do.end83_crit_edge, %do.end37, %do.end29, %do.end12, %do.end
  %ssi_np.1130 = phi ptr [ %ssi_np.0, %err.do.end83_crit_edge ], [ null, %do.end12 ], [ %8, %do.end37 ], [ %8, %do.end29 ], [ null, %do.end ]
  %ret.0128 = phi i32 [ %call78, %err.do.end83_crit_edge ], [ -19, %do.end12 ], [ %call.i.i120, %do.end37 ], [ %call.i.i, %do.end29 ], [ %call, %do.end ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %ret.0128) #8
  br label %if.end85

if.end85:                                         ; preds = %do.end83, %err.if.end85_crit_edge
  %ssi_np.1131 = phi ptr [ %ssi_np.1130, %do.end83 ], [ %ssi_np.0, %err.if.end85_crit_edge ]
  %ret.0129 = phi i32 [ %ret.0128, %do.end83 ], [ 0, %err.if.end85_crit_edge ]
  call void @of_node_put(ptr noundef %ssi_np.1131) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %do.end73, %if.else68.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0129, %if.end85 ], [ -19, %do.end73 ], [ 0, %if.else68.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ext_port) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_port) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eukrea_tlv320_remove(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_soc_unregister_card(ptr noundef nonnull @eukrea_tlv320) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_card_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_audmux_v1_configure_port(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_audmux_v2_configure_port(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_register_card(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eukrea_tlv320_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_cpus, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %call = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %7, i32 noundef 0, i32 noundef 12000000, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @snd_soc_dai_set_tdm_slot(ptr noundef %9, i32 noundef 3, i32 noundef 3, i32 noundef 2, i32 noundef 0) #5
  %call4 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %9, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %10 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call4, label %if.end.cleanup.sink.split_crit_edge [
    i32 0, label %if.end.cleanup_crit_edge
    i32 -22, label %if.end.cleanup_crit_edge24
  ]

if.end.cleanup_crit_edge24:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.41.sink = phi ptr [ @.str.38, %entry.cleanup.sink.split_crit_edge ], [ @.str.41, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %entry.cleanup.sink.split_crit_edge ], [ %call4, %if.end.cleanup.sink.split_crit_edge ]
  %dev10 = getelementptr inbounds %struct.snd_soc_dai, ptr %9, i32 0, i32 2
  %11 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull %.str.41.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge24
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge24 ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_tdm_slot(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_unregister_card(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !40, !42, !43, !44, !46, !48, !49, !50, !52, !54, !56, !58, !60, !62, !63, !64, !66, !67, !68, !70, !72, !74, !76, !78, !79, !80, !81, !83, !85, !86, !87, !88, !90, !91, !92}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @__initcall__kmod_snd_soc_eukrea_tlv320__294_228_eukrea_tlv320_driver_init6, !1, !"__initcall__kmod_snd_soc_eukrea_tlv320__294_228_eukrea_tlv320_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/fsl/eukrea-tlv320.c", i32 228, i32 1}
!2 = !{ptr @__exitcall_eukrea_tlv320_driver_exit, !1, !"__exitcall_eukrea_tlv320_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../sound/soc/fsl/eukrea-tlv320.c", i32 230, i32 1}
!5 = !{ptr @__UNIQUE_ID_description296, !6, !"__UNIQUE_ID_description296", i1 false, i1 false}
!6 = !{!"../sound/soc/fsl/eukrea-tlv320.c", i32 231, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../sound/soc/fsl/eukrea-tlv320.c", i32 232, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias299, !11, !"__UNIQUE_ID_alias299", i1 false, i1 false}
!11 = !{!"../sound/soc/fsl/eukrea-tlv320.c", i32 233, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/fsl/eukrea-tlv320.c", i32 221, i32 11}
!14 = !{ptr @eukrea_tlv320_driver, !15, !"eukrea_tlv320_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/fsl/eukrea-tlv320.c", i32 219, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/fsl/eukrea-tlv320.c", i32 94, i32 8}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/fsl/eukrea-tlv320.c", i32 96, i32 4}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @eukrea_tlv320_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @eukrea_tlv320_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/fsl/eukrea-tlv320.c", i32 102, i32 8}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/fsl/eukrea-tlv320.c", i32 104, i32 4}
!30 = !{ptr @eukrea_tlv320_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @eukrea_tlv320_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/fsl/eukrea-tlv320.c", i32 110, i32 39}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/fsl/eukrea-tlv320.c", i32 114, i32 4}
!36 = !{ptr @eukrea_tlv320_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @eukrea_tlv320_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/fsl/eukrea-tlv320.c", i32 116, i32 34}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/fsl/eukrea-tlv320.c", i32 118, i32 4}
!42 = !{ptr @eukrea_tlv320_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @eukrea_tlv320_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/fsl/eukrea-tlv320.c", i32 122, i32 34}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/fsl/eukrea-tlv320.c", i32 124, i32 4}
!48 = !{ptr @eukrea_tlv320_probe._entry.20, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @eukrea_tlv320_probe._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/fsl/eukrea-tlv320.c", i32 139, i32 38}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/fsl/eukrea-tlv320.c", i32 141, i32 36}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/fsl/eukrea-tlv320.c", i32 142, i32 24}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/fsl/eukrea-tlv320.c", i32 146, i32 42}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/fsl/eukrea-tlv320.c", i32 164, i32 42}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/fsl/eukrea-tlv320.c", i32 186, i32 4}
!62 = !{ptr @eukrea_tlv320_probe._entry.28, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @eukrea_tlv320_probe._entry_ptr.30, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/fsl/eukrea-tlv320.c", i32 200, i32 3}
!66 = !{ptr @eukrea_tlv320_probe._entry.31, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @eukrea_tlv320_probe._entry_ptr.33, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @eukrea_tlv320, !69, !"eukrea_tlv320", i1 false, i1 false}
!69 = !{!"../sound/soc/fsl/eukrea-tlv320.c", i32 78, i32 28}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/fsl/eukrea-tlv320.c", i32 70, i32 11}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/fsl/eukrea-tlv320.c", i32 71, i32 17}
!74 = !{ptr @eukrea_tlv320_dai, !75, !"eukrea_tlv320_dai", i1 false, i1 false}
!75 = !{!"../sound/soc/fsl/eukrea-tlv320.c", i32 69, i32 32}
!76 = !{ptr @hifi_cpus, !77, !"hifi_cpus", i1 false, i1 false}
!77 = !{!"../sound/soc/fsl/eukrea-tlv320.c", i32 64, i32 1}
!78 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @hifi_codecs, !77, !"hifi_codecs", i1 false, i1 false}
!80 = !{ptr @hifi_platforms, !77, !"hifi_platforms", i1 false, i1 false}
!81 = !{ptr @eukrea_tlv320_snd_ops, !82, !"eukrea_tlv320_snd_ops", i1 false, i1 false}
!82 = !{!"../sound/soc/fsl/eukrea-tlv320.c", i32 60, i32 33}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/fsl/eukrea-tlv320.c", i32 41, i32 3}
!85 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @eukrea_tlv320_hw_params._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @eukrea_tlv320_hw_params._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/fsl/eukrea-tlv320.c", i32 52, i32 3}
!90 = !{ptr @eukrea_tlv320_hw_params._entry.40, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @eukrea_tlv320_hw_params._entry_ptr.42, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @imx_tlv320_dt_ids, !93, !"imx_tlv320_dt_ids", i1 false, i1 false}
!93 = !{!"../sound/soc/fsl/eukrea-tlv320.c", i32 213, i32 34}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{!"auto-init"}
