; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/rt5514-spi.c_pt.bc'
source_filename = "../sound/soc/codecs/rt5514-spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rt5514_spi_burst_read\22, \22a\22\09"
module asm "\09.weak\09__crc_rt5514_spi_burst_read\09\09\09\09"
module asm "\09.long\09__crc_rt5514_spi_burst_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt5514_spi_burst_read:\09\09\09\09\09"
module asm "\09.asciz \09\22rt5514_spi_burst_read\22\09\09\09\09\09"
module asm "__kstrtabns_rt5514_spi_burst_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rt5514_spi_burst_write\22, \22a\22\09"
module asm "\09.weak\09__crc_rt5514_spi_burst_write\09\09\09\09"
module asm "\09.long\09__crc_rt5514_spi_burst_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt5514_spi_burst_write:\09\09\09\09\09"
module asm "\09.asciz \09\22rt5514_spi_burst_write\22\09\09\09\09\09"
module asm "__kstrtabns_rt5514_spi_burst_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.104, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.104 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.rt5514_dsp = type { ptr, %struct.delayed_work, %struct.mutex, ptr, i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
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

@rt5514_spi = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_rt5514_spi_burst_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt5514_spi_burst_read = external dso_local constant [0 x i8], align 1
@__ksymtab_rt5514_spi_burst_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt5514_spi_burst_read to i32), ptr @__kstrtab_rt5514_spi_burst_read, ptr @__kstrtabns_rt5514_spi_burst_read }, section "___ksymtab_gpl+rt5514_spi_burst_read", align 4
@__kstrtab_rt5514_spi_burst_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt5514_spi_burst_write = external dso_local constant [0 x i8], align 1
@__ksymtab_rt5514_spi_burst_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt5514_spi_burst_write to i32), ptr @__kstrtab_rt5514_spi_burst_write, ptr @__kstrtabns_rt5514_spi_burst_write }, section "___ksymtab_gpl+rt5514_spi_burst_write", align 4
@__initcall__kmod_snd_soc_rt5514_spi__296_510_rt5514_spi_driver_init6 = internal global ptr @rt5514_spi_driver_init, section ".initcall6.init", align 4
@rt5514_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @rt5514_spi_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rt5514_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5514_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_rt5514_spi_driver_exit = internal global ptr @rt5514_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description297 = internal constant [49 x i8] c"snd_soc_rt5514_spi.description=RT5514 SPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [62 x i8] c"snd_soc_rt5514_spi.author=Oder Chiou <oder_chiou@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [60 x i8] c"snd_soc_rt5514_spi.file=sound/soc/codecs/snd-soc-rt5514-spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [34 x i8] c"snd_soc_rt5514_spi.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rt5514\00", [25 x i8] zeroinitializer }, align 32
@rt5514_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"realtek,rt5514\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rt5514_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rt5514_suspend, ptr @rt5514_resume, ptr @rt5514_suspend, ptr @rt5514_resume, ptr @rt5514_suspend, ptr @rt5514_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rt5514_spi_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.6, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @rt5514_spi_pcm_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5514_spi_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5514_spi_pcm_open, ptr null, ptr null, ptr @rt5514_spi_hw_params, ptr @rt5514_spi_hw_free, ptr null, ptr null, ptr null, ptr @rt5514_spi_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@rt5514_spi_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.16, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.17, i64 4, i32 8, i32 0, i32 0, i32 1, i32 1, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@rt5514_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 454, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register component.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt5514_spi_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/soc/codecs/rt5514-spi.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt5514_spi_probe._entry_ptr = internal global ptr @rt5514_spi_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rt5514-spi\00", [21 x i8] zeroinitializer }, align 32
@rt5514_spi_pcm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&rt5514_dsp->dma_lock\00", [42 x i8] zeroinitializer }, align 32
@rt5514_spi_pcm_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&rt5514_dsp->copy_work)->work)\00", [45 x i8] zeroinitializer }, align 32
@rt5514_spi_pcm_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&rt5514_dsp->copy_work)->timer\00", [63 x i8] zeroinitializer }, align 32
@rt5514_spi_pcm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 284, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s Failed to reguest IRQ: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rt5514_spi_pcm_probe\00", [43 x i8] zeroinitializer }, align 32
@rt5514_spi_pcm_probe._entry_ptr = internal global ptr @rt5514_spi_pcm_probe._entry, section ".printk_index", align 4
@rt5514_spi_copy_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 85, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No pcm substream\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rt5514_spi_copy_work\00", [43 x i8] zeroinitializer }, align 32
@rt5514_spi_copy_work._entry_ptr = internal global ptr @rt5514_spi_copy_work._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rt5514_spi_pcm_hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 259, i64 4, i32 0, i32 0, i32 0, i32 1, i32 1, i32 131072, i32 4096, i32 16384, i32 8, i32 8, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rt5514-dsp-cpu-dai\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DSP Capture\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.18 = private unnamed_addr constant [11 x i8] c"rt5514_spi\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 37, i32 27 }
@___asan_gen_.21 = private unnamed_addr constant [18 x i8] c"rt5514_spi_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 502, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 504, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [16 x i8] c"rt5514_of_match\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 496, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant [14 x i8] c"rt5514_pm_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 492, i32 32 }
@___asan_gen_.33 = private unnamed_addr constant [21 x i8] c"rt5514_spi_component\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 300, i32 46 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"rt5514_spi_dai\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 62, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 454, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 301, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 272, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 273, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 282, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 85, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [24 x i8] c"rt5514_spi_pcm_hardware\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 48, i32 38 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 63, i32 10 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [33 x i8] c"../sound/soc/codecs/rt5514-spi.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 66, i32 18 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_rt5514_spi_driver_exit, ptr @__initcall__kmod_snd_soc_rt5514_spi__296_510_rt5514_spi_driver_init6, ptr @__ksymtab_rt5514_spi_burst_read, ptr @__ksymtab_rt5514_spi_burst_write, ptr @rt5514_spi_copy_work._entry, ptr @rt5514_spi_copy_work._entry_ptr, ptr @rt5514_spi_driver_exit, ptr @rt5514_spi_pcm_probe._entry, ptr @rt5514_spi_pcm_probe._entry_ptr, ptr @rt5514_spi_probe._entry, ptr @rt5514_spi_probe._entry_ptr, ptr @rt5514_spi, ptr @rt5514_spi_driver, ptr @.str, ptr @rt5514_of_match, ptr @rt5514_pm_ops, ptr @rt5514_spi_component, ptr @rt5514_spi_dai, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @rt5514_spi_pcm_probe.__key, ptr @.str.7, ptr @rt5514_spi_pcm_probe.__key.8, ptr @.str.9, ptr @rt5514_spi_pcm_probe.__key.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @rt5514_spi_pcm_hardware, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_spi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_spi_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_spi_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_spi_pcm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_spi_pcm_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_spi_pcm_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_spi_pcm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_spi_copy_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5514_spi_pcm_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rt5514_spi_burst_read(i32 noundef %addr, ptr noundef %rxbuf, i32 noundef %len) #0 align 64 {
entry:
  %write_buf = alloca [8 x i8], align 1
  %message = alloca %struct.spi_message, align 4
  %x = alloca [3 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %write_buf) #7
  %0 = getelementptr inbounds [8 x i8], ptr %write_buf, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %write_buf, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %write_buf, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i8], ptr %write_buf, i32 0, i32 4
  %4 = getelementptr inbounds i8, ptr %write_buf, i32 5
  %5 = call ptr @memset(ptr %4, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %message) #7
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %x) #7
  %rem = urem i32 %len, 240
  %6 = getelementptr inbounds i8, ptr %message, i32 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %message, i32 0, i32 1
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %message, i32 0, i32 10
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %message, i32 0, i32 10, i32 1
  %len20 = getelementptr inbounds %struct.spi_transfer, ptr %x, i32 0, i32 2
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %x, i32 0, i32 18
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %x, i32 0, i32 18, i32 1
  %arrayidx24 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %x, i32 0, i32 1
  %len25 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %x, i32 0, i32 1, i32 2
  %transfer_list.i141 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %x, i32 0, i32 1, i32 18
  %prev3.i.i.i144 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %x, i32 0, i32 1, i32 18, i32 1
  %len31 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %x, i32 0, i32 2, i32 2
  %rx_buf = getelementptr inbounds [3 x %struct.spi_transfer], ptr %x, i32 0, i32 2, i32 1
  %transfer_list.i147 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %x, i32 0, i32 2, i32 18
  %prev3.i.i.i150 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %x, i32 0, i32 2, i32 18, i32 1
  %7 = getelementptr inbounds i8, ptr %x, i32 4
  br label %while.cond

while.cond:                                       ; preds = %spi_message_add_tail.exit152.while.cond_crit_edge, %entry
  %offset.0 = phi i32 [ 0, %entry ], [ %add, %spi_message_add_tail.exit152.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0, i32 %len)
  %cmp = icmp ult i32 %offset.0, %len
  br i1 %cmp, label %while.body, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp37154.not = icmp eq i32 %len, 0
  br i1 %cmp37154.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %add = add i32 %offset.0, 240
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %len)
  %cmp1.not = icmp ugt i32 %add, %len
  %end.0 = select i1 %cmp1.not, i32 %rem, i32 240
  %8 = ptrtoint ptr %write_buf to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %write_buf, align 1
  %add2 = add i32 %offset.0, %addr
  %shr = lshr i32 %add2, 24
  %conv = trunc i32 %shr to i8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %0, align 1
  %and5 = lshr i32 %add2, 16
  %conv7 = trunc i32 %and5 to i8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv7, ptr %1, align 1
  %and10 = lshr i32 %add2, 8
  %conv12 = trunc i32 %and10 to i8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv12, ptr %2, align 1
  %conv17 = trunc i32 %add2 to i8
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv17, ptr %3, align 1
  %13 = call ptr @memset(ptr %6, i32 0, i32 40)
  %14 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %message, ptr %message, align 4
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %message, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %17 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %18 = call ptr @memset(ptr %7, i32 0, i32 284)
  %19 = ptrtoint ptr %len20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 5, ptr %len20, align 4
  %20 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %write_buf, ptr %x, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %message, ptr noundef nonnull %message) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.spi_message_add_tail.exit_crit_edge

while.body.spi_message_add_tail.exit_crit_edge:   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %22 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %message, ptr %transfer_list.i, align 4
  %23 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %message, ptr %prev3.i.i.i, align 4
  %24 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %transfer_list.i, ptr %message, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %while.body.spi_message_add_tail.exit_crit_edge
  %25 = ptrtoint ptr %len25 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %len25, align 4
  %26 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %write_buf, ptr %arrayidx24, align 4
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i143 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i141, ptr noundef %28, ptr noundef nonnull %message) #7
  br i1 %call.i.i.i143, label %if.end.i.i.i145, label %spi_message_add_tail.exit.spi_message_add_tail.exit146_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit146_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit146

if.end.i.i.i145:                                  ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %transfer_list.i141, ptr %prev.i.i.i, align 4
  %30 = ptrtoint ptr %transfer_list.i141 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %message, ptr %transfer_list.i141, align 4
  %31 = ptrtoint ptr %prev3.i.i.i144 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i.i144, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %transfer_list.i141, ptr %28, align 4
  br label %spi_message_add_tail.exit146

spi_message_add_tail.exit146:                     ; preds = %if.end.i.i.i145, %spi_message_add_tail.exit.spi_message_add_tail.exit146_crit_edge
  %33 = ptrtoint ptr %len31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %end.0, ptr %len31, align 4
  %add.ptr = getelementptr i8, ptr %rxbuf, i32 %offset.0
  %34 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr, ptr %rx_buf, align 4
  %35 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i149 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i147, ptr noundef %36, ptr noundef nonnull %message) #7
  br i1 %call.i.i.i149, label %if.end.i.i.i151, label %spi_message_add_tail.exit146.spi_message_add_tail.exit152_crit_edge

spi_message_add_tail.exit146.spi_message_add_tail.exit152_crit_edge: ; preds = %spi_message_add_tail.exit146
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit152

if.end.i.i.i151:                                  ; preds = %spi_message_add_tail.exit146
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %transfer_list.i147, ptr %prev.i.i.i, align 4
  %38 = ptrtoint ptr %transfer_list.i147 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %message, ptr %transfer_list.i147, align 4
  %39 = ptrtoint ptr %prev3.i.i.i150 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i.i150, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %transfer_list.i147, ptr %36, align 4
  br label %spi_message_add_tail.exit152

spi_message_add_tail.exit152:                     ; preds = %if.end.i.i.i151, %spi_message_add_tail.exit146.spi_message_add_tail.exit152_crit_edge
  %41 = load ptr, ptr @rt5514_spi, align 4
  %call = call i32 @spi_sync(ptr noundef %41, ptr noundef nonnull %message) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %spi_message_add_tail.exit152.while.cond_crit_edge, label %spi_message_add_tail.exit152.cleanup_crit_edge

spi_message_add_tail.exit152.cleanup_crit_edge:   ; preds = %spi_message_add_tail.exit152
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

spi_message_add_tail.exit152.while.cond_crit_edge: ; preds = %spi_message_add_tail.exit152
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0155 = phi i32 [ %add87, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx40 = getelementptr i8, ptr %rxbuf, i32 %i.0155
  %42 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx40, align 1
  %add42 = or i32 %i.0155, 1
  %arrayidx43 = getelementptr i8, ptr %rxbuf, i32 %add42
  %44 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx43, align 1
  %add45 = or i32 %i.0155, 2
  %arrayidx46 = getelementptr i8, ptr %rxbuf, i32 %add45
  %46 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx46, align 1
  %add48 = or i32 %i.0155, 3
  %arrayidx49 = getelementptr i8, ptr %rxbuf, i32 %add48
  %48 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx49, align 1
  %add51 = or i32 %i.0155, 4
  %arrayidx52 = getelementptr i8, ptr %rxbuf, i32 %add51
  %50 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx52, align 1
  %add54 = or i32 %i.0155, 5
  %arrayidx55 = getelementptr i8, ptr %rxbuf, i32 %add54
  %52 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx55, align 1
  %add57 = or i32 %i.0155, 6
  %arrayidx58 = getelementptr i8, ptr %rxbuf, i32 %add57
  %54 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx58, align 1
  %add60 = or i32 %i.0155, 7
  %arrayidx61 = getelementptr i8, ptr %rxbuf, i32 %add60
  %56 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx61, align 1
  store i8 %57, ptr %arrayidx40, align 1
  store i8 %55, ptr %arrayidx43, align 1
  store i8 %53, ptr %arrayidx46, align 1
  store i8 %51, ptr %arrayidx49, align 1
  store i8 %49, ptr %arrayidx52, align 1
  store i8 %47, ptr %arrayidx55, align 1
  store i8 %45, ptr %arrayidx58, align 1
  store i8 %43, ptr %arrayidx61, align 1
  %add87 = add i32 %i.0155, 8
  %cmp37 = icmp ult i32 %add87, %len
  br i1 %cmp37, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %spi_message_add_tail.exit152.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %for.cond.preheader.cleanup_crit_edge ], [ 1, %for.body.cleanup_crit_edge ], [ 0, %spi_message_add_tail.exit152.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %x) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %message) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %write_buf) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rt5514_spi_burst_write(i32 noundef %addr, ptr nocapture noundef readonly %txbuf, i32 noundef %len) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 246) #10
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp1138.not = icmp eq i32 %len, 0
  br i1 %cmp1138.not, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %rem = urem i32 %len, 240
  %arrayidx6 = getelementptr i8, ptr %call7.i, i32 1
  %arrayidx11 = getelementptr i8, ptr %call7.i, i32 2
  %arrayidx16 = getelementptr i8, ptr %call7.i, i32 3
  %arrayidx21 = getelementptr i8, ptr %call7.i, i32 4
  %1 = getelementptr inbounds i8, ptr %t.i, i32 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  br label %while.body

while.body:                                       ; preds = %spi_write.exit.while.body_crit_edge, %while.body.lr.ph
  %offset.0139 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %spi_write.exit.while.body_crit_edge ]
  %add = add i32 %offset.0139, 240
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %len)
  %cmp2.not = icmp ugt i32 %add, %len
  %end.0 = select i1 %cmp2.not, i32 %rem, i32 240
  %3 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 5, ptr %call7.i, align 8
  %add5 = add i32 %offset.0139, %addr
  %shr = lshr i32 %add5, 24
  %conv = trunc i32 %shr to i8
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %arrayidx6, align 1
  %and8 = lshr i32 %add5, 16
  %conv10 = trunc i32 %and8 to i8
  %5 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv10, ptr %arrayidx11, align 2
  %and13 = lshr i32 %add5, 8
  %conv15 = trunc i32 %and13 to i8
  %6 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv15, ptr %arrayidx16, align 1
  %conv20 = trunc i32 %add5 to i8
  %7 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv20, ptr %arrayidx21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %end.0)
  %cmp22136.not = icmp eq i32 %end.0, 0
  br i1 %cmp22136.not, label %while.body.for.end_crit_edge, label %while.body.for.body_crit_edge

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

while.body.for.end_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %while.body.for.body_crit_edge
  %i.0137 = phi i32 [ %add47, %for.body.for.body_crit_edge ], [ 0, %while.body.for.body_crit_edge ]
  %add24 = add i32 %i.0137, %offset.0139
  %arrayidx26 = getelementptr i8, ptr %txbuf, i32 %add24
  %8 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx26, align 1
  %add27 = add nuw nsw i32 %i.0137, 12
  %arrayidx28 = getelementptr i8, ptr %call7.i, i32 %add27
  %10 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %arrayidx28, align 4
  %add30 = or i32 %add24, 1
  %arrayidx31 = getelementptr i8, ptr %txbuf, i32 %add30
  %11 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx31, align 1
  %add32 = add nuw nsw i32 %i.0137, 11
  %arrayidx33 = getelementptr i8, ptr %call7.i, i32 %add32
  %13 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx33, align 1
  %add35 = or i32 %add24, 2
  %arrayidx36 = getelementptr i8, ptr %txbuf, i32 %add35
  %14 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx36, align 1
  %add37 = add nuw nsw i32 %i.0137, 10
  %arrayidx38 = getelementptr i8, ptr %call7.i, i32 %add37
  %16 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx38, align 2
  %add40 = or i32 %add24, 3
  %arrayidx41 = getelementptr i8, ptr %txbuf, i32 %add40
  %17 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx41, align 1
  %add42 = add nuw nsw i32 %i.0137, 9
  %arrayidx43 = getelementptr i8, ptr %call7.i, i32 %add42
  %19 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx43, align 1
  %add45 = or i32 %add24, 4
  %arrayidx46 = getelementptr i8, ptr %txbuf, i32 %add45
  %20 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx46, align 1
  %add47 = add nuw nsw i32 %i.0137, 8
  %arrayidx48 = getelementptr i8, ptr %call7.i, i32 %add47
  %22 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx48, align 8
  %add50 = or i32 %add24, 5
  %arrayidx51 = getelementptr i8, ptr %txbuf, i32 %add50
  %23 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx51, align 1
  %add52 = or i32 %i.0137, 7
  %arrayidx53 = getelementptr i8, ptr %call7.i, i32 %add52
  %25 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx53, align 1
  %add55 = or i32 %add24, 6
  %arrayidx56 = getelementptr i8, ptr %txbuf, i32 %add55
  %26 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx56, align 1
  %add57 = or i32 %i.0137, 6
  %arrayidx58 = getelementptr i8, ptr %call7.i, i32 %add57
  %28 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx58, align 2
  %add60 = or i32 %add24, 7
  %arrayidx61 = getelementptr i8, ptr %txbuf, i32 %add60
  %29 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx61, align 1
  %add62 = or i32 %i.0137, 5
  %arrayidx63 = getelementptr i8, ptr %call7.i, i32 %add62
  %31 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx63, align 1
  %cmp22 = icmp ult i32 %add47, %end.0
  br i1 %cmp22, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %while.body.for.end_crit_edge
  %add65 = add nuw nsw i32 %end.0, 5
  %arrayidx66 = getelementptr i8, ptr %call7.i, i32 %add65
  %32 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 5, ptr %arrayidx66, align 1
  %33 = load ptr, ptr @rt5514_spi, align 4
  %add67 = add nuw nsw i32 %end.0, 6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #7
  %34 = call ptr @memset(ptr %1, i32 0, i32 92)
  %35 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i, ptr %t.i, align 4
  %36 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add67, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #7
  %37 = call ptr @memset(ptr %2, i32 0, i32 40)
  %38 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %39 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %40 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %41 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #7
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %for.end.spi_write.exit_crit_edge

for.end.spi_write.exit_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %43 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %44 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %45 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %for.end.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %33, ptr noundef nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #7
  %cmp1 = icmp ult i32 %add, %len
  br i1 %cmp1, label %spi_write.exit.while.body_crit_edge, label %spi_write.exit.while.end_crit_edge

spi_write.exit.while.end_crit_edge:               ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

spi_write.exit.while.body_crit_edge:              ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %spi_write.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5514_spi_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @rt5514_spi_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rt5514_spi_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @rt5514_spi_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5514_spi_probe(ptr noundef %spi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %spi, ptr @rt5514_spi, align 4
  %call = tail call i32 @devm_snd_soc_register_component(ptr noundef %spi, ptr noundef nonnull @rt5514_spi_component, ptr noundef nonnull @rt5514_spi_dai, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5514_spi_pcm_probe(ptr nocapture noundef readonly %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 224, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @rt5514_spi, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %call.i, align 4
  %dma_lock = getelementptr inbounds %struct.rt5514_dsp, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %dma_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @rt5514_spi_pcm_probe.__key) #7
  %copy_work = getelementptr inbounds %struct.rt5514_dsp, ptr %call.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %copy_work, i32 noundef 0) #7
  %4 = ptrtoint ptr %copy_work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %copy_work, align 4
  %lockdep_map = getelementptr inbounds %struct.rt5514_dsp, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @rt5514_spi_pcm_probe.__key.8, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry11 = getelementptr inbounds %struct.rt5514_dsp, ptr %call.i, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry11, ptr %entry11, align 4
  %prev.i = getelementptr inbounds %struct.rt5514_dsp, ptr %call.i, i32 0, i32 1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry11, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.rt5514_dsp, ptr %call.i, i32 0, i32 1, i32 0, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @rt5514_spi_copy_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.rt5514_dsp, ptr %call.i, i32 0, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.11, ptr noundef nonnull @rt5514_spi_pcm_probe.__key.10) #7
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %11 = load ptr, ptr @rt5514_spi, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool22.not = icmp eq i32 %13, 0
  br i1 %tobool22.not, label %if.end.cleanup_crit_edge, label %if.then23

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then23:                                        ; preds = %if.end
  %call26 = tail call i32 @devm_request_threaded_irq(ptr noundef %11, i32 noundef %13, ptr noundef null, ptr noundef nonnull @rt5514_spi_irq, i32 noundef 8193, ptr noundef nonnull @.str.6, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.else, label %do.end31

do.end31:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %14 = load ptr, ptr @rt5514_spi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %call26) #11
  br label %cleanup

if.else:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 4
  %call34 = tail call i32 @device_init_wakeup(ptr noundef %16, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end31, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %do.end31 ], [ 0, %if.else ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5514_spi_pcm_new(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %rtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 7
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm, align 4
  %call = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %1, i32 noundef 7, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5514_spi_pcm_open(ptr nocapture noundef readnone %component, ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %substream, ptr noundef nonnull @rt5514_spi_pcm_hardware) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5514_spi_hw_params(ptr nocapture noundef readonly %component, ptr noundef %substream, ptr nocapture noundef readnone %hw_params) #0 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #7
  %dma_lock = getelementptr inbounds %struct.rt5514_dsp, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %buf, align 8
  tail call void @mutex_lock_nested(ptr noundef %dma_lock, i32 noundef 0) #7
  %substream1 = getelementptr inbounds %struct.rt5514_dsp, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %substream1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %substream, ptr %substream1, align 4
  %dma_offset = getelementptr inbounds %struct.rt5514_dsp, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %dma_offset to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %dma_offset, align 4
  %call2 = call i32 @rt5514_spi_burst_read(i32 noundef 402661524, ptr noundef nonnull %buf, i32 noundef 8)
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %buf, align 8
  %9 = and i8 %8, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @rt5514_schedule_copy(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @mutex_unlock(ptr noundef %dma_lock) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5514_spi_hw_free(ptr nocapture noundef readonly %component, ptr nocapture noundef readnone %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dma_lock = getelementptr inbounds %struct.rt5514_dsp, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %dma_lock, i32 noundef 0) #7
  %substream1 = getelementptr inbounds %struct.rt5514_dsp, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %substream1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %substream1, align 4
  tail call void @mutex_unlock(ptr noundef %dma_lock) #7
  %copy_work = getelementptr inbounds %struct.rt5514_dsp, ptr %3, i32 0, i32 1
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %copy_work) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rt5514_spi_pcm_pointer(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %dma_offset = getelementptr inbounds %struct.rt5514_dsp, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %dma_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_offset, align 4
  %mul.i = shl i32 %7, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %9
  ret i32 %div.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt5514_spi_copy_work(ptr noundef %work) #0 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #7
  %0 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %dma_lock = getelementptr i8, ptr %work, i32 100
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %buf, align 8
  tail call void @mutex_lock_nested(ptr noundef %dma_lock, i32 noundef 0) #7
  %substream = getelementptr i8, ptr %work, i32 192
  %4 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %substream, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.14) #11
  br label %done

if.end:                                           ; preds = %entry
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 11
  %8 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime2, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 21
  %12 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %13, %11
  %div1.i.i = lshr i32 %mul.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %mul.i.i)
  %tobool4.not = icmp ult i32 %mul.i.i, 8
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %14 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %work, i32 noundef 5) #7
  br label %done

if.end7:                                          ; preds = %if.end
  %buf_size = getelementptr i8, ptr %work, i32 208
  %15 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buf_size, align 4
  %rem = urem i32 %16, %div1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool8.not = icmp eq i32 %rem, 0
  br i1 %tobool8.not, label %if.end7.if.end12_crit_edge, label %if.then9

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %mul = sub i32 %16, %rem
  %17 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul, ptr %buf_size, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7.if.end12_crit_edge
  %get_size = getelementptr i8, ptr %work, i32 212
  %18 = ptrtoint ptr %get_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %get_size, align 4
  %20 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %buf_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp.not = icmp ult i32 %19, %21
  br i1 %cmp.not, label %if.end12.if.end40_crit_edge, label %if.then14

if.end12.if.end40_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then14:                                        ; preds = %if.end12
  %call15 = call i32 @rt5514_spi_burst_read(i32 noundef 402653708, ptr noundef nonnull %buf, i32 noundef 8)
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %buf, align 8
  %conv = zext i8 %23 to i32
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %0, align 1
  %conv17 = zext i8 %25 to i32
  %shl = shl nuw nsw i32 %conv17, 8
  %or = or i32 %shl, %conv
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %1, align 2
  %conv19 = zext i8 %27 to i32
  %shl20 = shl nuw nsw i32 %conv19, 16
  %or21 = or i32 %or, %shl20
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %2, align 1
  %conv23 = zext i8 %29 to i32
  %shl24 = shl nuw i32 %conv23, 24
  %or25 = or i32 %or21, %shl24
  %buf_rp = getelementptr i8, ptr %work, i32 204
  %30 = ptrtoint ptr %buf_rp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %buf_rp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or25, i32 %31)
  %cmp26.not = icmp ult i32 %or25, %31
  br i1 %cmp26.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i32 %or25, %31
  br label %if.end33

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %buf_limit = getelementptr i8, ptr %work, i32 200
  %32 = ptrtoint ptr %buf_limit to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_limit, align 4
  %buf_base = getelementptr i8, ptr %work, i32 196
  %34 = ptrtoint ptr %buf_base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %buf_base, align 4
  %36 = add i32 %or25, %33
  %37 = add i32 %31, %35
  %add = sub i32 %36, %37
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then28
  %remain_data.0 = phi i32 [ %sub, %if.then28 ], [ %add, %if.else ]
  call void @__sanitizer_cov_trace_cmp4(i32 %remain_data.0, i32 %div1.i.i)
  %cmp34 = icmp ult i32 %remain_data.0, %div1.i.i
  br i1 %cmp34, label %if.then36, label %if.end33.if.end40_crit_edge

if.end33.if.end40_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %38 = load ptr, ptr @system_wq, align 4
  %call.i.i159 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %38, ptr noundef %work, i32 noundef 5) #7
  br label %done

if.end40:                                         ; preds = %if.end33.if.end40_crit_edge, %if.end12.if.end40_crit_edge
  %buf_rp41 = getelementptr i8, ptr %work, i32 204
  %39 = ptrtoint ptr %buf_rp41 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %buf_rp41, align 4
  %add42 = add i32 %40, %div1.i.i
  %buf_limit43 = getelementptr i8, ptr %work, i32 200
  %41 = ptrtoint ptr %buf_limit43 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %buf_limit43, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add42, i32 %42)
  %cmp44.not = icmp ugt i32 %add42, %42
  br i1 %cmp44.not, label %if.else62, label %if.then46

if.then46:                                        ; preds = %if.end40
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 50
  %43 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dma_area, align 4
  %dma_offset = getelementptr i8, ptr %work, i32 216
  %45 = ptrtoint ptr %dma_offset to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma_offset, align 4
  %add.ptr48 = getelementptr i8, ptr %44, i32 %46
  %call49 = call i32 @rt5514_spi_burst_read(i32 noundef %40, ptr noundef %add.ptr48, i32 noundef %div1.i.i)
  %47 = ptrtoint ptr %buf_rp41 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %buf_rp41, align 4
  %add51 = add i32 %48, %div1.i.i
  %49 = ptrtoint ptr %buf_limit43 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %buf_limit43, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add51, i32 %50)
  %cmp53 = icmp eq i32 %add51, %50
  br i1 %cmp53, label %if.then55, label %if.then46.if.end82_crit_edge

if.then46.if.end82_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then55:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  %buf_base56 = getelementptr i8, ptr %work, i32 196
  %51 = ptrtoint ptr %buf_base56 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %buf_base56, align 4
  br label %if.end82

if.else62:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %sub65 = sub i32 %42, %40
  %dma_area67 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 50
  %53 = ptrtoint ptr %dma_area67 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dma_area67, align 4
  %dma_offset68 = getelementptr i8, ptr %work, i32 216
  %55 = ptrtoint ptr %dma_offset68 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dma_offset68, align 4
  %add.ptr69 = getelementptr i8, ptr %54, i32 %56
  %call70 = call i32 @rt5514_spi_burst_read(i32 noundef %40, ptr noundef %add.ptr69, i32 noundef %sub65)
  %buf_base71 = getelementptr i8, ptr %work, i32 196
  %57 = ptrtoint ptr %buf_base71 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %buf_base71, align 4
  %59 = ptrtoint ptr %dma_area67 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dma_area67, align 4
  %61 = ptrtoint ptr %dma_offset68 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dma_offset68, align 4
  %add.ptr74 = getelementptr i8, ptr %60, i32 %62
  %add.ptr75 = getelementptr i8, ptr %add.ptr74, i32 %sub65
  %sub76 = sub i32 %div1.i.i, %sub65
  %call77 = call i32 @rt5514_spi_burst_read(i32 noundef %58, ptr noundef %add.ptr75, i32 noundef %sub76)
  %63 = ptrtoint ptr %buf_base71 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %buf_base71, align 4
  %sub80 = add i32 %sub76, %64
  br label %if.end82

if.end82:                                         ; preds = %if.else62, %if.then55, %if.then46.if.end82_crit_edge
  %.sink = phi i32 [ %52, %if.then55 ], [ %sub80, %if.else62 ], [ %add51, %if.then46.if.end82_crit_edge ]
  %65 = ptrtoint ptr %buf_rp41 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %.sink, ptr %buf_rp41, align 4
  %66 = ptrtoint ptr %get_size to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %get_size, align 4
  %add84 = add i32 %67, %div1.i.i
  store i32 %add84, ptr %get_size, align 4
  %dma_offset85 = getelementptr i8, ptr %work, i32 216
  %68 = ptrtoint ptr %dma_offset85 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dma_offset85, align 4
  %add86 = add i32 %69, %div1.i.i
  store i32 %add86, ptr %dma_offset85, align 4
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 52
  %70 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dma_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add86, i32 %71)
  %cmp88.not = icmp ult i32 %add86, %71
  %spec.store.select = select i1 %cmp88.not, i32 %add86, i32 0
  %72 = ptrtoint ptr %dma_offset85 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %spec.store.select, ptr %dma_offset85, align 4
  %73 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %substream, align 4
  call void @snd_pcm_period_elapsed(ptr noundef %74) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %75 = load ptr, ptr @system_wq, align 4
  %call.i.i160 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %75, ptr noundef %work, i32 noundef 5) #7
  br label %done

done:                                             ; preds = %if.end82, %if.then36, %if.then5, %do.end
  call void @mutex_unlock(ptr noundef %dma_lock) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5514_spi_irq(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @rt5514_schedule_copy(ptr noundef %data)
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rt5514_schedule_copy(ptr noundef %rt5514_dsp) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #7
  %substream = getelementptr inbounds %struct.rt5514_dsp, ptr %rt5514_dsp, i32 0, i32 3
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %buf, align 8
  %1 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %substream, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %4 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %5 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %get_size = getelementptr inbounds %struct.rt5514_dsp, ptr %rt5514_dsp, i32 0, i32 8
  %6 = ptrtoint ptr %get_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %get_size, align 4
  %call = call i32 @rt5514_spi_burst_read(i32 noundef 402653696, ptr noundef nonnull %buf, i32 noundef 8)
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %buf, align 8
  %conv = zext i8 %8 to i32
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %5, align 1
  %conv2 = zext i8 %10 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %or = or i32 %shl, %conv
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %4, align 2
  %conv4 = zext i8 %12 to i32
  %shl5 = shl nuw nsw i32 %conv4, 16
  %or6 = or i32 %or, %shl5
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %3, align 1
  %conv8 = zext i8 %14 to i32
  %shl9 = shl nuw i32 %conv8, 24
  %or10 = or i32 %or6, %shl9
  %buf_base = getelementptr inbounds %struct.rt5514_dsp, ptr %rt5514_dsp, i32 0, i32 4
  %15 = ptrtoint ptr %buf_base to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or10, ptr %buf_base, align 4
  %call11 = call i32 @rt5514_spi_burst_read(i32 noundef 402653700, ptr noundef nonnull %buf, i32 noundef 8)
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %buf, align 8
  %conv13 = zext i8 %17 to i32
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %5, align 1
  %conv15 = zext i8 %19 to i32
  %shl16 = shl nuw nsw i32 %conv15, 8
  %or17 = or i32 %shl16, %conv13
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %4, align 2
  %conv19 = zext i8 %21 to i32
  %shl20 = shl nuw nsw i32 %conv19, 16
  %or21 = or i32 %or17, %shl20
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %3, align 1
  %conv23 = zext i8 %23 to i32
  %shl24 = shl nuw i32 %conv23, 24
  %or25 = or i32 %or21, %shl24
  %buf_limit = getelementptr inbounds %struct.rt5514_dsp, ptr %rt5514_dsp, i32 0, i32 5
  %24 = ptrtoint ptr %buf_limit to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or25, ptr %buf_limit, align 4
  %call26 = call i32 @rt5514_spi_burst_read(i32 noundef 402653708, ptr noundef nonnull %buf, i32 noundef 8)
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %buf, align 8
  %conv28 = zext i8 %26 to i32
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %5, align 1
  %conv30 = zext i8 %28 to i32
  %shl31 = shl nuw nsw i32 %conv30, 8
  %or32 = or i32 %shl31, %conv28
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %4, align 2
  %conv34 = zext i8 %30 to i32
  %shl35 = shl nuw nsw i32 %conv34, 16
  %or36 = or i32 %or32, %shl35
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %3, align 1
  %conv38 = zext i8 %32 to i32
  %shl39 = shl nuw i32 %conv38, 24
  %or40 = or i32 %or36, %shl39
  %buf_rp = getelementptr inbounds %struct.rt5514_dsp, ptr %rt5514_dsp, i32 0, i32 6
  %rem = and i32 %conv28, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool42.not = icmp eq i32 %rem, 0
  %div77 = and i32 %or40, -8
  %spec.select = select i1 %tobool42.not, i32 %or40, i32 %div77
  %33 = ptrtoint ptr %buf_rp to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %spec.select, ptr %buf_rp, align 4
  %34 = ptrtoint ptr %buf_limit to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %buf_limit, align 4
  %36 = ptrtoint ptr %buf_base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buf_base, align 4
  %sub = sub i32 %35, %37
  %buf_size = getelementptr inbounds %struct.rt5514_dsp, ptr %rt5514_dsp, i32 0, i32 7
  %38 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub, ptr %buf_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool50.not = icmp eq i32 %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool52.not = icmp eq i32 %35, 0
  %or.cond78 = select i1 %tobool50.not, i1 true, i1 %tobool52.not
  br i1 %or.cond78, label %if.end.cleanup_crit_edge, label %land.lhs.true53

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true53:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool55.not = icmp eq i32 %spec.select, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %tobool58.not = icmp eq i32 %35, %37
  %or.cond = select i1 %tobool55.not, i1 true, i1 %tobool58.not
  br i1 %or.cond, label %land.lhs.true53.cleanup_crit_edge, label %if.then59

land.lhs.true53.cleanup_crit_edge:                ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then59:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #9
  %copy_work = getelementptr inbounds %struct.rt5514_dsp, ptr %rt5514_dsp, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %39 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %39, ptr noundef %copy_work, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %land.lhs.true53.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5514_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq1 = getelementptr inbounds %struct.spi_device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq1, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %1, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5514_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq2 = getelementptr inbounds %struct.spi_device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #7
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %buf, align 8
  %5 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %6 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %7, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %3, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %if.then5

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then5:                                         ; preds = %if.end
  %substream = getelementptr inbounds %struct.rt5514_dsp, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %substream, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %if.then5.if.end13_crit_edge, label %if.then7

if.then5.if.end13_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then7:                                         ; preds = %if.then5
  %call8 = call i32 @rt5514_spi_burst_read(i32 noundef 402661524, ptr noundef nonnull %buf, i32 noundef 8)
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf, align 8
  %12 = and i8 %11, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool9.not = icmp eq i8 %12, 0
  br i1 %tobool9.not, label %if.then7.if.end13_crit_edge, label %if.then10

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @rt5514_schedule_copy(ptr noundef nonnull %1)
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then7.if.end13_crit_edge, %if.then5.if.end13_crit_edge, %if.end.if.end13_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !54, !56, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__ksymtab_rt5514_spi_burst_read, !1, !"__ksymtab_rt5514_spi_burst_read", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/rt5514-spi.c", i32 386, i32 1}
!2 = !{ptr @__ksymtab_rt5514_spi_burst_write, !3, !"__ksymtab_rt5514_spi_burst_write", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/rt5514-spi.c", i32 442, i32 1}
!4 = !{ptr @__initcall__kmod_snd_soc_rt5514_spi__296_510_rt5514_spi_driver_init6, !5, !"__initcall__kmod_snd_soc_rt5514_spi__296_510_rt5514_spi_driver_init6", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/rt5514-spi.c", i32 510, i32 1}
!6 = !{ptr @__exitcall_rt5514_spi_driver_exit, !5, !"__exitcall_rt5514_spi_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description297, !8, !"__UNIQUE_ID_description297", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/rt5514-spi.c", i32 512, i32 1}
!9 = !{ptr @__UNIQUE_ID_author298, !10, !"__UNIQUE_ID_author298", i1 false, i1 false}
!10 = !{!"../sound/soc/codecs/rt5514-spi.c", i32 513, i32 1}
!11 = !{ptr @__UNIQUE_ID_file299, !12, !"__UNIQUE_ID_file299", i1 false, i1 false}
!12 = !{!"../sound/soc/codecs/rt5514-spi.c", i32 514, i32 1}
!13 = !{ptr @__UNIQUE_ID_license300, !12, !"__UNIQUE_ID_license300", i1 false, i1 false}
!14 = !{ptr @rt5514_spi, !15, !"rt5514_spi", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/rt5514-spi.c", i32 37, i32 27}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/rt5514-spi.c", i32 504, i32 11}
!18 = !{ptr @rt5514_spi_driver, !19, !"rt5514_spi_driver", i1 false, i1 false}
!19 = !{!"../sound/soc/codecs/rt5514-spi.c", i32 502, i32 26}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/rt5514-spi.c", i32 454, i32 3}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @rt5514_spi_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @rt5514_spi_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/rt5514-spi.c", i32 301, i32 11}
!30 = !{ptr @rt5514_spi_component, !31, !"rt5514_spi_component", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/rt5514-spi.c", i32 300, i32 46}
!32 = !{ptr @rt5514_spi_pcm_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/rt5514-spi.c", i32 272, i32 2}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @rt5514_spi_pcm_probe.__key.8, !36, !"__key", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/rt5514-spi.c", i32 273, i32 2}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @rt5514_spi_pcm_probe.__key.10, !36, !"__key", i1 false, i1 false}
!39 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/rt5514-spi.c", i32 282, i32 4}
!42 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @rt5514_spi_pcm_probe._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @rt5514_spi_pcm_probe._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/rt5514-spi.c", i32 85, i32 3}
!47 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @rt5514_spi_copy_work._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @rt5514_spi_copy_work._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @rt5514_spi_pcm_hardware, !51, !"rt5514_spi_pcm_hardware", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/rt5514-spi.c", i32 48, i32 38}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/rt5514-spi.c", i32 63, i32 10}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/rt5514-spi.c", i32 66, i32 18}
!56 = !{ptr @rt5514_spi_dai, !57, !"rt5514_spi_dai", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/rt5514-spi.c", i32 62, i32 34}
!58 = !{ptr @rt5514_of_match, !59, !"rt5514_of_match", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/rt5514-spi.c", i32 496, i32 34}
!60 = !{ptr @rt5514_pm_ops, !61, !"rt5514_pm_ops", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/rt5514-spi.c", i32 492, i32 32}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
