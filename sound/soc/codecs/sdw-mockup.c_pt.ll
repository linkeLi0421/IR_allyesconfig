; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/sdw-mockup.c_pt.bc'
source_filename = "../sound/soc/codecs/sdw-mockup.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sdw_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdw_device_id = type { i16, i16, i8, i8, i32 }
%struct.sdw_slave_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sdw_slave = type { %struct.sdw_slave_id, %struct.device, i32, ptr, ptr, %struct.sdw_slave_prop, ptr, %struct.list_head, [15 x %struct.completion], [15 x i32], i16, i16, i8, %struct.completion, %struct.completion, %struct.completion, i32, i8, i8 }
%struct.sdw_slave_id = type { i16, i16, i8, i8, i8 }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.sdw_slave_prop = type { i32, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i32, i8, i32, i32, i32, ptr, ptr, ptr, i8, i32, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.sdw_stream_config = type { i32, i32, i32, i32, i32 }
%struct.sdw_port_config = type { i32, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.sdw_dpn_prop = type { i32, i32, i32, i32, ptr, i32, i32, i8, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i8, i8, i32, ptr }

@__initcall__kmod_snd_soc_sdw_mockup__238_308_sdw_mockup_sdw_driver_init6 = internal global ptr @sdw_mockup_sdw_driver_init, section ".initcall6.init", align 4
@sdw_mockup_sdw_driver = internal global { %struct.sdw_driver, [60 x i8] } { %struct.sdw_driver { ptr null, ptr @sdw_mockup_sdw_probe, ptr @sdw_mockup_sdw_remove, ptr null, ptr @sdw_mockup_id, ptr @sdw_mockup_slave_ops, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [60 x i8] zeroinitializer }, align 32
@__exitcall_sdw_mockup_sdw_driver_exit = internal global ptr @sdw_mockup_sdw_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description239 = internal constant [60 x i8] c"snd_soc_sdw_mockup.description=ASoC SDW mockup codec driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [86 x i8] c"snd_soc_sdw_mockup.author=Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [60 x i8] c"snd_soc_sdw_mockup.file=sound/soc/codecs/snd-soc-sdw-mockup\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [31 x i8] c"snd_soc_sdw_mockup.license=GPL\00", section ".modinfo", align 1
@sdw_mockup_id = internal constant { [5 x %struct.sdw_device_id], [36 x i8] } { [5 x %struct.sdw_device_id] [%struct.sdw_device_id { i16 261, i16 -21846, i8 0, i8 0, i32 0 }, %struct.sdw_device_id { i16 261, i16 -21931, i8 0, i8 0, i32 0 }, %struct.sdw_device_id { i16 261, i16 21930, i8 0, i8 0, i32 0 }, %struct.sdw_device_id { i16 261, i16 21845, i8 0, i8 0, i32 0 }, %struct.sdw_device_id zeroinitializer], [36 x i8] zeroinitializer }, align 32
@sdw_mockup_slave_ops = internal constant { %struct.sdw_slave_ops, [40 x i8] } { %struct.sdw_slave_ops { ptr @sdw_mockup_read_prop, ptr @sdw_mockup_interrupt_callback, ptr @sdw_mockup_update_status, ptr @sdw_mockup_bus_config, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sdw-mockup\00", [21 x i8] zeroinitializer }, align 32
@snd_soc_sdw_mockup_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @sdw_mockup_component_probe, ptr @sdw_mockup_component_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@sdw_mockup_dai = internal global { [1 x %struct.snd_soc_dai_driver], [56 x i8] } { [1 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.1, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @sdw_mockup_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.2, i64 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.3, i64 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sdw-mockup-aif1\00", [16 x i8] zeroinitializer }, align 32
@sdw_mockup_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdw_mockup_set_sdw_stream, ptr null, ptr null, ptr null, ptr @sdw_mockup_shutdown, ptr @sdw_mockup_pcm_hw_params, ptr @sdw_mockup_pcm_hw_free, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DP8 Capture\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DP1 Playback\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sdw_mockup_pcm_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 118, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to configure port\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sdw_mockup_pcm_hw_params\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/soc/codecs/sdw-mockup.c\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sdw_mockup_pcm_hw_params._entry_ptr = internal global ptr @sdw_mockup_pcm_hw_params._entry, section ".printk_index", align 4
@___asan_gen_.9 = private unnamed_addr constant [22 x i8] c"sdw_mockup_sdw_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 298, i32 26 }
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"sdw_mockup_id\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 289, i32 35 }
@___asan_gen_.15 = private unnamed_addr constant [21 x i8] c"sdw_mockup_slave_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 245, i32 35 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 300, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [29 x i8] c"snd_soc_sdw_mockup_component\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 38, i32 46 }
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"sdw_mockup_dai\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 145, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 147, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"sdw_mockup_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 138, i32 37 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 155, i32 19 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 150, i32 19 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [33 x i8] c"../sound/soc/codecs/sdw-mockup.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 118, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_sdw_mockup_sdw_driver_exit, ptr @__initcall__kmod_snd_soc_sdw_mockup__238_308_sdw_mockup_sdw_driver_init6, ptr @sdw_mockup_pcm_hw_params._entry, ptr @sdw_mockup_pcm_hw_params._entry_ptr, ptr @sdw_mockup_sdw_driver_exit, ptr @sdw_mockup_sdw_driver, ptr @sdw_mockup_id, ptr @sdw_mockup_slave_ops, ptr @.str, ptr @snd_soc_sdw_mockup_component, ptr @sdw_mockup_dai, ptr @.str.1, ptr @sdw_mockup_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_mockup_sdw_driver to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_mockup_id to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_mockup_slave_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_sdw_mockup_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_mockup_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_mockup_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_mockup_pcm_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sdw_mockup_sdw_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__sdw_register_driver(ptr noundef nonnull @sdw_mockup_sdw_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sdw_mockup_sdw_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sdw_unregister_driver(ptr noundef nonnull @sdw_mockup_sdw_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdw_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sdw_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdw_mockup_sdw_probe(ptr noundef %slave, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 4, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %slave, ptr %call.i, align 4
  %is_mockup_device = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 18
  %2 = ptrtoint ptr %is_mockup_device to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %is_mockup_device, align 1
  %call3 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @snd_soc_sdw_mockup_component, ptr noundef nonnull @sdw_mockup_dai, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sdw_mockup_sdw_remove(ptr nocapture noundef readnone %slave) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sdw_mockup_component_probe(ptr nocapture noundef readnone %component) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sdw_mockup_component_remove(ptr nocapture noundef %component) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdw_mockup_set_sdw_stream(ptr nocapture noundef writeonly %dai, ptr noundef %sdw_stream, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sdw_stream, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4) #11
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %sdw_stream, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %direction)
  %cmp = icmp eq i32 %direction, 0
  %playback_dma_data = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %capture_dma_data = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %playback_dma_data.sink = select i1 %cmp, ptr %playback_dma_data, ptr %capture_dma_data
  %2 = ptrtoint ptr %playback_dma_data.sink to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %playback_dma_data.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdw_mockup_shutdown(ptr nocapture noundef readonly %substream, ptr nocapture noundef %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %0 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %cond.in.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %2 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  store ptr null, ptr %cond.in.i, align 4
  tail call void @kfree(ptr noundef %cond.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdw_mockup_pcm_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %stream_config = alloca %struct.sdw_stream_config, align 4
  %port_config = alloca %struct.sdw_port_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
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
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %stream_config) #8
  %6 = getelementptr inbounds %struct.sdw_stream_config, ptr %stream_config, i32 0, i32 1
  %7 = getelementptr inbounds %struct.sdw_stream_config, ptr %stream_config, i32 0, i32 2
  %8 = getelementptr inbounds %struct.sdw_stream_config, ptr %stream_config, i32 0, i32 3
  %9 = getelementptr inbounds i8, ptr %stream_config, i32 16
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %port_config) #8
  %11 = getelementptr inbounds %struct.sdw_port_config, ptr %port_config, i32 0, i32 1
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %12 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp eq i32 %13, 0
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %cond.in.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %14 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %tobool.not = icmp eq ptr %cond.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 4
  %tobool3.not = icmp eq ptr %16, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %not.cmp.i = xor i1 %cmp.i, true
  %. = zext i1 %not.cmp.i to i32
  %.37 = select i1 %cmp.i, i32 1, i32 8
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 4
  %19 = ptrtoint ptr %stream_config to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %stream_config, align 4
  %arrayidx.i.i38 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %arrayidx.i.i38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i38, align 4
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %6, align 4
  %arrayidx.i.i39 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %arrayidx.i.i39 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.end5.if.then.i.i_crit_edge

if.end5.if.then.i.i_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %if.end5.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %if.end5.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %24, %if.end5.if.then.i.i_crit_edge ], [ %27, %for.inc.i.i.if.then.i.i_crit_edge ]
  %25 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #8, !range !47
  %add.i.i = or i32 %25, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %if.end5
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.1.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %call12 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i) #8
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call12, ptr %7, align 4
  %29 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %., ptr %8, align 4
  %30 = ptrtoint ptr %arrayidx.i.i38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i38, align 4
  %notmask = shl nsw i32 -1, %31
  %sub = xor i32 %notmask, -1
  %32 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub, ptr %11, align 4
  %33 = ptrtoint ptr %port_config to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.37, ptr %port_config, align 4
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %5, align 4
  %36 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cond.i, align 4
  %call16 = call i32 @sdw_stream_add_slave(ptr noundef %35, ptr noundef nonnull %stream_config, ptr noundef nonnull %port_config, i32 noundef 1, ptr noundef %37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %params_format.exit.cleanup_crit_edge, label %do.end

params_format.exit.cleanup_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.4) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %params_format.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call16, %do.end ], [ 0, %params_format.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %port_config) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %stream_config) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdw_mockup_pcm_hw_free(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %8 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %cond.in.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %10 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %11 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cond.i, align 4
  %call4 = tail call i32 @sdw_stream_remove_slave(ptr noundef nonnull %7, ptr noundef %12) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_stream_add_slave(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_stream_remove_slave(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdw_mockup_read_prop(ptr noundef %slave) #2 align 64 {
entry:
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #8
  %paging_support = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 9
  %0 = ptrtoint ptr %paging_support to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %paging_support, align 1
  %source_ports = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 14
  %1 = ptrtoint ptr %source_ports to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 256, ptr %source_ports, align 4
  %sink_ports = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 15
  %2 = ptrtoint ptr %sink_ports to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %sink_ports, align 4
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 84, i32 noundef 3520) #8
  %src_dpn_prop = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 17
  %3 = ptrtoint ptr %src_dpn_prop to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call5.i.i, ptr %src_dpn_prop, align 4
  %tobool317.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool317.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %source_ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %source_ports, align 4
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %addr, align 4
  %call320 = call i32 @_find_next_bit_be(ptr noundef nonnull %addr, i32 noundef 32, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call320)
  %cmp788 = icmp ult i32 %call320, 32
  br i1 %cmp788, label %if.end.for.body_crit_edge, label %if.end.cond.false647_crit_edge

if.end.cond.false647_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false647

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %bit.0790 = phi i32 [ %call325, %for.body.for.body_crit_edge ], [ %call320, %if.end.for.body_crit_edge ]
  %i.0789 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sdw_dpn_prop, ptr %call5.i.i, i32 %i.0789
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %bit.0790, ptr %arrayidx, align 4
  %type = getelementptr %struct.sdw_dpn_prop, ptr %call5.i.i, i32 %i.0789, i32 5
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %type, align 4
  %simple_ch_prep_sm = getelementptr %struct.sdw_dpn_prop, ptr %call5.i.i, i32 %i.0789, i32 7
  %9 = ptrtoint ptr %simple_ch_prep_sm to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %simple_ch_prep_sm, align 4
  %inc = add i32 %i.0789, 1
  %add324 = add nuw nsw i32 %bit.0790, 1
  %call325 = call i32 @_find_next_bit_be(ptr noundef nonnull %addr, i32 noundef 32, i32 noundef %add324) #8
  %cmp = icmp ult i32 %call325, 32
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cond.false647_crit_edge

for.body.cond.false647_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false647

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cond.false647:                                    ; preds = %for.body.cond.false647_crit_edge, %if.end.cond.false647_crit_edge
  %10 = ptrtoint ptr %sink_ports to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sink_ports, align 4
  %call.i = call i32 @__sw_hweight32(i32 noundef %11) #8
  %12 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i, i32 84) #8
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !48

devm_kcalloc.exit.thread:                         ; preds = %cond.false647
  call void @__sanitizer_cov_trace_pc() #10
  %sink_dpn_prop786 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 18
  %14 = ptrtoint ptr %sink_dpn_prop786 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %sink_dpn_prop786, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %cond.false647
  %15 = extractvalue { i32, i1 } %12, 0
  %call5.i.i784 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %15, i32 noundef 3520) #8
  %sink_dpn_prop = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 18
  %16 = ptrtoint ptr %sink_dpn_prop to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call5.i.i784, ptr %sink_dpn_prop, align 4
  %tobool655.not = icmp eq ptr %call5.i.i784, null
  br i1 %tobool655.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end657

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end657:                                        ; preds = %devm_kcalloc.exit
  %17 = ptrtoint ptr %sink_ports to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sink_ports, align 4
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %addr, align 4
  %call660 = call i32 @_find_next_bit_be(ptr noundef nonnull %addr, i32 noundef 32, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call660)
  %cmp662791 = icmp ult i32 %call660, 32
  br i1 %cmp662791, label %if.end657.for.body664_crit_edge, label %if.end657.for.end675_crit_edge

if.end657.for.end675_crit_edge:                   ; preds = %if.end657
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end675

if.end657.for.body664_crit_edge:                  ; preds = %if.end657
  br label %for.body664

for.body664:                                      ; preds = %for.body664.for.body664_crit_edge, %if.end657.for.body664_crit_edge
  %bit.1793 = phi i32 [ %call674, %for.body664.for.body664_crit_edge ], [ %call660, %if.end657.for.body664_crit_edge ]
  %j.0792 = phi i32 [ %inc671, %for.body664.for.body664_crit_edge ], [ 0, %if.end657.for.body664_crit_edge ]
  %arrayidx665 = getelementptr %struct.sdw_dpn_prop, ptr %call5.i.i784, i32 %j.0792
  %20 = ptrtoint ptr %arrayidx665 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %bit.1793, ptr %arrayidx665, align 4
  %type668 = getelementptr %struct.sdw_dpn_prop, ptr %call5.i.i784, i32 %j.0792, i32 5
  %21 = ptrtoint ptr %type668 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %type668, align 4
  %simple_ch_prep_sm670 = getelementptr %struct.sdw_dpn_prop, ptr %call5.i.i784, i32 %j.0792, i32 7
  %22 = ptrtoint ptr %simple_ch_prep_sm670 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %simple_ch_prep_sm670, align 4
  %inc671 = add i32 %j.0792, 1
  %add673 = add nuw nsw i32 %bit.1793, 1
  %call674 = call i32 @_find_next_bit_be(ptr noundef nonnull %addr, i32 noundef 32, i32 noundef %add673) #8
  %cmp662 = icmp ult i32 %call674, 32
  br i1 %cmp662, label %for.body664.for.body664_crit_edge, label %for.body664.for.end675_crit_edge

for.body664.for.end675_crit_edge:                 ; preds = %for.body664
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end675

for.body664.for.body664_crit_edge:                ; preds = %for.body664
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body664

for.end675:                                       ; preds = %for.body664.for.end675_crit_edge, %if.end657.for.end675_crit_edge
  %simple_clk_stop_capable = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 4
  %23 = ptrtoint ptr %simple_clk_stop_capable to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %simple_clk_stop_capable, align 1
  %wake_capable = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %wake_capable to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %wake_capable, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end675, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end675 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sdw_mockup_interrupt_callback(ptr nocapture noundef readnone %slave, ptr nocapture noundef readnone %status) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sdw_mockup_update_status(ptr nocapture noundef readnone %slave, i32 noundef %status) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sdw_mockup_bus_config(ptr nocapture noundef readnone %slave, ptr nocapture noundef readnone %params) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__initcall__kmod_snd_soc_sdw_mockup__238_308_sdw_mockup_sdw_driver_init6, !1, !"__initcall__kmod_snd_soc_sdw_mockup__238_308_sdw_mockup_sdw_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/sdw-mockup.c", i32 308, i32 1}
!2 = !{ptr @__exitcall_sdw_mockup_sdw_driver_exit, !1, !"__exitcall_sdw_mockup_sdw_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description239, !4, !"__UNIQUE_ID_description239", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/sdw-mockup.c", i32 310, i32 1}
!5 = !{ptr @__UNIQUE_ID_author240, !6, !"__UNIQUE_ID_author240", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/sdw-mockup.c", i32 311, i32 1}
!7 = !{ptr @__UNIQUE_ID_file241, !8, !"__UNIQUE_ID_file241", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/sdw-mockup.c", i32 312, i32 1}
!9 = !{ptr @__UNIQUE_ID_license242, !8, !"__UNIQUE_ID_license242", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/sdw-mockup.c", i32 300, i32 11}
!12 = !{ptr @sdw_mockup_sdw_driver, !13, !"sdw_mockup_sdw_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/sdw-mockup.c", i32 298, i32 26}
!14 = !{ptr @snd_soc_sdw_mockup_component, !15, !"snd_soc_sdw_mockup_component", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/sdw-mockup.c", i32 38, i32 46}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/sdw-mockup.c", i32 147, i32 11}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/codecs/sdw-mockup.c", i32 155, i32 19}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/sdw-mockup.c", i32 150, i32 19}
!22 = !{ptr @sdw_mockup_dai, !23, !"sdw_mockup_dai", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/sdw-mockup.c", i32 145, i32 34}
!24 = !{ptr @sdw_mockup_ops, !25, !"sdw_mockup_ops", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/sdw-mockup.c", i32 138, i32 37}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/codecs/sdw-mockup.c", i32 118, i32 3}
!28 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @sdw_mockup_pcm_hw_params._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @sdw_mockup_pcm_hw_params._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @sdw_mockup_id, !35, !"sdw_mockup_id", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/sdw-mockup.c", i32 289, i32 35}
!36 = !{ptr @sdw_mockup_slave_ops, !37, !"sdw_mockup_slave_ops", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/sdw-mockup.c", i32 245, i32 35}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i32 0, i32 33}
!48 = !{!"branch_weights", i32 1, i32 2000}
