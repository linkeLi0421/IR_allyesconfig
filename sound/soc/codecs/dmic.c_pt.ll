; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/dmic.c_pt.bc'
source_filename = "../sound/soc/codecs/dmic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
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
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.dmic = type { ptr, i32, i32 }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }

@__param_str_modeswitch_delay = internal constant [30 x i8] c"snd_soc_dmic.modeswitch_delay\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@modeswitch_delay = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_modeswitch_delay = internal constant %struct.kernel_param { ptr @__param_str_modeswitch_delay, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @modeswitch_delay } }, section "__param", align 4
@__UNIQUE_ID_modeswitch_delaytype238 = internal constant [44 x i8] c"snd_soc_dmic.parmtype=modeswitch_delay:uint\00", section ".modinfo", align 1
@__param_str_wakeup_delay = internal constant [26 x i8] c"snd_soc_dmic.wakeup_delay\00", align 1
@wakeup_delay = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_wakeup_delay = internal constant %struct.kernel_param { ptr @__param_str_wakeup_delay, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @wakeup_delay } }, section "__param", align 4
@__UNIQUE_ID_wakeup_delaytype239 = internal constant [40 x i8] c"snd_soc_dmic.parmtype=wakeup_delay:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_alias240 = internal constant [39 x i8] c"snd_soc_dmic.alias=platform:dmic-codec\00", section ".modinfo", align 1
@__initcall__kmod_snd_soc_dmic__241_187_dmic_driver_init6 = internal global ptr @dmic_driver_init, section ".initcall6.init", align 4
@dmic_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dmic_dev_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dmic_dev_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dmic_driver_exit = internal global ptr @dmic_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description242 = internal constant [45 x i8] c"snd_soc_dmic.description=Generic DMIC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [56 x i8] c"snd_soc_dmic.author=Liam Girdwood <lrg@slimlogic.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [48 x i8] c"snd_soc_dmic.file=sound/soc/codecs/snd-soc-dmic\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [25 x i8] c"snd_soc_dmic.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dmic-codec\00", [21 x i8] zeroinitializer }, align 32
@dmic_dev_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dmic-codec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@dmic_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.2, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @dmic_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.3, i64 1092, i32 1073741824, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"num-channels\00", [19 x i8] zeroinitializer }, align 32
@soc_dmic = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr @dmic_dapm_widgets, i32 2, ptr @intercon, i32 1, ptr @dmic_component_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 92, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dmic-hifi\00", [22 x i8] zeroinitializer }, align 32
@dmic_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dmic_daiops_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@intercon = internal constant { [1 x %struct.snd_soc_dapm_route], [44 x i8] } { [1 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.4, ptr null, ptr @.str.5, ptr null, %struct.snd_soc_dobj zeroinitializer }], [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DMIC AIF\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DMic\00", [27 x i8] zeroinitializer }, align 32
@dmic_dapm_widgets = internal constant { [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [88 x i8] } { [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.4, ptr @.str.3, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @dmic_aif_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.5, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [88 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dmicen\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wakeup-delay-ms\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"modeswitch-delay-ms\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"modeswitch_delay\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 20, i32 12 }
@___asan_gen_.14 = private unnamed_addr constant [13 x i8] c"wakeup_delay\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 23, i32 12 }
@___asan_gen_.17 = private unnamed_addr constant [12 x i8] c"dmic_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 179, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 181, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"dmic_dev_match\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 173, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant [9 x i8] c"dmic_dai\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 76, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 150, i32 49 }
@___asan_gen_.32 = private unnamed_addr constant [9 x i8] c"soc_dmic\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 131, i32 46 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 77, i32 10 }
@___asan_gen_.38 = private unnamed_addr constant [13 x i8] c"dmic_dai_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 50, i32 37 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 79, i32 18 }
@___asan_gen_.44 = private unnamed_addr constant [9 x i8] c"intercon\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 127, i32 40 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 121, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 124, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [18 x i8] c"dmic_dapm_widgets\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 120, i32 41 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 99, i32 7 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 103, i32 43 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [27 x i8] c"../sound/soc/codecs/dmic.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 105, i32 43 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_alias240, ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__UNIQUE_ID_modeswitch_delaytype238, ptr @__UNIQUE_ID_wakeup_delaytype239, ptr @__exitcall_dmic_driver_exit, ptr @__initcall__kmod_snd_soc_dmic__241_187_dmic_driver_init6, ptr @__param_modeswitch_delay, ptr @__param_wakeup_delay, ptr @dmic_driver_exit, ptr @modeswitch_delay, ptr @wakeup_delay, ptr @dmic_driver, ptr @.str, ptr @dmic_dev_match, ptr @dmic_dai, ptr @.str.1, ptr @soc_dmic, ptr @.str.2, ptr @dmic_dai_ops, ptr @.str.3, ptr @intercon, ptr @.str.4, ptr @.str.5, ptr @dmic_dapm_widgets, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modeswitch_delay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wakeup_delay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic_dev_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_dmic to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intercon to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic_dapm_widgets to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dmic_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dmic_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dmic_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @dmic_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmic_dev_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %chans = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chans) #5
  %0 = ptrtoint ptr %chans to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %chans, align 4, !annotation !65
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then:                                          ; preds = %entry
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %chans, i32 noundef 1, i32 noundef 0) #5
  %3 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #5
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.then.cleanup_crit_edge [
    i32 0, label %if.then6
    i32 -22, label %if.then.if.end17_crit_edge
  ]

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then6:                                         ; preds = %if.then
  %5 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chans, align 4
  %7 = add i32 %6, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %7)
  %8 = icmp ult i32 %7, -8
  br i1 %8, label %if.then6.cleanup_crit_edge, label %if.end10

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.then6
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 168, i32 noundef 3520) #5
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %9 = call ptr @memcpy(ptr %call.i, ptr @dmic_dai, i32 168)
  %10 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chans, align 4
  %channels_max = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i, i32 0, i32 10, i32 6
  %12 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %channels_max, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.end15, %if.then.if.end17_crit_edge, %entry.if.end17_crit_edge
  %dai_drv.0 = phi ptr [ %call.i, %if.end15 ], [ @dmic_dai, %entry.if.end17_crit_edge ], [ @dmic_dai, %if.then.if.end17_crit_edge ]
  %call19 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_dmic, ptr noundef nonnull %dai_drv.0, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end10.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %if.end17 ], [ %3, %if.then.cleanup_crit_edge ], [ -22, %if.then6.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chans) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmic_daiops_trigger(ptr nocapture noundef readnone %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd)
  %cond = icmp eq i32 %cmd, 0
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %modeswitch_delay = getelementptr inbounds %struct.dmic, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %modeswitch_delay to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %modeswitch_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.while.body_crit_edge

sw.bb.while.body_crit_edge:                       ; preds = %sw.bb
  br label %while.body

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

while.body:                                       ; preds = %while.body.while.body_crit_edge, %sw.bb.while.body_crit_edge
  %__ms.029 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %7, %sw.bb.while.body_crit_edge ]
  %dec = add i32 %__ms.029, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #5
  %tobool19.not = icmp eq i32 %dec, 0
  br i1 %tobool19.not, label %while.body.sw.epilog_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmic_component_probe(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 12, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call2 = tail call ptr @devm_gpiod_get_optional(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef 3) #5
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %wakeup_delay = getelementptr inbounds %struct.dmic, ptr %call.i, i32 0, i32 1
  %call.i40 = tail call i32 @device_property_read_u32_array(ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef %wakeup_delay, i32 noundef 1) #5
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %modeswitch_delay = getelementptr inbounds %struct.dmic, ptr %call.i, i32 0, i32 2
  %call.i41 = tail call i32 @device_property_read_u32_array(ptr noundef %9, ptr noundef nonnull @.str.9, ptr noundef %modeswitch_delay, i32 noundef 1) #5
  %10 = load i32, ptr @wakeup_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool13.not = icmp eq i32 %10, 0
  br i1 %tobool13.not, label %if.end8.if.end16_crit_edge, label %if.then14

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %wakeup_delay to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %wakeup_delay, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end8.if.end16_crit_edge
  %12 = load i32, ptr @modeswitch_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool17.not = icmp eq i32 %12, 0
  br i1 %tobool17.not, label %if.end20thread-pre-split, label %if.then18

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %modeswitch_delay to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %modeswitch_delay, align 4
  br label %if.end20

if.end20thread-pre-split:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %modeswitch_delay to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %modeswitch_delay, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end20thread-pre-split, %if.then18
  %15 = phi i32 [ %.pr, %if.end20thread-pre-split ], [ %12, %if.then18 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %15)
  %cmp = icmp sgt i32 %15, 70
  br i1 %cmp, label %if.then22, label %if.end20.if.end24_crit_edge

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %modeswitch_delay to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 70, ptr %modeswitch_delay, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20.if.end24_crit_edge
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then5 ], [ 0, %if.end24 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmic_aif_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 8, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %8, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %wakeup_delay = getelementptr inbounds %struct.dmic, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %wakeup_delay to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wakeup_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not = icmp eq i32 %10, 0
  br i1 %tobool3.not, label %if.end.sw.epilog_crit_edge, label %if.then4

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef %10) #5
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %sw.bb7.sw.epilog_crit_edge, label %if.then10

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then10:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %12, i32 noundef 0) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then10, %sw.bb7.sw.epilog_crit_edge, %if.then4, %if.end.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !15, !17, !18, !20, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__param_modeswitch_delay, !1, !"__param_modeswitch_delay", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/dmic.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_modeswitch_delaytype238, !1, !"__UNIQUE_ID_modeswitch_delaytype238", i1 false, i1 false}
!3 = !{ptr @__param_wakeup_delay, !4, !"__param_wakeup_delay", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/dmic.c", i32 24, i32 1}
!5 = !{ptr @__UNIQUE_ID_wakeup_delaytype239, !4, !"__UNIQUE_ID_wakeup_delaytype239", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_alias240, !7, !"__UNIQUE_ID_alias240", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/dmic.c", i32 171, i32 1}
!8 = !{ptr @__initcall__kmod_snd_soc_dmic__241_187_dmic_driver_init6, !9, !"__initcall__kmod_snd_soc_dmic__241_187_dmic_driver_init6", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/dmic.c", i32 187, i32 1}
!10 = !{ptr @__exitcall_dmic_driver_exit, !9, !"__exitcall_dmic_driver_exit", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_description242, !12, !"__UNIQUE_ID_description242", i1 false, i1 false}
!12 = !{!"../sound/soc/codecs/dmic.c", i32 189, i32 1}
!13 = !{ptr @__UNIQUE_ID_author243, !14, !"__UNIQUE_ID_author243", i1 false, i1 false}
!14 = !{!"../sound/soc/codecs/dmic.c", i32 190, i32 1}
!15 = !{ptr @__UNIQUE_ID_file244, !16, !"__UNIQUE_ID_file244", i1 false, i1 false}
!16 = !{!"../sound/soc/codecs/dmic.c", i32 191, i32 1}
!17 = !{ptr @__UNIQUE_ID_license245, !16, !"__UNIQUE_ID_license245", i1 false, i1 false}
!18 = !{ptr @modeswitch_delay, !19, !"modeswitch_delay", i1 false, i1 false}
!19 = !{!"../sound/soc/codecs/dmic.c", i32 20, i32 12}
!20 = !{ptr @wakeup_delay, !21, !"wakeup_delay", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/dmic.c", i32 23, i32 12}
!22 = !{ptr @__param_str_modeswitch_delay, !1, !"__param_str_modeswitch_delay", i1 false, i1 false}
!23 = !{ptr @__param_str_wakeup_delay, !4, !"__param_str_wakeup_delay", i1 false, i1 false}
!24 = !{ptr @.str, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/dmic.c", i32 181, i32 11}
!26 = !{ptr @dmic_driver, !27, !"dmic_driver", i1 false, i1 false}
!27 = !{!"../sound/soc/codecs/dmic.c", i32 179, i32 31}
!28 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/dmic.c", i32 150, i32 49}
!30 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/dmic.c", i32 77, i32 10}
!32 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/dmic.c", i32 79, i32 18}
!34 = !{ptr @dmic_dai, !35, !"dmic_dai", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/dmic.c", i32 76, i32 34}
!36 = !{ptr @dmic_dai_ops, !37, !"dmic_dai_ops", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/dmic.c", i32 50, i32 37}
!38 = !{ptr @soc_dmic, !39, !"soc_dmic", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/dmic.c", i32 131, i32 46}
!40 = !{ptr @.str.4, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/dmic.c", i32 121, i32 2}
!42 = !{ptr @.str.5, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/dmic.c", i32 124, i32 2}
!44 = !{ptr @dmic_dapm_widgets, !45, !"dmic_dapm_widgets", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/dmic.c", i32 120, i32 41}
!46 = !{ptr @intercon, !47, !"intercon", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/dmic.c", i32 127, i32 40}
!48 = !{ptr @.str.7, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/dmic.c", i32 99, i32 7}
!50 = !{ptr @.str.8, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/dmic.c", i32 103, i32 43}
!52 = !{ptr @.str.9, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/dmic.c", i32 105, i32 43}
!54 = !{ptr @dmic_dev_match, !55, !"dmic_dev_match", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/dmic.c", i32 173, i32 34}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"auto-init"}
