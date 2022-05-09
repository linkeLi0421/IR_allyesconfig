; ModuleID = '/llk/IR_all_yes/sound/soc/generic/test-component.c_pt.bc'
source_filename = "../sound/soc/generic/test-component.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.test_adata = type { i8, [3 x i8] }
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
%struct.test_priv = type { ptr, ptr, %struct.delayed_work, ptr, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.test_dai_name = type { [32 x i8], [32 x i8], [32 x i8] }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }

@__initcall__kmod_snd_soc_test_component__238_653_test_driver_init6 = internal global ptr @test_driver_init, section ".initcall6.init", align 4
@test_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @test_driver_probe, ptr @test_driver_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @test_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_test_driver_exit = internal global ptr @test_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias239 = internal constant [58 x i8] c"snd_soc_test_component.alias=platform:asoc-test-component\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [83 x i8] c"snd_soc_test_component.author=Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [55 x i8] c"snd_soc_test_component.description=ASoC Test Component\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [69 x i8] c"snd_soc_test_component.file=sound/soc/generic/snd-soc-test-component\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [38 x i8] c"snd_soc_test_component.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"test-component\00", [17 x i8] zeroinitializer }, align 32
@test_of_match = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"test-cpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @test_cpu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"test-cpu-verbose\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @test_cpu_vv }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"test-cpu-verbose-dai\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @test_cpu_nv }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"test-cpu-verbose-component\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @test_cpu_vn }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"test-codec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @test_codec }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"test-codec-verbose\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @test_codec_vv }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"test-codec-verbose-dai\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @test_codec_nv }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"test-codec-verbose-component\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @test_codec_vn }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@test_driver_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 543, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"no port exits\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"test_driver_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sound/soc/generic/test-component.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@test_driver_probe._entry_ptr = internal global ptr @test_driver_probe._entry, section ".printk_index", align 4
@test_driver_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&(&priv->dwork)->work)\00", [55 x i8] zeroinitializer }, align 32
@test_driver_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&(&priv->dwork)->timer\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"test_cpu\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"test_codec\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%d\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAI%d Playback\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAI%d Capture\00", [18 x i8] zeroinitializer }, align 32
@test_verbose_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @test_dai_set_sysclk, ptr @test_dai_set_pll, ptr @test_dai_set_clkdiv, ptr null, ptr @test_dai_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @test_dai_mute_stream, ptr @test_dai_startup, ptr @test_dai_shutdown, ptr @test_dai_hw_params, ptr @test_dai_hw_free, ptr null, ptr @test_dai_trigger, ptr @test_dai_bespoke_trigger, ptr null, ptr @test_dai_formats, i32 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@test_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @test_dai_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @test_dai_startup, ptr @test_dai_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @test_dai_formats, i32 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@test_driver_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 633, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s()\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@test_driver_probe._entry_ptr.17 = internal global ptr @test_driver_probe._entry.14, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@test_component_pcm_construct._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 277, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s() : %s\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"test_component_pcm_construct\00", [35 x i8] zeroinitializer }, align 32
@test_component_pcm_construct._entry_ptr = internal global ptr @test_component_pcm_construct._entry, section ".printk_index", align 4
@test_component_pointer.pointer = internal global { i32, [28 x i8] } zeroinitializer, align 32
@test_component_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.20, ptr @.str.3, i32 433, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"test_component_trigger\00", [41 x i8] zeroinitializer }, align 32
@test_component_trigger._entry_ptr = internal global ptr @test_component_trigger._entry, section ".printk_index", align 4
@test_component_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.21, ptr @.str.3, i32 357, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"test_component_open\00", [44 x i8] zeroinitializer }, align 32
@test_component_open._entry_ptr = internal global ptr @test_component_open._entry, section ".printk_index", align 4
@test_component_hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 259, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 32768, i32 32, i32 8192, i32 1, i32 128, i32 256 }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IN\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OUT\00", [28 x i8] zeroinitializer }, align 32
@widgets = internal constant { [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [88 x i8] } { [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.22, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.23, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [88 x i8] zeroinitializer }, align 32
@test_component_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.25, ptr @.str.3, i32 249, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"test_component_probe\00", [43 x i8] zeroinitializer }, align 32
@test_component_probe._entry_ptr = internal global ptr @test_component_probe._entry, section ".printk_index", align 4
@test_component_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.26, ptr @.str.3, i32 256, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"test_component_remove\00", [42 x i8] zeroinitializer }, align 32
@test_component_remove._entry_ptr = internal global ptr @test_component_remove._entry, section ".printk_index", align 4
@test_component_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.27, ptr @.str.3, i32 261, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"test_component_suspend\00", [41 x i8] zeroinitializer }, align 32
@test_component_suspend._entry_ptr = internal global ptr @test_component_suspend._entry, section ".printk_index", align 4
@test_component_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.28, ptr @.str.3, i32 268, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"test_component_resume\00", [42 x i8] zeroinitializer }, align 32
@test_component_resume._entry_ptr = internal global ptr @test_component_resume._entry, section ".printk_index", align 4
@test_component_set_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.29, ptr @.str.3, i32 297, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"test_component_set_sysclk\00", [38 x i8] zeroinitializer }, align 32
@test_component_set_sysclk._entry_ptr = internal global ptr @test_component_set_sysclk._entry, section ".printk_index", align 4
@test_component_set_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.30, ptr @.str.3, i32 305, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"test_component_set_pll\00", [41 x i8] zeroinitializer }, align 32
@test_component_set_pll._entry_ptr = internal global ptr @test_component_set_pll._entry, section ".printk_index", align 4
@test_component_set_jack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.31, ptr @.str.3, i32 313, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"test_component_set_jack\00", [40 x i8] zeroinitializer }, align 32
@test_component_set_jack._entry_ptr = internal global ptr @test_component_set_jack._entry, section ".printk_index", align 4
@test_component_seq_notifier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.32, ptr @.str.3, i32 321, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"test_component_seq_notifier\00", [36 x i8] zeroinitializer }, align 32
@test_component_seq_notifier._entry_ptr = internal global ptr @test_component_seq_notifier._entry, section ".printk_index", align 4
@test_component_stream_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.33, ptr @.str.3, i32 326, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"test_component_stream_event\00", [36 x i8] zeroinitializer }, align 32
@test_component_stream_event._entry_ptr = internal global ptr @test_component_stream_event._entry, section ".printk_index", align 4
@test_component_set_bias_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.34, ptr @.str.3, i32 334, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"test_component_set_bias_level\00", [34 x i8] zeroinitializer }, align 32
@test_component_set_bias_level._entry_ptr = internal global ptr @test_component_set_bias_level._entry, section ".printk_index", align 4
@test_component_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.35, ptr @.str.3, i32 369, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"test_component_close\00", [43 x i8] zeroinitializer }, align 32
@test_component_close._entry_ptr = internal global ptr @test_component_close._entry, section ".printk_index", align 4
@test_component_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.36, ptr @.str.3, i32 378, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"test_component_ioctl\00", [43 x i8] zeroinitializer }, align 32
@test_component_ioctl._entry_ptr = internal global ptr @test_component_ioctl._entry, section ".printk_index", align 4
@test_component_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.37, ptr @.str.3, i32 387, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"test_component_hw_params\00", [39 x i8] zeroinitializer }, align 32
@test_component_hw_params._entry_ptr = internal global ptr @test_component_hw_params._entry, section ".printk_index", align 4
@test_component_hw_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.38, ptr @.str.3, i32 395, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"test_component_hw_free\00", [41 x i8] zeroinitializer }, align 32
@test_component_hw_free._entry_ptr = internal global ptr @test_component_hw_free._entry, section ".printk_index", align 4
@test_component_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.39, ptr @.str.3, i32 403, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"test_component_prepare\00", [41 x i8] zeroinitializer }, align 32
@test_component_prepare._entry_ptr = internal global ptr @test_component_prepare._entry, section ".printk_index", align 4
@test_component_sync_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.40, ptr @.str.3, i32 451, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"test_component_sync_stop\00", [39 x i8] zeroinitializer }, align 32
@test_component_sync_stop._entry_ptr = internal global ptr @test_component_sync_stop._entry, section ".printk_index", align 4
@test_component_get_time_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.41, ptr @.str.3, i32 481, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"test_component_get_time_info\00", [35 x i8] zeroinitializer }, align 32
@test_component_get_time_info._entry_ptr = internal global ptr @test_component_get_time_info._entry, section ".printk_index", align 4
@test_component_be_hw_params_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.42, ptr @.str.3, i32 489, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"test_component_be_hw_params_fixup\00", [62 x i8] zeroinitializer }, align 32
@test_component_be_hw_params_fixup._entry_ptr = internal global ptr @test_component_be_hw_params_fixup._entry, section ".printk_index", align 4
@test_component_pcm_destruct._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.43, ptr @.str.3, i32 291, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"test_component_pcm_destruct\00", [36 x i8] zeroinitializer }, align 32
@test_component_pcm_destruct._entry_ptr = internal global ptr @test_component_pcm_destruct._entry, section ".printk_index", align 4
@test_dai_formats = internal global { i64, [24 x i8] } { i64 64424509694, [24 x i8] zeroinitializer }, align 32
@test_dai_set_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.44, ptr @.str.3, i32 44, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"test_dai_set_sysclk\00", [44 x i8] zeroinitializer }, align 32
@test_dai_set_sysclk._entry_ptr = internal global ptr @test_dai_set_sysclk._entry, section ".printk_index", align 4
@test_dai_set_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.45, ptr @.str.3, i32 52, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"test_dai_set_pll\00", [47 x i8] zeroinitializer }, align 32
@test_dai_set_pll._entry_ptr = internal global ptr @test_dai_set_pll._entry, section ".printk_index", align 4
@test_dai_set_clkdiv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.46, ptr @.str.3, i32 59, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"test_dai_set_clkdiv\00", [44 x i8] zeroinitializer }, align 32
@test_dai_set_clkdiv._entry_ptr = internal global ptr @test_dai_set_clkdiv._entry, section ".printk_index", align 4
@test_dai_set_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 72, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"name   : %s\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"test_dai_set_fmt\00", [47 x i8] zeroinitializer }, align 32
@test_dai_set_fmt._entry_ptr = internal global ptr @test_dai_set_fmt._entry, section ".printk_index", align 4
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2s\00", [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"right_j\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"left_j\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dsp_a\00", [26 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dsp_b\00", [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ac97\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pdm\00", [28 x i8] zeroinitializer }, align 32
@test_dai_set_fmt._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.48, ptr @.str.3, i32 98, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"format : %s\00", [20 x i8] zeroinitializer }, align 32
@test_dai_set_fmt._entry_ptr.59 = internal global ptr @test_dai_set_fmt._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"continuous\00", [21 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gated\00", [26 x i8] zeroinitializer }, align 32
@test_dai_set_fmt._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.48, ptr @.str.3, i32 104, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clock  : %s\00", [20 x i8] zeroinitializer }, align 32
@test_dai_set_fmt._entry_ptr.64 = internal global ptr @test_dai_set_fmt._entry.62, section ".printk_index", align 4
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"clk provider, frame provider\00", [35 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"clk consumer, frame provider\00", [35 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"clk provider, frame consumer\00", [35 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"clk consumer, frame consumer\00", [35 x i8] zeroinitializer }, align 32
@test_dai_set_fmt._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.48, ptr @.str.3, i32 121, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clock  : codec is %s\00", [43 x i8] zeroinitializer }, align 32
@test_dai_set_fmt._entry_ptr.71 = internal global ptr @test_dai_set_fmt._entry.69, section ".printk_index", align 4
@.str.72 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"normal bit, normal frame\00", [39 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"normal bit, invert frame\00", [39 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invert bit, normal frame\00", [39 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invert bit, invert frame\00", [39 x i8] zeroinitializer }, align 32
@test_dai_set_fmt._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.48, ptr @.str.3, i32 138, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"signal : %s\00", [20 x i8] zeroinitializer }, align 32
@test_dai_set_fmt._entry_ptr.78 = internal global ptr @test_dai_set_fmt._entry.76, section ".printk_index", align 4
@test_dai_mute_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.79, ptr @.str.3, i32 145, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"test_dai_mute_stream\00", [43 x i8] zeroinitializer }, align 32
@test_dai_mute_stream._entry_ptr = internal global ptr @test_dai_mute_stream._entry, section ".printk_index", align 4
@test_dai_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.80, ptr @.str.3, i32 152, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"test_dai_startup\00", [47 x i8] zeroinitializer }, align 32
@test_dai_startup._entry_ptr = internal global ptr @test_dai_startup._entry, section ".printk_index", align 4
@test_dai_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.81, ptr @.str.3, i32 159, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"test_dai_shutdown\00", [46 x i8] zeroinitializer }, align 32
@test_dai_shutdown._entry_ptr = internal global ptr @test_dai_shutdown._entry, section ".printk_index", align 4
@test_dai_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.82, ptr @.str.3, i32 165, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"test_dai_hw_params\00", [45 x i8] zeroinitializer }, align 32
@test_dai_hw_params._entry_ptr = internal global ptr @test_dai_hw_params._entry, section ".printk_index", align 4
@test_dai_hw_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.83, ptr @.str.3, i32 172, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"test_dai_hw_free\00", [47 x i8] zeroinitializer }, align 32
@test_dai_hw_free._entry_ptr = internal global ptr @test_dai_hw_free._entry, section ".printk_index", align 4
@test_dai_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.84, ptr @.str.3, i32 179, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"test_dai_trigger\00", [47 x i8] zeroinitializer }, align 32
@test_dai_trigger._entry_ptr = internal global ptr @test_dai_trigger._entry, section ".printk_index", align 4
@test_dai_bespoke_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.85, ptr @.str.3, i32 187, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"test_dai_bespoke_trigger\00", [39 x i8] zeroinitializer }, align 32
@test_dai_bespoke_trigger._entry_ptr = internal global ptr @test_dai_bespoke_trigger._entry, section ".printk_index", align 4
@test_driver_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.86, ptr @.str.3, i32 640, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"test_driver_remove\00", [45 x i8] zeroinitializer }, align 32
@test_driver_remove._entry_ptr = internal global ptr @test_driver_remove._entry, section ".printk_index", align 4
@test_cpu = internal constant { %struct.test_adata, [28 x i8] } { %struct.test_adata { i8 -128, [3 x i8] undef }, [28 x i8] zeroinitializer }, align 32
@test_cpu_vv = internal constant { %struct.test_adata, [28 x i8] } { %struct.test_adata { i8 -32, [3 x i8] undef }, [28 x i8] zeroinitializer }, align 32
@test_cpu_nv = internal constant { %struct.test_adata, [28 x i8] } { %struct.test_adata { i8 -96, [3 x i8] undef }, [28 x i8] zeroinitializer }, align 32
@test_cpu_vn = internal constant { %struct.test_adata, [28 x i8] } { %struct.test_adata { i8 -64, [3 x i8] undef }, [28 x i8] zeroinitializer }, align 32
@test_codec = internal constant { %struct.test_adata, [28 x i8] } { %struct.test_adata { i8 0, [3 x i8] undef }, [28 x i8] zeroinitializer }, align 32
@test_codec_vv = internal constant { %struct.test_adata, [28 x i8] } { %struct.test_adata { i8 96, [3 x i8] undef }, [28 x i8] zeroinitializer }, align 32
@test_codec_nv = internal constant { %struct.test_adata, [28 x i8] } { %struct.test_adata { i8 32, [3 x i8] undef }, [28 x i8] zeroinitializer }, align 32
@test_codec_vn = internal constant { %struct.test_adata, [28 x i8] } { %struct.test_adata { i8 64, [3 x i8] undef }, [28 x i8] zeroinitializer }, align 32
@switch.table.test_dai_set_fmt = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56], [36 x i8] zeroinitializer }, align 32
@switch.table.test_dai_set_fmt.87 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68], [16 x i8] zeroinitializer }, align 32
@switch.table.test_dai_set_fmt.88 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.72, ptr @.str.49, ptr @.str.73, ptr @.str.74, ptr @.str.75], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.89 = private unnamed_addr constant [12 x i8] c"test_driver\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 645, i32 31 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 647, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant [14 x i8] c"test_of_match\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 505, i32 34 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 543, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 559, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 563, i32 19 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 568, i32 19 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 604, i32 42 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 607, i32 51 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 614, i32 50 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"test_verbose_ops\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 220, i32 37 }
@___asan_gen_.146 = private unnamed_addr constant [9 x i8] c"test_ops\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 212, i32 37 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 633, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 277, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [8 x i8] c"pointer\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 460, i32 13 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 433, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 357, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [24 x i8] c"test_component_hardware\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 339, i32 38 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 525, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 526, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant [8 x i8] c"widgets\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 518, i32 41 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 249, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 256, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 261, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 268, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 297, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 305, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 313, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 321, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 326, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 334, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 369, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 378, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 387, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 395, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 403, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 451, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 481, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 489, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 291, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant [17 x i8] c"test_dai_formats\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 192, i32 12 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 44, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 52, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 59, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 72, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 74, i32 8 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 77, i32 9 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 80, i32 9 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 83, i32 9 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 86, i32 9 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 89, i32 9 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 92, i32 9 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 95, i32 9 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 98, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 101, i32 9 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 103, i32 9 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 104, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 109, i32 9 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 112, i32 9 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 115, i32 9 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 118, i32 9 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 121, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 126, i32 9 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 129, i32 9 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 132, i32 9 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 135, i32 9 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 138, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 145, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 152, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 159, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 165, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 172, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 179, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 187, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.461 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 640, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant [9 x i8] c"test_cpu\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 495, i32 32 }
@___asan_gen_.467 = private unnamed_addr constant [12 x i8] c"test_cpu_vv\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 496, i32 32 }
@___asan_gen_.470 = private unnamed_addr constant [12 x i8] c"test_cpu_nv\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 497, i32 32 }
@___asan_gen_.473 = private unnamed_addr constant [12 x i8] c"test_cpu_vn\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 498, i32 32 }
@___asan_gen_.476 = private unnamed_addr constant [11 x i8] c"test_codec\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 500, i32 32 }
@___asan_gen_.479 = private unnamed_addr constant [14 x i8] c"test_codec_vv\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 501, i32 32 }
@___asan_gen_.482 = private unnamed_addr constant [14 x i8] c"test_codec_nv\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 502, i32 32 }
@___asan_gen_.485 = private unnamed_addr constant [14 x i8] c"test_codec_vn\00", align 1
@___asan_gen_.486 = private constant [38 x i8] c"../sound/soc/generic/test-component.c\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 503, i32 32 }
@___asan_gen_.488 = private unnamed_addr constant [30 x i8] c"switch.table.test_dai_set_fmt\00", align 1
@___asan_gen_.489 = private unnamed_addr constant [33 x i8] c"switch.table.test_dai_set_fmt.87\00", align 1
@___asan_gen_.490 = private unnamed_addr constant [33 x i8] c"switch.table.test_dai_set_fmt.88\00", align 1
@llvm.compiler.used = appending global [184 x ptr] [ptr @__UNIQUE_ID_alias239, ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_test_driver_exit, ptr @__initcall__kmod_snd_soc_test_component__238_653_test_driver_init6, ptr @test_component_be_hw_params_fixup._entry, ptr @test_component_be_hw_params_fixup._entry_ptr, ptr @test_component_close._entry, ptr @test_component_close._entry_ptr, ptr @test_component_get_time_info._entry, ptr @test_component_get_time_info._entry_ptr, ptr @test_component_hw_free._entry, ptr @test_component_hw_free._entry_ptr, ptr @test_component_hw_params._entry, ptr @test_component_hw_params._entry_ptr, ptr @test_component_ioctl._entry, ptr @test_component_ioctl._entry_ptr, ptr @test_component_open._entry, ptr @test_component_open._entry_ptr, ptr @test_component_pcm_construct._entry, ptr @test_component_pcm_construct._entry_ptr, ptr @test_component_pcm_destruct._entry, ptr @test_component_pcm_destruct._entry_ptr, ptr @test_component_prepare._entry, ptr @test_component_prepare._entry_ptr, ptr @test_component_probe._entry, ptr @test_component_probe._entry_ptr, ptr @test_component_remove._entry, ptr @test_component_remove._entry_ptr, ptr @test_component_resume._entry, ptr @test_component_resume._entry_ptr, ptr @test_component_seq_notifier._entry, ptr @test_component_seq_notifier._entry_ptr, ptr @test_component_set_bias_level._entry, ptr @test_component_set_bias_level._entry_ptr, ptr @test_component_set_jack._entry, ptr @test_component_set_jack._entry_ptr, ptr @test_component_set_pll._entry, ptr @test_component_set_pll._entry_ptr, ptr @test_component_set_sysclk._entry, ptr @test_component_set_sysclk._entry_ptr, ptr @test_component_stream_event._entry, ptr @test_component_stream_event._entry_ptr, ptr @test_component_suspend._entry, ptr @test_component_suspend._entry_ptr, ptr @test_component_sync_stop._entry, ptr @test_component_sync_stop._entry_ptr, ptr @test_component_trigger._entry, ptr @test_component_trigger._entry_ptr, ptr @test_dai_bespoke_trigger._entry, ptr @test_dai_bespoke_trigger._entry_ptr, ptr @test_dai_hw_free._entry, ptr @test_dai_hw_free._entry_ptr, ptr @test_dai_hw_params._entry, ptr @test_dai_hw_params._entry_ptr, ptr @test_dai_mute_stream._entry, ptr @test_dai_mute_stream._entry_ptr, ptr @test_dai_set_clkdiv._entry, ptr @test_dai_set_clkdiv._entry_ptr, ptr @test_dai_set_fmt._entry, ptr @test_dai_set_fmt._entry.57, ptr @test_dai_set_fmt._entry.62, ptr @test_dai_set_fmt._entry.69, ptr @test_dai_set_fmt._entry.76, ptr @test_dai_set_fmt._entry_ptr, ptr @test_dai_set_fmt._entry_ptr.59, ptr @test_dai_set_fmt._entry_ptr.64, ptr @test_dai_set_fmt._entry_ptr.71, ptr @test_dai_set_fmt._entry_ptr.78, ptr @test_dai_set_pll._entry, ptr @test_dai_set_pll._entry_ptr, ptr @test_dai_set_sysclk._entry, ptr @test_dai_set_sysclk._entry_ptr, ptr @test_dai_shutdown._entry, ptr @test_dai_shutdown._entry_ptr, ptr @test_dai_startup._entry, ptr @test_dai_startup._entry_ptr, ptr @test_dai_trigger._entry, ptr @test_dai_trigger._entry_ptr, ptr @test_driver_exit, ptr @test_driver_probe._entry, ptr @test_driver_probe._entry.14, ptr @test_driver_probe._entry_ptr, ptr @test_driver_probe._entry_ptr.17, ptr @test_driver_remove._entry, ptr @test_driver_remove._entry_ptr, ptr @test_driver, ptr @.str, ptr @test_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @test_driver_probe.__key, ptr @.str.6, ptr @test_driver_probe.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @test_verbose_ops, ptr @test_ops, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @test_component_pointer.pointer, ptr @.str.20, ptr @.str.21, ptr @test_component_hardware, ptr @.str.22, ptr @.str.23, ptr @widgets, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @test_dai_formats, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @test_cpu, ptr @test_cpu_vv, ptr @test_cpu_nv, ptr @test_cpu_vn, ptr @test_codec, ptr @test_codec_vv, ptr @test_codec_nv, ptr @test_codec_vn, ptr @switch.table.test_dai_set_fmt, ptr @switch.table.test_dai_set_fmt.87, ptr @switch.table.test_dai_set_fmt.88], section "llvm.metadata"
@0 = internal global [136 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_of_match to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_driver_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_driver_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_driver_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_verbose_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_driver_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_component_pcm_construct._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_component_pointer.pointer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_component_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_component_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_component_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @widgets to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_component_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_component_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_component_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_component_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_component_set_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_component_set_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_component_set_jack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_component_seq_notifier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_component_stream_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_component_set_bias_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_component_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_component_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_component_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_component_hw_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_component_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_component_sync_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_component_get_time_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_component_be_hw_params_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_component_pcm_destruct._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_dai_formats to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_dai_set_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_dai_set_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_dai_set_clkdiv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_dai_set_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_dai_set_fmt._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_dai_set_fmt._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_dai_set_fmt._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_dai_set_fmt._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_dai_mute_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_dai_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_dai_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_dai_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_dai_hw_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_dai_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_dai_bespoke_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_driver_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_cpu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_cpu_vv to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_cpu_nv to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_cpu_vn to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_codec to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_codec_vv to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_codec_nv to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_codec_vn to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.test_dai_set_fmt to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.test_dai_set_fmt.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.test_dai_set_fmt.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @test_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @test_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @test_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @test_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_driver_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %call3 = tail call i32 @of_graph_get_endpoint_count(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 120, i32 noundef 3520) #6
  %call.i249 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 188, i32 noundef 3520) #6
  %mul = mul i32 %call3, 168
  %call.i250 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %mul, i32 noundef 3520) #6
  %mul7 = mul i32 %call3, 96
  %call.i251 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %mul7, i32 noundef 3520) #6
  %tobool9.not = icmp eq ptr %call.i, null
  %tobool10.not = icmp eq ptr %call.i249, null
  %or.cond = select i1 %tobool9.not, i1 true, i1 %tobool10.not
  %tobool12.not = icmp eq ptr %call.i250, null
  %or.cond246 = select i1 %or.cond, i1 true, i1 %tobool12.not
  %tobool14.not = icmp eq ptr %call.i251, null
  %or.cond247 = select i1 %or.cond246, i1 true, i1 %tobool14.not
  %tobool16.not = icmp eq ptr %call, null
  %or.cond248 = select i1 %or.cond247, i1 true, i1 %tobool16.not
  br i1 %or.cond248, label %if.end.cleanup_crit_edge, label %if.end18

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 4
  %component_driver = getelementptr inbounds %struct.test_priv, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %component_driver to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i249, ptr %component_driver, align 4
  %dai_driver = getelementptr inbounds %struct.test_priv, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %dai_driver to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i250, ptr %dai_driver, align 4
  %name = getelementptr inbounds %struct.test_priv, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i251, ptr %name, align 4
  %dwork = getelementptr inbounds %struct.test_priv, ptr %call.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %dwork, i32 noundef 0) #6
  %6 = ptrtoint ptr %dwork to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %dwork, align 4
  %lockdep_map = getelementptr inbounds %struct.test_priv, ptr %call.i, i32 0, i32 2, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @test_driver_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry28 = getelementptr inbounds %struct.test_priv, ptr %call.i, i32 0, i32 2, i32 0, i32 1
  %7 = ptrtoint ptr %entry28 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry28, ptr %entry28, align 4
  %prev.i = getelementptr inbounds %struct.test_priv, ptr %call.i, i32 0, i32 2, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry28, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.test_priv, ptr %call.i, i32 0, i32 2, i32 0, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @test_component_dwork, ptr %func, align 4
  %timer = getelementptr inbounds %struct.test_priv, ptr %call.i, i32 0, i32 2, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.8, ptr noundef nonnull @test_driver_probe.__key.7) #6
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i, align 4
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool39.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool39.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call.i249 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.9, ptr %call.i249, align 4
  %pcm_construct = getelementptr inbounds %struct.snd_soc_component_driver, ptr %call.i249, i32 0, i32 13
  %13 = ptrtoint ptr %pcm_construct to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @test_component_pcm_construct, ptr %pcm_construct, align 4
  %pointer = getelementptr inbounds %struct.snd_soc_component_driver, ptr %call.i249, i32 0, i32 31
  %14 = ptrtoint ptr %pointer to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @test_component_pointer, ptr %pointer, align 4
  %trigger = getelementptr inbounds %struct.snd_soc_component_driver, ptr %call.i249, i32 0, i32 29
  %15 = ptrtoint ptr %trigger to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @test_component_trigger, ptr %trigger, align 4
  br label %if.end50

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %call.i249 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.10, ptr %call.i249, align 4
  %idle_bias_on = getelementptr inbounds %struct.snd_soc_component_driver, ptr %call.i249, i32 0, i32 41
  %17 = ptrtoint ptr %idle_bias_on to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load43 = load i8, ptr %idle_bias_on, align 4
  %bf.set49 = or i8 %bf.load43, 76
  store i8 %bf.set49, ptr %idle_bias_on, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then40
  %open = getelementptr inbounds %struct.snd_soc_component_driver, ptr %call.i249, i32 0, i32 23
  %18 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @test_component_open, ptr %open, align 4
  %dapm_widgets = getelementptr inbounds %struct.snd_soc_component_driver, ptr %call.i249, i32 0, i32 3
  %19 = ptrtoint ptr %dapm_widgets to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @widgets, ptr %dapm_widgets, align 4
  %num_dapm_widgets = getelementptr inbounds %struct.snd_soc_component_driver, ptr %call.i249, i32 0, i32 4
  %20 = ptrtoint ptr %num_dapm_widgets to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %num_dapm_widgets, align 4
  %21 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load51 = load i8, ptr %call, align 4
  %22 = and i8 %bf.load51, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool55.not = icmp eq i8 %22, 0
  br i1 %tobool55.not, label %if.end50.if.end63_crit_edge, label %if.then56

if.end50.if.end63_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then56:                                        ; preds = %if.end50
  %probe = getelementptr inbounds %struct.snd_soc_component_driver, ptr %call.i249, i32 0, i32 7
  %23 = ptrtoint ptr %probe to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @test_component_probe, ptr %probe, align 4
  %remove = getelementptr inbounds %struct.snd_soc_component_driver, ptr %call.i249, i32 0, i32 8
  %24 = ptrtoint ptr %remove to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @test_component_remove, ptr %remove, align 4
  %suspend = getelementptr inbounds %struct.snd_soc_component_driver, ptr %call.i249, i32 0, i32 9
  %25 = ptrtoint ptr %suspend to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @test_component_suspend, ptr %suspend, align 4
  %resume = getelementptr inbounds %struct.snd_soc_component_driver, ptr %call.i249, i32 0, i32 10
  %26 = ptrtoint ptr %resume to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @test_component_resume, ptr %resume, align 4
  %set_sysclk = getelementptr inbounds %struct.snd_soc_component_driver, ptr %call.i249, i32 0, i32 15
  %27 = ptrtoint ptr %set_sysclk to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @test_component_set_sysclk, ptr %set_sysclk, align 4
  %set_pll = getelementptr inbounds %struct.snd_soc_component_driver, ptr %call.i249, i32 0, i32 16
  %28 = ptrtoint ptr %set_pll to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @test_component_set_pll, ptr %set_pll, align 4
  %set_jack = getelementptr inbounds %struct.snd_soc_component_driver, ptr %call.i249, i32 0, i32 17
  %29 = ptrtoint ptr %set_jack to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @test_component_set_jack, ptr %set_jack, align 4
  %seq_notifier = getelementptr inbounds %struct.snd_soc_component_driver, ptr %call.i249, i32 0, i32 20
  %30 = ptrtoint ptr %seq_notifier to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @test_component_seq_notifier, ptr %seq_notifier, align 4
  %stream_event = getelementptr inbounds %struct.snd_soc_component_driver, ptr %call.i249, i32 0, i32 21
  %31 = ptrtoint ptr %stream_event to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @test_component_stream_event, ptr %stream_event, align 4
  %set_bias_level = getelementptr inbounds %struct.snd_soc_component_driver, ptr %call.i249, i32 0, i32 22
  %32 = ptrtoint ptr %set_bias_level to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @test_component_set_bias_level, ptr %set_bias_level, align 4
  %close = getelementptr inbounds %struct.snd_soc_component_driver, ptr %call.i249, i32 0, i32 24
  %33 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @test_component_close, ptr %close, align 4
  %ioctl = getelementptr inbounds %struct.snd_soc_component_driver, ptr %call.i249, i32 0, i32 25
  %34 = ptrtoint ptr %ioctl to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @test_component_ioctl, ptr %ioctl, align 4
  %hw_params = getelementptr inbounds %struct.snd_soc_component_driver, ptr %call.i249, i32 0, i32 26
  %35 = ptrtoint ptr %hw_params to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @test_component_hw_params, ptr %hw_params, align 4
  %hw_free = getelementptr inbounds %struct.snd_soc_component_driver, ptr %call.i249, i32 0, i32 27
  %36 = ptrtoint ptr %hw_free to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @test_component_hw_free, ptr %hw_free, align 4
  %prepare = getelementptr inbounds %struct.snd_soc_component_driver, ptr %call.i249, i32 0, i32 28
  %37 = ptrtoint ptr %prepare to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @test_component_prepare, ptr %prepare, align 4
  %sync_stop = getelementptr inbounds %struct.snd_soc_component_driver, ptr %call.i249, i32 0, i32 30
  %38 = ptrtoint ptr %sync_stop to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @test_component_sync_stop, ptr %sync_stop, align 4
  %get_time_info = getelementptr inbounds %struct.snd_soc_component_driver, ptr %call.i249, i32 0, i32 32
  %39 = ptrtoint ptr %get_time_info to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @test_component_get_time_info, ptr %get_time_info, align 4
  %be_hw_params_fixup = getelementptr inbounds %struct.snd_soc_component_driver, ptr %call.i249, i32 0, i32 44
  %40 = ptrtoint ptr %be_hw_params_fixup to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @test_component_be_hw_params_fixup, ptr %be_hw_params_fixup, align 4
  %41 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load57 = load i8, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load57)
  %tobool60.not = icmp sgt i8 %bf.load57, -1
  br i1 %tobool60.not, label %if.then56.if.end63_crit_edge, label %if.then61

if.then56.if.end63_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then61:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  %pcm_destruct = getelementptr inbounds %struct.snd_soc_component_driver, ptr %call.i249, i32 0, i32 14
  %42 = ptrtoint ptr %pcm_destruct to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @test_component_pcm_destruct, ptr %pcm_destruct, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.then56.if.end63_crit_edge, %if.end50.if.end63_crit_edge
  %call64 = tail call ptr @of_graph_get_next_endpoint(ptr noundef %1, ptr noundef null) #6
  %cmp.not252 = icmp eq ptr %call64, null
  br i1 %cmp.not252, label %if.end63.for.end_crit_edge, label %if.end63.for.body_crit_edge

if.end63.for.body_crit_edge:                      ; preds = %if.end63
  br label %for.body

if.end63.for.end_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end63.for.body_crit_edge
  %i.0254 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end63.for.body_crit_edge ]
  %ep.0253 = phi ptr [ %call119, %for.body.for.body_crit_edge ], [ %call64, %if.end63.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.test_dai_name, ptr %call.i251, i32 %i.0254
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %call67 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx, i32 noundef 32, ptr noundef nonnull @.str.11, ptr noundef %44, i32 noundef %i.0254)
  %arrayidx71 = getelementptr %struct.snd_soc_dai_driver, ptr %call.i250, i32 %i.0254
  %45 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx, ptr %arrayidx71, align 8
  %name_playback = getelementptr %struct.test_dai_name, ptr %call.i251, i32 %i.0254, i32 1
  %call75 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name_playback, i32 noundef 32, ptr noundef nonnull @.str.12, i32 noundef %i.0254)
  %playback = getelementptr %struct.snd_soc_dai_driver, ptr %call.i250, i32 %i.0254, i32 11
  %46 = ptrtoint ptr %playback to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %name_playback, ptr %playback, align 8
  %channels_min = getelementptr %struct.snd_soc_dai_driver, ptr %call.i250, i32 %i.0254, i32 11, i32 5
  %47 = ptrtoint ptr %channels_min to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %channels_min, align 4
  %channels_max = getelementptr %struct.snd_soc_dai_driver, ptr %call.i250, i32 %i.0254, i32 11, i32 6
  %48 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 384, ptr %channels_max, align 8
  %rates = getelementptr %struct.snd_soc_dai_driver, ptr %call.i250, i32 %i.0254, i32 11, i32 2
  %49 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 32766, ptr %rates, align 8
  %formats = getelementptr %struct.snd_soc_dai_driver, ptr %call.i250, i32 %i.0254, i32 11, i32 1
  %50 = ptrtoint ptr %formats to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 4294972759, ptr %formats, align 8
  %name_capture = getelementptr %struct.test_dai_name, ptr %call.i251, i32 %i.0254, i32 2
  %call90 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name_capture, i32 noundef 32, ptr noundef nonnull @.str.13, i32 noundef %i.0254)
  %capture = getelementptr %struct.snd_soc_dai_driver, ptr %call.i250, i32 %i.0254, i32 10
  %51 = ptrtoint ptr %capture to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %name_capture, ptr %capture, align 8
  %channels_min98 = getelementptr %struct.snd_soc_dai_driver, ptr %call.i250, i32 %i.0254, i32 10, i32 5
  %52 = ptrtoint ptr %channels_min98 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %channels_min98, align 4
  %channels_max101 = getelementptr %struct.snd_soc_dai_driver, ptr %call.i250, i32 %i.0254, i32 10, i32 6
  %53 = ptrtoint ptr %channels_max101 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 384, ptr %channels_max101, align 8
  %rates104 = getelementptr %struct.snd_soc_dai_driver, ptr %call.i250, i32 %i.0254, i32 10, i32 2
  %54 = ptrtoint ptr %rates104 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 32766, ptr %rates104, align 8
  %formats107 = getelementptr %struct.snd_soc_dai_driver, ptr %call.i250, i32 %i.0254, i32 10, i32 1
  %55 = ptrtoint ptr %formats107 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 4294972759, ptr %formats107, align 8
  %56 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load108 = load i8, ptr %call, align 4
  %57 = and i8 %bf.load108, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool112.not = icmp eq i8 %57, 0
  %spec.select = select i1 %tobool112.not, ptr @test_ops, ptr @test_verbose_ops
  %58 = getelementptr %struct.snd_soc_dai_driver, ptr %call.i250, i32 %i.0254, i32 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %spec.select, ptr %58, align 8
  %inc = add i32 %i.0254, 1
  %call119 = tail call ptr @of_graph_get_next_endpoint(ptr noundef %1, ptr noundef nonnull %ep.0253) #6
  %cmp.not = icmp eq ptr %call119, null
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end63.for.end_crit_edge
  %call120 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull %call.i249, ptr noundef nonnull %call.i250, i32 noundef %call3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %cmp121 = icmp slt i32 %call120, 0
  br i1 %cmp121, label %for.end.cleanup_crit_edge, label %do.end126

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end126:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end126, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end126 ], [ -22, %do.end ], [ -22, %if.end.cleanup_crit_edge ], [ %call120, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_driver_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.86) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_get_endpoint_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @test_component_dwork(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %substream = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work, i32 noundef 1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_component_pcm_construct(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %rtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 10
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef %5) #9
  %pcm = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 7
  %6 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcm, align 4
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %snd_card = getelementptr inbounds %struct.snd_soc_card, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %snd_card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %snd_card, align 4
  %dev1 = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1, align 8
  %call = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %7, i32 noundef 2, ptr noundef %13, i32 noundef 32768, i32 noundef 32768) #6
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @test_component_pointer(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = load i32, ptr @test_component_pointer.pointer, align 4
  %add = add i32 %2, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %add)
  %cmp = icmp sgt i32 %add, 32768
  %spec.store.select = select i1 %cmp, i32 0, i32 %add
  store i32 %spec.store.select, ptr @test_component_pointer.pointer, align 4
  %mul.i = shl i32 %spec.store.select, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %3 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div.i, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_component_trigger(ptr nocapture noundef readonly %component, ptr noundef %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %driver = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 10
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.20, ptr noundef %7) #9
  %8 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dwork.i = getelementptr inbounds %struct.test_priv, ptr %3, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %dwork.i, i32 noundef 1) #6
  %substream2 = getelementptr inbounds %struct.test_priv, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %substream2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %substream, ptr %substream2, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %substream4 = getelementptr inbounds %struct.test_priv, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %substream4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %substream4, align 4
  %dwork.i10 = getelementptr inbounds %struct.test_priv, ptr %3, i32 0, i32 2
  %call.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %dwork.i10) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_component_open(ptr nocapture noundef readonly %component, ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 10
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.21, ptr noundef %7) #9
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dai_link, align 4
  %no_pcm = getelementptr inbounds %struct.snd_soc_dai_link, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %no_pcm to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load = load i32, ptr %no_pcm, align 4
  %11 = and i32 %bf.load, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %substream, ptr noundef nonnull @test_component_hardware) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_component_probe(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 10
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.25, ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @test_component_remove(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 10
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.26, ptr noundef %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_component_suspend(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 10
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.27, ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_component_resume(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 10
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.28, ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_component_set_sysclk(ptr nocapture noundef readonly %component, i32 noundef %clk_id, i32 noundef %source, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 10
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.29, ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_component_set_pll(ptr nocapture noundef readonly %component, i32 noundef %pll_id, i32 noundef %source, i32 noundef %freq_in, i32 noundef %freq_out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 10
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.30, ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_component_set_jack(ptr nocapture noundef readonly %component, ptr nocapture noundef readnone %jack, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 10
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.31, ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @test_component_seq_notifier(ptr nocapture noundef readonly %component, i32 noundef %type, i32 noundef %subseq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 10
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.32, ptr noundef %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_component_stream_event(ptr nocapture noundef readonly %component, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 10
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.33, ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_component_set_bias_level(ptr nocapture noundef readonly %component, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 10
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.34, ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_component_close(ptr nocapture noundef readonly %component, ptr nocapture noundef readnone %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 10
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.35, ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_component_ioctl(ptr nocapture noundef readonly %component, ptr nocapture noundef readnone %substream, i32 noundef %cmd, ptr nocapture noundef readnone %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 10
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.36, ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_component_hw_params(ptr nocapture noundef readonly %component, ptr nocapture noundef readnone %substream, ptr nocapture noundef readnone %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 10
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.37, ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_component_hw_free(ptr nocapture noundef readonly %component, ptr nocapture noundef readnone %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 10
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.38, ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_component_prepare(ptr nocapture noundef readonly %component, ptr nocapture noundef readnone %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 10
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.39, ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_component_sync_stop(ptr nocapture noundef readonly %component, ptr nocapture noundef readnone %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 10
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.40, ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_component_get_time_info(ptr nocapture noundef readonly %component, ptr nocapture noundef readnone %substream, ptr nocapture noundef readnone %system_ts, ptr nocapture noundef readnone %audio_ts, ptr nocapture noundef readnone %audio_tstamp_config, ptr nocapture noundef readnone %audio_tstamp_report) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 10
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.41, ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_component_be_hw_params_fixup(ptr nocapture noundef readonly %rtd, ptr nocapture noundef readnone %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rtd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtd, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.42) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @test_component_pcm_destruct(ptr nocapture noundef readonly %component, ptr nocapture noundef readnone %pcm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 10
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.43, ptr noundef %5) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_dai_set_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 3
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.44, ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_dai_set_pll(ptr nocapture noundef readonly %dai, i32 noundef %pll_id, i32 noundef %source, i32 noundef %freq_in, i32 noundef %freq_out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 3
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.45, ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_dai_set_clkdiv(ptr nocapture noundef readonly %dai, i32 noundef %div_id, i32 noundef %div) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 3
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.46, ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_dai_set_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %fmt, 15
  %and1 = and i32 %fmt, 240
  %and3 = and i32 %fmt, 61440
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %dai to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dai, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.47, ptr noundef %3) #9
  %switch.tableidx = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 7
  br i1 %4, label %switch.lookup, label %entry.do.end12_crit_edge

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.test_dai_set_fmt, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %do.end12

do.end12:                                         ; preds = %switch.lookup, %entry.do.end12_crit_edge
  %str.0 = phi ptr [ @.str.49, %entry.do.end12_crit_edge ], [ %switch.load, %switch.lookup ]
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.58, ptr noundef nonnull %str.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and1)
  %cmp = icmp eq i32 %and1, 16
  %.str.60..str.61 = select i1 %cmp, ptr @.str.60, ptr @.str.61
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.63, ptr noundef nonnull %.str.60..str.61) #9
  %10 = add nsw i32 %and3, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %10)
  %11 = icmp ult i32 %10, 16384
  br i1 %11, label %switch.lookup47, label %do.end12.do.end25_crit_edge

do.end12.do.end25_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end25

switch.lookup47:                                  ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  %12 = lshr exact i32 %10, 12
  %switch.gep48 = getelementptr inbounds [4 x ptr], ptr @switch.table.test_dai_set_fmt.87, i32 0, i32 %12
  %13 = ptrtoint ptr %switch.gep48 to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load49 = load ptr, ptr %switch.gep48, align 4
  br label %do.end25

do.end25:                                         ; preds = %switch.lookup47, %do.end12.do.end25_crit_edge
  %str.2 = phi ptr [ @.str.49, %do.end12.do.end25_crit_edge ], [ %switch.load49, %switch.lookup47 ]
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.70, ptr noundef nonnull %str.2) #9
  %and2 = lshr i32 %fmt, 8
  %16 = and i32 %and2, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %16)
  %17 = icmp ult i32 %16, 5
  br i1 %17, label %switch.lookup50, label %do.end25.do.end34_crit_edge

do.end25.do.end34_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34

switch.lookup50:                                  ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep51 = getelementptr inbounds [5 x ptr], ptr @switch.table.test_dai_set_fmt.88, i32 0, i32 %16
  %18 = ptrtoint ptr %switch.gep51 to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load52 = load ptr, ptr %switch.gep51, align 4
  br label %do.end34

do.end34:                                         ; preds = %switch.lookup50, %do.end25.do.end34_crit_edge
  %str.3 = phi ptr [ @.str.49, %do.end25.do.end34_crit_edge ], [ %switch.load52, %switch.lookup50 ]
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.77, ptr noundef nonnull %str.3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_dai_mute_stream(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %stream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 3
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.79, ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_dai_startup(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 3
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.80, ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @test_dai_shutdown(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 3
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.81, ptr noundef %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_dai_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readnone %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 3
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.82, ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_dai_hw_free(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 3
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.83, ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_dai_trigger(ptr nocapture noundef readnone %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 3
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.84, ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_dai_bespoke_trigger(ptr nocapture noundef readnone %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 3
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.85, ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 136)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 136)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !53, !54, !55, !57, !58, !59, !61, !63, !65, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !181, !182, !184, !186, !188, !189, !190, !192, !194, !196, !198, !200, !201, !202, !204, !206, !208, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !242, !244, !246, !248, !249, !250, !252, !254, !256, !258, !260, !262, !264, !266}
!llvm.module.flags = !{!268, !269, !270, !271, !272, !273, !274, !275}
!llvm.ident = !{!276}

!0 = !{ptr @__initcall__kmod_snd_soc_test_component__238_653_test_driver_init6, !1, !"__initcall__kmod_snd_soc_test_component__238_653_test_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/generic/test-component.c", i32 653, i32 1}
!2 = !{ptr @__exitcall_test_driver_exit, !1, !"__exitcall_test_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias239, !4, !"__UNIQUE_ID_alias239", i1 false, i1 false}
!4 = !{!"../sound/soc/generic/test-component.c", i32 655, i32 1}
!5 = !{ptr @__UNIQUE_ID_author240, !6, !"__UNIQUE_ID_author240", i1 false, i1 false}
!6 = !{!"../sound/soc/generic/test-component.c", i32 656, i32 1}
!7 = !{ptr @__UNIQUE_ID_description241, !8, !"__UNIQUE_ID_description241", i1 false, i1 false}
!8 = !{!"../sound/soc/generic/test-component.c", i32 657, i32 1}
!9 = !{ptr @__UNIQUE_ID_file242, !10, !"__UNIQUE_ID_file242", i1 false, i1 false}
!10 = !{!"../sound/soc/generic/test-component.c", i32 658, i32 1}
!11 = !{ptr @__UNIQUE_ID_license243, !10, !"__UNIQUE_ID_license243", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/generic/test-component.c", i32 647, i32 11}
!14 = !{ptr @test_driver, !15, !"test_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/generic/test-component.c", i32 645, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/generic/test-component.c", i32 543, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @test_driver_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @test_driver_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @test_driver_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../sound/soc/generic/test-component.c", i32 559, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @test_driver_probe.__key.7, !25, !"__key", i1 false, i1 false}
!28 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/generic/test-component.c", i32 563, i32 19}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/generic/test-component.c", i32 568, i32 19}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/generic/test-component.c", i32 604, i32 42}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/generic/test-component.c", i32 607, i32 51}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/generic/test-component.c", i32 614, i32 50}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/generic/test-component.c", i32 633, i32 2}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @test_driver_probe._entry.14, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @test_driver_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/generic/test-component.c", i32 277, i32 2}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @test_component_pcm_construct._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @test_component_pcm_construct._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @test_component_pointer.pointer, !50, !"pointer", i1 false, i1 false}
!50 = !{!"../sound/soc/generic/test-component.c", i32 460, i32 13}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/generic/test-component.c", i32 433, i32 2}
!53 = !{ptr @test_component_trigger._entry, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @test_component_trigger._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/generic/test-component.c", i32 357, i32 2}
!57 = !{ptr @test_component_open._entry, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @test_component_open._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @test_component_hardware, !60, !"test_component_hardware", i1 false, i1 false}
!60 = !{!"../sound/soc/generic/test-component.c", i32 339, i32 38}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/generic/test-component.c", i32 525, i32 2}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/generic/test-component.c", i32 526, i32 2}
!65 = !{ptr @widgets, !66, !"widgets", i1 false, i1 false}
!66 = !{!"../sound/soc/generic/test-component.c", i32 518, i32 41}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/generic/test-component.c", i32 249, i32 2}
!69 = !{ptr @test_component_probe._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @test_component_probe._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/generic/test-component.c", i32 256, i32 2}
!73 = !{ptr @test_component_remove._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @test_component_remove._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/generic/test-component.c", i32 261, i32 2}
!77 = !{ptr @test_component_suspend._entry, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @test_component_suspend._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/generic/test-component.c", i32 268, i32 2}
!81 = !{ptr @test_component_resume._entry, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @test_component_resume._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/generic/test-component.c", i32 297, i32 2}
!85 = !{ptr @test_component_set_sysclk._entry, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @test_component_set_sysclk._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/generic/test-component.c", i32 305, i32 2}
!89 = !{ptr @test_component_set_pll._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @test_component_set_pll._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/generic/test-component.c", i32 313, i32 2}
!93 = !{ptr @test_component_set_jack._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @test_component_set_jack._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.32, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/generic/test-component.c", i32 321, i32 2}
!97 = !{ptr @test_component_seq_notifier._entry, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @test_component_seq_notifier._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.33, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/generic/test-component.c", i32 326, i32 2}
!101 = !{ptr @test_component_stream_event._entry, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @test_component_stream_event._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.34, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/generic/test-component.c", i32 334, i32 2}
!105 = !{ptr @test_component_set_bias_level._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @test_component_set_bias_level._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.35, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/generic/test-component.c", i32 369, i32 2}
!109 = !{ptr @test_component_close._entry, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @test_component_close._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.36, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/generic/test-component.c", i32 378, i32 2}
!113 = !{ptr @test_component_ioctl._entry, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @test_component_ioctl._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.37, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/generic/test-component.c", i32 387, i32 2}
!117 = !{ptr @test_component_hw_params._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @test_component_hw_params._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.38, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/generic/test-component.c", i32 395, i32 2}
!121 = !{ptr @test_component_hw_free._entry, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @test_component_hw_free._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.39, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/generic/test-component.c", i32 403, i32 2}
!125 = !{ptr @test_component_prepare._entry, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @test_component_prepare._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.40, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/generic/test-component.c", i32 451, i32 2}
!129 = !{ptr @test_component_sync_stop._entry, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @test_component_sync_stop._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.41, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/generic/test-component.c", i32 481, i32 2}
!133 = !{ptr @test_component_get_time_info._entry, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @test_component_get_time_info._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.42, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/generic/test-component.c", i32 489, i32 2}
!137 = !{ptr @test_component_be_hw_params_fixup._entry, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @test_component_be_hw_params_fixup._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.43, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/generic/test-component.c", i32 291, i32 2}
!141 = !{ptr @test_component_pcm_destruct._entry, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @test_component_pcm_destruct._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @test_verbose_ops, !144, !"test_verbose_ops", i1 false, i1 false}
!144 = !{!"../sound/soc/generic/test-component.c", i32 220, i32 37}
!145 = !{ptr @.str.44, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/generic/test-component.c", i32 44, i32 2}
!147 = !{ptr @test_dai_set_sysclk._entry, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @test_dai_set_sysclk._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.45, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/generic/test-component.c", i32 52, i32 2}
!151 = !{ptr @test_dai_set_pll._entry, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @test_dai_set_pll._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.46, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/generic/test-component.c", i32 59, i32 2}
!155 = !{ptr @test_dai_set_clkdiv._entry, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @test_dai_set_clkdiv._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.47, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/generic/test-component.c", i32 72, i32 2}
!159 = !{ptr @.str.48, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @test_dai_set_fmt._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @test_dai_set_fmt._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.49, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/generic/test-component.c", i32 74, i32 8}
!164 = !{ptr @.str.50, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/generic/test-component.c", i32 77, i32 9}
!166 = !{ptr @.str.51, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/generic/test-component.c", i32 80, i32 9}
!168 = !{ptr @.str.52, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/generic/test-component.c", i32 83, i32 9}
!170 = !{ptr @.str.53, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/generic/test-component.c", i32 86, i32 9}
!172 = !{ptr @.str.54, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/generic/test-component.c", i32 89, i32 9}
!174 = !{ptr @.str.55, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/generic/test-component.c", i32 92, i32 9}
!176 = !{ptr @.str.56, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/generic/test-component.c", i32 95, i32 9}
!178 = !{ptr @.str.58, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/generic/test-component.c", i32 98, i32 2}
!180 = !{ptr @test_dai_set_fmt._entry.57, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @test_dai_set_fmt._entry_ptr.59, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.60, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/generic/test-component.c", i32 101, i32 9}
!184 = !{ptr @.str.61, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/generic/test-component.c", i32 103, i32 9}
!186 = !{ptr @.str.63, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/generic/test-component.c", i32 104, i32 2}
!188 = !{ptr @test_dai_set_fmt._entry.62, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @test_dai_set_fmt._entry_ptr.64, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.65, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/generic/test-component.c", i32 109, i32 9}
!192 = !{ptr @.str.66, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/generic/test-component.c", i32 112, i32 9}
!194 = !{ptr @.str.67, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/generic/test-component.c", i32 115, i32 9}
!196 = !{ptr @.str.68, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/generic/test-component.c", i32 118, i32 9}
!198 = !{ptr @.str.70, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/generic/test-component.c", i32 121, i32 2}
!200 = !{ptr @test_dai_set_fmt._entry.69, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @test_dai_set_fmt._entry_ptr.71, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.72, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/generic/test-component.c", i32 126, i32 9}
!204 = !{ptr @.str.73, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/generic/test-component.c", i32 129, i32 9}
!206 = !{ptr @.str.74, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/generic/test-component.c", i32 132, i32 9}
!208 = !{ptr @.str.75, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/generic/test-component.c", i32 135, i32 9}
!210 = !{ptr @.str.77, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/generic/test-component.c", i32 138, i32 2}
!212 = !{ptr @test_dai_set_fmt._entry.76, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @test_dai_set_fmt._entry_ptr.78, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.79, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/generic/test-component.c", i32 145, i32 2}
!216 = !{ptr @test_dai_mute_stream._entry, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @test_dai_mute_stream._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.80, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/generic/test-component.c", i32 152, i32 2}
!220 = !{ptr @test_dai_startup._entry, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @test_dai_startup._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.81, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/generic/test-component.c", i32 159, i32 2}
!224 = !{ptr @test_dai_shutdown._entry, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @test_dai_shutdown._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.82, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/generic/test-component.c", i32 165, i32 2}
!228 = !{ptr @test_dai_hw_params._entry, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @test_dai_hw_params._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.83, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/soc/generic/test-component.c", i32 172, i32 2}
!232 = !{ptr @test_dai_hw_free._entry, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @test_dai_hw_free._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.84, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/soc/generic/test-component.c", i32 179, i32 2}
!236 = !{ptr @test_dai_trigger._entry, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @test_dai_trigger._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.85, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/generic/test-component.c", i32 187, i32 2}
!240 = !{ptr @test_dai_bespoke_trigger._entry, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @test_dai_bespoke_trigger._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @test_dai_formats, !243, !"test_dai_formats", i1 false, i1 false}
!243 = !{!"../sound/soc/generic/test-component.c", i32 192, i32 12}
!244 = !{ptr @test_ops, !245, !"test_ops", i1 false, i1 false}
!245 = !{!"../sound/soc/generic/test-component.c", i32 212, i32 37}
!246 = !{ptr @.str.86, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/soc/generic/test-component.c", i32 640, i32 2}
!248 = !{ptr @test_driver_remove._entry, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @test_driver_remove._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @test_of_match, !251, !"test_of_match", i1 false, i1 false}
!251 = !{!"../sound/soc/generic/test-component.c", i32 505, i32 34}
!252 = !{ptr @test_cpu, !253, !"test_cpu", i1 false, i1 false}
!253 = !{!"../sound/soc/generic/test-component.c", i32 495, i32 32}
!254 = !{ptr @test_cpu_vv, !255, !"test_cpu_vv", i1 false, i1 false}
!255 = !{!"../sound/soc/generic/test-component.c", i32 496, i32 32}
!256 = !{ptr @test_cpu_nv, !257, !"test_cpu_nv", i1 false, i1 false}
!257 = !{!"../sound/soc/generic/test-component.c", i32 497, i32 32}
!258 = !{ptr @test_cpu_vn, !259, !"test_cpu_vn", i1 false, i1 false}
!259 = !{!"../sound/soc/generic/test-component.c", i32 498, i32 32}
!260 = !{ptr @test_codec, !261, !"test_codec", i1 false, i1 false}
!261 = !{!"../sound/soc/generic/test-component.c", i32 500, i32 32}
!262 = !{ptr @test_codec_vv, !263, !"test_codec_vv", i1 false, i1 false}
!263 = !{!"../sound/soc/generic/test-component.c", i32 501, i32 32}
!264 = !{ptr @test_codec_nv, !265, !"test_codec_nv", i1 false, i1 false}
!265 = !{!"../sound/soc/generic/test-component.c", i32 502, i32 32}
!266 = !{ptr @test_codec_vn, !267, !"test_codec_vn", i1 false, i1 false}
!267 = !{!"../sound/soc/generic/test-component.c", i32 503, i32 32}
!268 = !{i32 1, !"wchar_size", i32 2}
!269 = !{i32 1, !"min_enum_size", i32 4}
!270 = !{i32 8, !"branch-target-enforcement", i32 0}
!271 = !{i32 8, !"sign-return-address", i32 0}
!272 = !{i32 8, !"sign-return-address-all", i32 0}
!273 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!274 = !{i32 7, !"uwtable", i32 1}
!275 = !{i32 7, !"frame-pointer", i32 2}
!276 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
