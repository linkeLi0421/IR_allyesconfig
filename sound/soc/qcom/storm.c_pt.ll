; ModuleID = '/llk/IR_all_yes/sound/soc/qcom/storm.c_pt.bc'
source_filename = "../sound/soc/qcom/storm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
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

@__initcall__kmod_snd_soc_storm__238_140_storm_platform_driver_init6 = internal global ptr @storm_platform_driver_init, section ".initcall6.init", align 4
@storm_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @storm_platform_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @storm_device_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_storm_platform_driver_exit = internal global ptr @storm_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description239 = internal constant [65 x i8] c"snd_soc_storm.description=QTi IPQ806x-based Storm Machine Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [48 x i8] c"snd_soc_storm.file=sound/soc/qcom/snd-soc-storm\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [29 x i8] c"snd_soc_storm.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"storm-audio\00", [20 x i8] zeroinitializer }, align 32
@storm_device_id = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"google,storm-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom,model\00", [21 x i8] zeroinitializer }, align 32
@storm_platform_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 103, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error parsing card name: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"storm_platform_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sound/soc/qcom/storm.c\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@storm_platform_probe._entry_ptr = internal global ptr @storm_platform_probe._entry, section ".printk_index", align 4
@storm_platform_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 112, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error resolving dai links: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@storm_platform_probe._entry_ptr.9 = internal global ptr @storm_platform_probe._entry.7, section ".printk_index", align 4
@storm_platform_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 118, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error registering soundcard: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@storm_platform_probe._entry_ptr.12 = internal global ptr @storm_platform_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Primary\00", [24 x i8] zeroinitializer }, align 32
@hifi_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@hifi_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.15 }], [20 x i8] zeroinitializer }, align 32
@hifi_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@storm_soc_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr null, ptr null, ptr @storm_ops_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@storm_dai_link = internal global { { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }, [44 x i8] } { { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.13, ptr @.str.13, ptr @hifi_cpus, i32 1, ptr @hifi_codecs, i32 1, ptr @hifi_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @storm_soc_ops, ptr null, i8 0, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HiFi\00", [27 x i8] zeroinitializer }, align 32
@storm_ops_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 31, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid bit width given: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"storm_ops_hw_params\00", [44 x i8] zeroinitializer }, align 32
@storm_ops_hw_params._entry_ptr = internal global ptr @storm_ops_hw_params._entry, section ".printk_index", align 4
@storm_ops_hw_params._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.4, i32 45, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error setting sysclk to %u: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@storm_ops_hw_params._entry_ptr.20 = internal global ptr @storm_ops_hw_params._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@storm_parse_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 75, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error getting cpu phandle\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"storm_parse_of\00", [17 x i8] zeroinitializer }, align 32
@storm_parse_of._entry_ptr = internal global ptr @storm_parse_of._entry, section ".printk_index", align 4
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"codec\00", [26 x i8] zeroinitializer }, align 32
@storm_parse_of._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.4, i32 82, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error getting codec phandle\0A\00", [35 x i8] zeroinitializer }, align 32
@storm_parse_of._entry_ptr.27 = internal global ptr @storm_parse_of._entry.25, section ".printk_index", align 4
@___asan_gen_.28 = private unnamed_addr constant [22 x i8] c"storm_platform_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 132, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 134, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"storm_device_id\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 125, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 101, i32 41 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 103, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 112, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 118, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 62, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant [10 x i8] c"hifi_cpus\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [12 x i8] c"hifi_codecs\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [15 x i8] c"hifi_platforms\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [14 x i8] c"storm_soc_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 52, i32 33 }
@___asan_gen_.85 = private unnamed_addr constant [15 x i8] c"storm_dai_link\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 61, i32 32 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 56, i32 1 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 31, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 44, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 73, i32 49 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 75, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 80, i32 51 }
@___asan_gen_.121 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private constant [26 x i8] c"../sound/soc/qcom/storm.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 82, i32 3 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_storm_platform_driver_exit, ptr @__initcall__kmod_snd_soc_storm__238_140_storm_platform_driver_init6, ptr @storm_ops_hw_params._entry, ptr @storm_ops_hw_params._entry.18, ptr @storm_ops_hw_params._entry_ptr, ptr @storm_ops_hw_params._entry_ptr.20, ptr @storm_parse_of._entry, ptr @storm_parse_of._entry.25, ptr @storm_parse_of._entry_ptr, ptr @storm_parse_of._entry_ptr.27, ptr @storm_platform_driver_exit, ptr @storm_platform_probe._entry, ptr @storm_platform_probe._entry.10, ptr @storm_platform_probe._entry.7, ptr @storm_platform_probe._entry_ptr, ptr @storm_platform_probe._entry_ptr.12, ptr @storm_platform_probe._entry_ptr.9, ptr @storm_platform_driver, ptr @.str, ptr @storm_device_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @hifi_cpus, ptr @hifi_codecs, ptr @hifi_platforms, ptr @storm_soc_ops, ptr @storm_dai_link, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @storm_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @storm_device_id to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @storm_platform_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @storm_platform_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @storm_platform_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifi_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifi_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifi_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @storm_soc_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @storm_dai_link to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @storm_ops_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @storm_ops_hw_params._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @storm_parse_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @storm_parse_of._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @storm_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @storm_platform_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @storm_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @storm_platform_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @storm_platform_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i30.i = alloca %struct.of_phandle_args, align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 648, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 5
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 4
  %owner = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 7
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %owner, align 4
  %call3 = tail call i32 @snd_soc_of_parse_card_name(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call3) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %dai_link = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 24
  %2 = ptrtoint ptr %dai_link to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @storm_dai_link, ptr %dai_link, align 4
  %num_links = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 25
  %3 = ptrtoint ptr %num_links to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %num_links, align 4
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #6
  %8 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %7, ptr noundef nonnull @.str.21, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end7.of_parse_phandle.exit.i_crit_edge

if.end7.of_parse_phandle.exit.i_crit_edge:        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_parse_phandle.exit.i

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %args.i.i, align 4
  br label %of_parse_phandle.exit.i

of_parse_phandle.exit.i:                          ; preds = %if.end.i.i, %if.end7.of_parse_phandle.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ null, %if.end7.of_parse_phandle.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #6
  %11 = load ptr, ptr getelementptr inbounds ({ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }, ptr @storm_dai_link, i32 0, i32 2), align 4
  %of_node2.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %of_node2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %retval.0.i.i, ptr %of_node2.i, align 4
  %13 = load ptr, ptr getelementptr inbounds ({ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }, ptr @storm_dai_link, i32 0, i32 2), align 4
  %of_node4.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %of_node4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node4.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %of_parse_phandle.exit.i.do.end13_crit_edge, label %if.end.i

of_parse_phandle.exit.i.do.end13_crit_edge:       ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13

if.end.i:                                         ; preds = %of_parse_phandle.exit.i
  %16 = load ptr, ptr getelementptr inbounds ({ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }, ptr @storm_dai_link, i32 0, i32 6), align 4
  %of_node8.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %of_node8.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %of_node8.i, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i30.i) #6
  %18 = call ptr @memset(ptr %args.i30.i, i32 255, i32 72)
  %call.i31.i = call i32 @__of_parse_phandle_with_args(ptr noundef %7, ptr noundef nonnull @.str.24, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i30.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i)
  %tobool.not.i32.i = icmp eq i32 %call.i31.i, 0
  br i1 %tobool.not.i32.i, label %if.end.i33.i, label %if.end.i.of_parse_phandle.exit35.i_crit_edge

if.end.i.of_parse_phandle.exit35.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_parse_phandle.exit35.i

if.end.i33.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %args.i30.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %args.i30.i, align 4
  br label %of_parse_phandle.exit35.i

of_parse_phandle.exit35.i:                        ; preds = %if.end.i33.i, %if.end.i.of_parse_phandle.exit35.i_crit_edge
  %retval.0.i34.i = phi ptr [ %20, %if.end.i33.i ], [ null, %if.end.i.of_parse_phandle.exit35.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i30.i) #6
  %21 = load ptr, ptr getelementptr inbounds ({ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }, ptr @storm_dai_link, i32 0, i32 4), align 4
  %of_node10.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %of_node10.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %retval.0.i34.i, ptr %of_node10.i, align 4
  %23 = load ptr, ptr getelementptr inbounds ({ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }, ptr @storm_dai_link, i32 0, i32 4), align 4
  %of_node12.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %of_node12.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node12.i, align 4
  %tobool13.not.i = icmp eq ptr %25, null
  br i1 %tobool13.not.i, label %of_parse_phandle.exit35.i.do.end13_crit_edge, label %if.end15

of_parse_phandle.exit35.i.do.end13_crit_edge:     ; preds = %of_parse_phandle.exit35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13

do.end13:                                         ; preds = %of_parse_phandle.exit35.i.do.end13_crit_edge, %of_parse_phandle.exit.i.do.end13_crit_edge
  %.str.26.sink.i = phi ptr [ @.str.22, %of_parse_phandle.exit.i.do.end13_crit_edge ], [ @.str.26, %of_parse_phandle.exit35.i.do.end13_crit_edge ]
  %26 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull %.str.26.sink.i) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef -22) #9
  br label %cleanup

if.end15:                                         ; preds = %of_parse_phandle.exit35.i
  %call17 = call i32 @devm_snd_soc_register_card(ptr noundef %dev, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end15.cleanup_crit_edge, label %do.end22

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call17) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %if.end15.cleanup_crit_edge, %do.end13, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end ], [ -22, %do.end13 ], [ -12, %entry.cleanup_crit_edge ], [ %call17, %do.end22 ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_card_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @storm_ops_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %card1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.if.then.i.i_crit_edge

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %entry.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %5, %entry.if.then.i.i_crit_edge ], [ %8, %for.inc.i.i.if.then.i.i_crit_edge ]
  %6 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #6, !range !74
  %add.i.i = or i32 %6, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.1.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %arrayidx.i.i28 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %arrayidx.i.i28 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i28, align 4
  %call3 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.16, i32 noundef %call3) #9
  br label %cleanup

if.end:                                           ; preds = %params_format.exit
  %mul = shl i32 %10, 3
  %mul5 = mul i32 %mul, %call3
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dais, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call6 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %16, i32 noundef 0, i32 noundef %mul5, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev11 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 5
  %17 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.19, i32 noundef %mul5, i32 noundef %call6) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ %call6, %do.end10 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !36, !37, !38, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52, !54, !55, !56, !57, !59, !61, !62, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_snd_soc_storm__238_140_storm_platform_driver_init6, !1, !"__initcall__kmod_snd_soc_storm__238_140_storm_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/qcom/storm.c", i32 140, i32 1}
!2 = !{ptr @__exitcall_storm_platform_driver_exit, !1, !"__exitcall_storm_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description239, !4, !"__UNIQUE_ID_description239", i1 false, i1 false}
!4 = !{!"../sound/soc/qcom/storm.c", i32 142, i32 1}
!5 = !{ptr @__UNIQUE_ID_file240, !6, !"__UNIQUE_ID_file240", i1 false, i1 false}
!6 = !{!"../sound/soc/qcom/storm.c", i32 143, i32 1}
!7 = !{ptr @__UNIQUE_ID_license241, !6, !"__UNIQUE_ID_license241", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/qcom/storm.c", i32 134, i32 11}
!10 = !{ptr @storm_platform_driver, !11, !"storm_platform_driver", i1 false, i1 false}
!11 = !{!"../sound/soc/qcom/storm.c", i32 132, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/qcom/storm.c", i32 101, i32 41}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/qcom/storm.c", i32 103, i32 3}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @storm_platform_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @storm_platform_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/qcom/storm.c", i32 112, i32 3}
!24 = !{ptr @storm_platform_probe._entry.7, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @storm_platform_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/qcom/storm.c", i32 118, i32 3}
!28 = !{ptr @storm_platform_probe._entry.10, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @storm_platform_probe._entry_ptr.12, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/qcom/storm.c", i32 62, i32 11}
!32 = !{ptr @storm_dai_link, !33, !"storm_dai_link", i1 false, i1 false}
!33 = !{!"../sound/soc/qcom/storm.c", i32 61, i32 32}
!34 = !{ptr @hifi_cpus, !35, !"hifi_cpus", i1 false, i1 false}
!35 = !{!"../sound/soc/qcom/storm.c", i32 56, i32 1}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @hifi_codecs, !35, !"hifi_codecs", i1 false, i1 false}
!38 = !{ptr @hifi_platforms, !35, !"hifi_platforms", i1 false, i1 false}
!39 = !{ptr @storm_soc_ops, !40, !"storm_soc_ops", i1 false, i1 false}
!40 = !{!"../sound/soc/qcom/storm.c", i32 52, i32 33}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/qcom/storm.c", i32 31, i32 3}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @storm_ops_hw_params._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @storm_ops_hw_params._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/qcom/storm.c", i32 44, i32 3}
!48 = !{ptr @storm_ops_hw_params._entry.18, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @storm_ops_hw_params._entry_ptr.20, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/qcom/storm.c", i32 73, i32 49}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/qcom/storm.c", i32 75, i32 3}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @storm_parse_of._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @storm_parse_of._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/qcom/storm.c", i32 80, i32 51}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/qcom/storm.c", i32 82, i32 3}
!61 = !{ptr @storm_parse_of._entry.25, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @storm_parse_of._entry_ptr.27, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @storm_device_id, !64, !"storm_device_id", i1 false, i1 false}
!64 = !{!"../sound/soc/qcom/storm.c", i32 125, i32 34}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i32 0, i32 33}
