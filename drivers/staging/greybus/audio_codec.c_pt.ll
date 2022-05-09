; ModuleID = '/llk/IR_all_yes/drivers/staging/greybus/audio_codec.c_pt.bc'
source_filename = "../drivers/staging/greybus/audio_codec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+gbaudio_module_update\22, \22a\22\09"
module asm "\09.weak\09__crc_gbaudio_module_update\09\09\09\09"
module asm "\09.long\09__crc_gbaudio_module_update\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gbaudio_module_update:\09\09\09\09\09"
module asm "\09.asciz \09\22gbaudio_module_update\22\09\09\09\09\09"
module asm "__kstrtabns_gbaudio_module_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gbaudio_register_module\22, \22a\22\09"
module asm "\09.weak\09__crc_gbaudio_register_module\09\09\09\09"
module asm "\09.long\09__crc_gbaudio_register_module\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gbaudio_register_module:\09\09\09\09\09"
module asm "\09.asciz \09\22gbaudio_register_module\22\09\09\09\09\09"
module asm "__kstrtabns_gbaudio_register_module:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gbaudio_unregister_module\22, \22a\22\09"
module asm "\09.weak\09__crc_gbaudio_unregister_module\09\09\09\09"
module asm "\09.long\09__crc_gbaudio_unregister_module\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gbaudio_unregister_module:\09\09\09\09\09"
module asm "\09.asciz \09\22gbaudio_unregister_module\22\09\09\09\09\09"
module asm "__kstrtabns_gbaudio_unregister_module:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.gbaudio_codec_info = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.gbaudio_module_info = type { ptr, i32, i32, i32, i32, i32, [32 x i8], [32 x i8], %struct.list_head, i32, [32 x i8], i32, i32, [32 x i8], [32 x i8], i32, i32, i32, i32, %struct.gbaudio_jack, %struct.gbaudio_jack, ptr, i32, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.gbaudio_jack = type { %struct.snd_soc_jack, %struct.list_head }
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.gb_connection = type { ptr, ptr, ptr, %struct.kref, i16, i16, %struct.list_head, %struct.list_head, ptr, i32, %struct.mutex, %struct.spinlock, i32, %struct.list_head, [16 x i8], ptr, %struct.atomic_t, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_soc_jack_pin = type { %struct.list_head, ptr, i32, i8 }
%struct.snd_jack = type { %struct.list_head, ptr, ptr, ptr, i32, i32, [100 x i8], [6 x i32], i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.gbaudio_codec_dai = type { i32, [2 x %struct.gbaudio_stream_params], %struct.list_head }
%struct.gbaudio_stream_params = type { i32, i8, i8, i32, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.gbaudio_data_connection = type { i32, i16, ptr, %struct.list_head, [2 x i32] }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@gbaudio_module_update.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gb_audio_codec\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gbaudio_module_update\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/staging/greybus/audio_codec.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s:Module update %s sequence\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Enable\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Disable\00", [24 x i8] zeroinitializer }, align 32
@gbaudio_module_update.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No action required for %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s %d %s\00", [23 x i8] zeroinitializer }, align 32
@gbaudio_module_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 316, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error while parsing dai_id for %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gbaudio_module_update._entry_ptr = internal global ptr @gbaudio_module_update._entry, section ".printk_index", align 4
@__kstrtab_gbaudio_module_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_gbaudio_module_update = external dso_local constant [0 x i8], align 1
@__ksymtab_gbaudio_module_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gbaudio_module_update to i32), ptr @__kstrtab_gbaudio_module_update, ptr @__kstrtabns_gbaudio_module_update }, section "___ksymtab+gbaudio_module_update", align 4
@gbcodec = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@gbaudio_register_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 808, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"GB Codec not yet probed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gbaudio_register_module\00", [40 x i8] zeroinitializer }, align 32
@gbaudio_register_module._entry_ptr = internal global ptr @gbaudio_register_module._entry, section ".printk_index", align 4
@gbaudio_register_module._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 820, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%d:DAIs not supported via gbcodec driver\0A\00", [54 x i8] zeroinitializer }, align 32
@gbaudio_register_module._entry_ptr.15 = internal global ptr @gbaudio_register_module._entry.13, section ".printk_index", align 4
@gbaudio_register_module.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.16, i8 0, i8 -41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Registered %s module\0A\00", [42 x i8] zeroinitializer }, align 32
@__kstrtab_gbaudio_register_module = external dso_local constant [0 x i8], align 1
@__kstrtabns_gbaudio_register_module = external dso_local constant [0 x i8], align 1
@__ksymtab_gbaudio_register_module = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gbaudio_register_module to i32), ptr @__kstrtab_gbaudio_register_module, ptr @__kstrtabns_gbaudio_register_module }, section "___ksymtab+gbaudio_register_module", align 4
@gbaudio_unregister_module.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 -22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gbaudio_unregister_module\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unregister %s module\0A\00", [42 x i8] zeroinitializer }, align 32
@gbaudio_unregister_module.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.19, i8 0, i8 -21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Process Unregister %s module\0A\00", [34 x i8] zeroinitializer }, align 32
@gbaudio_unregister_module.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.20, i8 0, i8 -17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Report %s removal\0A\00", [45 x i8] zeroinitializer }, align 32
@gbaudio_unregister_module.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.21, i8 0, i8 -15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Removing %d routes\0A\00", [44 x i8] zeroinitializer }, align 32
@gbaudio_unregister_module.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.22, i8 0, i8 -13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Removing %d controls\0A\00", [42 x i8] zeroinitializer }, align 32
@gbaudio_unregister_module.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.23, i8 0, i8 -11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Removing %d widgets\0A\00", [43 x i8] zeroinitializer }, align 32
@gbaudio_unregister_module.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.24, i8 0, i8 -10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unregistered %s module\0A\00", [40 x i8] zeroinitializer }, align 32
@__kstrtab_gbaudio_unregister_module = external dso_local constant [0 x i8], align 1
@__kstrtabns_gbaudio_unregister_module = external dso_local constant [0 x i8], align 1
@__ksymtab_gbaudio_unregister_module = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gbaudio_unregister_module to i32), ptr @__kstrtab_gbaudio_unregister_module, ptr @__kstrtabns_gbaudio_unregister_module }, section "___ksymtab+gbaudio_unregister_module", align 4
@__initcall__kmod_gb_audio_codec__263_1101_gbaudio_codec_driver_init6 = internal global ptr @gbaudio_codec_driver_init, section ".initcall6.init", align 4
@gbaudio_codec_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gbaudio_codec_probe, ptr @gbaudio_codec_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.102, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @greybus_asoc_machine_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gbaudio_codec_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gbaudio_codec_driver_exit = internal global ptr @gbaudio_codec_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description264 = internal constant [64 x i8] c"gb_audio_codec.description=APBridge ALSA SoC dummy codec driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author265 = internal constant [67 x i8] c"gb_audio_codec.author=Vaibhav Agarwal <vaibhav.agarwal@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file266 = internal constant [59 x i8] c"gb_audio_codec.file=drivers/staging/greybus/gb-audio-codec\00", section ".modinfo", align 1
@__UNIQUE_ID_license267 = internal constant [30 x i8] c"gb_audio_codec.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias268 = internal constant [46 x i8] c"gb_audio_codec.alias=platform:apb-dummy-codec\00", section ".modinfo", align 1
@gbaudio_module_enable_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 58, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%d:DATA connection missing\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gbaudio_module_enable_tx\00", [39 x i8] zeroinitializer }, align 32
@gbaudio_module_enable_tx._entry_ptr = internal global ptr @gbaudio_module_enable_tx._entry, section ".printk_index", align 4
@gbaudio_module_enable_tx._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 65, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to fetch dai_stream pointer\0A\00", [60 x i8] zeroinitializer }, align 32
@gbaudio_module_enable_tx._entry_ptr.29 = internal global ptr @gbaudio_module_enable_tx._entry.27, section ".printk_index", align 4
@gbaudio_module_enable_tx._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@gbaudio_module_enable_tx._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.26, ptr @.str.2, i32 77, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_cport failed:%d\0A\00", [43 x i8] zeroinitializer }, align 32
@gbaudio_module_enable_tx._entry_ptr.33 = internal global ptr @gbaudio_module_enable_tx._entry.31, section ".printk_index", align 4
@gbaudio_module_enable_tx.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.34, i8 0, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Dynamic Register %d DAI\0A\00", [39 x i8] zeroinitializer }, align 32
@gbaudio_module_enable_tx._rs.35 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gbaudio_module_enable_tx._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.26, ptr @.str.2, i32 94, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set_pcm failed:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@gbaudio_module_enable_tx._entry_ptr.38 = internal global ptr @gbaudio_module_enable_tx._entry.36, section ".printk_index", align 4
@gbaudio_module_enable_tx.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.39, i8 0, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Dynamic hw_params %d DAI\0A\00", [38 x i8] zeroinitializer }, align 32
@gbaudio_module_enable_tx._rs.40 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gbaudio_module_enable_tx._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.26, ptr @.str.2, i32 109, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"set_tx_data_size failed:%d\0A\00", [36 x i8] zeroinitializer }, align 32
@gbaudio_module_enable_tx._entry_ptr.43 = internal global ptr @gbaudio_module_enable_tx._entry.41, section ".printk_index", align 4
@gbaudio_module_enable_tx._rs.44 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gbaudio_module_enable_tx._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.26, ptr @.str.2, i32 115, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"activate_tx failed:%d\0A\00", [41 x i8] zeroinitializer }, align 32
@gbaudio_module_enable_tx._entry_ptr.47 = internal global ptr @gbaudio_module_enable_tx._entry.45, section ".printk_index", align 4
@gbaudio_module_enable_tx.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.48, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Dynamic prepare %d DAI\0A\00", [40 x i8] zeroinitializer }, align 32
@gbaudio_module_disable_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.49, ptr @.str.2, i32 135, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gbaudio_module_disable_tx\00", [38 x i8] zeroinitializer }, align 32
@gbaudio_module_disable_tx._entry_ptr = internal global ptr @gbaudio_module_disable_tx._entry, section ".printk_index", align 4
@gbaudio_module_disable_tx._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gbaudio_module_disable_tx._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 146, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"deactivate_tx failed:%d\0A\00", [39 x i8] zeroinitializer }, align 32
@gbaudio_module_disable_tx._entry_ptr.52 = internal global ptr @gbaudio_module_disable_tx._entry.50, section ".printk_index", align 4
@gbaudio_module_disable_tx.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.53, i8 0, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Dynamic deactivate %d DAI\0A\00", [37 x i8] zeroinitializer }, align 32
@gbaudio_module_disable_tx._rs.54 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gbaudio_module_disable_tx._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.49, ptr @.str.2, i32 161, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unregister_cport failed:%d\0A\00", [36 x i8] zeroinitializer }, align 32
@gbaudio_module_disable_tx._entry_ptr.57 = internal global ptr @gbaudio_module_disable_tx._entry.55, section ".printk_index", align 4
@gbaudio_module_disable_tx.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.58, i8 0, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Dynamic Unregister %d DAI\0A\00", [37 x i8] zeroinitializer }, align 32
@gbaudio_module_enable_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.59, ptr @.str.2, i32 184, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gbaudio_module_enable_rx\00", [39 x i8] zeroinitializer }, align 32
@gbaudio_module_enable_rx._entry_ptr = internal global ptr @gbaudio_module_enable_rx._entry, section ".printk_index", align 4
@gbaudio_module_enable_rx._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.59, ptr @.str.2, i32 191, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@gbaudio_module_enable_rx._entry_ptr.61 = internal global ptr @gbaudio_module_enable_rx._entry.60, section ".printk_index", align 4
@gbaudio_module_enable_rx._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gbaudio_module_enable_rx._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.59, ptr @.str.2, i32 203, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@gbaudio_module_enable_rx._entry_ptr.63 = internal global ptr @gbaudio_module_enable_rx._entry.62, section ".printk_index", align 4
@gbaudio_module_enable_rx.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.34, i8 0, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@gbaudio_module_enable_rx._rs.64 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gbaudio_module_enable_rx._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.59, ptr @.str.2, i32 220, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@gbaudio_module_enable_rx._entry_ptr.66 = internal global ptr @gbaudio_module_enable_rx._entry.65, section ".printk_index", align 4
@gbaudio_module_enable_rx.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.39, i8 0, i8 56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@gbaudio_module_enable_rx._rs.67 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gbaudio_module_enable_rx._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.59, ptr @.str.2, i32 235, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"set_rx_data_size failed:%d\0A\00", [36 x i8] zeroinitializer }, align 32
@gbaudio_module_enable_rx._entry_ptr.70 = internal global ptr @gbaudio_module_enable_rx._entry.68, section ".printk_index", align 4
@gbaudio_module_enable_rx._rs.71 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gbaudio_module_enable_rx._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.59, ptr @.str.2, i32 242, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"activate_rx failed:%d\0A\00", [41 x i8] zeroinitializer }, align 32
@gbaudio_module_enable_rx._entry_ptr.74 = internal global ptr @gbaudio_module_enable_rx._entry.72, section ".printk_index", align 4
@gbaudio_module_enable_rx.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.48, i8 0, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@gbaudio_module_disable_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.75, ptr @.str.2, i32 262, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gbaudio_module_disable_rx\00", [38 x i8] zeroinitializer }, align 32
@gbaudio_module_disable_rx._entry_ptr = internal global ptr @gbaudio_module_disable_rx._entry, section ".printk_index", align 4
@gbaudio_module_disable_rx._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gbaudio_module_disable_rx._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 273, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"deactivate_rx failed:%d\0A\00", [39 x i8] zeroinitializer }, align 32
@gbaudio_module_disable_rx._entry_ptr.78 = internal global ptr @gbaudio_module_disable_rx._entry.76, section ".printk_index", align 4
@gbaudio_module_disable_rx.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.53, i8 0, i8 69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@gbaudio_module_disable_rx._rs.79 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gbaudio_module_disable_rx._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.75, ptr @.str.2, i32 288, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@gbaudio_module_disable_rx._entry_ptr.81 = internal global ptr @gbaudio_module_disable_rx._entry.80, section ".printk_index", align 4
@gbaudio_module_disable_rx.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.58, i8 0, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GB %d Headset Jack\00", [45 x i8] zeroinitializer }, align 32
@gbaudio_init_jack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 708, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to create new jack\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gbaudio_init_jack\00", [46 x i8] zeroinitializer }, align 32
@gbaudio_init_jack._entry_ptr = internal global ptr @gbaudio_init_jack._entry, section ".printk_index", align 4
@.str.85 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GB %d Button Jack\00", [46 x i8] zeroinitializer }, align 32
@gbaudio_init_jack._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.84, ptr @.str.2, i32 732, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to create button jack\0A\00", [34 x i8] zeroinitializer }, align 32
@gbaudio_init_jack._entry_ptr.88 = internal global ptr @gbaudio_init_jack._entry.86, section ".printk_index", align 4
@gbaudio_init_jack._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.84, ptr @.str.2, i32 751, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to set BTN_0\0A\00", [43 x i8] zeroinitializer }, align 32
@gbaudio_init_jack._entry_ptr.91 = internal global ptr @gbaudio_init_jack._entry.89, section ".printk_index", align 4
@gbaudio_init_jack._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.84, ptr @.str.2, i32 760, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to set BTN_1\0A\00", [43 x i8] zeroinitializer }, align 32
@gbaudio_init_jack._entry_ptr.94 = internal global ptr @gbaudio_init_jack._entry.92, section ".printk_index", align 4
@gbaudio_init_jack._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.84, ptr @.str.2, i32 769, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to set BTN_2\0A\00", [43 x i8] zeroinitializer }, align 32
@gbaudio_init_jack._entry_ptr.97 = internal global ptr @gbaudio_init_jack._entry.95, section ".printk_index", align 4
@gbaudio_init_jack._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.84, ptr @.str.2, i32 778, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@gbaudio_init_jack._entry_ptr.99 = internal global ptr @gbaudio_init_jack._entry.98, section ".printk_index", align 4
@gbaudio_codec_cleanup.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.2, ptr @.str.101, i8 0, i8 -27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gbaudio_codec_cleanup\00", [42 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: removed, cleanup APBridge\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"apb-dummy-codec\00", [16 x i8] zeroinitializer }, align 32
@greybus_asoc_machine_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"toshiba,apb-dummy-codec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@gbaudio_codec_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @gbaudio_codec_suspend, ptr @gbaudio_codec_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@soc_codec_dev_gbaudio = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @gbcodec_probe, ptr @gbcodec_remove, ptr null, ptr null, ptr @gbcodec_read, ptr @gbcodec_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@gbaudio_dai = internal global { [1 x %struct.snd_soc_dai_driver], [56 x i8] } { [1 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.104, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @gbcodec_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.105, i64 4, i32 128, i32 48000, i32 48000, i32 1, i32 2, i32 16 }, %struct.snd_soc_pcm_stream { ptr @.str.106, i64 4, i32 128, i32 48000, i32 48000, i32 1, i32 2, i32 16 }, i8 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@gbcodec_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.103 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&info->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apb-i2s0\00", [23 x i8] zeroinitializer }, align 32
@gbcodec_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gbcodec_mute_stream, ptr @gbcodec_startup, ptr @gbcodec_shutdown, ptr @gbcodec_hw_params, ptr null, ptr @gbcodec_prepare, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"I2S 0 Capture\00", [18 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"I2S 0 Playback\00", [17 x i8] zeroinitializer }, align 32
@gbcodec_mute_stream.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.107, ptr @.str.2, ptr @.str.108, i8 0, i8 -113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gbcodec_mute_stream\00", [44 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Mute:%d, Direction:%s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CAPTURE\00", [24 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PLAYBACK\00", [23 x i8] zeroinitializer }, align 32
@gbcodec_mute_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.107, ptr @.str.2, i32 578, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@gbcodec_mute_stream._entry_ptr = internal global ptr @gbcodec_mute_stream._entry, section ".printk_index", align 4
@gbcodec_mute_stream._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.107, ptr @.str.2, i32 584, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No codec module available\0A\00", [37 x i8] zeroinitializer }, align 32
@gbcodec_mute_stream._entry_ptr.113 = internal global ptr @gbcodec_mute_stream._entry.111, section ".printk_index", align 4
@gbcodec_mute_stream._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.107, ptr @.str.2, i32 603, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s:%s DATA connection missing\0A\00", [33 x i8] zeroinitializer }, align 32
@gbcodec_mute_stream._entry_ptr.116 = internal global ptr @gbcodec_mute_stream._entry.114, section ".printk_index", align 4
@gbcodec_mute_stream._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gbcodec_mute_stream._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.107, ptr @.str.2, i32 643, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s:Error during %s %s stream:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@gbcodec_mute_stream._entry_ptr.119 = internal global ptr @gbcodec_mute_stream._entry.117, section ".printk_index", align 4
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Mute\00", [27 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Unmute\00", [25 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@gb_pm_runtime_get_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.126, i32 54, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pm_runtime_get_sync failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gb_pm_runtime_get_sync\00", [41 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/linux/greybus/bundle.h\00", [33 x i8] zeroinitializer }, align 32
@gb_pm_runtime_get_sync._entry_ptr = internal global ptr @gb_pm_runtime_get_sync._entry, section ".printk_index", align 4
@gbcodec_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.127, ptr @.str.2, i32 351, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gbcodec_startup\00", [16 x i8] zeroinitializer }, align 32
@gbcodec_startup._entry_ptr = internal global ptr @gbcodec_startup._entry, section ".printk_index", align 4
@gbcodec_startup._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.127, ptr @.str.2, i32 358, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@gbcodec_startup._entry_ptr.129 = internal global ptr @gbcodec_startup._entry.128, section ".printk_index", align 4
@gbcodec_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.2, i32 379, ptr @.str.132, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"No codec module available during shutdown\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gbcodec_shutdown\00", [47 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@gbcodec_shutdown._entry_ptr = internal global ptr @gbcodec_shutdown._entry, section ".printk_index", align 4
@gbcodec_shutdown._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.131, ptr @.str.2, i32 383, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@gbcodec_shutdown._entry_ptr.134 = internal global ptr @gbcodec_shutdown._entry.133, section ".printk_index", align 4
@gbcodec_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.135, ptr @.str.2, i32 408, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gbcodec_hw_params\00", [46 x i8] zeroinitializer }, align 32
@gbcodec_hw_params._entry_ptr = internal global ptr @gbcodec_hw_params._entry, section ".printk_index", align 4
@gbcodec_hw_params._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.135, ptr @.str.2, i32 419, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid channel count:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@gbcodec_hw_params._entry_ptr.138 = internal global ptr @gbcodec_hw_params._entry.136, section ".printk_index", align 4
@gbcodec_hw_params._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.135, ptr @.str.2, i32 427, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid sampling rate:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@gbcodec_hw_params._entry_ptr.141 = internal global ptr @gbcodec_hw_params._entry.139, section ".printk_index", align 4
@gbcodec_hw_params._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.135, ptr @.str.2, i32 434, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid format:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@gbcodec_hw_params._entry_ptr.144 = internal global ptr @gbcodec_hw_params._entry.142, section ".printk_index", align 4
@gbcodec_hw_params._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.135, ptr @.str.2, i32 448, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DATA connection missing\0A\00", [39 x i8] zeroinitializer }, align 32
@gbcodec_hw_params._entry_ptr.147 = internal global ptr @gbcodec_hw_params._entry.145, section ".printk_index", align 4
@gbcodec_hw_params._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.135, ptr @.str.2, i32 455, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@gbcodec_hw_params._entry_ptr.149 = internal global ptr @gbcodec_hw_params._entry.148, section ".printk_index", align 4
@gbcodec_hw_params._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gbcodec_hw_params._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.135, ptr @.str.2, i32 473, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%d: Error during set_config\0A\00", [35 x i8] zeroinitializer }, align 32
@gbcodec_hw_params._entry_ptr.152 = internal global ptr @gbcodec_hw_params._entry.150, section ".printk_index", align 4
@gbcodec_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.153, ptr @.str.2, i32 509, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gbcodec_prepare\00", [16 x i8] zeroinitializer }, align 32
@gbcodec_prepare._entry_ptr = internal global ptr @gbcodec_prepare._entry, section ".printk_index", align 4
@gbcodec_prepare._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.153, ptr @.str.2, i32 521, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@gbcodec_prepare._entry_ptr.155 = internal global ptr @gbcodec_prepare._entry.154, section ".printk_index", align 4
@gbcodec_prepare._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.153, ptr @.str.2, i32 528, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@gbcodec_prepare._entry_ptr.157 = internal global ptr @gbcodec_prepare._entry.156, section ".printk_index", align 4
@gbcodec_prepare._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gbcodec_prepare._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.153, ptr @.str.2, i32 551, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"set_data_size failed:%d\0A\00", [39 x i8] zeroinitializer }, align 32
@gbcodec_prepare._entry_ptr.160 = internal global ptr @gbcodec_prepare._entry.158, section ".printk_index", align 4
@gbaudio_codec_suspend.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.161, ptr @.str.2, ptr @.str.162, i8 1, i8 8, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.161 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gbaudio_codec_suspend\00", [42 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: suspend\0A\00", [19 x i8] zeroinitializer }, align 32
@gbaudio_codec_resume.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.163, ptr @.str.2, ptr @.str.164, i8 1, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.163 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gbaudio_codec_resume\00", [43 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: resume\0A\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 23, i64 24]
@__sancov_gen_cov_switch_values.165 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 305, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 309, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 314, i32 25 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 316, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [8 x i8] c"gbcodec\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 19, i32 35 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 808, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 818, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 862, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 936, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 942, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 955, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 966, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 972, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 981, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 987, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant [21 x i8] c"gbaudio_codec_driver\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1090, i32 31 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 58, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 65, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 77, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 81, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 94, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 98, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 107, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 114, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 119, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 135, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 145, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 149, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 160, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 164, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 184, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 191, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 203, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 220, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 233, i32 4 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 241, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 262, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 272, i32 4 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 287, i32 4 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 696, i32 41 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 708, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 718, i32 43 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 732, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 751, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 760, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 769, i32 4 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 778, i32 4 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 916, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1092, i32 11 }
@___asan_gen_.454 = private unnamed_addr constant [30 x i8] c"greybus_asoc_machine_of_match\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1085, i32 34 }
@___asan_gen_.457 = private unnamed_addr constant [21 x i8] c"gbaudio_codec_pm_ops\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1067, i32 32 }
@___asan_gen_.460 = private unnamed_addr constant [22 x i8] c"soc_codec_dev_gbaudio\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1046, i32 46 }
@___asan_gen_.463 = private unnamed_addr constant [12 x i8] c"gbaudio_dai\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 658, i32 34 }
@___asan_gen_.466 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1008, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 660, i32 11 }
@___asan_gen_.475 = private unnamed_addr constant [16 x i8] c"gbcodec_dai_ops\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 650, i32 37 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 673, i32 19 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 663, i32 19 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 571, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 578, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 584, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 602, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 640, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant [34 x i8] c"../include/linux/greybus/bundle.h\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 53, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 351, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 358, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 379, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 383, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 408, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 418, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 426, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 434, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 448, i32 3 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 455, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 472, i32 3 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 509, i32 3 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 521, i32 3 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 528, i32 3 }
@___asan_gen_.622 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.625 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 551, i32 3 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1057, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.641 = private constant [41 x i8] c"../drivers/staging/greybus/audio_codec.c\00", align 1
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1063, i32 2 }
@llvm.compiler.used = appending global [217 x ptr] [ptr @__UNIQUE_ID_alias268, ptr @__UNIQUE_ID_author265, ptr @__UNIQUE_ID_description264, ptr @__UNIQUE_ID_file266, ptr @__UNIQUE_ID_license267, ptr @__exitcall_gbaudio_codec_driver_exit, ptr @__initcall__kmod_gb_audio_codec__263_1101_gbaudio_codec_driver_init6, ptr @__ksymtab_gbaudio_module_update, ptr @__ksymtab_gbaudio_register_module, ptr @__ksymtab_gbaudio_unregister_module, ptr @gb_pm_runtime_get_sync._entry, ptr @gb_pm_runtime_get_sync._entry_ptr, ptr @gbaudio_codec_driver_exit, ptr @gbaudio_init_jack._entry, ptr @gbaudio_init_jack._entry.86, ptr @gbaudio_init_jack._entry.89, ptr @gbaudio_init_jack._entry.92, ptr @gbaudio_init_jack._entry.95, ptr @gbaudio_init_jack._entry.98, ptr @gbaudio_init_jack._entry_ptr, ptr @gbaudio_init_jack._entry_ptr.88, ptr @gbaudio_init_jack._entry_ptr.91, ptr @gbaudio_init_jack._entry_ptr.94, ptr @gbaudio_init_jack._entry_ptr.97, ptr @gbaudio_init_jack._entry_ptr.99, ptr @gbaudio_module_disable_rx._entry, ptr @gbaudio_module_disable_rx._entry.76, ptr @gbaudio_module_disable_rx._entry.80, ptr @gbaudio_module_disable_rx._entry_ptr, ptr @gbaudio_module_disable_rx._entry_ptr.78, ptr @gbaudio_module_disable_rx._entry_ptr.81, ptr @gbaudio_module_disable_tx._entry, ptr @gbaudio_module_disable_tx._entry.50, ptr @gbaudio_module_disable_tx._entry.55, ptr @gbaudio_module_disable_tx._entry_ptr, ptr @gbaudio_module_disable_tx._entry_ptr.52, ptr @gbaudio_module_disable_tx._entry_ptr.57, ptr @gbaudio_module_enable_rx._entry, ptr @gbaudio_module_enable_rx._entry.60, ptr @gbaudio_module_enable_rx._entry.62, ptr @gbaudio_module_enable_rx._entry.65, ptr @gbaudio_module_enable_rx._entry.68, ptr @gbaudio_module_enable_rx._entry.72, ptr @gbaudio_module_enable_rx._entry_ptr, ptr @gbaudio_module_enable_rx._entry_ptr.61, ptr @gbaudio_module_enable_rx._entry_ptr.63, ptr @gbaudio_module_enable_rx._entry_ptr.66, ptr @gbaudio_module_enable_rx._entry_ptr.70, ptr @gbaudio_module_enable_rx._entry_ptr.74, ptr @gbaudio_module_enable_tx._entry, ptr @gbaudio_module_enable_tx._entry.27, ptr @gbaudio_module_enable_tx._entry.31, ptr @gbaudio_module_enable_tx._entry.36, ptr @gbaudio_module_enable_tx._entry.41, ptr @gbaudio_module_enable_tx._entry.45, ptr @gbaudio_module_enable_tx._entry_ptr, ptr @gbaudio_module_enable_tx._entry_ptr.29, ptr @gbaudio_module_enable_tx._entry_ptr.33, ptr @gbaudio_module_enable_tx._entry_ptr.38, ptr @gbaudio_module_enable_tx._entry_ptr.43, ptr @gbaudio_module_enable_tx._entry_ptr.47, ptr @gbaudio_module_update._entry, ptr @gbaudio_module_update._entry_ptr, ptr @gbaudio_register_module._entry, ptr @gbaudio_register_module._entry.13, ptr @gbaudio_register_module._entry_ptr, ptr @gbaudio_register_module._entry_ptr.15, ptr @gbcodec_hw_params._entry, ptr @gbcodec_hw_params._entry.136, ptr @gbcodec_hw_params._entry.139, ptr @gbcodec_hw_params._entry.142, ptr @gbcodec_hw_params._entry.145, ptr @gbcodec_hw_params._entry.148, ptr @gbcodec_hw_params._entry.150, ptr @gbcodec_hw_params._entry_ptr, ptr @gbcodec_hw_params._entry_ptr.138, ptr @gbcodec_hw_params._entry_ptr.141, ptr @gbcodec_hw_params._entry_ptr.144, ptr @gbcodec_hw_params._entry_ptr.147, ptr @gbcodec_hw_params._entry_ptr.149, ptr @gbcodec_hw_params._entry_ptr.152, ptr @gbcodec_mute_stream._entry, ptr @gbcodec_mute_stream._entry.111, ptr @gbcodec_mute_stream._entry.114, ptr @gbcodec_mute_stream._entry.117, ptr @gbcodec_mute_stream._entry_ptr, ptr @gbcodec_mute_stream._entry_ptr.113, ptr @gbcodec_mute_stream._entry_ptr.116, ptr @gbcodec_mute_stream._entry_ptr.119, ptr @gbcodec_prepare._entry, ptr @gbcodec_prepare._entry.154, ptr @gbcodec_prepare._entry.156, ptr @gbcodec_prepare._entry.158, ptr @gbcodec_prepare._entry_ptr, ptr @gbcodec_prepare._entry_ptr.155, ptr @gbcodec_prepare._entry_ptr.157, ptr @gbcodec_prepare._entry_ptr.160, ptr @gbcodec_shutdown._entry, ptr @gbcodec_shutdown._entry.133, ptr @gbcodec_shutdown._entry_ptr, ptr @gbcodec_shutdown._entry_ptr.134, ptr @gbcodec_startup._entry, ptr @gbcodec_startup._entry.128, ptr @gbcodec_startup._entry_ptr, ptr @gbcodec_startup._entry_ptr.129, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @gbcodec, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @gbaudio_codec_driver, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @gbaudio_module_enable_tx._rs, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @gbaudio_module_enable_tx._rs.35, ptr @.str.37, ptr @.str.39, ptr @gbaudio_module_enable_tx._rs.40, ptr @.str.42, ptr @gbaudio_module_enable_tx._rs.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @gbaudio_module_disable_tx._rs, ptr @.str.51, ptr @.str.53, ptr @gbaudio_module_disable_tx._rs.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @gbaudio_module_enable_rx._rs, ptr @gbaudio_module_enable_rx._rs.64, ptr @gbaudio_module_enable_rx._rs.67, ptr @.str.69, ptr @gbaudio_module_enable_rx._rs.71, ptr @.str.73, ptr @.str.75, ptr @gbaudio_module_disable_rx._rs, ptr @.str.77, ptr @gbaudio_module_disable_rx._rs.79, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @greybus_asoc_machine_of_match, ptr @gbaudio_codec_pm_ops, ptr @soc_codec_dev_gbaudio, ptr @gbaudio_dai, ptr @gbcodec_probe.__key, ptr @.str.103, ptr @.str.104, ptr @gbcodec_dai_ops, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @.str.115, ptr @gbcodec_mute_stream._rs, ptr @.str.118, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.135, ptr @.str.137, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @gbcodec_hw_params._rs, ptr @.str.151, ptr @.str.153, ptr @gbcodec_prepare._rs, ptr @.str.159, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164], section "llvm.metadata"
@0 = internal global [159 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_module_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_register_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_register_module._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_codec_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_module_enable_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_module_enable_tx._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_module_enable_tx._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_module_enable_tx._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_module_enable_tx._rs.35 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_module_enable_tx._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_module_enable_tx._rs.40 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_module_enable_tx._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_module_enable_tx._rs.44 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_module_enable_tx._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_module_disable_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_module_disable_tx._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_module_disable_tx._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_module_disable_tx._rs.54 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_module_disable_tx._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_module_enable_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_module_enable_rx._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_module_enable_rx._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_module_enable_rx._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_module_enable_rx._rs.64 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_module_enable_rx._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_module_enable_rx._rs.67 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_module_enable_rx._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_module_enable_rx._rs.71 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_module_enable_rx._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_module_disable_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_module_disable_rx._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_module_disable_rx._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_module_disable_rx._rs.79 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_module_disable_rx._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_init_jack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_init_jack._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_init_jack._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_init_jack._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_init_jack._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_init_jack._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @greybus_asoc_machine_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_codec_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_codec_dev_gbaudio to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_mute_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_mute_stream._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_mute_stream._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_mute_stream._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_mute_stream._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_pm_runtime_get_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_startup._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_shutdown._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_hw_params._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_hw_params._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_hw_params._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_hw_params._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_hw_params._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_hw_params._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_hw_params._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_prepare._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_prepare._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_prepare._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_prepare._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gbaudio_module_update(ptr noundef %codec, ptr nocapture noundef readonly %w, ptr noundef %module, i32 noundef %enable) #0 align 64 {
entry:
  %dai_id = alloca i32, align 4
  %intf_name = alloca [32 x i8], align 1
  %dir = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dai_id) #9
  %0 = ptrtoint ptr %dai_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dai_id, align 4, !annotation !343
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %intf_name) #9
  %1 = call ptr @memset(ptr %intf_name, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dir) #9
  %2 = call ptr @memset(ptr %dir, i32 255, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_module_update.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_module_update, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !344

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %module, align 4
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 1
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool3.not = icmp eq i32 %enable, 0
  %cond = select i1 %tobool3.not, ptr @.str.5, ptr @.str.4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_module_update.__UNIQUE_ID_ddebug249, ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef %6, ptr noundef nonnull %cond) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %7 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %w, align 4
  %.off = add i32 %8, -23
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end25, label %do.body7

do.body7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_module_update.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_module_update, %if.then19)) #9
          to label %cleanup [label %if.then19], !srcloc !344

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %codec, align 4
  %name21 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 1
  %11 = ptrtoint ptr %name21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name21, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_module_update.__UNIQUE_ID_ddebug250, ptr noundef %10, ptr noundef nonnull @.str.6, ptr noundef %12) #9
  br label %cleanup

if.end25:                                         ; preds = %do.end
  %sname = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 2
  %13 = ptrtoint ptr %sname to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sname, align 4
  %call27 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %14, ptr noundef nonnull @.str.7, ptr noundef nonnull %intf_name, ptr noundef nonnull %dai_id, ptr noundef nonnull %dir)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 3
  br i1 %cmp28, label %do.end32, label %if.end35

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %codec, align 4
  %name34 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 1
  %17 = ptrtoint ptr %name34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name34, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.8, ptr noundef %18) #12
  br label %cleanup

if.end35:                                         ; preds = %if.end25
  %lock = getelementptr inbounds %struct.gbaudio_codec_info, ptr %codec, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %19 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %w, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %if.end35.if.end55_crit_edge [
    i32 23, label %if.then38
    i32 24, label %if.then47
  ]

if.end35.if.end55_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool39.not = icmp eq i32 %enable, 0
  %22 = ptrtoint ptr %dai_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dai_id, align 4
  br i1 %tobool39.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %call41 = call fastcc i32 @gbaudio_module_enable_tx(ptr noundef %codec, ptr noundef %module, i32 noundef %23)
  br label %if.end55

if.else:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %call42 = call fastcc i32 @gbaudio_module_disable_tx(ptr noundef %module, i32 noundef %23)
  br label %if.end55

if.then47:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool48.not = icmp eq i32 %enable, 0
  %24 = ptrtoint ptr %dai_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dai_id, align 4
  br i1 %tobool48.not, label %if.else51, label %if.then49

if.then49:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  %call50 = call fastcc i32 @gbaudio_module_enable_rx(ptr noundef %codec, ptr noundef %module, i32 noundef %25)
  br label %if.end55

if.else51:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  %call52 = call fastcc i32 @gbaudio_module_disable_rx(ptr noundef %module, i32 noundef %25)
  br label %if.end55

if.end55:                                         ; preds = %if.else51, %if.then49, %if.else, %if.then40, %if.end35.if.end55_crit_edge
  %ret.0 = phi i32 [ %call41, %if.then40 ], [ %call42, %if.else ], [ %call50, %if.then49 ], [ %call52, %if.else51 ], [ %call27, %if.end35.if.end55_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %do.end32, %if.then19, %do.body7
  %retval.0 = phi i32 [ -22, %do.end32 ], [ %ret.0, %if.end55 ], [ 0, %if.then19 ], [ 0, %do.body7 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dir) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %intf_name) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dai_id) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gbaudio_module_enable_tx(ptr noundef readonly %codec, ptr noundef readonly %module, i32 noundef %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data_list.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 23
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %data_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %data_list.i
  br i1 %cmp.not.i, label %for.cond.i.do.end_crit_edge, label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %data.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %1 = ptrtoint ptr %data.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data.0.i, align 4
  %cmp3.i = icmp eq i32 %2, %id
  br i1 %cmp3.i, label %find_data.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

find_data.exit:                                   ; preds = %for.body.i
  %data.0.i.le = getelementptr i8, ptr %.pn.i, i32 -12
  %tobool.not = icmp eq ptr %data.0.i.le, null
  br i1 %tobool.not, label %find_data.exit.do.end_crit_edge, label %if.end

find_data.exit.do.end_crit_edge:                  ; preds = %find_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %find_data.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge
  %3 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %module, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.25, i32 noundef %id) #12
  br label %cleanup

if.end:                                           ; preds = %find_data.exit
  %state = getelementptr i8, ptr %.pn.i, i32 8
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %dai_list.i = getelementptr inbounds %struct.gbaudio_codec_info, ptr %codec, i32 0, i32 3
  br label %for.cond.i205

for.cond.i205:                                    ; preds = %for.body.i207.for.cond.i205_crit_edge, %if.end
  %.pn.in.i202 = phi ptr [ %dai_list.i, %if.end ], [ %.pn.i203, %for.body.i207.for.cond.i205_crit_edge ]
  %7 = ptrtoint ptr %.pn.in.i202 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i203 = load ptr, ptr %.pn.in.i202, align 4
  %cmp.not.i204 = icmp eq ptr %.pn.i203, %dai_list.i
  br i1 %cmp.not.i204, label %for.cond.i205.do.end6_crit_edge, label %for.body.i207

for.cond.i205.do.end6_crit_edge:                  ; preds = %for.cond.i205
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

for.body.i207:                                    ; preds = %for.cond.i205
  %dai.0.i = getelementptr i8, ptr %.pn.i203, i32 -36
  %8 = ptrtoint ptr %dai.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dai.0.i, align 4
  %cmp3.i206 = icmp eq i32 %9, %id
  br i1 %cmp3.i206, label %find_dai_stream_params.exit, label %for.body.i207.for.cond.i205_crit_edge

for.body.i207.for.cond.i205_crit_edge:            ; preds = %for.body.i207
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i205

find_dai_stream_params.exit:                      ; preds = %for.body.i207
  %params.i = getelementptr i8, ptr %.pn.i203, i32 -32
  %tobool2.not = icmp eq ptr %params.i, null
  br i1 %tobool2.not, label %find_dai_stream_params.exit.do.end6_crit_edge, label %if.end8

find_dai_stream_params.exit.do.end6_crit_edge:    ; preds = %find_dai_stream_params.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end6:                                          ; preds = %find_dai_stream_params.exit.do.end6_crit_edge, %for.cond.i205.do.end6_crit_edge
  %10 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %codec, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.28) #12
  br label %cleanup

if.end8:                                          ; preds = %find_dai_stream_params.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp slt i32 %6, 1
  br i1 %cmp, label %if.then9, label %if.end8.if.end38_crit_edge

if.end8.if.end38_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then9:                                         ; preds = %if.end8
  %connection = getelementptr i8, ptr %.pn.i, i32 -4
  %12 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %connection, align 4
  %hd_cport_id = getelementptr inbounds %struct.gb_connection, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %hd_cport_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hd_cport_id, align 4
  %call11 = tail call i32 @gb_audio_apbridgea_register_cport(ptr noundef %13, i16 noundef zeroext 0, i16 noundef zeroext %15, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end25, label %do.body14

do.body14:                                        ; preds = %if.then9
  %call15 = tail call i32 @___ratelimit(ptr noundef nonnull @gbaudio_module_enable_tx._rs, ptr noundef nonnull @.str.26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.body14.cleanup_crit_edge, label %do.end20

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end20:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %module, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.32, i32 noundef %call11) #12
  br label %cleanup

if.end25:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_module_enable_tx.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_module_enable_tx, %if.end38.thread)) #9
          to label %if.end38 [label %if.end38.thread], !srcloc !344

if.end38.thread:                                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %module, align 4
  %conv = zext i16 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_module_enable_tx.__UNIQUE_ID_ddebug239, ptr noundef %20, ptr noundef nonnull @.str.34, i32 noundef %conv) #9
  br label %if.then41

if.end38:                                         ; preds = %if.end25, %if.end8.if.end38_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp39 = icmp slt i32 %6, 2
  br i1 %cmp39, label %if.end38.if.then41_crit_edge, label %if.end38.if.end82_crit_edge

if.end38.if.end82_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

if.end38.if.then41_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41

if.then41:                                        ; preds = %if.end38.if.then41_crit_edge, %if.end38.thread
  %format42 = getelementptr i8, ptr %.pn.i203, i32 -24
  %21 = ptrtoint ptr %format42 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %format42, align 4
  %channels43 = getelementptr i8, ptr %.pn.i203, i32 -27
  %23 = ptrtoint ptr %channels43 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %channels43, align 1
  %rate44 = getelementptr i8, ptr %.pn.i203, i32 -20
  %25 = ptrtoint ptr %rate44 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rate44, align 4
  %sig_bits45 = getelementptr i8, ptr %.pn.i203, i32 -28
  %27 = ptrtoint ptr %sig_bits45 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %sig_bits45, align 4
  %connection46 = getelementptr i8, ptr %.pn.i, i32 -4
  %29 = ptrtoint ptr %connection46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %connection46, align 4
  %intf_cport_id = getelementptr inbounds %struct.gb_connection, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %intf_cport_id to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %intf_cport_id, align 2
  %mgmt_connection = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 21
  %33 = ptrtoint ptr %mgmt_connection to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mgmt_connection, align 4
  %call47 = tail call i32 @gb_audio_gb_set_pcm(ptr noundef %34, i16 noundef zeroext %32, i32 noundef %22, i32 noundef %26, i8 noundef zeroext %24, i8 noundef zeroext %28) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end61, label %do.body50

do.body50:                                        ; preds = %if.then41
  %call51 = tail call i32 @___ratelimit(ptr noundef nonnull @gbaudio_module_enable_tx._rs.35, ptr noundef nonnull @.str.26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %do.body50.cleanup_crit_edge, label %do.end56

do.body50.cleanup_crit_edge:                      ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end56:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %module, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.37, i32 noundef %call47) #12
  br label %cleanup

if.end61:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_module_enable_tx.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_module_enable_tx, %if.end82.thread)) #9
          to label %if.end82 [label %if.end82.thread], !srcloc !344

if.end82.thread:                                  ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %module, align 4
  %conv78 = zext i16 %32 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_module_enable_tx.__UNIQUE_ID_ddebug240, ptr noundef %39, ptr noundef nonnull @.str.39, i32 noundef %conv78) #9
  br label %if.then85

if.end82:                                         ; preds = %if.end61, %if.end38.if.end82_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp83 = icmp slt i32 %6, 3
  br i1 %cmp83, label %if.end82.if.then85_crit_edge, label %if.end82.cleanup_crit_edge

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end82.if.then85_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then85

if.then85:                                        ; preds = %if.end82.if.then85_crit_edge, %if.end82.thread
  %connection86 = getelementptr i8, ptr %.pn.i, i32 -4
  %40 = ptrtoint ptr %connection86 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %connection86, align 4
  %intf_cport_id87 = getelementptr inbounds %struct.gb_connection, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %intf_cport_id87 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %intf_cport_id87, align 2
  %mgmt_connection88 = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 21
  %44 = ptrtoint ptr %mgmt_connection88 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mgmt_connection88, align 4
  %call89 = tail call i32 @gb_audio_gb_set_tx_data_size(ptr noundef %45, i16 noundef zeroext %43, i16 noundef zeroext 192) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end103, label %do.body92

do.body92:                                        ; preds = %if.then85
  %call93 = tail call i32 @___ratelimit(ptr noundef nonnull @gbaudio_module_enable_tx._rs.40, ptr noundef nonnull @.str.26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %do.body92.cleanup_crit_edge, label %do.end98

do.body92.cleanup_crit_edge:                      ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end98:                                         ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %module, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.42, i32 noundef %call89) #12
  br label %cleanup

if.end103:                                        ; preds = %if.then85
  %48 = ptrtoint ptr %mgmt_connection88 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mgmt_connection88, align 4
  %call105 = tail call i32 @gb_audio_gb_activate_tx(ptr noundef %49, i16 noundef zeroext %43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end119, label %do.body108

do.body108:                                       ; preds = %if.end103
  %call109 = tail call i32 @___ratelimit(ptr noundef nonnull @gbaudio_module_enable_tx._rs.44, ptr noundef nonnull @.str.26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %do.body108.cleanup_crit_edge, label %do.end114

do.body108.cleanup_crit_edge:                     ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end114:                                        ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %module, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.46, i32 noundef %call105) #12
  br label %cleanup

if.end119:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 3, ptr %state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_module_enable_tx.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_module_enable_tx, %if.then134)) #9
          to label %cleanup [label %if.then134], !srcloc !344

if.then134:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %module, align 4
  %conv136 = zext i16 %43 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_module_enable_tx.__UNIQUE_ID_ddebug241, ptr noundef %54, ptr noundef nonnull @.str.48, i32 noundef %conv136) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then134, %if.end119, %do.end114, %do.body108.cleanup_crit_edge, %do.end98, %do.body92.cleanup_crit_edge, %if.end82.cleanup_crit_edge, %do.end56, %do.body50.cleanup_crit_edge, %do.end20, %do.body14.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end6 ], [ -19, %do.end ], [ %call11, %do.end20 ], [ %call11, %do.body14.cleanup_crit_edge ], [ %call47, %do.end56 ], [ %call47, %do.body50.cleanup_crit_edge ], [ %call89, %do.end98 ], [ %call89, %do.body92.cleanup_crit_edge ], [ %call105, %do.end114 ], [ %call105, %do.body108.cleanup_crit_edge ], [ 0, %if.then134 ], [ 0, %if.end82.cleanup_crit_edge ], [ 0, %if.end119 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gbaudio_module_disable_tx(ptr noundef readonly %module, i32 noundef %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data_list.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 23
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %data_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %data_list.i
  br i1 %cmp.not.i, label %for.cond.i.do.end_crit_edge, label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %data.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %1 = ptrtoint ptr %data.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data.0.i, align 4
  %cmp3.i = icmp eq i32 %2, %id
  br i1 %cmp3.i, label %find_data.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

find_data.exit:                                   ; preds = %for.body.i
  %data.0.i.le = getelementptr i8, ptr %.pn.i, i32 -12
  %tobool.not = icmp eq ptr %data.0.i.le, null
  br i1 %tobool.not, label %find_data.exit.do.end_crit_edge, label %if.end

find_data.exit.do.end_crit_edge:                  ; preds = %find_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %find_data.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge
  %3 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %module, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.25, i32 noundef %id) #12
  br label %cleanup

if.end:                                           ; preds = %find_data.exit
  %state = getelementptr i8, ptr %.pn.i, i32 8
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp sgt i32 %6, 2
  br i1 %cmp, label %if.then1, label %if.end29

if.then1:                                         ; preds = %if.end
  %connection = getelementptr i8, ptr %.pn.i, i32 -4
  %7 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %connection, align 4
  %intf_cport_id = getelementptr inbounds %struct.gb_connection, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %intf_cport_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %intf_cport_id, align 2
  %mgmt_connection = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 21
  %11 = ptrtoint ptr %mgmt_connection to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mgmt_connection, align 4
  %call2 = tail call i32 @gb_audio_gb_deactivate_tx(ptr noundef %12, i16 noundef zeroext %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body17, label %do.body5

do.body5:                                         ; preds = %if.then1
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @gbaudio_module_disable_tx._rs, ptr noundef nonnull @.str.49) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body5.cleanup_crit_edge, label %do.end11

do.body5.cleanup_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %module, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.51, i32 noundef %call2) #12
  br label %cleanup

do.body17:                                        ; preds = %if.then1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_module_disable_tx.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_module_disable_tx, %if.then22)) #9
          to label %if.end29.thread [label %if.then22], !srcloc !344

if.then22:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %module, align 4
  %conv = zext i16 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_module_disable_tx.__UNIQUE_ID_ddebug242, ptr noundef %16, ptr noundef nonnull @.str.53, i32 noundef %conv) #9
  br label %if.end29.thread

if.end29.thread:                                  ; preds = %if.then22, %do.body17
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %state, align 4
  br label %if.then32

if.end29:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp30 = icmp sgt i32 %6, 0
  br i1 %cmp30, label %if.end29.if.then32_crit_edge, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29.if.then32_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

if.then32:                                        ; preds = %if.end29.if.then32_crit_edge, %if.end29.thread
  %connection33 = getelementptr i8, ptr %.pn.i, i32 -4
  %18 = ptrtoint ptr %connection33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %connection33, align 4
  %hd_cport_id = getelementptr inbounds %struct.gb_connection, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %hd_cport_id to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %hd_cport_id, align 4
  %call35 = tail call i32 @gb_audio_apbridgea_unregister_cport(ptr noundef %19, i16 noundef zeroext 0, i16 noundef zeroext %21, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %do.body50, label %do.body38

do.body38:                                        ; preds = %if.then32
  %call39 = tail call i32 @___ratelimit(ptr noundef nonnull @gbaudio_module_disable_tx._rs.54, ptr noundef nonnull @.str.49) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %do.body38.cleanup_crit_edge, label %do.end44

do.body38.cleanup_crit_edge:                      ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end44:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %module, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.56, i32 noundef %call35) #12
  br label %cleanup

do.body50:                                        ; preds = %if.then32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_module_disable_tx.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_module_disable_tx, %if.then62)) #9
          to label %do.end67 [label %if.then62], !srcloc !344

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %module, align 4
  %conv64 = zext i16 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_module_disable_tx.__UNIQUE_ID_ddebug243, ptr noundef %25, ptr noundef nonnull @.str.58, i32 noundef %conv64) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then62, %do.body50
  %26 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end67, %do.end44, %do.body38.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %do.end11, %do.body5.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %call2, %do.end11 ], [ %call2, %do.body5.cleanup_crit_edge ], [ %call35, %do.end44 ], [ %call35, %do.body38.cleanup_crit_edge ], [ 0, %do.end67 ], [ 0, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gbaudio_module_enable_rx(ptr noundef readonly %codec, ptr noundef readonly %module, i32 noundef %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data_list.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 23
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %data_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %data_list.i
  br i1 %cmp.not.i, label %for.cond.i.do.end_crit_edge, label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %data.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %1 = ptrtoint ptr %data.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data.0.i, align 4
  %cmp3.i = icmp eq i32 %2, %id
  br i1 %cmp3.i, label %find_data.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

find_data.exit:                                   ; preds = %for.body.i
  %data.0.i.le = getelementptr i8, ptr %.pn.i, i32 -12
  %tobool.not = icmp eq ptr %data.0.i.le, null
  br i1 %tobool.not, label %find_data.exit.do.end_crit_edge, label %if.end

find_data.exit.do.end_crit_edge:                  ; preds = %find_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %find_data.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge
  %3 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %module, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.25, i32 noundef %id) #12
  br label %cleanup

if.end:                                           ; preds = %find_data.exit
  %arrayidx = getelementptr i8, ptr %.pn.i, i32 12
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %dai_list.i = getelementptr inbounds %struct.gbaudio_codec_info, ptr %codec, i32 0, i32 3
  br label %for.cond.i205

for.cond.i205:                                    ; preds = %for.body.i207.for.cond.i205_crit_edge, %if.end
  %.pn.in.i202 = phi ptr [ %dai_list.i, %if.end ], [ %.pn.i203, %for.body.i207.for.cond.i205_crit_edge ]
  %7 = ptrtoint ptr %.pn.in.i202 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i203 = load ptr, ptr %.pn.in.i202, align 4
  %cmp.not.i204 = icmp eq ptr %.pn.i203, %dai_list.i
  br i1 %cmp.not.i204, label %for.cond.i205.do.end6_crit_edge, label %for.body.i207

for.cond.i205.do.end6_crit_edge:                  ; preds = %for.cond.i205
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

for.body.i207:                                    ; preds = %for.cond.i205
  %dai.0.i = getelementptr i8, ptr %.pn.i203, i32 -36
  %8 = ptrtoint ptr %dai.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dai.0.i, align 4
  %cmp3.i206 = icmp eq i32 %9, %id
  br i1 %cmp3.i206, label %find_dai_stream_params.exit, label %for.body.i207.for.cond.i205_crit_edge

for.body.i207.for.cond.i205_crit_edge:            ; preds = %for.body.i207
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i205

find_dai_stream_params.exit:                      ; preds = %for.body.i207
  %arrayidx.i = getelementptr i8, ptr %.pn.i203, i32 -16
  %tobool2.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool2.not, label %find_dai_stream_params.exit.do.end6_crit_edge, label %if.end8

find_dai_stream_params.exit.do.end6_crit_edge:    ; preds = %find_dai_stream_params.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end6:                                          ; preds = %find_dai_stream_params.exit.do.end6_crit_edge, %for.cond.i205.do.end6_crit_edge
  %10 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %codec, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.28) #12
  br label %cleanup

if.end8:                                          ; preds = %find_dai_stream_params.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp slt i32 %6, 1
  br i1 %cmp, label %if.then9, label %if.end8.if.end38_crit_edge

if.end8.if.end38_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then9:                                         ; preds = %if.end8
  %connection = getelementptr i8, ptr %.pn.i, i32 -4
  %12 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %connection, align 4
  %hd_cport_id = getelementptr inbounds %struct.gb_connection, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %hd_cport_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hd_cport_id, align 4
  %call11 = tail call i32 @gb_audio_apbridgea_register_cport(ptr noundef %13, i16 noundef zeroext 0, i16 noundef zeroext %15, i8 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end25, label %do.body14

do.body14:                                        ; preds = %if.then9
  %call15 = tail call i32 @___ratelimit(ptr noundef nonnull @gbaudio_module_enable_rx._rs, ptr noundef nonnull @.str.59) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.body14.cleanup_crit_edge, label %do.end20

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end20:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %module, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.32, i32 noundef %call11) #12
  br label %cleanup

if.end25:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_module_enable_rx.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_module_enable_rx, %if.end38.thread)) #9
          to label %if.end38 [label %if.end38.thread], !srcloc !344

if.end38.thread:                                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %module, align 4
  %conv = zext i16 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_module_enable_rx.__UNIQUE_ID_ddebug244, ptr noundef %20, ptr noundef nonnull @.str.34, i32 noundef %conv) #9
  br label %if.then41

if.end38:                                         ; preds = %if.end25, %if.end8.if.end38_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp39 = icmp slt i32 %6, 2
  br i1 %cmp39, label %if.end38.if.then41_crit_edge, label %if.end38.if.end82_crit_edge

if.end38.if.end82_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

if.end38.if.then41_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41

if.then41:                                        ; preds = %if.end38.if.then41_crit_edge, %if.end38.thread
  %format42 = getelementptr i8, ptr %.pn.i203, i32 -8
  %21 = ptrtoint ptr %format42 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %format42, align 4
  %channels43 = getelementptr i8, ptr %.pn.i203, i32 -11
  %23 = ptrtoint ptr %channels43 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %channels43, align 1
  %rate44 = getelementptr i8, ptr %.pn.i203, i32 -4
  %25 = ptrtoint ptr %rate44 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rate44, align 4
  %sig_bits45 = getelementptr i8, ptr %.pn.i203, i32 -12
  %27 = ptrtoint ptr %sig_bits45 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %sig_bits45, align 4
  %connection46 = getelementptr i8, ptr %.pn.i, i32 -4
  %29 = ptrtoint ptr %connection46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %connection46, align 4
  %intf_cport_id = getelementptr inbounds %struct.gb_connection, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %intf_cport_id to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %intf_cport_id, align 2
  %mgmt_connection = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 21
  %33 = ptrtoint ptr %mgmt_connection to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mgmt_connection, align 4
  %call47 = tail call i32 @gb_audio_gb_set_pcm(ptr noundef %34, i16 noundef zeroext %32, i32 noundef %22, i32 noundef %26, i8 noundef zeroext %24, i8 noundef zeroext %28) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end61, label %do.body50

do.body50:                                        ; preds = %if.then41
  %call51 = tail call i32 @___ratelimit(ptr noundef nonnull @gbaudio_module_enable_rx._rs.64, ptr noundef nonnull @.str.59) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %do.body50.cleanup_crit_edge, label %do.end56

do.body50.cleanup_crit_edge:                      ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end56:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %module, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.37, i32 noundef %call47) #12
  br label %cleanup

if.end61:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_module_enable_rx.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_module_enable_rx, %if.end82.thread)) #9
          to label %if.end82 [label %if.end82.thread], !srcloc !344

if.end82.thread:                                  ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %module, align 4
  %conv78 = zext i16 %32 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_module_enable_rx.__UNIQUE_ID_ddebug245, ptr noundef %39, ptr noundef nonnull @.str.39, i32 noundef %conv78) #9
  br label %if.then85

if.end82:                                         ; preds = %if.end61, %if.end38.if.end82_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp83 = icmp slt i32 %6, 3
  br i1 %cmp83, label %if.end82.if.then85_crit_edge, label %if.end82.cleanup_crit_edge

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end82.if.then85_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then85

if.then85:                                        ; preds = %if.end82.if.then85_crit_edge, %if.end82.thread
  %connection86 = getelementptr i8, ptr %.pn.i, i32 -4
  %40 = ptrtoint ptr %connection86 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %connection86, align 4
  %intf_cport_id87 = getelementptr inbounds %struct.gb_connection, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %intf_cport_id87 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %intf_cport_id87, align 2
  %mgmt_connection88 = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 21
  %44 = ptrtoint ptr %mgmt_connection88 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mgmt_connection88, align 4
  %call89 = tail call i32 @gb_audio_gb_set_rx_data_size(ptr noundef %45, i16 noundef zeroext %43, i16 noundef zeroext 192) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end103, label %do.body92

do.body92:                                        ; preds = %if.then85
  %call93 = tail call i32 @___ratelimit(ptr noundef nonnull @gbaudio_module_enable_rx._rs.67, ptr noundef nonnull @.str.59) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %do.body92.cleanup_crit_edge, label %do.end98

do.body92.cleanup_crit_edge:                      ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end98:                                         ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %module, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.69, i32 noundef %call89) #12
  br label %cleanup

if.end103:                                        ; preds = %if.then85
  %48 = ptrtoint ptr %mgmt_connection88 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mgmt_connection88, align 4
  %call105 = tail call i32 @gb_audio_gb_activate_rx(ptr noundef %49, i16 noundef zeroext %43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end119, label %do.body108

do.body108:                                       ; preds = %if.end103
  %call109 = tail call i32 @___ratelimit(ptr noundef nonnull @gbaudio_module_enable_rx._rs.71, ptr noundef nonnull @.str.59) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %do.body108.cleanup_crit_edge, label %do.end114

do.body108.cleanup_crit_edge:                     ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end114:                                        ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %module, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.73, i32 noundef %call105) #12
  br label %cleanup

if.end119:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 3, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_module_enable_rx.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_module_enable_rx, %if.then134)) #9
          to label %cleanup [label %if.then134], !srcloc !344

if.then134:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %module, align 4
  %conv136 = zext i16 %43 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_module_enable_rx.__UNIQUE_ID_ddebug246, ptr noundef %54, ptr noundef nonnull @.str.48, i32 noundef %conv136) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then134, %if.end119, %do.end114, %do.body108.cleanup_crit_edge, %do.end98, %do.body92.cleanup_crit_edge, %if.end82.cleanup_crit_edge, %do.end56, %do.body50.cleanup_crit_edge, %do.end20, %do.body14.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end6 ], [ -19, %do.end ], [ %call11, %do.end20 ], [ %call11, %do.body14.cleanup_crit_edge ], [ %call47, %do.end56 ], [ %call47, %do.body50.cleanup_crit_edge ], [ %call89, %do.end98 ], [ %call89, %do.body92.cleanup_crit_edge ], [ %call105, %do.end114 ], [ %call105, %do.body108.cleanup_crit_edge ], [ 0, %if.then134 ], [ 0, %if.end82.cleanup_crit_edge ], [ 0, %if.end119 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gbaudio_module_disable_rx(ptr noundef readonly %module, i32 noundef %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data_list.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 23
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %data_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %data_list.i
  br i1 %cmp.not.i, label %for.cond.i.do.end_crit_edge, label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %data.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %1 = ptrtoint ptr %data.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data.0.i, align 4
  %cmp3.i = icmp eq i32 %2, %id
  br i1 %cmp3.i, label %find_data.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

find_data.exit:                                   ; preds = %for.body.i
  %data.0.i.le = getelementptr i8, ptr %.pn.i, i32 -12
  %tobool.not = icmp eq ptr %data.0.i.le, null
  br i1 %tobool.not, label %find_data.exit.do.end_crit_edge, label %if.end

find_data.exit.do.end_crit_edge:                  ; preds = %find_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %find_data.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge
  %3 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %module, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.25, i32 noundef %id) #12
  br label %cleanup

if.end:                                           ; preds = %find_data.exit
  %arrayidx = getelementptr i8, ptr %.pn.i, i32 12
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp sgt i32 %6, 2
  br i1 %cmp, label %if.then1, label %if.end29

if.then1:                                         ; preds = %if.end
  %connection = getelementptr i8, ptr %.pn.i, i32 -4
  %7 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %connection, align 4
  %intf_cport_id = getelementptr inbounds %struct.gb_connection, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %intf_cport_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %intf_cport_id, align 2
  %mgmt_connection = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 21
  %11 = ptrtoint ptr %mgmt_connection to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mgmt_connection, align 4
  %call2 = tail call i32 @gb_audio_gb_deactivate_rx(ptr noundef %12, i16 noundef zeroext %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body17, label %do.body5

do.body5:                                         ; preds = %if.then1
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @gbaudio_module_disable_rx._rs, ptr noundef nonnull @.str.75) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body5.cleanup_crit_edge, label %do.end11

do.body5.cleanup_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %module, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.77, i32 noundef %call2) #12
  br label %cleanup

do.body17:                                        ; preds = %if.then1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_module_disable_rx.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_module_disable_rx, %if.then22)) #9
          to label %if.end29.thread [label %if.then22], !srcloc !344

if.then22:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %module, align 4
  %conv = zext i16 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_module_disable_rx.__UNIQUE_ID_ddebug247, ptr noundef %16, ptr noundef nonnull @.str.53, i32 noundef %conv) #9
  br label %if.end29.thread

if.end29.thread:                                  ; preds = %if.then22, %do.body17
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %arrayidx, align 4
  br label %if.then32

if.end29:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp30 = icmp sgt i32 %6, 0
  br i1 %cmp30, label %if.end29.if.then32_crit_edge, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29.if.then32_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

if.then32:                                        ; preds = %if.end29.if.then32_crit_edge, %if.end29.thread
  %connection33 = getelementptr i8, ptr %.pn.i, i32 -4
  %18 = ptrtoint ptr %connection33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %connection33, align 4
  %hd_cport_id = getelementptr inbounds %struct.gb_connection, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %hd_cport_id to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %hd_cport_id, align 4
  %call35 = tail call i32 @gb_audio_apbridgea_unregister_cport(ptr noundef %19, i16 noundef zeroext 0, i16 noundef zeroext %21, i8 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %do.body50, label %do.body38

do.body38:                                        ; preds = %if.then32
  %call39 = tail call i32 @___ratelimit(ptr noundef nonnull @gbaudio_module_disable_rx._rs.79, ptr noundef nonnull @.str.75) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %do.body38.cleanup_crit_edge, label %do.end44

do.body38.cleanup_crit_edge:                      ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end44:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %module, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.56, i32 noundef %call35) #12
  br label %cleanup

do.body50:                                        ; preds = %if.then32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_module_disable_rx.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_module_disable_rx, %if.then62)) #9
          to label %do.end67 [label %if.then62], !srcloc !344

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %module, align 4
  %conv64 = zext i16 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_module_disable_rx.__UNIQUE_ID_ddebug248, ptr noundef %25, ptr noundef nonnull @.str.58, i32 noundef %conv64) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then62, %do.body50
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end67, %do.end44, %do.body38.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %do.end11, %do.body5.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %call2, %do.end11 ], [ %call2, %do.body5.cleanup_crit_edge ], [ %call35, %do.end44 ], [ %call35, %do.body38.cleanup_crit_edge ], [ 0, %do.end67 ], [ 0, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gbaudio_register_module(ptr noundef %module) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gbcodec, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %module, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.11) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %component = getelementptr inbounds %struct.gbaudio_codec_info, ptr %0, i32 0, i32 1
  %3 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %component, align 4
  %card1 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card1, align 4
  %snd_card = getelementptr inbounds %struct.snd_soc_card, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %snd_card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %snd_card, align 4
  %controls_rwsem = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 14
  tail call void @down_write(ptr noundef %controls_rwsem) #9
  %num_dais = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 24
  %9 = ptrtoint ptr %num_dais to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_dais, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not = icmp eq i32 %10, 0
  br i1 %tobool2.not, label %if.end10, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = load ptr, ptr @gbcodec, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.14, i32 noundef %10) #12
  tail call void @up_write(ptr noundef %controls_rwsem) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %14 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card1, align 4
  %jack_mask.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 16
  %16 = ptrtoint ptr %jack_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %jack_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.end10.if.end15_crit_edge, label %if.end.i

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end.i:                                         ; preds = %if.end10
  %jack_name.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 13
  %dev_id.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 1
  %18 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dev_id.i, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %jack_name.i, i32 noundef 32, ptr noundef nonnull @.str.82, i32 noundef %19) #9
  %20 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %module, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %21, i32 noundef 20, i32 noundef 3520) #9
  %tobool2.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.then13_crit_edge, label %if.end4.i

if.end.i.if.then13_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.end4.i:                                        ; preds = %if.end.i
  %pin.i = getelementptr inbounds %struct.snd_soc_jack_pin, ptr %call.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %pin.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %jack_name.i, ptr %pin.i, align 4
  %23 = ptrtoint ptr %jack_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %jack_mask.i, align 4
  %mask.i = getelementptr inbounds %struct.snd_soc_jack_pin, ptr %call.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %mask.i, align 4
  %headset11.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 19
  %call13.i = tail call i32 @snd_soc_card_jack_new(ptr noundef %15, ptr noundef %jack_name.i, i32 noundef %24, ptr noundef %headset11.i, ptr noundef nonnull %call.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end17.i, label %do.end.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %module, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.83) #12
  br label %if.then13

if.end17.i:                                       ; preds = %if.end4.i
  %list.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 19, i32 1
  %jack_list.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 39
  %28 = ptrtoint ptr %jack_list.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %jack_list.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %jack_list.i, ptr noundef %29) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end17.i.list_add.exit.i_crit_edge

if.end17.i.list_add.exit.i_crit_edge:             ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 19, i32 1, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %jack_list.i, ptr %prev3.i.i.i, align 4
  %33 = ptrtoint ptr %jack_list.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %list.i, ptr %jack_list.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end17.i.list_add.exit.i_crit_edge
  %button_mask.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 17
  %34 = ptrtoint ptr %button_mask.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %button_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool19.not.i = icmp eq i32 %35, 0
  br i1 %tobool19.not.i, label %list_add.exit.i.if.end15_crit_edge, label %if.end21.i

list_add.exit.i.if.end15_crit_edge:               ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end21.i:                                       ; preds = %list_add.exit.i
  %button_name.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 14
  %36 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dev_id.i, align 4
  %call24.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %button_name.i, i32 noundef 32, ptr noundef nonnull @.str.85, i32 noundef %37) #9
  %38 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %module, align 4
  %call.i191.i = tail call noalias ptr @devm_kmalloc(ptr noundef %39, i32 noundef 20, i32 noundef 3520) #9
  %tobool27.not.i = icmp eq ptr %call.i191.i, null
  br i1 %tobool27.not.i, label %if.end21.i.free_jacks.i_crit_edge, label %if.end29.i

if.end21.i.free_jacks.i_crit_edge:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_jacks.i

if.end29.i:                                       ; preds = %if.end21.i
  %pin32.i = getelementptr inbounds %struct.snd_soc_jack_pin, ptr %call.i191.i, i32 0, i32 1
  %40 = ptrtoint ptr %pin32.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %button_name.i, ptr %pin32.i, align 4
  %41 = ptrtoint ptr %button_mask.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %button_mask.i, align 4
  %mask34.i = getelementptr inbounds %struct.snd_soc_jack_pin, ptr %call.i191.i, i32 0, i32 2
  %43 = ptrtoint ptr %mask34.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %mask34.i, align 4
  %button38.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 20
  %call40.i = tail call i32 @snd_soc_card_jack_new(ptr noundef %15, ptr noundef %button_name.i, i32 noundef %42, ptr noundef %button38.i, ptr noundef nonnull %call.i191.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.end47.i, label %if.end29.i.free_jacks.sink.split.i_crit_edge

if.end29.i.free_jacks.sink.split.i_crit_edge:     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_jacks.sink.split.i

if.end47.i:                                       ; preds = %if.end29.i
  %list49.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 20, i32 1
  %44 = ptrtoint ptr %jack_list.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %jack_list.i, align 4
  %call.i.i192.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list49.i, ptr noundef %jack_list.i, ptr noundef %45) #9
  br i1 %call.i.i192.i, label %if.end.i.i195.i, label %if.end47.i.list_add.exit196.i_crit_edge

if.end47.i.list_add.exit196.i_crit_edge:          ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit196.i

if.end.i.i195.i:                                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i193.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i193.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %list49.i, ptr %prev1.i.i193.i, align 4
  %47 = ptrtoint ptr %list49.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %45, ptr %list49.i, align 4
  %prev3.i.i194.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 20, i32 1, i32 1
  %48 = ptrtoint ptr %prev3.i.i194.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %jack_list.i, ptr %prev3.i.i194.i, align 4
  %49 = ptrtoint ptr %jack_list.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %list49.i, ptr %jack_list.i, align 4
  br label %list_add.exit196.i

list_add.exit196.i:                               ; preds = %if.end.i.i195.i, %if.end47.i.list_add.exit196.i_crit_edge
  %50 = ptrtoint ptr %button_mask.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %button_mask.i, align 4
  %and.i = and i32 %51, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool52.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool52.not.i, label %list_add.exit196.i.if.end65.i_crit_edge, label %if.then53.i

list_add.exit196.i.if.end65.i_crit_edge:          ; preds = %list_add.exit196.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.i

if.then53.i:                                      ; preds = %list_add.exit196.i
  %jack56.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 20, i32 0, i32 1
  %52 = ptrtoint ptr %jack56.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %jack56.i, align 4
  %call57.i = tail call i32 @snd_jack_set_key(ptr noundef %53, i32 noundef 16384, i32 noundef 226) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.then53.i.if.end65.i_crit_edge, label %if.then53.i.free_jacks.sink.split.i_crit_edge

if.then53.i.free_jacks.sink.split.i_crit_edge:    ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_jacks.sink.split.i

if.then53.i.if.end65.i_crit_edge:                 ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then53.i.if.end65.i_crit_edge, %list_add.exit196.i.if.end65.i_crit_edge
  %54 = ptrtoint ptr %button_mask.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %button_mask.i, align 4
  %and67.i = and i32 %55, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i)
  %tobool68.not.i = icmp eq i32 %and67.i, 0
  br i1 %tobool68.not.i, label %if.end65.i.if.end81.i_crit_edge, label %if.then69.i

if.end65.i.if.end81.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81.i

if.then69.i:                                      ; preds = %if.end65.i
  %jack72.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 20, i32 0, i32 1
  %56 = ptrtoint ptr %jack72.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %jack72.i, align 4
  %call73.i = tail call i32 @snd_jack_set_key(ptr noundef %57, i32 noundef 8192, i32 noundef 582) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %tobool74.not.i = icmp eq i32 %call73.i, 0
  br i1 %tobool74.not.i, label %if.then69.i.if.end81.i_crit_edge, label %if.then69.i.free_jacks.sink.split.i_crit_edge

if.then69.i.free_jacks.sink.split.i_crit_edge:    ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_jacks.sink.split.i

if.then69.i.if.end81.i_crit_edge:                 ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.then69.i.if.end81.i_crit_edge, %if.end65.i.if.end81.i_crit_edge
  %58 = ptrtoint ptr %button_mask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %button_mask.i, align 4
  %and83.i = and i32 %59, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.i)
  %tobool84.not.i = icmp eq i32 %and83.i, 0
  br i1 %tobool84.not.i, label %if.end81.i.if.end97.i_crit_edge, label %if.then85.i

if.end81.i.if.end97.i_crit_edge:                  ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97.i

if.then85.i:                                      ; preds = %if.end81.i
  %jack88.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 20, i32 0, i32 1
  %60 = ptrtoint ptr %jack88.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %jack88.i, align 4
  %call89.i = tail call i32 @snd_jack_set_key(ptr noundef %61, i32 noundef 4096, i32 noundef 115) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.i)
  %tobool90.not.i = icmp eq i32 %call89.i, 0
  br i1 %tobool90.not.i, label %if.then85.i.if.end97.i_crit_edge, label %if.then85.i.free_jacks.sink.split.i_crit_edge

if.then85.i.free_jacks.sink.split.i_crit_edge:    ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_jacks.sink.split.i

if.then85.i.if.end97.i_crit_edge:                 ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.then85.i.if.end97.i_crit_edge, %if.end81.i.if.end97.i_crit_edge
  %62 = ptrtoint ptr %button_mask.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %button_mask.i, align 4
  %and99.i = and i32 %63, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99.i)
  %tobool100.not.i = icmp eq i32 %and99.i, 0
  br i1 %tobool100.not.i, label %if.end97.i.if.end15_crit_edge, label %if.then101.i

if.end97.i.if.end15_crit_edge:                    ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then101.i:                                     ; preds = %if.end97.i
  %jack104.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 20, i32 0, i32 1
  %64 = ptrtoint ptr %jack104.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %jack104.i, align 4
  %call105.i = tail call i32 @snd_jack_set_key(ptr noundef %65, i32 noundef 2048, i32 noundef 114) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105.i)
  %tobool106.not.i = icmp eq i32 %call105.i, 0
  br i1 %tobool106.not.i, label %if.then101.i.if.end15_crit_edge, label %if.then101.i.free_jacks.sink.split.i_crit_edge

if.then101.i.free_jacks.sink.split.i_crit_edge:   ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_jacks.sink.split.i

if.then101.i.if.end15_crit_edge:                  ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

free_jacks.sink.split.i:                          ; preds = %if.then101.i.free_jacks.sink.split.i_crit_edge, %if.then85.i.free_jacks.sink.split.i_crit_edge, %if.then69.i.free_jacks.sink.split.i_crit_edge, %if.then53.i.free_jacks.sink.split.i_crit_edge, %if.end29.i.free_jacks.sink.split.i_crit_edge
  %.str.90.sink.i = phi ptr [ @.str.87, %if.end29.i.free_jacks.sink.split.i_crit_edge ], [ @.str.90, %if.then53.i.free_jacks.sink.split.i_crit_edge ], [ @.str.93, %if.then69.i.free_jacks.sink.split.i_crit_edge ], [ @.str.96, %if.then85.i.free_jacks.sink.split.i_crit_edge ], [ @.str.90, %if.then101.i.free_jacks.sink.split.i_crit_edge ]
  %ret.0.ph.i = phi i32 [ %call40.i, %if.end29.i.free_jacks.sink.split.i_crit_edge ], [ %call57.i, %if.then53.i.free_jacks.sink.split.i_crit_edge ], [ %call73.i, %if.then69.i.free_jacks.sink.split.i_crit_edge ], [ %call89.i, %if.then85.i.free_jacks.sink.split.i_crit_edge ], [ %call105.i, %if.then101.i.free_jacks.sink.split.i_crit_edge ]
  %66 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %module, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull %.str.90.sink.i) #12
  br label %free_jacks.i

free_jacks.i:                                     ; preds = %free_jacks.sink.split.i, %if.end21.i.free_jacks.i_crit_edge
  %ret.0.i = phi i32 [ -12, %if.end21.i.free_jacks.i_crit_edge ], [ %ret.0.ph.i, %free_jacks.sink.split.i ]
  %68 = ptrtoint ptr %jack_list.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %jack_list.i, align 4
  %cmp.not199.i = icmp eq ptr %69, %jack_list.i
  br i1 %cmp.not199.i, label %free_jacks.i.if.then13_crit_edge, label %for.body.lr.ph.i

free_jacks.i.if.then13_crit_edge:                 ; preds = %free_jacks.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

for.body.lr.ph.i:                                 ; preds = %free_jacks.i
  %snd_card.i = getelementptr inbounds %struct.snd_soc_card, ptr %15, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in200.i = phi ptr [ %69, %for.body.lr.ph.i ], [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ]
  %70 = ptrtoint ptr %.pn.in200.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pn.i = load ptr, ptr %.pn.in200.i, align 4
  %71 = ptrtoint ptr %snd_card.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %snd_card.i, align 4
  %jack123.i = getelementptr i8, ptr %.pn.in200.i, i32 -128
  %73 = ptrtoint ptr %jack123.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %jack123.i, align 4
  tail call void @snd_device_free(ptr noundef %72, ptr noundef %74) #9
  %call.i.i197.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in200.i) #9
  br i1 %call.i.i197.i, label %if.end.i.i198.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i198.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in200.i, i32 0, i32 1
  %75 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i.i.i, align 4
  %77 = ptrtoint ptr %.pn.in200.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %.pn.in200.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev1.i.i.i.i, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %78, ptr %76, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i198.i, %for.body.i.list_del.exit.i_crit_edge
  %81 = ptrtoint ptr %.pn.in200.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in200.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in200.i, i32 0, i32 1
  %82 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %jack_list.i
  br i1 %cmp.not.i, label %gbaudio_init_jack.exit, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

gbaudio_init_jack.exit:                           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool12.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool12.not, label %gbaudio_init_jack.exit.if.end15_crit_edge, label %gbaudio_init_jack.exit.if.then13_crit_edge

gbaudio_init_jack.exit.if.then13_crit_edge:       ; preds = %gbaudio_init_jack.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

gbaudio_init_jack.exit.if.end15_crit_edge:        ; preds = %gbaudio_init_jack.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then13:                                        ; preds = %gbaudio_init_jack.exit.if.then13_crit_edge, %free_jacks.i.if.then13_crit_edge, %do.end.i, %if.end.i.if.then13_crit_edge
  %retval.0.i116124 = phi i32 [ %ret.0.i, %gbaudio_init_jack.exit.if.then13_crit_edge ], [ %ret.0.i, %free_jacks.i.if.then13_crit_edge ], [ -12, %if.end.i.if.then13_crit_edge ], [ %call13.i, %do.end.i ]
  tail call void @up_write(ptr noundef %controls_rwsem) #9
  br label %cleanup

if.end15:                                         ; preds = %gbaudio_init_jack.exit.if.end15_crit_edge, %if.then101.i.if.end15_crit_edge, %if.end97.i.if.end15_crit_edge, %list_add.exit.i.if.end15_crit_edge, %if.end10.if.end15_crit_edge
  %dapm_widgets = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 33
  %83 = ptrtoint ptr %dapm_widgets to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dapm_widgets, align 4
  %tobool16.not = icmp eq ptr %84, null
  br i1 %tobool16.not, label %if.end15.if.end20_crit_edge, label %if.then17

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %dapm = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 17
  %num_dapm_widgets = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 26
  %85 = ptrtoint ptr %num_dapm_widgets to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num_dapm_widgets, align 4
  %call19 = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm, ptr noundef nonnull %84, i32 noundef %86) #9
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end15.if.end20_crit_edge
  %controls = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 32
  %87 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %controls, align 4
  %tobool21.not = icmp eq ptr %88, null
  br i1 %tobool21.not, label %if.end20.if.end25_crit_edge, label %if.then22

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %num_controls = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 25
  %89 = ptrtoint ptr %num_controls to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %num_controls, align 4
  %call24 = tail call i32 @snd_soc_add_component_controls(ptr noundef %4, ptr noundef nonnull %88, i32 noundef %90) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end20.if.end25_crit_edge
  %dapm_routes = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 34
  %91 = ptrtoint ptr %dapm_routes to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dapm_routes, align 4
  %tobool26.not = icmp eq ptr %92, null
  br i1 %tobool26.not, label %if.end25.if.end31_crit_edge, label %if.then27

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %dapm28 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 17
  %num_dapm_routes = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 27
  %93 = ptrtoint ptr %num_dapm_routes to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_dapm_routes, align 4
  %call30 = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm28, ptr noundef nonnull %92, i32 noundef %94) #9
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end25.if.end31_crit_edge
  %95 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %card1, align 4
  %instantiated = getelementptr inbounds %struct.snd_soc_card, ptr %96, i32 0, i32 56
  %97 = ptrtoint ptr %instantiated to i32
  call void @__asan_load1_noabort(i32 %97)
  %bf.load = load i8, ptr %instantiated, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool33.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool33.not, label %if.end31.if.end49_crit_edge, label %if.then34

if.end31.if.end49_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then34:                                        ; preds = %if.end31
  %dapm36 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 17
  %call37 = tail call i32 @gbaudio_dapm_link_component_dai_widgets(ptr noundef %96, ptr noundef %dapm36) #9
  %jack_list = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 39
  %98 = ptrtoint ptr %jack_list to i32
  call void @__asan_load4_noabort(i32 %98)
  %.pn126 = load ptr, ptr %jack_list, align 4
  %cmp.not127 = icmp eq ptr %.pn126, %jack_list
  br i1 %cmp.not127, label %if.then34.if.end49_crit_edge, label %if.then34.for.body_crit_edge

if.then34.for.body_crit_edge:                     ; preds = %if.then34
  br label %for.body

if.then34.if.end49_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then34.for.body_crit_edge
  %.pn128 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn126, %if.then34.for.body_crit_edge ]
  %99 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %card1, align 4
  %snd_card40 = getelementptr inbounds %struct.snd_soc_card, ptr %100, i32 0, i32 6
  %101 = ptrtoint ptr %snd_card40 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %snd_card40, align 4
  %jack42 = getelementptr i8, ptr %.pn128, i32 -128
  %103 = ptrtoint ptr %jack42 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %jack42, align 4
  %call43 = tail call i32 @snd_device_register(ptr noundef %102, ptr noundef %104) #9
  %105 = ptrtoint ptr %.pn128 to i32
  call void @__asan_load4_noabort(i32 %105)
  %.pn = load ptr, ptr %.pn128, align 4
  %cmp.not = icmp eq ptr %.pn, %jack_list
  br i1 %cmp.not, label %for.body.if.end49_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.if.end49_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.end49:                                         ; preds = %for.body.if.end49_crit_edge, %if.then34.if.end49_crit_edge, %if.end31.if.end49_crit_edge
  %106 = load ptr, ptr @gbcodec, align 4
  %lock = getelementptr inbounds %struct.gbaudio_codec_info, ptr %106, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %list50 = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 8
  %107 = load ptr, ptr @gbcodec, align 4
  %module_list = getelementptr inbounds %struct.gbaudio_codec_info, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %module_list to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %module_list, align 4
  %call.i.i117 = tail call zeroext i1 @__list_add_valid(ptr noundef %list50, ptr noundef %module_list, ptr noundef %109) #9
  br i1 %call.i.i117, label %if.end.i.i, label %if.end49.list_add.exit_crit_edge

if.end49.list_add.exit_crit_edge:                 ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %list50, ptr %prev1.i.i, align 4
  %111 = ptrtoint ptr %list50 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %109, ptr %list50, align 4
  %prev3.i.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 8, i32 1
  %112 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %module_list, ptr %prev3.i.i, align 4
  %113 = ptrtoint ptr %module_list to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %list50, ptr %module_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end49.list_add.exit_crit_edge
  %114 = load ptr, ptr @gbcodec, align 4
  %lock51 = getelementptr inbounds %struct.gbaudio_codec_info, ptr %114, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %lock51) #9
  %115 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %card1, align 4
  %instantiated53 = getelementptr inbounds %struct.snd_soc_card, ptr %116, i32 0, i32 56
  %117 = ptrtoint ptr %instantiated53 to i32
  call void @__asan_load1_noabort(i32 %117)
  %bf.load54 = load i8, ptr %instantiated53, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load54)
  %tobool57.not = icmp sgt i8 %bf.load54, -1
  br i1 %tobool57.not, label %list_add.exit.do.body62_crit_edge, label %if.then58

list_add.exit.do.body62_crit_edge:                ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body62

if.then58:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call60 = tail call i32 @snd_soc_dapm_new_widgets(ptr noundef %116) #9
  br label %do.body62

do.body62:                                        ; preds = %if.then58, %list_add.exit.do.body62_crit_edge
  %ret.0 = phi i32 [ %call60, %if.then58 ], [ 0, %list_add.exit.do.body62_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_register_module.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_register_module, %if.then69)) #9
          to label %do.end73 [label %if.then69], !srcloc !344

if.then69:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #11
  %dev70 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %118 = ptrtoint ptr %dev70 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev70, align 4
  %name = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_register_module.__UNIQUE_ID_ddebug252, ptr noundef %119, ptr noundef nonnull @.str.16, ptr noundef %name) #9
  br label %do.end73

do.end73:                                         ; preds = %if.then69, %do.body62
  tail call void @up_write(ptr noundef %controls_rwsem) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end73, %if.then13, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end6 ], [ %retval.0.i116124, %if.then13 ], [ %ret.0, %do.end73 ], [ -11, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_new_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_add_routes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gbaudio_dapm_link_component_dai_widgets(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_new_widgets(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gbaudio_unregister_module(ptr noundef %module) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gbcodec, align 4
  %component = getelementptr inbounds %struct.gbaudio_codec_info, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %component, align 4
  %card1 = getelementptr inbounds %struct.snd_soc_component, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card1, align 4
  %snd_card = getelementptr inbounds %struct.snd_soc_card, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %snd_card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %snd_card, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_unregister_module.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_unregister_module, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !344

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_unregister_module.__UNIQUE_ID_ddebug254, ptr noundef %8, ptr noundef nonnull @.str.18, ptr noundef %name) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %controls_rwsem = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 14
  tail call void @down_write(ptr noundef %controls_rwsem) #9
  %9 = load ptr, ptr @gbcodec, align 4
  %lock = getelementptr inbounds %struct.gbaudio_codec_info, ptr %9, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  tail call fastcc void @gbaudio_codec_cleanup(ptr noundef %module)
  %list = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del.exit_crit_edge

do.end.list_del.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end.list_del.exit_crit_edge
  %16 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 8, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_unregister_module.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_unregister_module, %if.then16)) #9
          to label %do.end22 [label %if.then16], !srcloc !344

if.then16:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev17 = getelementptr inbounds %struct.snd_soc_component, ptr %2, i32 0, i32 3
  %18 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev17, align 4
  %name18 = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_unregister_module.__UNIQUE_ID_ddebug255, ptr noundef %19, ptr noundef nonnull @.str.19, ptr noundef %name18) #9
  br label %do.end22

do.end22:                                         ; preds = %if.then16, %list_del.exit
  %20 = load ptr, ptr @gbcodec, align 4
  %lock23 = getelementptr inbounds %struct.gbaudio_codec_info, ptr %20, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %lock23) #9
  %jack_list = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 39
  %21 = ptrtoint ptr %jack_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %jack_list, align 4
  %cmp.not247 = icmp eq ptr %22, %jack_list
  br i1 %cmp.not247, label %do.end22.for.end_crit_edge, label %for.body.lr.ph

do.end22.for.end_crit_edge:                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end22
  %headset = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 19
  %button = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in248 = phi ptr [ %22, %for.body.lr.ph ], [ %.pn251, %for.inc.for.body_crit_edge ]
  %jack.0250 = getelementptr i8, ptr %.pn.in248, i32 -220
  %23 = ptrtoint ptr %.pn.in248 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn251 = load ptr, ptr %.pn.in248, align 4
  %cmp34 = icmp eq ptr %jack.0250, %headset
  br i1 %cmp34, label %for.body.do.body43_crit_edge, label %if.end40

for.body.do.body43_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

if.end40:                                         ; preds = %for.body
  %cmp36 = icmp eq ptr %jack.0250, %button
  br i1 %cmp36, label %if.end40.do.body43_crit_edge, label %if.end40.for.inc_crit_edge

if.end40.for.inc_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end40.do.body43_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

do.body43:                                        ; preds = %if.end40.do.body43_crit_edge, %for.body.do.body43_crit_edge
  %mask.0239 = phi i32 [ -65536, %if.end40.do.body43_crit_edge ], [ 65535, %for.body.do.body43_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_unregister_module.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_unregister_module, %if.then55)) #9
          to label %do.end61 [label %if.then55], !srcloc !344

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %module, align 4
  %jack58 = getelementptr i8, ptr %.pn.in248, i32 -128
  %26 = ptrtoint ptr %jack58 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %jack58, align 4
  %id = getelementptr inbounds %struct.snd_jack, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_unregister_module.__UNIQUE_ID_ddebug256, ptr noundef %25, ptr noundef nonnull @.str.20, ptr noundef %29) #9
  br label %do.end61

do.end61:                                         ; preds = %if.then55, %do.body43
  tail call void @snd_soc_jack_report(ptr noundef %jack.0250, i32 noundef 0, i32 noundef %mask.0239) #9
  %30 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %card1, align 4
  %snd_card64 = getelementptr inbounds %struct.snd_soc_card, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %snd_card64 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %snd_card64, align 4
  %jack66 = getelementptr i8, ptr %.pn.in248, i32 -128
  %34 = ptrtoint ptr %jack66 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %jack66, align 4
  tail call void @snd_device_free(ptr noundef %33, ptr noundef %35) #9
  %call.i.i229 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in248) #9
  br i1 %call.i.i229, label %if.end.i.i232, label %do.end61.list_del.exit234_crit_edge

do.end61.list_del.exit234_crit_edge:              ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit234

if.end.i.i232:                                    ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i230 = getelementptr inbounds %struct.list_head, ptr %.pn.in248, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i230 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i230, align 4
  %38 = ptrtoint ptr %.pn.in248 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %.pn.in248, align 4
  %prev1.i.i.i231 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i231 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i231, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %list_del.exit234

list_del.exit234:                                 ; preds = %if.end.i.i232, %do.end61.list_del.exit234_crit_edge
  %42 = ptrtoint ptr %.pn.in248 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in248, align 4
  %prev.i233 = getelementptr inbounds %struct.list_head, ptr %.pn.in248, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i233 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i233, align 4
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit234, %if.end40.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn251, %jack_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end22.for.end_crit_edge
  %dapm_routes = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 34
  %44 = ptrtoint ptr %dapm_routes to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dapm_routes, align 4
  %tobool74.not = icmp eq ptr %45, null
  br i1 %tobool74.not, label %for.end.if.end96_crit_edge, label %do.body76

for.end.if.end96_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96

do.body76:                                        ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_unregister_module.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_unregister_module, %if.then88)) #9
          to label %do.end92 [label %if.then88], !srcloc !344

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #11
  %dev89 = getelementptr inbounds %struct.snd_soc_component, ptr %2, i32 0, i32 3
  %46 = ptrtoint ptr %dev89 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev89, align 4
  %num_dapm_routes = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 27
  %48 = ptrtoint ptr %num_dapm_routes to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_dapm_routes, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_unregister_module.__UNIQUE_ID_ddebug257, ptr noundef %47, ptr noundef nonnull @.str.21, i32 noundef %49) #9
  br label %do.end92

do.end92:                                         ; preds = %if.then88, %do.body76
  %dapm = getelementptr inbounds %struct.snd_soc_component, ptr %2, i32 0, i32 17
  %50 = ptrtoint ptr %dapm_routes to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dapm_routes, align 4
  %num_dapm_routes94 = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 27
  %52 = ptrtoint ptr %num_dapm_routes94 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_dapm_routes94, align 4
  %call95 = tail call i32 @snd_soc_dapm_del_routes(ptr noundef %dapm, ptr noundef %51, i32 noundef %53) #9
  br label %if.end96

if.end96:                                         ; preds = %do.end92, %for.end.if.end96_crit_edge
  %controls = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 32
  %54 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %controls, align 4
  %tobool97.not = icmp eq ptr %55, null
  br i1 %tobool97.not, label %if.end96.if.end121_crit_edge, label %do.body99

if.end96.if.end121_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121

do.body99:                                        ; preds = %if.end96
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_unregister_module.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_unregister_module, %if.then111)) #9
          to label %do.end115 [label %if.then111], !srcloc !344

if.then111:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #11
  %dev112 = getelementptr inbounds %struct.snd_soc_component, ptr %2, i32 0, i32 3
  %56 = ptrtoint ptr %dev112 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev112, align 4
  %num_controls = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 25
  %58 = ptrtoint ptr %num_controls to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_controls, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_unregister_module.__UNIQUE_ID_ddebug258, ptr noundef %57, ptr noundef nonnull @.str.22, i32 noundef %59) #9
  br label %do.end115

do.end115:                                        ; preds = %if.then111, %do.body99
  tail call void @up_write(ptr noundef %controls_rwsem) #9
  %60 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %controls, align 4
  %num_controls118 = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 25
  %62 = ptrtoint ptr %num_controls118 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_controls118, align 4
  %call119 = tail call i32 @gbaudio_remove_component_controls(ptr noundef %2, ptr noundef %61, i32 noundef %63) #9
  tail call void @down_write(ptr noundef %controls_rwsem) #9
  br label %if.end121

if.end121:                                        ; preds = %do.end115, %if.end96.if.end121_crit_edge
  %dapm_widgets = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 33
  %64 = ptrtoint ptr %dapm_widgets to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dapm_widgets, align 4
  %tobool122.not = icmp eq ptr %65, null
  br i1 %tobool122.not, label %if.end121.do.body146_crit_edge, label %do.body124

if.end121.do.body146_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body146

do.body124:                                       ; preds = %if.end121
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_unregister_module.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_unregister_module, %if.then136)) #9
          to label %do.end140 [label %if.then136], !srcloc !344

if.then136:                                       ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #11
  %dev137 = getelementptr inbounds %struct.snd_soc_component, ptr %2, i32 0, i32 3
  %66 = ptrtoint ptr %dev137 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev137, align 4
  %num_dapm_widgets = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 26
  %68 = ptrtoint ptr %num_dapm_widgets to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_dapm_widgets, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_unregister_module.__UNIQUE_ID_ddebug259, ptr noundef %67, ptr noundef nonnull @.str.23, i32 noundef %69) #9
  br label %do.end140

do.end140:                                        ; preds = %if.then136, %do.body124
  %dapm141 = getelementptr inbounds %struct.snd_soc_component, ptr %2, i32 0, i32 17
  %70 = ptrtoint ptr %dapm_widgets to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dapm_widgets, align 4
  %num_dapm_widgets143 = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 26
  %72 = ptrtoint ptr %num_dapm_widgets143 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_dapm_widgets143, align 4
  %call144 = tail call i32 @gbaudio_dapm_free_controls(ptr noundef %dapm141, ptr noundef %71, i32 noundef %73) #9
  br label %do.body146

do.body146:                                       ; preds = %do.end140, %if.end121.do.body146_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_unregister_module.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_unregister_module, %if.then158)) #9
          to label %do.end164 [label %if.then158], !srcloc !344

if.then158:                                       ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #11
  %dev159 = getelementptr inbounds %struct.snd_soc_component, ptr %2, i32 0, i32 3
  %74 = ptrtoint ptr %dev159 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev159, align 4
  %name160 = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_unregister_module.__UNIQUE_ID_ddebug260, ptr noundef %75, ptr noundef nonnull @.str.24, ptr noundef %name160) #9
  br label %do.end164

do.end164:                                        ; preds = %if.then158, %do.body146
  tail call void @up_write(ptr noundef %controls_rwsem) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gbaudio_codec_cleanup(ptr noundef %module) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_codec_cleanup.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_codec_cleanup, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !344

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr @gbcodec, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %name = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_codec_cleanup.__UNIQUE_ID_ddebug253, ptr noundef %2, ptr noundef nonnull @.str.101, ptr noundef %name) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %data_list = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 23
  %3 = ptrtoint ptr %data_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn44 = load ptr, ptr %data_list, align 4
  %cmp.not45 = icmp eq ptr %.pn44, %data_list
  br i1 %cmp.not45, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn46 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn44, %do.end.for.body_crit_edge ]
  %state = getelementptr i8, ptr %.pn46, i32 8
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %arrayidx8 = getelementptr i8, ptr %.pn46, i32 12
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9 = icmp sgt i32 %5, 0
  br i1 %cmp9, label %if.then10, label %for.body.if.end11_crit_edge

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then10:                                        ; preds = %for.body
  %8 = load ptr, ptr @gbcodec, align 4
  %module_list.i = getelementptr inbounds %struct.gbaudio_codec_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %module_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %module_list.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %10, %module_list.i
  br i1 %cmp.i.not.i.i, label %if.then10.if.end9.i_crit_edge, label %list_is_singular.exit.i

if.then10.if.end9.i_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

list_is_singular.exit.i:                          ; preds = %if.then10
  %prev.i.i = getelementptr inbounds %struct.gbaudio_codec_info, ptr %8, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %10, %12
  br i1 %cmp.i.not.i, label %if.then.i, label %list_is_singular.exit.i.if.end9.i_crit_edge

list_is_singular.exit.i.if.end9.i_crit_edge:      ; preds = %list_is_singular.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.then.i:                                        ; preds = %list_is_singular.exit.i
  %connection.i = getelementptr i8, ptr %.pn46, i32 -4
  %13 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %connection.i, align 4
  %call1.i = tail call i32 @gb_audio_apbridgea_stop_tx(ptr noundef %14, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i, label %if.then.i.if.end11_crit_edge

if.then.i.if.end11_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end.i:                                         ; preds = %if.then.i
  %15 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %connection.i, align 4
  %call5.i = tail call i32 @gb_audio_apbridgea_shutdown_tx(ptr noundef %16, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.end.i.if.end11_crit_edge

if.end.i.if.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i.if.end9.i_crit_edge, %list_is_singular.exit.i.if.end9.i_crit_edge, %if.then10.if.end9.i_crit_edge
  %connection10.i = getelementptr i8, ptr %.pn46, i32 -4
  %17 = ptrtoint ptr %connection10.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %connection10.i, align 4
  %hd_cport_id.i = getelementptr inbounds %struct.gb_connection, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %hd_cport_id.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %hd_cport_id.i, align 4
  %call12.i = tail call i32 @gb_audio_apbridgea_unregister_cport(ptr noundef %18, i16 noundef zeroext 0, i16 noundef zeroext %20, i8 noundef zeroext 1) #9
  %21 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %state, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end9.i, %if.end.i.if.end11_crit_edge, %if.then.i.if.end11_crit_edge, %for.body.if.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp12 = icmp sgt i32 %7, 0
  br i1 %cmp12, label %if.then13, label %if.end11.for.inc_crit_edge

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then13:                                        ; preds = %if.end11
  %22 = load ptr, ptr @gbcodec, align 4
  %module_list.i27 = getelementptr inbounds %struct.gbaudio_codec_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %module_list.i27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %module_list.i27, align 4
  %cmp.i.not.i.i28 = icmp eq ptr %24, %module_list.i27
  br i1 %cmp.i.not.i.i28, label %if.then13.if.end9.i42_crit_edge, label %list_is_singular.exit.i31

if.then13.if.end9.i42_crit_edge:                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i42

list_is_singular.exit.i31:                        ; preds = %if.then13
  %prev.i.i29 = getelementptr inbounds %struct.gbaudio_codec_info, ptr %22, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %prev.i.i29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i29, align 4
  %cmp.i.not.i30 = icmp eq ptr %24, %26
  br i1 %cmp.i.not.i30, label %if.then.i35, label %list_is_singular.exit.i31.if.end9.i42_crit_edge

list_is_singular.exit.i31.if.end9.i42_crit_edge:  ; preds = %list_is_singular.exit.i31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i42

if.then.i35:                                      ; preds = %list_is_singular.exit.i31
  %connection.i32 = getelementptr i8, ptr %.pn46, i32 -4
  %27 = ptrtoint ptr %connection.i32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %connection.i32, align 4
  %call1.i33 = tail call i32 @gb_audio_apbridgea_stop_rx(ptr noundef %28, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i33)
  %tobool2.not.i34 = icmp eq i32 %call1.i33, 0
  br i1 %tobool2.not.i34, label %if.end.i38, label %if.then.i35.for.inc_crit_edge

if.then.i35.for.inc_crit_edge:                    ; preds = %if.then.i35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i38:                                       ; preds = %if.then.i35
  %29 = ptrtoint ptr %connection.i32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %connection.i32, align 4
  %call5.i36 = tail call i32 @gb_audio_apbridgea_shutdown_rx(ptr noundef %30, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i36)
  %tobool6.not.i37 = icmp eq i32 %call5.i36, 0
  br i1 %tobool6.not.i37, label %if.end.i38.if.end9.i42_crit_edge, label %if.end.i38.for.inc_crit_edge

if.end.i38.for.inc_crit_edge:                     ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i38.if.end9.i42_crit_edge:                 ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i42

if.end9.i42:                                      ; preds = %if.end.i38.if.end9.i42_crit_edge, %list_is_singular.exit.i31.if.end9.i42_crit_edge, %if.then13.if.end9.i42_crit_edge
  %connection10.i39 = getelementptr i8, ptr %.pn46, i32 -4
  %31 = ptrtoint ptr %connection10.i39 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %connection10.i39, align 4
  %hd_cport_id.i40 = getelementptr inbounds %struct.gb_connection, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %hd_cport_id.i40 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %hd_cport_id.i40, align 4
  %call12.i41 = tail call i32 @gb_audio_apbridgea_unregister_cport(ptr noundef %32, i16 noundef zeroext 0, i16 noundef zeroext %34, i8 noundef zeroext 2) #9
  %35 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end9.i42, %if.end.i38.for.inc_crit_edge, %if.then.i35.for.inc_crit_edge, %if.end11.for.inc_crit_edge
  %36 = ptrtoint ptr %.pn46 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn = load ptr, ptr %.pn46, align 4
  %cmp.not = icmp eq ptr %.pn, %data_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_device_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_del_routes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gbaudio_remove_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gbaudio_dapm_free_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gbaudio_codec_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gbaudio_codec_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gbaudio_codec_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @gbaudio_codec_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_audio_apbridgea_register_cport(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_audio_gb_set_pcm(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_audio_gb_set_tx_data_size(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_audio_gb_activate_tx(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_audio_gb_deactivate_tx(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_audio_apbridgea_unregister_cport(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_audio_gb_set_rx_data_size(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_audio_gb_activate_rx(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_audio_gb_deactivate_rx(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_card_jack_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_jack_set_key(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_audio_apbridgea_stop_tx(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_audio_apbridgea_shutdown_tx(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_audio_apbridgea_stop_rx(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_audio_apbridgea_shutdown_rx(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbaudio_codec_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_codec_dev_gbaudio, ptr noundef nonnull @gbaudio_dai, i32 noundef 1) #9
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gbaudio_codec_remove(ptr nocapture noundef readnone %pdev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbcodec_probe(ptr noundef %comp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %comp, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 116, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %call.i, align 4
  %module_list = getelementptr inbounds %struct.gbaudio_codec_info, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %module_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %module_list, ptr %module_list, align 4
  %prev.i = getelementptr inbounds %struct.gbaudio_codec_info, ptr %call.i, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %module_list, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.gbaudio_codec_info, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.103, ptr noundef nonnull @gbcodec_probe.__key) #9
  %dai_list = getelementptr inbounds %struct.gbaudio_codec_info, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %dai_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %dai_list, ptr %dai_list, align 4
  %prev.i31 = getelementptr inbounds %struct.gbaudio_codec_info, ptr %call.i, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %prev.i31 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dai_list, ptr %prev.i31, align 4
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %call.i32 = tail call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef 44, i32 noundef 3520) #9
  %tobool5.not = icmp eq ptr %call.i32, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %11 = load i32, ptr getelementptr inbounds ([1 x %struct.snd_soc_dai_driver], ptr @gbaudio_dai, i32 0, i32 0, i32 1), align 4
  %12 = ptrtoint ptr %call.i32 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %call.i32, align 4
  %list = getelementptr inbounds %struct.gbaudio_codec_dai, ptr %call.i32, i32 0, i32 2
  %13 = ptrtoint ptr %dai_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dai_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %dai_list, ptr noundef %14) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end7.list_add.exit_crit_edge

if.end7.list_add.exit_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list, ptr %prev1.i.i, align 4
  %16 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.gbaudio_codec_dai, ptr %call.i32, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dai_list, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %dai_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %list, ptr %dai_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end7.list_add.exit_crit_edge
  %component = getelementptr inbounds %struct.gbaudio_codec_info, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %component to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %comp, ptr %component, align 4
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  store ptr %call.i, ptr @gbcodec, align 4
  %23 = load ptr, ptr %dev, align 4
  %call11 = tail call i32 @device_init_wakeup(ptr noundef %23, i1 noundef zeroext true) #9
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gbcodec_remove(ptr nocapture noundef %comp) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gbcodec_read(ptr nocapture noundef readnone %comp, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gbcodec_write(ptr nocapture noundef readnone %comp, i32 noundef %reg, i32 noundef %value) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbcodec_mute_stream(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %stream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbcodec_mute_stream.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbcodec_mute_stream, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !344

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stream)
  %tobool5.not = icmp eq i32 %stream, 0
  %cond = select i1 %tobool5.not, ptr @.str.110, ptr @.str.109
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbcodec_mute_stream.__UNIQUE_ID_ddebug251, ptr noundef %5, ptr noundef nonnull @.str.108, i32 noundef %mute, ptr noundef nonnull %cond) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.gbaudio_codec_info, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %dai_list.i = getelementptr inbounds %struct.gbaudio_codec_info, ptr %3, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end
  %.pn.in.i = phi ptr [ %dai_list.i, %do.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %dai_list.i
  br i1 %cmp.not.i, label %for.cond.i.do.end11_crit_edge, label %for.body.i

for.cond.i.do.end11_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

for.body.i:                                       ; preds = %for.cond.i
  %dai.0.i = getelementptr i8, ptr %.pn.i, i32 -36
  %9 = ptrtoint ptr %dai.0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dai.0.i, align 4
  %cmp3.i = icmp eq i32 %10, %7
  br i1 %cmp3.i, label %find_dai_stream_params.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

find_dai_stream_params.exit:                      ; preds = %for.body.i
  %params.i = getelementptr i8, ptr %.pn.i, i32 -32
  %arrayidx.i = getelementptr [2 x %struct.gbaudio_stream_params], ptr %params.i, i32 0, i32 %stream
  %tobool7.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool7.not, label %find_dai_stream_params.exit.do.end11_crit_edge, label %if.end14

find_dai_stream_params.exit.do.end11_crit_edge:   ; preds = %find_dai_stream_params.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

do.end11:                                         ; preds = %find_dai_stream_params.exit.do.end11_crit_edge, %for.cond.i.do.end11_crit_edge
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.28) #12
  br label %cleanup

if.end14:                                         ; preds = %find_dai_stream_params.exit
  %module_list = getelementptr inbounds %struct.gbaudio_codec_info, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %module_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %module_list, align 4
  %cmp.i.not = icmp eq ptr %14, %module_list
  br i1 %cmp.i.not, label %do.end20, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end14
  %15 = ptrtoint ptr %module_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn242 = load ptr, ptr %module_list, align 4
  %cmp.not243 = icmp eq ptr %.pn242, %module_list
  br i1 %cmp.not243, label %for.cond.preheader.if.end50_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end50_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

do.end20:                                         ; preds = %if.end14
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.112) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool22.not = icmp eq i32 %mute, 0
  br i1 %tobool22.not, label %do.end20.cleanup_crit_edge, label %if.then23

do.end20.cleanup_crit_edge:                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then23:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 5, ptr %arrayidx.i, align 4
  br label %cleanup

for.cond:                                         ; preds = %find_data.exit.for.cond_crit_edge, %for.cond.i206.for.cond_crit_edge
  %19 = ptrtoint ptr %.pn244 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn = load ptr, ptr %.pn244, align 4
  %cmp.not = icmp eq ptr %.pn, %module_list
  br i1 %cmp.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %.pn244 = phi ptr [ %.pn, %for.cond.for.body_crit_edge ], [ %.pn242, %for.cond.preheader.for.body_crit_edge ]
  %data_list.i = getelementptr i8, ptr %.pn244, i32 596
  br label %for.cond.i206

for.cond.i206:                                    ; preds = %for.body.i208.for.cond.i206_crit_edge, %for.body
  %.pn.in.i203 = phi ptr [ %data_list.i, %for.body ], [ %.pn.i204, %for.body.i208.for.cond.i206_crit_edge ]
  %20 = ptrtoint ptr %.pn.in.i203 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn.i204 = load ptr, ptr %.pn.in.i203, align 4
  %cmp.not.i205 = icmp eq ptr %.pn.i204, %data_list.i
  br i1 %cmp.not.i205, label %for.cond.i206.for.cond_crit_edge, label %for.body.i208

for.cond.i206.for.cond_crit_edge:                 ; preds = %for.cond.i206
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.body.i208:                                    ; preds = %for.cond.i206
  %data.0.i = getelementptr i8, ptr %.pn.i204, i32 -12
  %21 = ptrtoint ptr %data.0.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data.0.i, align 4
  %cmp3.i207 = icmp eq i32 %22, %7
  br i1 %cmp3.i207, label %find_data.exit, label %for.body.i208.for.cond.i206_crit_edge

for.body.i208.for.cond.i206_crit_edge:            ; preds = %for.body.i208
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i206

find_data.exit:                                   ; preds = %for.body.i208
  %data.0.i.le = getelementptr i8, ptr %.pn.i204, i32 -12
  %tobool34.not = icmp eq ptr %data.0.i.le, null
  br i1 %tobool34.not, label %find_data.exit.for.cond_crit_edge, label %find_data.exit.if.end50_crit_edge

find_data.exit.if.end50_crit_edge:                ; preds = %find_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

find_data.exit.for.cond_crit_edge:                ; preds = %find_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %cmp.not243, label %for.end.if.end50_crit_edge, label %do.end46

for.end.if.end50_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

do.end46:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %25 = ptrtoint ptr %dai to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dai, align 4
  %name48 = getelementptr %struct.gbaudio_codec_info, ptr %3, i32 0, i32 3, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.115, ptr noundef %26, ptr noundef %name48) #12
  br label %cleanup

if.end50:                                         ; preds = %for.end.if.end50_crit_edge, %find_data.exit.if.end50_crit_edge, %for.cond.preheader.if.end50_crit_edge
  %.pn233 = phi ptr [ %module_list, %for.end.if.end50_crit_edge ], [ %module_list, %for.cond.preheader.if.end50_crit_edge ], [ %.pn244, %find_data.exit.if.end50_crit_edge ]
  %data.1222 = phi ptr [ null, %for.end.if.end50_crit_edge ], [ inttoptr (i32 -1 to ptr), %for.cond.preheader.if.end50_crit_edge ], [ %data.0.i.le, %find_data.exit.if.end50_crit_edge ]
  %module.0231 = getelementptr i8, ptr %.pn233, i32 -88
  %27 = ptrtoint ptr %module.0231 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %module.0231, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %28, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i210 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i210, label %do.end.i, label %if.end59

do.end.i:                                         ; preds = %if.end50
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.124, i32 noundef %call.i.i) #12
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !345
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !346
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !347
  br label %cleanup

if.end59:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool60.not = icmp eq i32 %mute, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stream)
  %tobool61.not = icmp eq i32 %stream, 0
  %30 = or i32 %stream, %mute
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %if.then62, label %if.else70

if.then62:                                        ; preds = %if.end59
  %connection = getelementptr inbounds %struct.gbaudio_data_connection, ptr %data.1222, i32 0, i32 2
  %32 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %connection, align 4
  %call63 = tail call i32 @gb_audio_apbridgea_prepare_tx(ptr noundef %33, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then65, label %if.then62.if.end113_crit_edge

if.then62.if.end113_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.then65:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %connection, align 4
  %call67 = tail call i32 @gb_audio_apbridgea_start_tx(ptr noundef %35, i16 noundef zeroext 0, i64 noundef 0) #9
  br label %if.end113

if.else70:                                        ; preds = %if.end59
  %tobool60.not.not = xor i1 %tobool60.not, true
  %or.cond198 = or i1 %tobool61.not, %tobool60.not.not
  br i1 %or.cond198, label %if.else83, label %if.then74

if.then74:                                        ; preds = %if.else70
  %connection75 = getelementptr inbounds %struct.gbaudio_data_connection, ptr %data.1222, i32 0, i32 2
  %36 = ptrtoint ptr %connection75 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %connection75, align 4
  %call76 = tail call i32 @gb_audio_apbridgea_prepare_rx(ptr noundef %37, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then78, label %if.then74.if.end113_crit_edge

if.then74.if.end113_crit_edge:                    ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.then78:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %connection75 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %connection75, align 4
  %call80 = tail call i32 @gb_audio_apbridgea_start_rx(ptr noundef %39, i16 noundef zeroext 0) #9
  br label %if.end113

if.else83:                                        ; preds = %if.else70
  %or.cond200 = and i1 %tobool61.not, %tobool60.not.not
  br i1 %or.cond200, label %if.then87, label %if.else96

if.then87:                                        ; preds = %if.else83
  %connection88 = getelementptr inbounds %struct.gbaudio_data_connection, ptr %data.1222, i32 0, i32 2
  %40 = ptrtoint ptr %connection88 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %connection88, align 4
  %call89 = tail call i32 @gb_audio_apbridgea_stop_tx(ptr noundef %41, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.then91, label %if.then87.if.end113_crit_edge

if.then87.if.end113_crit_edge:                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.then91:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %connection88 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %connection88, align 4
  %call93 = tail call i32 @gb_audio_apbridgea_shutdown_tx(ptr noundef %43, i16 noundef zeroext 0) #9
  br label %if.end113

if.else96:                                        ; preds = %if.else83
  %or.cond201 = or i1 %tobool60.not, %tobool61.not
  br i1 %or.cond201, label %if.else96.do.body116_crit_edge, label %if.then100

if.else96.do.body116_crit_edge:                   ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body116

if.then100:                                       ; preds = %if.else96
  %connection101 = getelementptr inbounds %struct.gbaudio_data_connection, ptr %data.1222, i32 0, i32 2
  %44 = ptrtoint ptr %connection101 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %connection101, align 4
  %call102 = tail call i32 @gb_audio_apbridgea_stop_rx(ptr noundef %45, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.then104, label %if.then100.if.end113_crit_edge

if.then100.if.end113_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.then104:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %connection101 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %connection101, align 4
  %call106 = tail call i32 @gb_audio_apbridgea_shutdown_rx(ptr noundef %47, i16 noundef zeroext 0) #9
  br label %if.end113

if.end113:                                        ; preds = %if.then104, %if.then100.if.end113_crit_edge, %if.then91, %if.then87.if.end113_crit_edge, %if.then78, %if.then74.if.end113_crit_edge, %if.then65, %if.then62.if.end113_crit_edge
  %.sink = phi i32 [ 4, %if.then65 ], [ 4, %if.then62.if.end113_crit_edge ], [ 4, %if.then78 ], [ 4, %if.then74.if.end113_crit_edge ], [ 5, %if.then91 ], [ 5, %if.then87.if.end113_crit_edge ], [ 5, %if.then104 ], [ 5, %if.then100.if.end113_crit_edge ]
  %ret.5 = phi i32 [ %call67, %if.then65 ], [ %call63, %if.then62.if.end113_crit_edge ], [ %call80, %if.then78 ], [ %call76, %if.then74.if.end113_crit_edge ], [ %call93, %if.then91 ], [ %call89, %if.then87.if.end113_crit_edge ], [ %call106, %if.then104 ], [ %call102, %if.then100.if.end113_crit_edge ]
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.sink, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.5)
  %tobool114.not = icmp eq i32 %ret.5, 0
  br i1 %tobool114.not, label %if.end113.if.end133_crit_edge, label %if.end113.do.body116_crit_edge

if.end113.do.body116_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body116

if.end113.if.end133_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133

do.body116:                                       ; preds = %if.end113.do.body116_crit_edge, %if.else96.do.body116_crit_edge
  %ret.5228 = phi i32 [ %ret.5, %if.end113.do.body116_crit_edge ], [ -22, %if.else96.do.body116_crit_edge ]
  %call117 = tail call i32 @___ratelimit(ptr noundef nonnull @gbcodec_mute_stream._rs, ptr noundef nonnull @.str.107) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %do.body116.if.end133_crit_edge, label %do.end122

do.body116.if.end133_crit_edge:                   ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133

do.end122:                                        ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  %name124 = getelementptr i8, ptr %.pn233, i32 12
  %cond127 = select i1 %tobool60.not, ptr @.str.121, ptr @.str.120
  %cond129 = select i1 %tobool61.not, ptr @.str.123, ptr @.str.122
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.118, ptr noundef %name124, ptr noundef nonnull %cond127, ptr noundef nonnull %cond129, i32 noundef %ret.5228) #12
  br label %if.end133

if.end133:                                        ; preds = %do.end122, %do.body116.if.end133_crit_edge, %if.end113.if.end133_crit_edge
  %ret.5229 = phi i32 [ %ret.5228, %do.body116.if.end133_crit_edge ], [ %ret.5228, %do.end122 ], [ 0, %if.end113.if.end133_crit_edge ]
  %usage_count.i.i212 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 12, i32 13
  %call.i.i.i.i213 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i212, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !345
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i212, i32 1, i32 3, i32 1) #9
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i212, ptr %usage_count.i.i212, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i212) #9, !srcloc !346
  %asmresult.i.i.i.i.i214 = extractvalue { i32, i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i214)
  %cmp.not.i.i.i.i.i215 = icmp eq i32 %asmresult.i.i.i.i.i214, 0
  br i1 %cmp.not.i.i.i.i.i215, label %if.end133.cleanup_crit_edge, label %do.end11.i.i.i.i.i216

if.end133.cleanup_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i.i216:                            ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !347
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.i.i.i.i216, %if.end133.cleanup_crit_edge, %do.end11.i.i.i.i.i, %do.end.i.cleanup_crit_edge, %do.end46, %if.then23, %do.end20.cleanup_crit_edge, %do.end11
  %retval.0 = phi i32 [ -19, %do.end46 ], [ -22, %do.end11 ], [ 0, %if.then23 ], [ -19, %do.end20.cleanup_crit_edge ], [ %call.i.i, %do.end.i.cleanup_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i ], [ %ret.5229, %if.end133.cleanup_crit_edge ], [ %ret.5229, %do.end11.i.i.i.i.i216 ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbcodec_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.gbaudio_codec_info, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %module_list = getelementptr inbounds %struct.gbaudio_codec_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %module_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %module_list, align 4
  %cmp.i.not = icmp eq ptr %5, %module_list
  br i1 %cmp.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.112) #12
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %10 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream, align 4
  %dai_list.i = getelementptr inbounds %struct.gbaudio_codec_info, ptr %3, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ %dai_list.i, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %12 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %dai_list.i
  br i1 %cmp.not.i, label %for.cond.i.do.end9_crit_edge, label %for.body.i

for.cond.i.do.end9_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

for.body.i:                                       ; preds = %for.cond.i
  %dai.0.i = getelementptr i8, ptr %.pn.i, i32 -36
  %13 = ptrtoint ptr %dai.0.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dai.0.i, align 4
  %cmp3.i = icmp eq i32 %14, %9
  br i1 %cmp3.i, label %find_dai_stream_params.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

find_dai_stream_params.exit:                      ; preds = %for.body.i
  %params.i = getelementptr i8, ptr %.pn.i, i32 -32
  %arrayidx.i = getelementptr [2 x %struct.gbaudio_stream_params], ptr %params.i, i32 0, i32 %11
  %tobool5.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool5.not, label %find_dai_stream_params.exit.do.end9_crit_edge, label %if.end12

find_dai_stream_params.exit.do.end9_crit_edge:    ; preds = %find_dai_stream_params.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

do.end9:                                          ; preds = %find_dai_stream_params.exit.do.end9_crit_edge, %for.cond.i.do.end9_crit_edge
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.28) #12
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

if.end12:                                         ; preds = %find_dai_stream_params.exit
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %arrayidx.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void @pm_stay_awake(ptr noundef %19) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.end12 ], [ -22, %do.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gbcodec_shutdown(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.gbaudio_codec_info, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %module_list = getelementptr inbounds %struct.gbaudio_codec_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %module_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %module_list, align 4
  %cmp.i.not = icmp eq ptr %5, %module_list
  br i1 %cmp.i.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.130) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %10 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream, align 4
  %dai_list.i = getelementptr inbounds %struct.gbaudio_codec_info, ptr %3, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ %dai_list.i, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %12 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %dai_list.i
  br i1 %cmp.not.i, label %for.cond.i.do.end8_crit_edge, label %for.body.i

for.cond.i.do.end8_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

for.body.i:                                       ; preds = %for.cond.i
  %dai.0.i = getelementptr i8, ptr %.pn.i, i32 -36
  %13 = ptrtoint ptr %dai.0.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dai.0.i, align 4
  %cmp3.i = icmp eq i32 %14, %9
  br i1 %cmp3.i, label %find_dai_stream_params.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

find_dai_stream_params.exit:                      ; preds = %for.body.i
  %params.i = getelementptr i8, ptr %.pn.i, i32 -32
  %arrayidx.i = getelementptr [2 x %struct.gbaudio_stream_params], ptr %params.i, i32 0, i32 %11
  %tobool4.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool4.not, label %find_dai_stream_params.exit.do.end8_crit_edge, label %if.end11

find_dai_stream_params.exit.do.end8_crit_edge:    ; preds = %find_dai_stream_params.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

do.end8:                                          ; preds = %find_dai_stream_params.exit.do.end8_crit_edge, %for.cond.i.do.end8_crit_edge
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.28) #12
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

if.end11:                                         ; preds = %find_dai_stream_params.exit
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void @pm_relax(ptr noundef %19) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbcodec_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %hwparams, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.gbaudio_codec_info, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %module_list = getelementptr inbounds %struct.gbaudio_codec_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %module_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %module_list, align 4
  %cmp.i.not = icmp eq ptr %5, %module_list
  br i1 %cmp.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.112) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hwparams, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.not = icmp eq i32 %9, 2
  br i1 %cmp.not, label %if.end12, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.137, i32 noundef %9) #12
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %arrayidx.i.i165 = getelementptr %struct.snd_pcm_hw_params, ptr %hwparams, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %arrayidx.i.i165 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i165, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %13)
  %cmp15.not = icmp eq i32 %13, 48000
  br i1 %cmp15.not, label %if.end24, label %do.end20

do.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.140, i32 noundef %13) #12
  br label %cleanup

if.end24:                                         ; preds = %if.end12
  %arrayidx.i.i167 = getelementptr %struct.snd_pcm_hw_params, ptr %hwparams, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %arrayidx.i.i167 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i167, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i176, label %params_format.exit.thread201

params_format.exit.thread201:                     ; preds = %if.end24
  %18 = and i32 %17, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp26.not205 = icmp eq i32 %18, 4
  br i1 %cmp26.not205, label %for.cond.preheader, label %do.end31.thread206

for.cond.preheader:                               ; preds = %params_format.exit.thread201
  %19 = ptrtoint ptr %module_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn224 = load ptr, ptr %module_list, align 4
  %cmp38.not225 = icmp eq ptr %.pn224, %module_list
  br i1 %cmp38.not225, label %for.cond.preheader.if.end56_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end56_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 4
  br label %for.body

do.end31.thread206:                               ; preds = %params_format.exit.thread201
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  br label %if.then.i.i173

if.then.i.i173:                                   ; preds = %for.inc.i.i176.if.then.i.i173_crit_edge, %do.end31.thread206
  %24 = phi ptr [ %27, %for.inc.i.i176.if.then.i.i173_crit_edge ], [ %23, %do.end31.thread206 ]
  %i.09.lcssa.i.i170 = phi i32 [ 32, %for.inc.i.i176.if.then.i.i173_crit_edge ], [ 0, %do.end31.thread206 ]
  %.lcssa.i.i171 = phi i32 [ %29, %for.inc.i.i176.if.then.i.i173_crit_edge ], [ %17, %do.end31.thread206 ]
  %25 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i171, i1 true) #9, !range !348
  %add.i.i172 = or i32 %25, %i.09.lcssa.i.i170
  br label %params_format.exit178

for.inc.i.i176:                                   ; preds = %if.end24
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %arrayidx.1.i.i174 = getelementptr %struct.snd_pcm_hw_params, ptr %hwparams, i32 0, i32 1, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx.1.i.i174 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.1.i.i174, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.1.i.i175 = icmp eq i32 %29, 0
  br i1 %tobool.not.1.i.i175, label %for.inc.i.i176.params_format.exit178_crit_edge, label %for.inc.i.i176.if.then.i.i173_crit_edge

for.inc.i.i176.if.then.i.i173_crit_edge:          ; preds = %for.inc.i.i176
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i173

for.inc.i.i176.params_format.exit178_crit_edge:   ; preds = %for.inc.i.i176
  call void @__sanitizer_cov_trace_pc() #11
  br label %params_format.exit178

params_format.exit178:                            ; preds = %for.inc.i.i176.params_format.exit178_crit_edge, %if.then.i.i173
  %30 = phi ptr [ %24, %if.then.i.i173 ], [ %27, %for.inc.i.i176.params_format.exit178_crit_edge ]
  %retval.0.i.i177 = phi i32 [ %add.i.i172, %if.then.i.i173 ], [ 0, %for.inc.i.i176.params_format.exit178_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.143, i32 noundef %retval.0.i.i177) #12
  br label %cleanup

for.cond:                                         ; preds = %find_data.exit.for.cond_crit_edge, %for.cond.i.for.cond_crit_edge
  %31 = ptrtoint ptr %.pn226 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn = load ptr, ptr %.pn226, align 4
  %cmp38.not = icmp eq ptr %.pn, %module_list
  br i1 %cmp38.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %.pn226 = phi ptr [ %.pn224, %for.body.lr.ph ], [ %.pn, %for.cond.for.body_crit_edge ]
  %data_list.i = getelementptr i8, ptr %.pn226, i32 596
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body
  %.pn.in.i = phi ptr [ %data_list.i, %for.body ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %32 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %data_list.i
  br i1 %cmp.not.i, label %for.cond.i.for.cond_crit_edge, label %for.body.i

for.cond.i.for.cond_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.body.i:                                       ; preds = %for.cond.i
  %data.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %33 = ptrtoint ptr %data.0.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data.0.i, align 4
  %cmp3.i = icmp eq i32 %34, %21
  br i1 %cmp3.i, label %find_data.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

find_data.exit:                                   ; preds = %for.body.i
  %data.0.i.le = getelementptr i8, ptr %.pn.i, i32 -12
  %tobool41.not = icmp eq ptr %data.0.i.le, null
  br i1 %tobool41.not, label %find_data.exit.for.cond_crit_edge, label %find_data.exit.if.end56_crit_edge

find_data.exit.if.end56_crit_edge:                ; preds = %find_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

find_data.exit.for.cond_crit_edge:                ; preds = %find_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %cmp38.not225, label %for.end.if.end56_crit_edge, label %do.end53

for.end.if.end56_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

do.end53:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.146) #12
  br label %cleanup

if.end56:                                         ; preds = %for.end.if.end56_crit_edge, %find_data.exit.if.end56_crit_edge, %for.cond.preheader.if.end56_crit_edge
  %.pn.lcssa223.pn = phi ptr [ %module_list, %for.end.if.end56_crit_edge ], [ %module_list, %for.cond.preheader.if.end56_crit_edge ], [ %.pn226, %find_data.exit.if.end56_crit_edge ]
  %data.1209 = phi ptr [ null, %for.end.if.end56_crit_edge ], [ inttoptr (i32 -1 to ptr), %for.cond.preheader.if.end56_crit_edge ], [ %data.0.i.le, %find_data.exit.if.end56_crit_edge ]
  %module.0217 = getelementptr i8, ptr %.pn.lcssa223.pn, i32 -88
  %id57 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %37 = ptrtoint ptr %id57 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %id57, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %39 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %stream, align 4
  %dai_list.i = getelementptr inbounds %struct.gbaudio_codec_info, ptr %3, i32 0, i32 3
  br label %for.cond.i182

for.cond.i182:                                    ; preds = %for.body.i184.for.cond.i182_crit_edge, %if.end56
  %.pn.in.i179 = phi ptr [ %dai_list.i, %if.end56 ], [ %.pn.i180, %for.body.i184.for.cond.i182_crit_edge ]
  %41 = ptrtoint ptr %.pn.in.i179 to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn.i180 = load ptr, ptr %.pn.in.i179, align 4
  %cmp.not.i181 = icmp eq ptr %.pn.i180, %dai_list.i
  br i1 %cmp.not.i181, label %for.cond.i182.do.end63_crit_edge, label %for.body.i184

for.cond.i182.do.end63_crit_edge:                 ; preds = %for.cond.i182
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end63

for.body.i184:                                    ; preds = %for.cond.i182
  %dai.0.i = getelementptr i8, ptr %.pn.i180, i32 -36
  %42 = ptrtoint ptr %dai.0.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dai.0.i, align 4
  %cmp3.i183 = icmp eq i32 %43, %38
  br i1 %cmp3.i183, label %find_dai_stream_params.exit, label %for.body.i184.for.cond.i182_crit_edge

for.body.i184.for.cond.i182_crit_edge:            ; preds = %for.body.i184
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i182

find_dai_stream_params.exit:                      ; preds = %for.body.i184
  %params.i = getelementptr i8, ptr %.pn.i180, i32 -32
  %arrayidx.i = getelementptr [2 x %struct.gbaudio_stream_params], ptr %params.i, i32 0, i32 %40
  %tobool59.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool59.not, label %find_dai_stream_params.exit.do.end63_crit_edge, label %if.end66

find_dai_stream_params.exit.do.end63_crit_edge:   ; preds = %find_dai_stream_params.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end63

do.end63:                                         ; preds = %find_dai_stream_params.exit.do.end63_crit_edge, %for.cond.i182.do.end63_crit_edge
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.28) #12
  br label %cleanup

if.end66:                                         ; preds = %find_dai_stream_params.exit
  %46 = ptrtoint ptr %module.0217 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %module.0217, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %47, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i186 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i186, label %do.end.i, label %if.end75

do.end.i:                                         ; preds = %if.end66
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.124, i32 noundef %call.i.i) #12
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !345
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !346
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !347
  br label %cleanup

if.end75:                                         ; preds = %if.end66
  %connection = getelementptr inbounds %struct.gbaudio_data_connection, ptr %data.1209, i32 0, i32 2
  %49 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %connection, align 4
  %call76 = tail call i32 @gb_audio_apbridgea_set_config(ptr noundef %50, i16 noundef zeroext 0, i32 noundef 2, i32 noundef 128, i32 noundef 6144000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end91, label %do.body79

do.body79:                                        ; preds = %if.end75
  %call80 = tail call i32 @___ratelimit(ptr noundef nonnull @gbcodec_hw_params._rs, ptr noundef nonnull @.str.135) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %do.body79.do.end89_crit_edge, label %do.end85

do.body79.do.end89_crit_edge:                     ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end89

do.end85:                                         ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.151, i32 noundef %call76) #12
  br label %do.end89

do.end89:                                         ; preds = %do.end85, %do.body79.do.end89_crit_edge
  %usage_count.i.i188 = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 12, i32 13
  %call.i.i.i.i189 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i188, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !345
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i188, i32 1, i32 3, i32 1) #9
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i188, ptr %usage_count.i.i188, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i188) #9, !srcloc !346
  %asmresult.i.i.i.i.i190 = extractvalue { i32, i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i190)
  %cmp.not.i.i.i.i.i191 = icmp eq i32 %asmresult.i.i.i.i.i190, 0
  br i1 %cmp.not.i.i.i.i.i191, label %do.end89.cleanup_crit_edge, label %do.end11.i.i.i.i.i192

do.end89.cleanup_crit_edge:                       ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i.i192:                            ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !347
  br label %cleanup

if.end91:                                         ; preds = %if.end75
  %usage_count.i.i193 = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 12, i32 13
  %call.i.i.i.i194 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i193, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !345
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i193, i32 1, i32 3, i32 1) #9
  %54 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i193, ptr %usage_count.i.i193, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i193) #9, !srcloc !346
  %asmresult.i.i.i.i.i195 = extractvalue { i32, i32, i32 } %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i195)
  %cmp.not.i.i.i.i.i196 = icmp eq i32 %asmresult.i.i.i.i.i195, 0
  br i1 %cmp.not.i.i.i.i.i196, label %if.end91.gb_pm_runtime_put_noidle.exit198_crit_edge, label %do.end11.i.i.i.i.i197

if.end91.gb_pm_runtime_put_noidle.exit198_crit_edge: ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %gb_pm_runtime_put_noidle.exit198

do.end11.i.i.i.i.i197:                            ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !347
  br label %gb_pm_runtime_put_noidle.exit198

gb_pm_runtime_put_noidle.exit198:                 ; preds = %do.end11.i.i.i.i.i197, %if.end91.gb_pm_runtime_put_noidle.exit198_crit_edge
  %55 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp93 = icmp eq i32 %56, 0
  %driver = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 3
  %57 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %driver, align 4
  %sig_bits96 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %58, i32 0, i32 11, i32 7
  %sig_bits99 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %58, i32 0, i32 10, i32 7
  %sig_bits.0.in.in = select i1 %cmp93, ptr %sig_bits96, ptr %sig_bits99
  %59 = ptrtoint ptr %sig_bits.0.in.in to i32
  call void @__asan_load4_noabort(i32 %59)
  %sig_bits.0.in = load i32, ptr %sig_bits.0.in.in, align 4
  %sig_bits.0 = trunc i32 %sig_bits.0.in to i8
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 2, ptr %arrayidx.i, align 4
  %format102 = getelementptr inbounds %struct.gbaudio_stream_params, ptr %arrayidx.i, i32 0, i32 3
  %61 = ptrtoint ptr %format102 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 4, ptr %format102, align 4
  %rate103 = getelementptr inbounds %struct.gbaudio_stream_params, ptr %arrayidx.i, i32 0, i32 4
  %62 = ptrtoint ptr %rate103 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 128, ptr %rate103, align 4
  %channels104 = getelementptr inbounds %struct.gbaudio_stream_params, ptr %arrayidx.i, i32 0, i32 2
  %63 = ptrtoint ptr %channels104 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 2, ptr %channels104, align 1
  %sig_bits105 = getelementptr inbounds %struct.gbaudio_stream_params, ptr %arrayidx.i, i32 0, i32 1
  %64 = ptrtoint ptr %sig_bits105 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %sig_bits.0, ptr %sig_bits105, align 4
  br label %cleanup

cleanup:                                          ; preds = %gb_pm_runtime_put_noidle.exit198, %do.end11.i.i.i.i.i192, %do.end89.cleanup_crit_edge, %do.end11.i.i.i.i.i, %do.end.i.cleanup_crit_edge, %do.end63, %do.end53, %params_format.exit178, %do.end20, %do.end8, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -22, %do.end8 ], [ -22, %do.end20 ], [ -22, %params_format.exit178 ], [ 0, %gb_pm_runtime_put_noidle.exit198 ], [ -22, %do.end63 ], [ -22, %do.end53 ], [ %call.i.i, %do.end.i.cleanup_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i ], [ %call76, %do.end89.cleanup_crit_edge ], [ %call76, %do.end11.i.i.i.i.i192 ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbcodec_prepare(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.gbaudio_codec_info, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %module_list = getelementptr inbounds %struct.gbaudio_codec_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %module_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %module_list, align 4
  %cmp.i.not = icmp eq ptr %5, %module_list
  br i1 %cmp.i.not, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %6 = ptrtoint ptr %module_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn137 = load ptr, ptr %module_list, align 4
  %cmp.not138 = icmp eq ptr %.pn137, %module_list
  br i1 %cmp.not138, label %for.cond.preheader.if.end22_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end22_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.112) #12
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

for.cond:                                         ; preds = %find_data.exit.for.cond_crit_edge, %for.cond.i.for.cond_crit_edge
  %11 = ptrtoint ptr %.pn139 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn139, align 4
  %cmp.not = icmp eq ptr %.pn, %module_list
  br i1 %cmp.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %.pn139 = phi ptr [ %.pn137, %for.body.lr.ph ], [ %.pn, %for.cond.for.body_crit_edge ]
  %data_list.i = getelementptr i8, ptr %.pn139, i32 596
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body
  %.pn.in.i = phi ptr [ %data_list.i, %for.body ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %12 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %data_list.i
  br i1 %cmp.not.i, label %for.cond.i.for.cond_crit_edge, label %for.body.i

for.cond.i.for.cond_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.body.i:                                       ; preds = %for.cond.i
  %data.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %13 = ptrtoint ptr %data.0.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data.0.i, align 4
  %cmp3.i = icmp eq i32 %14, %8
  br i1 %cmp3.i, label %find_data.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

find_data.exit:                                   ; preds = %for.body.i
  %data.0.i.le = getelementptr i8, ptr %.pn.i, i32 -12
  %tobool7.not = icmp eq ptr %data.0.i.le, null
  br i1 %tobool7.not, label %find_data.exit.for.cond_crit_edge, label %find_data.exit.if.end22_crit_edge

find_data.exit.if.end22_crit_edge:                ; preds = %find_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

find_data.exit.for.cond_crit_edge:                ; preds = %find_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %cmp.not138, label %for.end.if.end22_crit_edge, label %do.end19

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

do.end19:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.146) #12
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

if.end22:                                         ; preds = %for.end.if.end22_crit_edge, %find_data.exit.if.end22_crit_edge, %for.cond.preheader.if.end22_crit_edge
  %.pn.lcssa136.pn = phi ptr [ %module_list, %for.end.if.end22_crit_edge ], [ %module_list, %for.cond.preheader.if.end22_crit_edge ], [ %.pn139, %find_data.exit.if.end22_crit_edge ]
  %data.1120 = phi ptr [ null, %for.end.if.end22_crit_edge ], [ inttoptr (i32 -1 to ptr), %for.cond.preheader.if.end22_crit_edge ], [ %data.0.i.le, %find_data.exit.if.end22_crit_edge ]
  %module.0130 = getelementptr i8, ptr %.pn.lcssa136.pn, i32 -88
  %id23 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %17 = ptrtoint ptr %id23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id23, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %19 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stream, align 4
  %dai_list.i = getelementptr inbounds %struct.gbaudio_codec_info, ptr %3, i32 0, i32 3
  br label %for.cond.i101

for.cond.i101:                                    ; preds = %for.body.i103.for.cond.i101_crit_edge, %if.end22
  %.pn.in.i98 = phi ptr [ %dai_list.i, %if.end22 ], [ %.pn.i99, %for.body.i103.for.cond.i101_crit_edge ]
  %21 = ptrtoint ptr %.pn.in.i98 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn.i99 = load ptr, ptr %.pn.in.i98, align 4
  %cmp.not.i100 = icmp eq ptr %.pn.i99, %dai_list.i
  br i1 %cmp.not.i100, label %for.cond.i101.do.end29_crit_edge, label %for.body.i103

for.cond.i101.do.end29_crit_edge:                 ; preds = %for.cond.i101
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end29

for.body.i103:                                    ; preds = %for.cond.i101
  %dai.0.i = getelementptr i8, ptr %.pn.i99, i32 -36
  %22 = ptrtoint ptr %dai.0.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dai.0.i, align 4
  %cmp3.i102 = icmp eq i32 %23, %18
  br i1 %cmp3.i102, label %find_dai_stream_params.exit, label %for.body.i103.for.cond.i101_crit_edge

for.body.i103.for.cond.i101_crit_edge:            ; preds = %for.body.i103
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i101

find_dai_stream_params.exit:                      ; preds = %for.body.i103
  %params.i = getelementptr i8, ptr %.pn.i99, i32 -32
  %arrayidx.i = getelementptr [2 x %struct.gbaudio_stream_params], ptr %params.i, i32 0, i32 %20
  %tobool25.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool25.not, label %find_dai_stream_params.exit.do.end29_crit_edge, label %if.end32

find_dai_stream_params.exit.do.end29_crit_edge:   ; preds = %find_dai_stream_params.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end29

do.end29:                                         ; preds = %find_dai_stream_params.exit.do.end29_crit_edge, %for.cond.i101.do.end29_crit_edge
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.28) #12
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

if.end32:                                         ; preds = %find_dai_stream_params.exit
  %26 = ptrtoint ptr %module.0130 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %module.0130, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %27, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i105 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i105, label %do.end.i, label %if.end41

do.end.i:                                         ; preds = %if.end32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.124, i32 noundef %call.i.i) #12
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !345
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !346
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i.if.then39_crit_edge, label %do.end11.i.i.i.i.i

do.end.i.if.then39_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then39

do.end11.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !347
  br label %if.then39

if.then39:                                        ; preds = %do.end11.i.i.i.i.i, %do.end.i.if.then39_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

if.end41:                                         ; preds = %if.end32
  %29 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stream, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %30, label %if.end41.if.end61_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb44
  ]

if.end41.if.end61_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

sw.bb:                                            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %connection = getelementptr inbounds %struct.gbaudio_data_connection, ptr %data.1120, i32 0, i32 2
  %32 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %connection, align 4
  %call43 = tail call i32 @gb_audio_apbridgea_set_tx_data_size(ptr noundef %33, i16 noundef zeroext 0, i16 noundef zeroext 192) #9
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %connection45 = getelementptr inbounds %struct.gbaudio_data_connection, ptr %data.1120, i32 0, i32 2
  %34 = ptrtoint ptr %connection45 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %connection45, align 4
  %call46 = tail call i32 @gb_audio_apbridgea_set_rx_data_size(ptr noundef %35, i16 noundef zeroext 0, i16 noundef zeroext 192) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb44, %sw.bb
  %ret.0 = phi i32 [ %call46, %sw.bb44 ], [ %call43, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool47.not = icmp eq i32 %ret.0, 0
  br i1 %tobool47.not, label %sw.epilog.if.end61_crit_edge, label %if.then48

sw.epilog.if.end61_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then48:                                        ; preds = %sw.epilog
  %usage_count.i.i107 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 12, i32 13
  %call.i.i.i.i108 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i107, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !345
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i107, i32 1, i32 3, i32 1) #9
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i107, ptr %usage_count.i.i107, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i107) #9, !srcloc !346
  %asmresult.i.i.i.i.i109 = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i109)
  %cmp.not.i.i.i.i.i110 = icmp eq i32 %asmresult.i.i.i.i.i109, 0
  br i1 %cmp.not.i.i.i.i.i110, label %if.then48.gb_pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i.i111

if.then48.gb_pm_runtime_put_noidle.exit_crit_edge: ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %gb_pm_runtime_put_noidle.exit

do.end11.i.i.i.i.i111:                            ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !347
  br label %gb_pm_runtime_put_noidle.exit

gb_pm_runtime_put_noidle.exit:                    ; preds = %do.end11.i.i.i.i.i111, %if.then48.gb_pm_runtime_put_noidle.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %call51 = tail call i32 @___ratelimit(ptr noundef nonnull @gbcodec_prepare._rs, ptr noundef nonnull @.str.153) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %gb_pm_runtime_put_noidle.exit.cleanup_crit_edge, label %do.end56

gb_pm_runtime_put_noidle.exit.cleanup_crit_edge:  ; preds = %gb_pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end56:                                         ; preds = %gb_pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.159, i32 noundef %ret.0) #12
  br label %cleanup

if.end61:                                         ; preds = %sw.epilog.if.end61_crit_edge, %if.end41.if.end61_crit_edge
  %usage_count.i.i112 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 12, i32 13
  %call.i.i.i.i113 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i112, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !345
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i112, i32 1, i32 3, i32 1) #9
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i112, ptr %usage_count.i.i112, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i112) #9, !srcloc !346
  %asmresult.i.i.i.i.i114 = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i114)
  %cmp.not.i.i.i.i.i115 = icmp eq i32 %asmresult.i.i.i.i.i114, 0
  br i1 %cmp.not.i.i.i.i.i115, label %if.end61.gb_pm_runtime_put_noidle.exit117_crit_edge, label %do.end11.i.i.i.i.i116

if.end61.gb_pm_runtime_put_noidle.exit117_crit_edge: ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %gb_pm_runtime_put_noidle.exit117

do.end11.i.i.i.i.i116:                            ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !347
  br label %gb_pm_runtime_put_noidle.exit117

gb_pm_runtime_put_noidle.exit117:                 ; preds = %do.end11.i.i.i.i.i116, %if.end61.gb_pm_runtime_put_noidle.exit117_crit_edge
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 3, ptr %arrayidx.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %gb_pm_runtime_put_noidle.exit117, %do.end56, %gb_pm_runtime_put_noidle.exit.cleanup_crit_edge, %if.then39, %do.end29, %do.end19, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %call.i.i, %if.then39 ], [ 0, %gb_pm_runtime_put_noidle.exit117 ], [ -22, %do.end29 ], [ -19, %do.end19 ], [ %ret.0, %do.end56 ], [ %ret.0, %gb_pm_runtime_put_noidle.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_audio_apbridgea_prepare_tx(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_audio_apbridgea_start_tx(ptr noundef, i16 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_audio_apbridgea_prepare_rx(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_audio_apbridgea_start_rx(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_stay_awake(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_relax(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_audio_apbridgea_set_config(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_audio_apbridgea_set_tx_data_size(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_audio_apbridgea_set_rx_data_size(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbaudio_codec_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_codec_suspend.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_codec_suspend, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !344

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_codec_suspend.__UNIQUE_ID_ddebug261, ptr noundef %dev, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.161) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbaudio_codec_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_codec_resume.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_codec_resume, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !344

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_codec_resume.__UNIQUE_ID_ddebug262, ptr noundef %dev, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.163) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 159)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 159)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !15, !16, !17, !18, !19, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !35, !37, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !61, !62, !64, !66, !68, !69, !71, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !88, !90, !91, !93, !94, !95, !96, !98, !99, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !114, !115, !116, !118, !119, !120, !121, !123, !124, !126, !127, !128, !129, !131, !132, !134, !135, !136, !138, !139, !141, !142, !143, !145, !147, !148, !149, !151, !153, !154, !155, !156, !158, !159, !160, !161, !163, !165, !166, !167, !169, !170, !171, !172, !174, !176, !177, !178, !180, !182, !184, !185, !186, !187, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !210, !211, !212, !214, !216, !218, !220, !221, !223, !225, !227, !229, !231, !233, !234, !235, !236, !237, !239, !240, !242, !243, !244, !246, !247, !248, !250, !251, !252, !253, !254, !255, !256, !257, !259, !260, !261, !262, !263, !265, !266, !267, !269, !270, !272, !273, !274, !275, !276, !278, !279, !281, !282, !283, !285, !286, !287, !289, !290, !291, !293, !294, !295, !297, !298, !299, !301, !302, !304, !305, !306, !307, !309, !310, !311, !313, !314, !316, !317, !319, !320, !321, !322, !324, !326, !328, !329, !330, !332, !333}
!llvm.module.flags = !{!334, !335, !336, !337, !338, !339, !340, !341}
!llvm.ident = !{!342}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/greybus/audio_codec.c", i32 305, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @gbaudio_module_update.__UNIQUE_ID_ddebug249, !1, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/greybus/audio_codec.c", i32 309, i32 3}
!10 = !{ptr @gbaudio_module_update.__UNIQUE_ID_ddebug250, !9, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/greybus/audio_codec.c", i32 314, i32 25}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/greybus/audio_codec.c", i32 316, i32 3}
!15 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @gbaudio_module_update._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @gbaudio_module_update._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @__ksymtab_gbaudio_module_update, !20, !"__ksymtab_gbaudio_module_update", i1 false, i1 false}
!20 = !{!"../drivers/staging/greybus/audio_codec.c", i32 337, i32 1}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/greybus/audio_codec.c", i32 808, i32 3}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @gbaudio_register_module._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @gbaudio_register_module._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/greybus/audio_codec.c", i32 818, i32 3}
!28 = !{ptr @gbaudio_register_module._entry.13, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @gbaudio_register_module._entry_ptr.15, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/greybus/audio_codec.c", i32 862, i32 2}
!32 = !{ptr @gbaudio_register_module.__UNIQUE_ID_ddebug252, !31, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!33 = !{ptr @__ksymtab_gbaudio_register_module, !34, !"__ksymtab_gbaudio_register_module", i1 false, i1 false}
!34 = !{!"../drivers/staging/greybus/audio_codec.c", i32 867, i32 1}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/greybus/audio_codec.c", i32 936, i32 2}
!37 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @gbaudio_unregister_module.__UNIQUE_ID_ddebug254, !36, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/greybus/audio_codec.c", i32 942, i32 2}
!41 = !{ptr @gbaudio_unregister_module.__UNIQUE_ID_ddebug255, !40, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/greybus/audio_codec.c", i32 955, i32 4}
!44 = !{ptr @gbaudio_unregister_module.__UNIQUE_ID_ddebug256, !43, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/greybus/audio_codec.c", i32 966, i32 3}
!47 = !{ptr @gbaudio_unregister_module.__UNIQUE_ID_ddebug257, !46, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/greybus/audio_codec.c", i32 972, i32 3}
!50 = !{ptr @gbaudio_unregister_module.__UNIQUE_ID_ddebug258, !49, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/greybus/audio_codec.c", i32 981, i32 3}
!53 = !{ptr @gbaudio_unregister_module.__UNIQUE_ID_ddebug259, !52, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/greybus/audio_codec.c", i32 987, i32 2}
!56 = !{ptr @gbaudio_unregister_module.__UNIQUE_ID_ddebug260, !55, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!57 = !{ptr @__ksymtab_gbaudio_unregister_module, !58, !"__ksymtab_gbaudio_unregister_module", i1 false, i1 false}
!58 = !{!"../drivers/staging/greybus/audio_codec.c", i32 991, i32 1}
!59 = !{ptr @__initcall__kmod_gb_audio_codec__263_1101_gbaudio_codec_driver_init6, !60, !"__initcall__kmod_gb_audio_codec__263_1101_gbaudio_codec_driver_init6", i1 false, i1 false}
!60 = !{!"../drivers/staging/greybus/audio_codec.c", i32 1101, i32 1}
!61 = !{ptr @__exitcall_gbaudio_codec_driver_exit, !60, !"__exitcall_gbaudio_codec_driver_exit", i1 false, i1 false}
!62 = !{ptr @__UNIQUE_ID_description264, !63, !"__UNIQUE_ID_description264", i1 false, i1 false}
!63 = !{!"../drivers/staging/greybus/audio_codec.c", i32 1103, i32 1}
!64 = !{ptr @__UNIQUE_ID_author265, !65, !"__UNIQUE_ID_author265", i1 false, i1 false}
!65 = !{!"../drivers/staging/greybus/audio_codec.c", i32 1104, i32 1}
!66 = !{ptr @__UNIQUE_ID_file266, !67, !"__UNIQUE_ID_file266", i1 false, i1 false}
!67 = !{!"../drivers/staging/greybus/audio_codec.c", i32 1105, i32 1}
!68 = !{ptr @__UNIQUE_ID_license267, !67, !"__UNIQUE_ID_license267", i1 false, i1 false}
!69 = !{ptr @__UNIQUE_ID_alias268, !70, !"__UNIQUE_ID_alias268", i1 false, i1 false}
!70 = !{!"../drivers/staging/greybus/audio_codec.c", i32 1106, i32 1}
!71 = !{ptr @gbcodec, !72, !"gbcodec", i1 false, i1 false}
!72 = !{!"../drivers/staging/greybus/audio_codec.c", i32 19, i32 35}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/greybus/audio_codec.c", i32 58, i32 3}
!75 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @gbaudio_module_enable_tx._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @gbaudio_module_enable_tx._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/staging/greybus/audio_codec.c", i32 65, i32 3}
!80 = !{ptr @gbaudio_module_enable_tx._entry.27, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @gbaudio_module_enable_tx._entry_ptr.29, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/staging/greybus/audio_codec.c", i32 77, i32 4}
!84 = !{ptr @gbaudio_module_enable_tx._rs, !83, !"_rs", i1 false, i1 false}
!85 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @gbaudio_module_enable_tx._entry.31, !83, !"_entry", i1 false, i1 false}
!87 = !{ptr @gbaudio_module_enable_tx._entry_ptr.33, !83, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/staging/greybus/audio_codec.c", i32 81, i32 3}
!90 = !{ptr @gbaudio_module_enable_tx.__UNIQUE_ID_ddebug239, !89, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!91 = !{ptr @gbaudio_module_enable_tx._rs.35, !92, !"_rs", i1 false, i1 false}
!92 = !{!"../drivers/staging/greybus/audio_codec.c", i32 94, i32 4}
!93 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @gbaudio_module_enable_tx._entry.36, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @gbaudio_module_enable_tx._entry_ptr.38, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/staging/greybus/audio_codec.c", i32 98, i32 3}
!98 = !{ptr @gbaudio_module_enable_tx.__UNIQUE_ID_ddebug240, !97, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!99 = !{ptr @gbaudio_module_enable_tx._rs.40, !100, !"_rs", i1 false, i1 false}
!100 = !{!"../drivers/staging/greybus/audio_codec.c", i32 107, i32 4}
!101 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @gbaudio_module_enable_tx._entry.41, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @gbaudio_module_enable_tx._entry_ptr.43, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @gbaudio_module_enable_tx._rs.44, !105, !"_rs", i1 false, i1 false}
!105 = !{!"../drivers/staging/greybus/audio_codec.c", i32 114, i32 4}
!106 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @gbaudio_module_enable_tx._entry.45, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @gbaudio_module_enable_tx._entry_ptr.47, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/staging/greybus/audio_codec.c", i32 119, i32 3}
!111 = !{ptr @gbaudio_module_enable_tx.__UNIQUE_ID_ddebug241, !110, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/staging/greybus/audio_codec.c", i32 135, i32 3}
!114 = !{ptr @gbaudio_module_disable_tx._entry, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @gbaudio_module_disable_tx._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @gbaudio_module_disable_tx._rs, !117, !"_rs", i1 false, i1 false}
!117 = !{!"../drivers/staging/greybus/audio_codec.c", i32 145, i32 4}
!118 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @gbaudio_module_disable_tx._entry.50, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @gbaudio_module_disable_tx._entry_ptr.52, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/staging/greybus/audio_codec.c", i32 149, i32 3}
!123 = !{ptr @gbaudio_module_disable_tx.__UNIQUE_ID_ddebug242, !122, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!124 = !{ptr @gbaudio_module_disable_tx._rs.54, !125, !"_rs", i1 false, i1 false}
!125 = !{!"../drivers/staging/greybus/audio_codec.c", i32 160, i32 4}
!126 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @gbaudio_module_disable_tx._entry.55, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @gbaudio_module_disable_tx._entry_ptr.57, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/staging/greybus/audio_codec.c", i32 164, i32 3}
!131 = !{ptr @gbaudio_module_disable_tx.__UNIQUE_ID_ddebug243, !130, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!132 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/staging/greybus/audio_codec.c", i32 184, i32 3}
!134 = !{ptr @gbaudio_module_enable_rx._entry, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @gbaudio_module_enable_rx._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @gbaudio_module_enable_rx._entry.60, !137, !"_entry", i1 false, i1 false}
!137 = !{!"../drivers/staging/greybus/audio_codec.c", i32 191, i32 3}
!138 = !{ptr @gbaudio_module_enable_rx._entry_ptr.61, !137, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @gbaudio_module_enable_rx._rs, !140, !"_rs", i1 false, i1 false}
!140 = !{!"../drivers/staging/greybus/audio_codec.c", i32 203, i32 4}
!141 = !{ptr @gbaudio_module_enable_rx._entry.62, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @gbaudio_module_enable_rx._entry_ptr.63, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @gbaudio_module_enable_rx.__UNIQUE_ID_ddebug244, !144, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!144 = !{!"../drivers/staging/greybus/audio_codec.c", i32 207, i32 3}
!145 = !{ptr @gbaudio_module_enable_rx._rs.64, !146, !"_rs", i1 false, i1 false}
!146 = !{!"../drivers/staging/greybus/audio_codec.c", i32 220, i32 4}
!147 = !{ptr @gbaudio_module_enable_rx._entry.65, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @gbaudio_module_enable_rx._entry_ptr.66, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @gbaudio_module_enable_rx.__UNIQUE_ID_ddebug245, !150, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!150 = !{!"../drivers/staging/greybus/audio_codec.c", i32 224, i32 3}
!151 = !{ptr @gbaudio_module_enable_rx._rs.67, !152, !"_rs", i1 false, i1 false}
!152 = !{!"../drivers/staging/greybus/audio_codec.c", i32 233, i32 4}
!153 = !{ptr @.str.69, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @gbaudio_module_enable_rx._entry.68, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @gbaudio_module_enable_rx._entry_ptr.70, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @gbaudio_module_enable_rx._rs.71, !157, !"_rs", i1 false, i1 false}
!157 = !{!"../drivers/staging/greybus/audio_codec.c", i32 241, i32 4}
!158 = !{ptr @.str.73, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @gbaudio_module_enable_rx._entry.72, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @gbaudio_module_enable_rx._entry_ptr.74, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @gbaudio_module_enable_rx.__UNIQUE_ID_ddebug246, !162, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!162 = !{!"../drivers/staging/greybus/audio_codec.c", i32 246, i32 3}
!163 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/staging/greybus/audio_codec.c", i32 262, i32 3}
!165 = !{ptr @gbaudio_module_disable_rx._entry, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @gbaudio_module_disable_rx._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @gbaudio_module_disable_rx._rs, !168, !"_rs", i1 false, i1 false}
!168 = !{!"../drivers/staging/greybus/audio_codec.c", i32 272, i32 4}
!169 = !{ptr @.str.77, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @gbaudio_module_disable_rx._entry.76, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @gbaudio_module_disable_rx._entry_ptr.78, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @gbaudio_module_disable_rx.__UNIQUE_ID_ddebug247, !173, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!173 = !{!"../drivers/staging/greybus/audio_codec.c", i32 276, i32 3}
!174 = !{ptr @gbaudio_module_disable_rx._rs.79, !175, !"_rs", i1 false, i1 false}
!175 = !{!"../drivers/staging/greybus/audio_codec.c", i32 287, i32 4}
!176 = !{ptr @gbaudio_module_disable_rx._entry.80, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @gbaudio_module_disable_rx._entry_ptr.81, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @gbaudio_module_disable_rx.__UNIQUE_ID_ddebug248, !179, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!179 = !{!"../drivers/staging/greybus/audio_codec.c", i32 291, i32 3}
!180 = !{ptr @.str.82, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/staging/greybus/audio_codec.c", i32 696, i32 41}
!182 = !{ptr @.str.83, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/staging/greybus/audio_codec.c", i32 708, i32 3}
!184 = !{ptr @.str.84, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @gbaudio_init_jack._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @gbaudio_init_jack._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.85, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/staging/greybus/audio_codec.c", i32 718, i32 43}
!189 = !{ptr @.str.87, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/staging/greybus/audio_codec.c", i32 732, i32 3}
!191 = !{ptr @gbaudio_init_jack._entry.86, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @gbaudio_init_jack._entry_ptr.88, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.90, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/staging/greybus/audio_codec.c", i32 751, i32 4}
!195 = !{ptr @gbaudio_init_jack._entry.89, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @gbaudio_init_jack._entry_ptr.91, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.93, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/staging/greybus/audio_codec.c", i32 760, i32 4}
!199 = !{ptr @gbaudio_init_jack._entry.92, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @gbaudio_init_jack._entry_ptr.94, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.96, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/staging/greybus/audio_codec.c", i32 769, i32 4}
!203 = !{ptr @gbaudio_init_jack._entry.95, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @gbaudio_init_jack._entry_ptr.97, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @gbaudio_init_jack._entry.98, !206, !"_entry", i1 false, i1 false}
!206 = !{!"../drivers/staging/greybus/audio_codec.c", i32 778, i32 4}
!207 = !{ptr @gbaudio_init_jack._entry_ptr.99, !206, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.100, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/staging/greybus/audio_codec.c", i32 916, i32 2}
!210 = !{ptr @.str.101, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @gbaudio_codec_cleanup.__UNIQUE_ID_ddebug253, !209, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!212 = !{ptr @.str.102, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/staging/greybus/audio_codec.c", i32 1092, i32 11}
!214 = !{ptr @gbaudio_codec_driver, !215, !"gbaudio_codec_driver", i1 false, i1 false}
!215 = !{!"../drivers/staging/greybus/audio_codec.c", i32 1090, i32 31}
!216 = !{ptr @soc_codec_dev_gbaudio, !217, !"soc_codec_dev_gbaudio", i1 false, i1 false}
!217 = !{!"../drivers/staging/greybus/audio_codec.c", i32 1046, i32 46}
!218 = !{ptr @gbcodec_probe.__key, !219, !"__key", i1 false, i1 false}
!219 = !{!"../drivers/staging/greybus/audio_codec.c", i32 1008, i32 2}
!220 = !{ptr @.str.103, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.104, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/staging/greybus/audio_codec.c", i32 660, i32 11}
!223 = !{ptr @.str.105, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/staging/greybus/audio_codec.c", i32 673, i32 19}
!225 = !{ptr @.str.106, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/staging/greybus/audio_codec.c", i32 663, i32 19}
!227 = !{ptr @gbaudio_dai, !228, !"gbaudio_dai", i1 false, i1 false}
!228 = !{!"../drivers/staging/greybus/audio_codec.c", i32 658, i32 34}
!229 = !{ptr @gbcodec_dai_ops, !230, !"gbcodec_dai_ops", i1 false, i1 false}
!230 = !{!"../drivers/staging/greybus/audio_codec.c", i32 650, i32 37}
!231 = !{ptr @.str.107, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/staging/greybus/audio_codec.c", i32 571, i32 2}
!233 = !{ptr @.str.108, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @gbcodec_mute_stream.__UNIQUE_ID_ddebug251, !232, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!235 = !{ptr @.str.109, !232, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @.str.110, !232, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @gbcodec_mute_stream._entry, !238, !"_entry", i1 false, i1 false}
!238 = !{!"../drivers/staging/greybus/audio_codec.c", i32 578, i32 3}
!239 = !{ptr @gbcodec_mute_stream._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.112, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/staging/greybus/audio_codec.c", i32 584, i32 3}
!242 = !{ptr @gbcodec_mute_stream._entry.111, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @gbcodec_mute_stream._entry_ptr.113, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.115, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/staging/greybus/audio_codec.c", i32 602, i32 3}
!246 = !{ptr @gbcodec_mute_stream._entry.114, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @gbcodec_mute_stream._entry_ptr.116, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @gbcodec_mute_stream._rs, !249, !"_rs", i1 false, i1 false}
!249 = !{!"../drivers/staging/greybus/audio_codec.c", i32 640, i32 3}
!250 = !{ptr @.str.118, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @gbcodec_mute_stream._entry.117, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @gbcodec_mute_stream._entry_ptr.119, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.120, !249, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @.str.121, !249, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @.str.122, !249, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @.str.123, !249, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.124, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../include/linux/greybus/bundle.h", i32 53, i32 3}
!259 = !{ptr @.str.125, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @.str.126, !258, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @gb_pm_runtime_get_sync._entry, !258, !"_entry", i1 false, i1 false}
!262 = !{ptr @gb_pm_runtime_get_sync._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.127, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/staging/greybus/audio_codec.c", i32 351, i32 3}
!265 = !{ptr @gbcodec_startup._entry, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @gbcodec_startup._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @gbcodec_startup._entry.128, !268, !"_entry", i1 false, i1 false}
!268 = !{!"../drivers/staging/greybus/audio_codec.c", i32 358, i32 3}
!269 = !{ptr @gbcodec_startup._entry_ptr.129, !268, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.130, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/staging/greybus/audio_codec.c", i32 379, i32 3}
!272 = !{ptr @.str.131, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @.str.132, !271, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @gbcodec_shutdown._entry, !271, !"_entry", i1 false, i1 false}
!275 = !{ptr @gbcodec_shutdown._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @gbcodec_shutdown._entry.133, !277, !"_entry", i1 false, i1 false}
!277 = !{!"../drivers/staging/greybus/audio_codec.c", i32 383, i32 3}
!278 = !{ptr @gbcodec_shutdown._entry_ptr.134, !277, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.135, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/staging/greybus/audio_codec.c", i32 408, i32 3}
!281 = !{ptr @gbcodec_hw_params._entry, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @gbcodec_hw_params._entry_ptr, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.137, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/staging/greybus/audio_codec.c", i32 418, i32 3}
!285 = !{ptr @gbcodec_hw_params._entry.136, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @gbcodec_hw_params._entry_ptr.138, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.140, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/staging/greybus/audio_codec.c", i32 426, i32 3}
!289 = !{ptr @gbcodec_hw_params._entry.139, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @gbcodec_hw_params._entry_ptr.141, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.143, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/staging/greybus/audio_codec.c", i32 434, i32 3}
!293 = !{ptr @gbcodec_hw_params._entry.142, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @gbcodec_hw_params._entry_ptr.144, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.146, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/staging/greybus/audio_codec.c", i32 448, i32 3}
!297 = !{ptr @gbcodec_hw_params._entry.145, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @gbcodec_hw_params._entry_ptr.147, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @gbcodec_hw_params._entry.148, !300, !"_entry", i1 false, i1 false}
!300 = !{!"../drivers/staging/greybus/audio_codec.c", i32 455, i32 3}
!301 = !{ptr @gbcodec_hw_params._entry_ptr.149, !300, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @gbcodec_hw_params._rs, !303, !"_rs", i1 false, i1 false}
!303 = !{!"../drivers/staging/greybus/audio_codec.c", i32 472, i32 3}
!304 = !{ptr @.str.151, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @gbcodec_hw_params._entry.150, !303, !"_entry", i1 false, i1 false}
!306 = !{ptr @gbcodec_hw_params._entry_ptr.152, !303, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.153, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/staging/greybus/audio_codec.c", i32 509, i32 3}
!309 = !{ptr @gbcodec_prepare._entry, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @gbcodec_prepare._entry_ptr, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @gbcodec_prepare._entry.154, !312, !"_entry", i1 false, i1 false}
!312 = !{!"../drivers/staging/greybus/audio_codec.c", i32 521, i32 3}
!313 = !{ptr @gbcodec_prepare._entry_ptr.155, !312, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @gbcodec_prepare._entry.156, !315, !"_entry", i1 false, i1 false}
!315 = !{!"../drivers/staging/greybus/audio_codec.c", i32 528, i32 3}
!316 = !{ptr @gbcodec_prepare._entry_ptr.157, !315, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @gbcodec_prepare._rs, !318, !"_rs", i1 false, i1 false}
!318 = !{!"../drivers/staging/greybus/audio_codec.c", i32 551, i32 3}
!319 = !{ptr @.str.159, !318, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @gbcodec_prepare._entry.158, !318, !"_entry", i1 false, i1 false}
!321 = !{ptr @gbcodec_prepare._entry_ptr.160, !318, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @greybus_asoc_machine_of_match, !323, !"greybus_asoc_machine_of_match", i1 false, i1 false}
!323 = !{!"../drivers/staging/greybus/audio_codec.c", i32 1085, i32 34}
!324 = !{ptr @gbaudio_codec_pm_ops, !325, !"gbaudio_codec_pm_ops", i1 false, i1 false}
!325 = !{!"../drivers/staging/greybus/audio_codec.c", i32 1067, i32 32}
!326 = !{ptr @.str.161, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/staging/greybus/audio_codec.c", i32 1057, i32 2}
!328 = !{ptr @.str.162, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @gbaudio_codec_suspend.__UNIQUE_ID_ddebug261, !327, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!330 = !{ptr @.str.163, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/staging/greybus/audio_codec.c", i32 1063, i32 2}
!332 = !{ptr @.str.164, !331, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @gbaudio_codec_resume.__UNIQUE_ID_ddebug262, !331, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!334 = !{i32 1, !"wchar_size", i32 2}
!335 = !{i32 1, !"min_enum_size", i32 4}
!336 = !{i32 8, !"branch-target-enforcement", i32 0}
!337 = !{i32 8, !"sign-return-address", i32 0}
!338 = !{i32 8, !"sign-return-address-all", i32 0}
!339 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!340 = !{i32 7, !"uwtable", i32 1}
!341 = !{i32 7, !"frame-pointer", i32 2}
!342 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!343 = !{!"auto-init"}
!344 = !{i64 2148718768, i64 2148718773, i64 2148718786, i64 2148718830, i64 2148718864, i64 2148718885}
!345 = !{i64 2148236372}
!346 = !{i64 721195, i64 721220, i64 721242, i64 721258, i64 721270, i64 721290, i64 721314, i64 721330, i64 721342}
!347 = !{i64 2148236560}
!348 = !{i32 0, i32 33}
