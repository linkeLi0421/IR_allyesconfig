; ModuleID = '/llk/IR_all_yes/sound/soc/pxa/mmp-sspa.c_pt.bc'
source_filename = "../sound/soc/pxa/mmp-sspa.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.snd_dmaengine_pcm_config = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.sspa_priv = type { ptr, ptr, %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data, ptr, ptr, ptr, i32, i32, i32 }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
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

@__initcall__kmod_snd_soc_mmp_sspa__241_580_asoc_mmp_sspa_driver_init6 = internal global ptr @asoc_mmp_sspa_driver_init, section ".initcall6.init", align 4
@asoc_mmp_sspa_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @asoc_mmp_sspa_probe, ptr @asoc_mmp_sspa_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mmp_sspa_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_asoc_mmp_sspa_driver_exit = internal global ptr @asoc_mmp_sspa_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author242 = internal constant [51 x i8] c"snd_soc_mmp_sspa.author=Leo Yan <leoy@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [52 x i8] c"snd_soc_mmp_sspa.description=MMP SSPA SoC Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [53 x i8] c"snd_soc_mmp_sspa.file=sound/soc/pxa/snd-soc-mmp-sspa\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [29 x i8] c"snd_soc_mmp_sspa.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias246 = internal constant [45 x i8] c"snd_soc_mmp_sspa.alias=platform:mmp-sspa-dai\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mmp-sspa-dai\00", [19 x i8] zeroinitializer }, align 32
@mmp_sspa_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mmp-sspa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bitclk\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"audio\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmp-audio\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmp-sysclk\00", [21 x i8] zeroinitializer }, align 32
@mmp_pcm_config = internal constant { %struct.snd_dmaengine_pcm_config, [60 x i8] } { %struct.snd_dmaengine_pcm_config { ptr @snd_dmaengine_pcm_prepare_slave_config, ptr null, ptr null, ptr null, ptr null, [2 x ptr] zeroinitializer, ptr @mmp_pcm_hardware, i32 4096 }, [60 x i8] zeroinitializer }, align 32
@mmp_sspa_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.5, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmp_sspa_open, ptr @mmp_sspa_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmp_pcm_mmap, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@mmp_sspa_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @mmp_sspa_probe, ptr null, ptr null, ptr null, ptr @mmp_sspa_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 4294968325, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 4294968325, i32 8190, i32 0, i32 0, i32 1, i32 128, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@mmp_pcm_hardware = internal constant { [2 x %struct.snd_pcm_hardware], [32 x i8] } { [2 x %struct.snd_pcm_hardware] [%struct.snd_pcm_hardware { i32 9175299, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 1024, i32 2048, i32 2, i32 32, i32 32 }, %struct.snd_pcm_hardware { i32 9175299, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 1024, i32 2048, i32 2, i32 32, i32 32 }], [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmp-sspa\00", [23 x i8] zeroinitializer }, align 32
@mmp_sspa_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 425, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"can't change hardware dai format: stream is in use\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mmp_sspa_open\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/soc/pxa/mmp-sspa.c\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mmp_sspa_open._entry_ptr = internal global ptr @mmp_sspa_open._entry, section ".printk_index", align 4
@mmp_sspa_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @mmp_sspa_set_dai_sysclk, ptr @mmp_sspa_set_dai_pll, ptr null, ptr null, ptr @mmp_sspa_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmp_sspa_startup, ptr @mmp_sspa_shutdown, ptr @mmp_sspa_hw_params, ptr null, ptr null, ptr @mmp_sspa_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 10, i64 32]
@__sancov_gen_cov_switch_values.13 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.14 = private unnamed_addr constant [21 x i8] c"asoc_mmp_sspa_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 571, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 573, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"mmp_sspa_of_match\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 563, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 484, i32 40 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 488, i32 46 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 511, i32 35 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 515, i32 32 }
@___asan_gen_.35 = private unnamed_addr constant [15 x i8] c"mmp_pcm_config\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 397, i32 46 }
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c"mmp_sspa_component\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 458, i32 46 }
@___asan_gen_.41 = private unnamed_addr constant [13 x i8] c"mmp_sspa_dai\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 352, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"mmp_pcm_hardware\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 376, i32 38 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 459, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 424, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"mmp_sspa_dai_ops\00", align 1
@___asan_gen_.69 = private constant [28 x i8] c"../sound/soc/pxa/mmp-sspa.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 342, i32 37 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_alias246, ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_asoc_mmp_sspa_driver_exit, ptr @__initcall__kmod_snd_soc_mmp_sspa__241_580_asoc_mmp_sspa_driver_init6, ptr @asoc_mmp_sspa_driver_exit, ptr @mmp_sspa_open._entry, ptr @mmp_sspa_open._entry_ptr, ptr @asoc_mmp_sspa_driver, ptr @.str, ptr @mmp_sspa_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mmp_pcm_config, ptr @mmp_sspa_component, ptr @mmp_sspa_dai, ptr @mmp_pcm_hardware, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @mmp_sspa_dai_ops], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asoc_mmp_sspa_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_sspa_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_pcm_config to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_sspa_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_sspa_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_pcm_hardware to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_sspa_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_sspa_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @asoc_mmp_sspa_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @asoc_mmp_sspa_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @asoc_mmp_sspa_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @asoc_mmp_sspa_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asoc_mmp_sspa_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 104, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup100_crit_edge, label %if.end

entry.cleanup100_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup100

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %rx_base = getelementptr inbounds %struct.sspa_priv, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %rx_base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %rx_base, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call4 to i32
  br label %cleanup100

if.end10:                                         ; preds = %if.then3
  %call11 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #6
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call11, ptr %call.i, align 4
  %cmp.i153 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call11 to i32
  br label %cleanup100

if.end17:                                         ; preds = %if.end10
  %call19 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #6
  %clk = getelementptr inbounds %struct.sspa_priv, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call19, ptr %clk, align 4
  %cmp.i154 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i154, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call19 to i32
  br label %cleanup100

if.end25:                                         ; preds = %if.end17
  %call27 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #6
  %audio_clk = getelementptr inbounds %struct.sspa_priv, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %audio_clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call27, ptr %audio_clk, align 4
  %cmp.i155 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i155, label %if.then30, label %if.end25.if.end77_crit_edge

if.end25.if.end77_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call27 to i32
  br label %cleanup100

if.else:                                          ; preds = %if.end
  %call34 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 256, i32 noundef 0) #6
  %cmp = icmp eq ptr %call34, null
  br i1 %cmp, label %if.else.cleanup100_crit_edge, label %if.end36

if.else.cleanup100_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup100

if.end36:                                         ; preds = %if.else
  %10 = ptrtoint ptr %call34 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call34, align 4
  %call38 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %11, i32 noundef 48) #6
  %rx_base39 = getelementptr inbounds %struct.sspa_priv, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %rx_base39 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call38, ptr %rx_base39, align 4
  %tobool41.not = icmp eq ptr %call38, null
  br i1 %tobool41.not, label %if.end36.cleanup100_crit_edge, label %if.end43

if.end36.cleanup100_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup100

if.end43:                                         ; preds = %if.end36
  %13 = ptrtoint ptr %call34 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call34, align 4
  %add = add i32 %14, 128
  %call46 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %add, i32 noundef 48) #6
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call46, ptr %call.i, align 4
  %tobool49.not = icmp eq ptr %call46, null
  br i1 %tobool49.not, label %if.end43.cleanup100_crit_edge, label %if.end51

if.end43.cleanup100_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup100

if.end51:                                         ; preds = %if.end43
  %call53 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %clk54 = getelementptr inbounds %struct.sspa_priv, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %clk54 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call53, ptr %clk54, align 4
  %cmp.i156 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i156, label %if.then57, label %if.end60

if.then57:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call53 to i32
  br label %cleanup100

if.end60:                                         ; preds = %if.end51
  %call61 = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str.3) #6
  %audio_clk62 = getelementptr inbounds %struct.sspa_priv, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %audio_clk62 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call61, ptr %audio_clk62, align 4
  %cmp.i157 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i157, label %if.then65, label %if.end68

if.then65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %call61 to i32
  br label %cleanup100

if.end68:                                         ; preds = %if.end60
  %call69 = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str.4) #6
  %sysclk = getelementptr inbounds %struct.sspa_priv, ptr %call.i, i32 0, i32 6
  %20 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call69, ptr %sysclk, align 4
  %cmp.i158 = icmp ugt ptr %call69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i158, label %if.then72, label %if.end68.if.end77_crit_edge

if.end68.if.end77_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %audio_clk62 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %audio_clk62, align 4
  tail call void @clk_put(ptr noundef %22) #6
  %23 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sysclk, align 4
  %25 = ptrtoint ptr %24 to i32
  br label %cleanup100

if.end77:                                         ; preds = %if.end68.if.end77_crit_edge, %if.end25.if.end77_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %playback_dma_data = getelementptr inbounds %struct.sspa_priv, ptr %call.i, i32 0, i32 2
  %maxburst = getelementptr inbounds %struct.sspa_priv, ptr %call.i, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %maxburst to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %maxburst, align 4
  %capture_dma_data = getelementptr inbounds %struct.sspa_priv, ptr %call.i, i32 0, i32 3
  %maxburst78 = getelementptr inbounds %struct.sspa_priv, ptr %call.i, i32 0, i32 3, i32 2
  %28 = ptrtoint ptr %maxburst78 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4, ptr %maxburst78, align 4
  %29 = ptrtoint ptr %capture_dma_data to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %capture_dma_data, align 4
  %30 = ptrtoint ptr %playback_dma_data to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 128, ptr %playback_dma_data, align 4
  %31 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_node, align 8
  %tobool84.not = icmp eq ptr %32, null
  br i1 %tobool84.not, label %if.end77.if.end91_crit_edge, label %if.then85

if.end77.if.end91_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end91

if.then85:                                        ; preds = %if.end77
  %call87 = tail call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %dev, ptr noundef nonnull @mmp_pcm_config, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.then85.if.end91_crit_edge, label %if.then85.cleanup100_crit_edge

if.then85.cleanup100_crit_edge:                   ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup100

if.then85.if.end91_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end91

if.end91:                                         ; preds = %if.then85.if.end91_crit_edge, %if.end77.if.end91_crit_edge
  %call93 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @mmp_sspa_component, ptr noundef nonnull @mmp_sspa_dai, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end96, label %if.end91.cleanup100_crit_edge

if.end91.cleanup100_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup100

if.end96:                                         ; preds = %if.end91
  tail call void @pm_runtime_enable(ptr noundef %dev) #6
  %audio_clk98 = getelementptr inbounds %struct.sspa_priv, ptr %call.i, i32 0, i32 5
  %33 = ptrtoint ptr %audio_clk98 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %audio_clk98, align 4
  %call.i159 = tail call i32 @clk_prepare(ptr noundef %34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159)
  %tobool.not.i = icmp eq i32 %call.i159, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end96.cleanup100_crit_edge

if.end96.cleanup100_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup100

if.end.i:                                         ; preds = %if.end96
  %call1.i = tail call i32 @clk_enable(ptr noundef %34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup100_crit_edge, label %if.then3.i

if.end.i.cleanup100_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup100

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %34) #6
  br label %cleanup100

cleanup100:                                       ; preds = %if.then3.i, %if.end.i.cleanup100_crit_edge, %if.end96.cleanup100_crit_edge, %if.end91.cleanup100_crit_edge, %if.then85.cleanup100_crit_edge, %if.then72, %if.then65, %if.then57, %if.end43.cleanup100_crit_edge, %if.end36.cleanup100_crit_edge, %if.else.cleanup100_crit_edge, %if.then30, %if.then22, %if.then14, %if.then7, %entry.cleanup100_crit_edge
  %retval.1 = phi i32 [ %3, %if.then7 ], [ %5, %if.then14 ], [ %7, %if.then22 ], [ %9, %if.then30 ], [ -12, %entry.cleanup100_crit_edge ], [ %call87, %if.then85.cleanup100_crit_edge ], [ %call93, %if.end91.cleanup100_crit_edge ], [ 0, %if.end96.cleanup100_crit_edge ], [ 0, %if.end.i.cleanup100_crit_edge ], [ 0, %if.then3.i ], [ -12, %if.end43.cleanup100_crit_edge ], [ -12, %if.end36.cleanup100_crit_edge ], [ -19, %if.else.cleanup100_crit_edge ], [ %25, %if.then72 ], [ %19, %if.then65 ], [ %17, %if.then57 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asoc_mmp_sspa_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %audio_clk = getelementptr inbounds %struct.sspa_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %audio_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %audio_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %audio_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %audio_clk, align 4
  tail call void @clk_put(ptr noundef %7) #6
  %sysclk = getelementptr inbounds %struct.sspa_priv, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sysclk, align 4
  tail call void @clk_put(ptr noundef %9) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_prepare_slave_config(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_sspa_open(ptr nocapture noundef readonly %component, ptr nocapture noundef readnone %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !55
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %rx_base = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %rx_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_base, align 4
  %add.ptr3 = getelementptr i8, ptr %8, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #6, !srcloc !55
  %and5 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %sp = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sp, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %add.ptr9 = getelementptr i8, ptr %15, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %13) #6, !srcloc !56
  %16 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sp, align 4
  %18 = ptrtoint ptr %rx_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_base, align 4
  %add.ptr12 = getelementptr i8, ptr %19, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %17) #6, !srcloc !56
  %20 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sp, align 4
  %and14 = and i32 %21, -7
  store i32 %and14, ptr %sp, align 4
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %add.ptr17 = getelementptr i8, ptr %23, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %and14) #6, !srcloc !56
  %24 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sp, align 4
  %26 = ptrtoint ptr %rx_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rx_base, align 4
  %add.ptr20 = getelementptr i8, ptr %27, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %25) #6, !srcloc !56
  %28 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sp, align 4
  %and22 = and i32 %29, -262145
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %add.ptr24 = getelementptr i8, ptr %31, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %and22) #6, !srcloc !56
  %ctrl = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 9
  %32 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ctrl, align 4
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 4
  %add.ptr26 = getelementptr i8, ptr %35, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %33) #6, !srcloc !56
  %36 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ctrl, align 4
  %38 = ptrtoint ptr %rx_base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rx_base, align 4
  %add.ptr29 = getelementptr i8, ptr %39, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %37) #6, !srcloc !56
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_sspa_close(ptr nocapture noundef readonly %component, ptr nocapture noundef readnone %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %1, i32 noundef 4) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_pcm_mmap(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream, ptr noundef %vma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %0 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_flags, align 4
  %or = or i32 %1, 67371008
  store i32 %or, ptr %vm_flags, align 4
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %2 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_page_prot, align 4
  %and = and i32 %3, -61
  store i32 %and, ptr %vm_page_prot, align 4
  %4 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vma, align 4
  %addr = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 8, i32 2
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 4
  %shr = lshr i32 %7, 12
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %8 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_end, align 4
  %sub = sub i32 %9, %5
  %call = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %5, i32 noundef %shr, i32 noundef %sub, i32 noundef %and) #6
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mmp_sspa_probe(ptr nocapture noundef %dai) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %playback_dma_data = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 2
  %capture_dma_data = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 3
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %4 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %playback_dma_data, ptr %playback_dma_data.i, align 4
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %5 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %capture_dma_data, ptr %capture_dma_data.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_sspa_set_dai_sysclk(ptr nocapture noundef readonly %cpu_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 12
  %4 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %component, align 4
  %dev1 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %clk_id)
  %cond = icmp eq i32 %clk_id, 3
  br i1 %cond, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %audio_clk = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %audio_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %audio_clk, align 4
  %call2 = tail call i32 @clk_set_rate(ptr noundef %11, i32 noundef %freq) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup_crit_edge ], [ %call2, %sw.bb ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_sspa_set_dai_pll(ptr nocapture noundef readonly %cpu_dai, i32 noundef %pll_id, i32 noundef %source, i32 noundef %freq_in, i32 noundef %freq_out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 12
  %4 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %component, align 4
  %dev1 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = zext i32 %pll_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %pll_id, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %sysclk = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sysclk, align 4
  %call2 = tail call i32 @clk_set_rate(ptr noundef %12, i32 noundef %freq_out) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %clk = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  %call7 = tail call i32 @clk_set_rate(ptr noundef %14, i32 noundef %freq_out) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %sw.bb6.sw.epilog_crit_edge, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb6.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -524, %entry.cleanup_crit_edge ], [ %call2, %sw.bb.cleanup_crit_edge ], [ %call7, %sw.bb6.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mmp_sspa_set_dai_fmt(ptr nocapture noundef readonly %cpu_dai, i32 noundef %fmt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %sp = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %sp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -2147483642, ptr %sp, align 4
  %ctrl = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 9
  %5 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ctrl, align 4
  %6 = trunc i32 %fmt to i16
  %trunc = and i16 %6, -4096
  %7 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 16384, label %sw.bb
    i16 4096, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %sp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -2147221498, ptr %sp, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %and2 = and i32 %fmt, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %cond = icmp eq i32 %and2, 0
  br i1 %cond, label %sw.bb3, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb3:                                           ; preds = %sw.epilog
  %9 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sp, align 4
  %or5 = or i32 %10, 65536
  store i32 %or5, ptr %sp, align 4
  %and8 = and i32 %fmt, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and8)
  %cond14 = icmp eq i32 %and8, 1
  br i1 %cond14, label %sw.bb9, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb9:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 524288, ptr %ctrl, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb9, %sw.bb3.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb9 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.bb3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_sspa_startup(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %sysclk = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sysclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %clk = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %call.i4 = tail call i32 @clk_prepare(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %tobool.not.i5 = icmp eq i32 %call.i4, 0
  br i1 %tobool.not.i5, label %if.end.i8, label %clk_prepare_enable.exit.clk_prepare_enable.exit10_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit10_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit10

if.end.i8:                                        ; preds = %clk_prepare_enable.exit
  %call1.i6 = tail call i32 @clk_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6)
  %tobool2.not.i7 = icmp eq i32 %call1.i6, 0
  br i1 %tobool2.not.i7, label %if.end.i8.clk_prepare_enable.exit10_crit_edge, label %if.then3.i9

if.end.i8.clk_prepare_enable.exit10_crit_edge:    ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit10

if.then3.i9:                                      ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %clk_prepare_enable.exit10

clk_prepare_enable.exit10:                        ; preds = %if.then3.i9, %if.end.i8.clk_prepare_enable.exit10_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit10_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmp_sspa_shutdown(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %clk = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  %sysclk = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sysclk, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_sspa_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %4 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %component, align 4
  %dev1 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  %ctrl = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctrl, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.params_format.exit_crit_edge

entry.params_format.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.1.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.sw.epilog_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_format.exit

for.inc.i.i.sw.epilog_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %entry.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %11, %entry.params_format.exit_crit_edge ], [ %13, %for.inc.i.i.params_format.exit_crit_edge ]
  %14 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #6, !range !57
  %add.i.i = or i32 %14, %i.09.lcssa.i.i
  %15 = zext i32 %add.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %add.i.i, label %params_format.exit.cleanup_crit_edge [
    i32 0, label %params_format.exit.sw.epilog_crit_edge
    i32 2, label %sw.bb3
    i32 32, label %sw.bb4
    i32 10, label %sw.bb5
  ]

params_format.exit.sw.epilog_crit_edge:           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

params_format.exit.cleanup_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb3:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb4:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %params_format.exit.sw.epilog_crit_edge, %for.inc.i.i.sw.epilog_crit_edge
  %bits.0 = phi i32 [ 32, %sw.bb5 ], [ 24, %sw.bb4 ], [ 16, %sw.bb3 ], [ 8, %params_format.exit.sw.epilog_crit_edge ], [ 8, %for.inc.i.i.sw.epilog_crit_edge ]
  %bitval.0 = phi i32 [ 5, %sw.bb5 ], [ 4, %sw.bb4 ], [ 2, %sw.bb3 ], [ %add.i.i, %params_format.exit.sw.epilog_crit_edge ], [ 0, %for.inc.i.i.sw.epilog_crit_edge ]
  %of_node = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 27
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %lor.lhs.false, label %sw.epilog.if.then_crit_edge

sw.epilog.if.then_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %sw.epilog
  %and = and i32 %9, 2147483647
  %arrayidx.i.i79 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %arrayidx.i.i79 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp = icmp eq i32 %19, 2
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %sw.epilog.if.then_crit_edge
  %or = or i32 %9, -2147483648
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %sspa_ctrl.0 = phi i32 [ %or, %if.then ], [ %and, %lor.lhs.false.if.end_crit_edge ]
  %and7 = and i32 %sspa_ctrl.0, -15139048
  %shl = shl nuw nsw i32 %bitval.0, 5
  %or8 = or i32 %and7, %shl
  %shl10 = shl nuw nsw i32 %bitval.0, 21
  %or11 = or i32 %or8, %shl10
  %and15 = or i32 %or11, %bitval.0
  %shl16 = shl nuw nsw i32 %bitval.0, 16
  %or17 = or i32 %and15, %shl16
  %sp = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 8
  %20 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sp, align 4
  %and18 = and i32 %21, -66061297
  %sub = shl nuw nsw i32 %bits.0, 20
  %shl19 = add nsw i32 %sub, -1048576
  %mul = shl nuw nsw i32 %bits.0, 5
  %shl25 = add nsw i32 %mul, -16
  %or21 = or i32 %shl25, %shl19
  %or27 = or i32 %or21, %and18
  store i32 %or27, ptr %sp, align 4
  %22 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node, align 8
  %tobool29.not = icmp eq ptr %23, null
  br i1 %tobool29.not, label %if.end.if.end36_crit_edge, label %if.then30

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %clk = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 4
  %24 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk, align 4
  %arrayidx.i.i80 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %arrayidx.i.i80 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i80, align 4
  %arrayidx.i.i81 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %28 = ptrtoint ptr %arrayidx.i.i81 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i81, align 4
  %mul33 = mul i32 %27, %bits.0
  %mul34 = mul i32 %mul33, %29
  %call35 = tail call i32 @clk_set_rate(ptr noundef %25, i32 noundef %mul34) #6
  br label %if.end36

if.end36:                                         ; preds = %if.then30, %if.end.if.end36_crit_edge
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %30 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp37 = icmp eq i32 %31, 0
  br i1 %cmp37, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or17) #6, !srcloc !56
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 4
  %add.ptr40 = getelementptr i8, ptr %35, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 1) #6, !srcloc !56
  br label %cleanup

if.else:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %rx_base = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 1
  %36 = ptrtoint ptr %rx_base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rx_base, align 4
  %add.ptr41 = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %or17) #6, !srcloc !56
  %38 = ptrtoint ptr %rx_base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rx_base, align 4
  %add.ptr43 = getelementptr i8, ptr %39, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 0) #6, !srcloc !56
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then38, %params_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %params_format.exit.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then38 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_sspa_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge32
    i32 4, label %entry.sw.bb_crit_edge33
    i32 0, label %entry.sw.bb4_crit_edge
    i32 5, label %entry.sw.bb4_crit_edge34
    i32 3, label %entry.sw.bb4_crit_edge35
  ]

entry.sw.bb4_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

entry.sw.bb4_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

entry.sw.bb_crit_edge33:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge32:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge32, %entry.sw.bb_crit_edge33
  %running_cnt = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %running_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %running_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %sp.i = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %sp.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sp.i, align 4
  %or1.i = or i32 %8, -2147483647
  %rx_base.i = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %rx_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or1.i) #6, !srcloc !56
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %11 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then1, label %if.end.if.end2_crit_edge

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sp.i22 = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 8
  %13 = ptrtoint ptr %sp.i22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sp.i22, align 4
  %and.i = and i32 %14, 2147221502
  %or1.i23 = or i32 %and.i, -2147483647
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %add.ptr.i24 = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %or1.i23) #6, !srcloc !56
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  %17 = ptrtoint ptr %running_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %running_cnt, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %running_cnt, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge34, %entry.sw.bb4_crit_edge35
  %running_cnt5 = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 7
  %19 = ptrtoint ptr %running_cnt5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %running_cnt5, align 4
  %dec = add i32 %20, -1
  store i32 %dec, ptr %running_cnt5, align 4
  %stream6 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %21 = ptrtoint ptr %stream6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stream6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp7 = icmp eq i32 %22, 0
  br i1 %cmp7, label %if.then8, label %sw.bb4.if.end9_crit_edge

sw.bb4.if.end9_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  %sp.i25 = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 8
  %23 = ptrtoint ptr %sp.i25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sp.i25, align 4
  %and1.i = and i32 %24, 2147221502
  %or.i = or i32 %and1.i, -2147483648
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %add.ptr.i26 = getelementptr i8, ptr %26, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %or.i) #6, !srcloc !56
  %27 = ptrtoint ptr %running_cnt5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr = load i32, ptr %running_cnt5, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %sw.bb4.if.end9_crit_edge
  %28 = phi i32 [ %.pr, %if.then8 ], [ %dec, %sw.bb4.if.end9_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool11.not = icmp eq i32 %28, 0
  br i1 %tobool11.not, label %if.then12, label %if.end9.sw.epilog_crit_edge

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %sp.i27 = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 8
  %29 = ptrtoint ptr %sp.i27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sp.i27, align 4
  %and.i28 = and i32 %30, 2147483646
  %or.i29 = or i32 %and.i28, -2147483648
  %rx_base.i30 = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 1
  %31 = ptrtoint ptr %rx_base.i30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx_base.i30, align 4
  %add.ptr.i31 = getelementptr i8, ptr %32, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %or.i29) #6, !srcloc !56
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then12, %if.end9.sw.epilog_crit_edge, %if.end2, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %if.end9.sw.epilog_crit_edge ], [ 0, %if.then12 ], [ 0, %if.end2 ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !39, !40, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__initcall__kmod_snd_soc_mmp_sspa__241_580_asoc_mmp_sspa_driver_init6, !1, !"__initcall__kmod_snd_soc_mmp_sspa__241_580_asoc_mmp_sspa_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/pxa/mmp-sspa.c", i32 580, i32 1}
!2 = !{ptr @__exitcall_asoc_mmp_sspa_driver_exit, !1, !"__exitcall_asoc_mmp_sspa_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author242, !4, !"__UNIQUE_ID_author242", i1 false, i1 false}
!4 = !{!"../sound/soc/pxa/mmp-sspa.c", i32 582, i32 1}
!5 = !{ptr @__UNIQUE_ID_description243, !6, !"__UNIQUE_ID_description243", i1 false, i1 false}
!6 = !{!"../sound/soc/pxa/mmp-sspa.c", i32 583, i32 1}
!7 = !{ptr @__UNIQUE_ID_file244, !8, !"__UNIQUE_ID_file244", i1 false, i1 false}
!8 = !{!"../sound/soc/pxa/mmp-sspa.c", i32 584, i32 1}
!9 = !{ptr @__UNIQUE_ID_license245, !8, !"__UNIQUE_ID_license245", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias246, !11, !"__UNIQUE_ID_alias246", i1 false, i1 false}
!11 = !{!"../sound/soc/pxa/mmp-sspa.c", i32 585, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/pxa/mmp-sspa.c", i32 573, i32 11}
!14 = !{ptr @asoc_mmp_sspa_driver, !15, !"asoc_mmp_sspa_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/pxa/mmp-sspa.c", i32 571, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/pxa/mmp-sspa.c", i32 484, i32 40}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/pxa/mmp-sspa.c", i32 488, i32 46}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/pxa/mmp-sspa.c", i32 511, i32 35}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/pxa/mmp-sspa.c", i32 515, i32 32}
!24 = !{ptr @mmp_pcm_config, !25, !"mmp_pcm_config", i1 false, i1 false}
!25 = !{!"../sound/soc/pxa/mmp-sspa.c", i32 397, i32 46}
!26 = !{ptr @mmp_pcm_hardware, !27, !"mmp_pcm_hardware", i1 false, i1 false}
!27 = !{!"../sound/soc/pxa/mmp-sspa.c", i32 376, i32 38}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/pxa/mmp-sspa.c", i32 459, i32 11}
!30 = !{ptr @mmp_sspa_component, !31, !"mmp_sspa_component", i1 false, i1 false}
!31 = !{!"../sound/soc/pxa/mmp-sspa.c", i32 458, i32 46}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/pxa/mmp-sspa.c", i32 424, i32 3}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @mmp_sspa_open._entry, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @mmp_sspa_open._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @mmp_sspa_dai, !41, !"mmp_sspa_dai", i1 false, i1 false}
!41 = !{!"../sound/soc/pxa/mmp-sspa.c", i32 352, i32 34}
!42 = !{ptr @mmp_sspa_dai_ops, !43, !"mmp_sspa_dai_ops", i1 false, i1 false}
!43 = !{!"../sound/soc/pxa/mmp-sspa.c", i32 342, i32 37}
!44 = !{ptr @mmp_sspa_of_match, !45, !"mmp_sspa_of_match", i1 false, i1 false}
!45 = !{!"../sound/soc/pxa/mmp-sspa.c", i32 563, i32 34}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i64 5227981}
!56 = !{i64 5227563}
!57 = !{i32 0, i32 33}
