; ModuleID = '/llk/IR_all_yes/sound/soc/bcm/cygnus-ssp.c_pt.bc'
source_filename = "../sound/soc/bcm/cygnus-ssp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cygnus_ssp_set_custom_fsync_width\22, \22a\22\09"
module asm "\09.weak\09__crc_cygnus_ssp_set_custom_fsync_width\09\09\09\09"
module asm "\09.long\09__crc_cygnus_ssp_set_custom_fsync_width\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cygnus_ssp_set_custom_fsync_width:\09\09\09\09\09"
module asm "\09.asciz \09\22cygnus_ssp_set_custom_fsync_width\22\09\09\09\09\09"
module asm "__kstrtabns_cygnus_ssp_set_custom_fsync_width:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.pll_macro_entry = type { i32, i32 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.cygnus_aio_port = type { i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.cygnus_ssp_regs, %struct.ringbuf_regs, %struct.ringbuf_regs, ptr, ptr, %struct.cygnus_track_clk }
%struct.cygnus_ssp_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ringbuf_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.cygnus_track_clk = type { i8, i8, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.cygnus_audio = type { [4 x %struct.cygnus_aio_port], i32, ptr, ptr, ptr, [3 x ptr], i32, i32 }
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
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }

@__kstrtab_cygnus_ssp_set_custom_fsync_width = external dso_local constant [0 x i8], align 1
@__kstrtabns_cygnus_ssp_set_custom_fsync_width = external dso_local constant [0 x i8], align 1
@__ksymtab_cygnus_ssp_set_custom_fsync_width = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cygnus_ssp_set_custom_fsync_width to i32), ptr @__kstrtab_cygnus_ssp_set_custom_fsync_width, ptr @__kstrtabns_cygnus_ssp_set_custom_fsync_width }, section "___ksymtab_gpl+cygnus_ssp_set_custom_fsync_width", align 4
@__initcall__kmod_snd_soc_cygnus__254_1411_cygnus_ssp_driver_init6 = internal global ptr @cygnus_ssp_driver_init, section ".initcall6.init", align 4
@cygnus_ssp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cygnus_ssp_probe, ptr @cygnus_ssp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cygnus_ssp_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cygnus_ssp_driver_exit = internal global ptr @cygnus_ssp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias255 = internal constant [41 x i8] c"snd_soc_cygnus.alias=platform:cygnus-ssp\00", section ".modinfo", align 1
@__UNIQUE_ID_file256 = internal constant [49 x i8] c"snd_soc_cygnus.file=sound/soc/bcm/snd-soc-cygnus\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [30 x i8] c"snd_soc_cygnus.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author258 = internal constant [31 x i8] c"snd_soc_cygnus.author=Broadcom\00", section ".modinfo", align 1
@__UNIQUE_ID_description259 = internal constant [53 x i8] c"snd_soc_cygnus.description=Cygnus ASoC SSP Interface\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cygnus-ssp\00", [21 x i8] zeroinitializer }, align 32
@cygnus_ssp_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,cygnus-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aud\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i2s_in\00", [25 x i8] zeroinitializer }, align 32
@cygnus_ssp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1337, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"child nodes is %d.  Must be between 1 and %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cygnus_ssp_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/bcm/cygnus-ssp.c\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cygnus_ssp_probe._entry_ptr = internal global ptr @cygnus_ssp_probe._entry, section ".printk_index", align 4
@cygnus_ssp_dai = internal global { [4 x %struct.snd_soc_dai_driver], [160 x i8] } zeroinitializer, align 32
@cygnus_ssp_probe.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.4, ptr @.str.5, ptr @.str.9, i8 1, i8 82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_cygnus\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Activating DAI: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@cygnus_ssp_probe.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.4, ptr @.str.5, ptr @.str.10, i8 1, i8 84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Registering %d DAIs\0A\00", [43 x i8] zeroinitializer }, align 32
@cygnus_ssp_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.90, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @cygnus_ssp_suspend, ptr @cygnus_ssp_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@cygnus_ssp_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 1366, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"snd_soc_register_dai failed\0A\00", [35 x i8] zeroinitializer }, align 32
@cygnus_ssp_probe._entry_ptr.13 = internal global ptr @cygnus_ssp_probe._entry.11, section ".printk_index", align 4
@cygnus_ssp_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 1376, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"audio clock initialization failed\0A\00", [61 x i8] zeroinitializer }, align 32
@cygnus_ssp_probe._entry_ptr.16 = internal global ptr @cygnus_ssp_probe._entry.14, section ".printk_index", align 4
@cygnus_ssp_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 1382, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"platform reg error %d\0A\00", [41 x i8] zeroinitializer }, align 32
@cygnus_ssp_probe._entry_ptr.19 = internal global ptr @cygnus_ssp_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@parse_ssp_child_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.5, i32 1226, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Missing reg property\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"parse_ssp_child_node\00", [43 x i8] zeroinitializer }, align 32
@parse_ssp_child_node._entry_ptr = internal global ptr @parse_ssp_child_node._entry, section ".printk_index", align 4
@parse_ssp_child_node._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.5, i32 1248, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Bad value for reg %u\0A\00", [42 x i8] zeroinitializer }, align 32
@parse_ssp_child_node._entry_ptr.25 = internal global ptr @parse_ssp_child_node._entry.23, section ".printk_index", align 4
@cygnus_ssp_dai_info = internal constant { [3 x %struct.snd_soc_dai_driver], [104 x i8] } { [3 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.30, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @cygnus_ssp_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 1028, i32 -2147483648, i32 0, i32 0, i32 2, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 1028, i32 -2147483648, i32 0, i32 0, i32 2, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.31, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @cygnus_ssp_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 1028, i32 -2147483648, i32 0, i32 0, i32 2, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 1028, i32 -2147483648, i32 0, i32 0, i32 2, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.32, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @cygnus_ssp_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 1028, i32 -2147483648, i32 0, i32 0, i32 2, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 1028, i32 -2147483648, i32 0, i32 0, i32 2, i32 16, i32 0 }, i8 0, i32 0, i32 0 }], [104 x i8] zeroinitializer }, align 32
@cygnus_spdif_dai_info = internal constant { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.87, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @cygnus_spdif_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr null, i64 1028, i32 -2147483648, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@parse_ssp_child_node._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.5, i32 1276, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Bad value for port_type %d\0A\00", [36 x i8] zeroinitializer }, align 32
@parse_ssp_child_node._entry_ptr.28 = internal global ptr @parse_ssp_child_node._entry.26, section ".printk_index", align 4
@parse_ssp_child_node.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.22, ptr @.str.5, ptr @.str.29, i8 1, i8 64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s portnum = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cygnus-ssp0\00", [20 x i8] zeroinitializer }, align 32
@cygnus_ssp_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @cygnus_ssp_set_sysclk, ptr null, ptr null, ptr null, ptr @cygnus_ssp_set_fmt, ptr null, ptr @cygnus_set_dai_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cygnus_ssp_startup, ptr @cygnus_ssp_shutdown, ptr @cygnus_ssp_hw_params, ptr null, ptr null, ptr @cygnus_ssp_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cygnus-ssp1\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cygnus-ssp2\00", [20 x i8] zeroinitializer }, align 32
@cygnus_ssp_set_sysclk.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.33, ptr @.str.5, ptr @.str.34, i8 0, i8 -75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cygnus_ssp_set_sysclk\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s Enter port = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@cygnus_ssp_set_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.5, i32 728, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s Setting mclk failed.\0A\00", [39 x i8] zeroinitializer }, align 32
@cygnus_ssp_set_sysclk._entry_ptr = internal global ptr @cygnus_ssp_set_sysclk._entry, section ".printk_index", align 4
@cygnus_ssp_set_sysclk.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.33, ptr @.str.5, ptr @.str.36, i8 0, i8 -73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s Setting MCLKSEL to %d\0A\00", [38 x i8] zeroinitializer }, align 32
@pll_predef_mclk = internal constant { [18 x %struct.pll_macro_entry], [48 x i8] } { [18 x %struct.pll_macro_entry] [%struct.pll_macro_entry { i32 4096000, i32 0 }, %struct.pll_macro_entry { i32 8192000, i32 1 }, %struct.pll_macro_entry { i32 16384000, i32 2 }, %struct.pll_macro_entry { i32 5644800, i32 0 }, %struct.pll_macro_entry { i32 11289600, i32 1 }, %struct.pll_macro_entry { i32 22579200, i32 2 }, %struct.pll_macro_entry { i32 6144000, i32 0 }, %struct.pll_macro_entry { i32 12288000, i32 1 }, %struct.pll_macro_entry { i32 24576000, i32 2 }, %struct.pll_macro_entry { i32 12288000, i32 0 }, %struct.pll_macro_entry { i32 24576000, i32 1 }, %struct.pll_macro_entry { i32 49152000, i32 2 }, %struct.pll_macro_entry { i32 22579200, i32 0 }, %struct.pll_macro_entry { i32 45158400, i32 1 }, %struct.pll_macro_entry { i32 90316800, i32 2 }, %struct.pll_macro_entry { i32 24576000, i32 0 }, %struct.pll_macro_entry { i32 49152000, i32 1 }, %struct.pll_macro_entry { i32 98304000, i32 2 }], [48 x i8] zeroinitializer }, align 32
@pll_configure_mclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.5, i32 508, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s No valid mclk freq (%u) found!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pll_configure_mclk\00", [45 x i8] zeroinitializer }, align 32
@pll_configure_mclk._entry_ptr = internal global ptr @pll_configure_mclk._entry, section ".printk_index", align 4
@pll_configure_mclk._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.5, i32 518, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s clk_prepare_enable failed %d\0A\00", [63 x i8] zeroinitializer }, align 32
@pll_configure_mclk._entry_ptr.41 = internal global ptr @pll_configure_mclk._entry.39, section ".printk_index", align 4
@pll_configure_mclk._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.5, i32 528, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@pll_configure_mclk._entry_ptr.43 = internal global ptr @pll_configure_mclk._entry.42, section ".printk_index", align 4
@pll_configure_mclk._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.38, ptr @.str.5, i32 537, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s Set MCLK rate failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@pll_configure_mclk._entry_ptr.46 = internal global ptr @pll_configure_mclk._entry.44, section ".printk_index", align 4
@cygnus_ssp_set_fmt.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.47, ptr @.str.5, ptr @.str.48, i8 0, i8 -45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cygnus_ssp_set_fmt\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s Enter  fmt: %x\0A\00", [45 x i8] zeroinitializer }, align 32
@cygnus_ssp_set_fmt.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.47, ptr @.str.5, ptr @.str.49, i8 0, i8 -25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s  Set OE bits 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@cygnus_set_dai_tdm_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.5, i32 983, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s tx_mask must equal rx_mask\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cygnus_set_dai_tdm_slot\00", [40 x i8] zeroinitializer }, align 32
@cygnus_set_dai_tdm_slot._entry_ptr = internal global ptr @cygnus_set_dai_tdm_slot._entry, section ".printk_index", align 4
@cygnus_set_dai_tdm_slot._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.5, i32 1011, ptr @.str.54, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s Defaulting Slot Width to 32\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cygnus_set_dai_tdm_slot._entry_ptr.55 = internal global ptr @cygnus_set_dai_tdm_slot._entry.52, section ".printk_index", align 4
@cygnus_set_dai_tdm_slot._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.51, ptr @.str.5, i32 1026, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s In TDM mode, frame bits INVALID (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@cygnus_set_dai_tdm_slot._entry_ptr.58 = internal global ptr @cygnus_set_dai_tdm_slot._entry.56, section ".printk_index", align 4
@cygnus_set_dai_tdm_slot.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.51, ptr @.str.5, ptr @.str.59, i8 1, i8 2, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s active_slots %u, bits per frame %d\0A\00", [57 x i8] zeroinitializer }, align 32
@cygnus_rate_constraint = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @cygnus_rates, i32 13, i32 0 }, [20 x i8] zeroinitializer }, align 32
@cygnus_rates = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 8000, i32 11025, i32 16000, i32 22050, i32 32000, i32 44100, i32 48000, i32 88200, i32 96000, i32 176400, i32 192000, i32 352800, i32 384000], [44 x i8] zeroinitializer }, align 32
@cygnus_ssp_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.5, i32 779, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Clk index %u is out of bounds\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cygnus_ssp_shutdown\00", [44 x i8] zeroinitializer }, align 32
@cygnus_ssp_shutdown._entry_ptr = internal global ptr @cygnus_ssp_shutdown._entry, section ".printk_index", align 4
@cygnus_ssp_hw_params.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.62, ptr @.str.5, ptr @.str.63, i8 0, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cygnus_ssp_hw_params\00", [43 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s port = %d\0A\00", [18 x i8] zeroinitializer }, align 32
@cygnus_ssp_hw_params.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.62, ptr @.str.5, ptr @.str.64, i8 0, i8 -98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"params_channels %d\0A\00", [44 x i8] zeroinitializer }, align 32
@cygnus_ssp_hw_params.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.62, ptr @.str.5, ptr @.str.65, i8 0, i8 -98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rate %d\0A\00", [23 x i8] zeroinitializer }, align 32
@cygnus_ssp_hw_params.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.62, ptr @.str.5, ptr @.str.66, i8 0, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"format %d\0A\00", [21 x i8] zeroinitializer }, align 32
@cygnus_ssp_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.5, i32 642, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Cannot run %d channels at %dHz\0A\00", [32 x i8] zeroinitializer }, align 32
@cygnus_ssp_hw_params._entry_ptr = internal global ptr @cygnus_ssp_hw_params._entry, section ".printk_index", align 4
@cygnus_ssp_hw_params._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.62, ptr @.str.5, i32 651, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s port running in unknown mode\0A\00", [63 x i8] zeroinitializer }, align 32
@cygnus_ssp_hw_params._entry_ptr.70 = internal global ptr @cygnus_ssp_hw_params._entry.68, section ".printk_index", align 4
@cygnus_ssp_set_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.5, i32 577, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Invalid combination of MCLK and BCLK\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cygnus_ssp_set_clocks\00", [42 x i8] zeroinitializer }, align 32
@cygnus_ssp_set_clocks._entry_ptr = internal global ptr @cygnus_ssp_set_clocks._entry, section ".printk_index", align 4
@cygnus_ssp_set_clocks._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.5, i32 579, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"lrclk = %u, bits/frame = %u, mclk = %u\0A\00", [56 x i8] zeroinitializer }, align 32
@cygnus_ssp_set_clocks._entry_ptr.75 = internal global ptr @cygnus_ssp_set_clocks._entry.73, section ".printk_index", align 4
@cygnus_ssp_set_clocks.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.72, ptr @.str.5, ptr @.str.76, i8 0, i8 -107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SCLKS_PER_1FS_DIV32 = 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@cygnus_ssp_set_clocks._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.72, ptr @.str.5, i32 604, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unknown port type\0A\00", [45 x i8] zeroinitializer }, align 32
@cygnus_ssp_set_clocks._entry_ptr.79 = internal global ptr @cygnus_ssp_set_clocks._entry.77, section ".printk_index", align 4
@cygnus_ssp_set_clocks.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.72, ptr @.str.5, ptr @.str.80, i8 0, i8 -103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mclk cfg reg = 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@cygnus_ssp_set_clocks.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.72, ptr @.str.5, ptr @.str.81, i8 0, i8 -102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"bits per frame = %u, mclk = %u Hz, lrclk = %u Hz\0A\00", [46 x i8] zeroinitializer }, align 32
@cygnus_ssp_trigger.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.82, ptr @.str.5, ptr @.str.83, i8 0, i8 -22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cygnus_ssp_trigger\00", [45 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s cmd %d at port = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@audio_ssp_out_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.5, i32 421, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Port not supported %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"audio_ssp_out_enable\00", [43 x i8] zeroinitializer }, align 32
@audio_ssp_out_enable._entry_ptr = internal global ptr @audio_ssp_out_enable._entry, section ".printk_index", align 4
@audio_ssp_out_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.86, ptr @.str.5, i32 484, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"audio_ssp_out_disable\00", [42 x i8] zeroinitializer }, align 32
@audio_ssp_out_disable._entry_ptr = internal global ptr @audio_ssp_out_disable._entry, section ".printk_index", align 4
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cygnus-spdif\00", [19 x i8] zeroinitializer }, align 32
@cygnus_spdif_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @cygnus_ssp_set_sysclk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cygnus_ssp_startup, ptr @cygnus_ssp_shutdown, ptr @cygnus_ssp_hw_params, ptr null, ptr null, ptr @cygnus_ssp_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@audio_ssp_init_portregs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.5, i32 330, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Port not supported\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"audio_ssp_init_portregs\00", [40 x i8] zeroinitializer }, align 32
@audio_ssp_init_portregs._entry_ptr = internal global ptr @audio_ssp_init_portregs._entry, section ".printk_index", align 4
@.str.90 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cygnus-audio\00", [19 x i8] zeroinitializer }, align 32
@__cygnus_ssp_suspend._entry = internal constant %struct.pi_entry { ptr @.str.60, ptr @.str.91, ptr @.str.5, i32 1069, ptr @.str.6, ptr @.str.7 }, align 1
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__cygnus_ssp_suspend\00", [43 x i8] zeroinitializer }, align 32
@__cygnus_ssp_suspend._entry_ptr = internal global ptr @__cygnus_ssp_suspend._entry, section ".printk_index", align 4
@__cygnus_ssp_resume._entry = internal constant %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.5, i32 1109, ptr @.str.6, ptr @.str.7 }, align 1
@.str.92 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s clk_prepare_enable failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__cygnus_ssp_resume\00", [44 x i8] zeroinitializer }, align 32
@__cygnus_ssp_resume._entry_ptr = internal global ptr @__cygnus_ssp_resume._entry, section ".printk_index", align 4
@__cygnus_ssp_resume._entry.94 = internal constant %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.5, i32 1121, ptr @.str.6, ptr @.str.7 }, align 1
@__cygnus_ssp_resume._entry_ptr.95 = internal global ptr @__cygnus_ssp_resume._entry.94, section ".printk_index", align 4
@.str.96 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ch%d_audio\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.98 = internal global [15 x i64] [i64 13, i64 32, i64 4096000, i64 5644800, i64 6144000, i64 8192000, i64 11289600, i64 12288000, i64 16384000, i64 22579200, i64 24576000, i64 45158400, i64 49152000, i64 90316800, i64 98304000]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.100 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.102 = internal global [7 x i64] [i64 5, i64 32, i64 32, i64 64, i64 128, i64 256, i64 512]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.106 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.109 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.111 = private unnamed_addr constant [18 x i8] c"cygnus_ssp_driver\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1402, i32 31 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1406, i32 11 }
@___asan_gen_.117 = private unnamed_addr constant [20 x i8] c"cygnus_ssp_of_match\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1396, i32 34 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1322, i32 62 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1326, i32 63 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1336, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [15 x i8] c"cygnus_ssp_dai\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1201, i32 34 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1353, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1362, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [21 x i8] c"cygnus_ssp_component\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1203, i32 46 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1366, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1376, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1382, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1225, i32 31 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1226, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1248, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [20 x i8] c"cygnus_ssp_dai_info\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1183, i32 40 }
@___asan_gen_.198 = private unnamed_addr constant [22 x i8] c"cygnus_spdif_dai_info\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1189, i32 40 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1276, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1280, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1184, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [19 x i8] c"cygnus_ssp_dai_ops\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1146, i32 37 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1185, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1186, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 723, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 727, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 734, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant [16 x i8] c"pll_predef_mclk\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 205, i32 37 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 507, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 517, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 527, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 536, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 844, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 926, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 982, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1010, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1024, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1032, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant [23 x i8] c"cygnus_rate_constraint\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 242, i32 48 }
@___asan_gen_.303 = private unnamed_addr constant [13 x i8] c"cygnus_rates\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 237, i32 27 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 778, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 630, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 631, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 633, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 634, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 641, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 650, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 576, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 578, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 598, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 604, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 614, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 615, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 938, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 420, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 483, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1190, i32 10 }
@___asan_gen_.396 = private unnamed_addr constant [21 x i8] c"cygnus_spdif_dai_ops\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1156, i32 37 }
@___asan_gen_.399 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 330, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1204, i32 11 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1068, i32 4 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1108, i32 5 }
@___asan_gen_.420 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.421 = private constant [30 x i8] c"../sound/soc/bcm/cygnus-ssp.c\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1297, i32 36 }
@llvm.compiler.used = appending global [143 x ptr] [ptr @__UNIQUE_ID_alias255, ptr @__UNIQUE_ID_author258, ptr @__UNIQUE_ID_description259, ptr @__UNIQUE_ID_file256, ptr @__UNIQUE_ID_license257, ptr @__cygnus_ssp_resume._entry, ptr @__cygnus_ssp_resume._entry.94, ptr @__cygnus_ssp_resume._entry_ptr, ptr @__cygnus_ssp_resume._entry_ptr.95, ptr @__cygnus_ssp_suspend._entry, ptr @__cygnus_ssp_suspend._entry_ptr, ptr @__exitcall_cygnus_ssp_driver_exit, ptr @__initcall__kmod_snd_soc_cygnus__254_1411_cygnus_ssp_driver_init6, ptr @__ksymtab_cygnus_ssp_set_custom_fsync_width, ptr @audio_ssp_init_portregs._entry, ptr @audio_ssp_init_portregs._entry_ptr, ptr @audio_ssp_out_disable._entry, ptr @audio_ssp_out_disable._entry_ptr, ptr @audio_ssp_out_enable._entry, ptr @audio_ssp_out_enable._entry_ptr, ptr @cygnus_set_dai_tdm_slot._entry, ptr @cygnus_set_dai_tdm_slot._entry.52, ptr @cygnus_set_dai_tdm_slot._entry.56, ptr @cygnus_set_dai_tdm_slot._entry_ptr, ptr @cygnus_set_dai_tdm_slot._entry_ptr.55, ptr @cygnus_set_dai_tdm_slot._entry_ptr.58, ptr @cygnus_ssp_driver_exit, ptr @cygnus_ssp_hw_params._entry, ptr @cygnus_ssp_hw_params._entry.68, ptr @cygnus_ssp_hw_params._entry_ptr, ptr @cygnus_ssp_hw_params._entry_ptr.70, ptr @cygnus_ssp_probe._entry, ptr @cygnus_ssp_probe._entry.11, ptr @cygnus_ssp_probe._entry.14, ptr @cygnus_ssp_probe._entry.17, ptr @cygnus_ssp_probe._entry_ptr, ptr @cygnus_ssp_probe._entry_ptr.13, ptr @cygnus_ssp_probe._entry_ptr.16, ptr @cygnus_ssp_probe._entry_ptr.19, ptr @cygnus_ssp_set_clocks._entry, ptr @cygnus_ssp_set_clocks._entry.73, ptr @cygnus_ssp_set_clocks._entry.77, ptr @cygnus_ssp_set_clocks._entry_ptr, ptr @cygnus_ssp_set_clocks._entry_ptr.75, ptr @cygnus_ssp_set_clocks._entry_ptr.79, ptr @cygnus_ssp_set_sysclk._entry, ptr @cygnus_ssp_set_sysclk._entry_ptr, ptr @cygnus_ssp_shutdown._entry, ptr @cygnus_ssp_shutdown._entry_ptr, ptr @parse_ssp_child_node._entry, ptr @parse_ssp_child_node._entry.23, ptr @parse_ssp_child_node._entry.26, ptr @parse_ssp_child_node._entry_ptr, ptr @parse_ssp_child_node._entry_ptr.25, ptr @parse_ssp_child_node._entry_ptr.28, ptr @pll_configure_mclk._entry, ptr @pll_configure_mclk._entry.39, ptr @pll_configure_mclk._entry.42, ptr @pll_configure_mclk._entry.44, ptr @pll_configure_mclk._entry_ptr, ptr @pll_configure_mclk._entry_ptr.41, ptr @pll_configure_mclk._entry_ptr.43, ptr @pll_configure_mclk._entry_ptr.46, ptr @cygnus_ssp_driver, ptr @.str, ptr @cygnus_ssp_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @cygnus_ssp_dai, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @cygnus_ssp_component, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @cygnus_ssp_dai_info, ptr @cygnus_spdif_dai_info, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @cygnus_ssp_dai_ops, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @pll_predef_mclk, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @cygnus_rate_constraint, ptr @cygnus_rates, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @cygnus_spdif_dai_ops, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.96], section "llvm.metadata"
@0 = internal global [104 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_ssp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_ssp_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_ssp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_ssp_dai to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_ssp_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_ssp_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_ssp_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_ssp_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_ssp_child_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_ssp_child_node._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_ssp_dai_info to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_spdif_dai_info to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_ssp_child_node._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_ssp_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_ssp_set_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_predef_mclk to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_configure_mclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_configure_mclk._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_configure_mclk._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_configure_mclk._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_set_dai_tdm_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_set_dai_tdm_slot._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_set_dai_tdm_slot._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_rate_constraint to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_rates to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_ssp_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_ssp_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_ssp_hw_params._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_ssp_set_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_ssp_set_clocks._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_ssp_set_clocks._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_ssp_out_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_ssp_out_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_spdif_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_ssp_init_portregs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cygnus_ssp_set_custom_fsync_width(ptr nocapture noundef readonly %cpu_dai, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %len, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %0)
  %1 = icmp ult i32 %0, 255
  br i1 %1, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 1
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 4
  %fsync_width = getelementptr [4 x %struct.cygnus_aio_port], ptr %5, i32 0, i32 %7, i32 4
  %8 = ptrtoint ptr %fsync_width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %len, ptr %fsync_width, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cygnus_ssp_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cygnus_ssp_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cygnus_ssp_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @cygnus_ssp_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cygnus_ssp_probe(ptr noundef %pdev) #4 align 64 {
entry:
  %clk_name.i = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 644, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call2 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #8
  %audio = getelementptr inbounds %struct.cygnus_audio, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %audio to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %audio, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.2) #8
  %i2s_in = getelementptr inbounds %struct.cygnus_audio, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %i2s_in to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9, ptr %i2s_in, align 4
  %cmp.i153 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153, label %if.then12, label %do.body

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call9 to i32
  br label %cleanup

do.body:                                          ; preds = %if.end8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %audio, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -14745600) #8, !srcloc !240
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call.i154 = tail call ptr @of_get_next_child(ptr noundef %8, ptr noundef null) #8
  %cmp.not5.i = icmp eq ptr %call.i154, null
  br i1 %cmp.not5.i, label %do.body.do.end23_crit_edge, label %do.body.for.body.i_crit_edge

do.body.for.body.i_crit_edge:                     ; preds = %do.body
  br label %for.body.i

do.body.do.end23_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.body.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i154, %do.body.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_child(ptr noundef %8, ptr noundef nonnull %child.06.i) #8
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

of_get_child_count.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %num.07.i)
  %9 = icmp ugt i32 %num.07.i, 3
  br i1 %9, label %of_get_child_count.exit.do.end23_crit_edge, label %if.end24

of_get_child_count.exit.do.end23_crit_edge:       ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23

do.end23:                                         ; preds = %of_get_child_count.exit.do.end23_crit_edge, %do.body.do.end23_crit_edge
  %num.0.lcssa.i161 = phi i32 [ %inc.i, %of_get_child_count.exit.do.end23_crit_edge ], [ 0, %do.body.do.end23_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef %num.0.lcssa.i161, i32 noundef 4) #11
  br label %cleanup

if.end24:                                         ; preds = %of_get_child_count.exit
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %call27 = tail call ptr @of_get_next_available_child(ptr noundef %11, ptr noundef null) #8
  %cmp28.not168 = icmp eq ptr %call27, null
  br i1 %cmp28.not168, label %if.end24.for.end_crit_edge, label %if.end24.for.body_crit_edge

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  br label %for.body

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end24.for.body_crit_edge
  %child_node.0170 = phi ptr [ %call48, %for.inc.for.body_crit_edge ], [ %call27, %if.end24.for.body_crit_edge ]
  %active_port_count.0169 = phi i32 [ %active_port_count.1, %for.inc.for.body_crit_edge ], [ 0, %if.end24.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.snd_soc_dai_driver], ptr @cygnus_ssp_dai, i32 0, i32 %active_port_count.0169
  %call29 = tail call fastcc i32 @parse_ssp_child_node(ptr noundef %pdev, ptr noundef nonnull %child_node.0170, ptr noundef nonnull %call.i, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.else

if.then31:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @of_node_put(ptr noundef nonnull %child_node.0170) #8
  br label %cleanup

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool32.not = icmp eq i32 %call29, 0
  br i1 %tobool32.not, label %do.body34, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body34:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cygnus_ssp_probe.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cygnus_ssp_probe, %if.then39)) #8
          to label %do.end43 [label %if.then39], !srcloc !241

if.then39:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cygnus_ssp_probe.__UNIQUE_ID_ddebug252, ptr noundef %dev1, ptr noundef nonnull @.str.9, ptr noundef %13) #8
  br label %do.end43

do.end43:                                         ; preds = %if.then39, %do.body34
  %inc = add i32 %active_port_count.0169, 1
  br label %for.inc

for.inc:                                          ; preds = %do.end43, %if.else.for.inc_crit_edge
  %active_port_count.1 = phi i32 [ %active_port_count.0169, %if.else.for.inc_crit_edge ], [ %inc, %do.end43 ]
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %call48 = tail call ptr @of_get_next_available_child(ptr noundef %15, ptr noundef nonnull %child_node.0170) #8
  %cmp28.not = icmp eq ptr %call48, null
  br i1 %cmp28.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end24.for.end_crit_edge
  %active_port_count.0.lcssa = phi i32 [ 0, %if.end24.for.end_crit_edge ], [ %active_port_count.1, %for.inc.for.end_crit_edge ]
  %dev49 = getelementptr inbounds %struct.cygnus_audio, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %dev49 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev1, ptr %dev49, align 4
  %active_ports = getelementptr inbounds %struct.cygnus_audio, ptr %call.i, i32 0, i32 6
  %17 = ptrtoint ptr %active_ports to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %active_ports, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cygnus_ssp_probe.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cygnus_ssp_probe, %if.then62)) #8
          to label %do.end65 [label %if.then62], !srcloc !241

if.then62:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cygnus_ssp_probe.__UNIQUE_ID_ddebug253, ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %active_port_count.0.lcssa) #8
  br label %do.end65

do.end65:                                         ; preds = %if.then62, %for.end
  %call66 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @cygnus_ssp_component, ptr noundef nonnull @cygnus_ssp_dai, i32 noundef %active_port_count.0.lcssa) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end72, label %do.end71

do.end71:                                         ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #11
  br label %cleanup

if.end72:                                         ; preds = %do.end65
  %call73 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq_num = getelementptr inbounds %struct.cygnus_audio, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %irq_num to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call73, ptr %irq_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call73)
  %cmp75 = icmp slt i32 %call73, 1
  br i1 %cmp75, label %if.end72.cleanup_crit_edge, label %if.end78

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end78:                                         ; preds = %if.end72
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %clk_name.i) #8
  %19 = call ptr @memset(ptr %clk_name.i, i32 255, i32 40)
  %call.i155 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i, i32 noundef 40, ptr noundef nonnull @.str.96, i32 noundef 0) #8
  %call2.i = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull %clk_name.i) #8
  %arrayidx.i = getelementptr %struct.cygnus_audio, ptr %call.i, i32 0, i32 5, i32 0
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call2.i, ptr %arrayidx.i, align 4
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end78.audio_clk_init.exit_crit_edge, label %for.cond.i

if.end78.audio_clk_init.exit_crit_edge:           ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %audio_clk_init.exit

for.cond.i:                                       ; preds = %if.end78
  %call.1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i, i32 noundef 40, ptr noundef nonnull @.str.96, i32 noundef 1) #8
  %call2.1.i = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull %clk_name.i) #8
  %arrayidx.1.i = getelementptr %struct.cygnus_audio, ptr %call.i, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call2.1.i, ptr %arrayidx.1.i, align 4
  %cmp.i.1.i = icmp ugt ptr %call2.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %for.cond.i.audio_clk_init.exit_crit_edge, label %for.cond.1.i

for.cond.i.audio_clk_init.exit_crit_edge:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %audio_clk_init.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i, i32 noundef 40, ptr noundef nonnull @.str.96, i32 noundef 2) #8
  %call2.2.i = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull %clk_name.i) #8
  %arrayidx.2.i = getelementptr %struct.cygnus_audio, ptr %call.i, i32 0, i32 5, i32 2
  %22 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call2.2.i, ptr %arrayidx.2.i, align 4
  %cmp.i.2.i = icmp ugt ptr %call2.2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i, label %for.cond.1.i.audio_clk_init.exit_crit_edge, label %audio_clk_init.exit.thread

for.cond.1.i.audio_clk_init.exit_crit_edge:       ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %audio_clk_init.exit

audio_clk_init.exit.thread:                       ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %clk_name.i) #8
  br label %if.end85

audio_clk_init.exit:                              ; preds = %for.cond.1.i.audio_clk_init.exit_crit_edge, %for.cond.i.audio_clk_init.exit_crit_edge, %if.end78.audio_clk_init.exit_crit_edge
  %call2.lcssa.i = phi ptr [ %call2.i, %if.end78.audio_clk_init.exit_crit_edge ], [ %call2.1.i, %for.cond.i.audio_clk_init.exit_crit_edge ], [ %call2.2.i, %for.cond.1.i.audio_clk_init.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %clk_name.i) #8
  %tobool80.not = icmp eq ptr %call2.lcssa.i, null
  br i1 %tobool80.not, label %audio_clk_init.exit.if.end85_crit_edge, label %do.end84

audio_clk_init.exit.if.end85_crit_edge:           ; preds = %audio_clk_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

do.end84:                                         ; preds = %audio_clk_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %call2.lcssa.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #11
  br label %cleanup

if.end85:                                         ; preds = %audio_clk_init.exit.if.end85_crit_edge, %audio_clk_init.exit.thread
  %call86 = call i32 @cygnus_soc_platform_register(ptr noundef %dev1, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end85.cleanup_crit_edge, label %do.end91

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end91:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %call86) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end91, %if.end85.cleanup_crit_edge, %do.end84, %if.end72.cleanup_crit_edge, %do.end71, %if.then31, %do.end23, %if.then12, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then5 ], [ %4, %if.then12 ], [ -22, %do.end23 ], [ %call29, %if.then31 ], [ %call66, %do.end71 ], [ %23, %do.end84 ], [ %call86, %do.end91 ], [ -12, %entry.cleanup_crit_edge ], [ %call73, %if.end72.cleanup_crit_edge ], [ 0, %if.end85.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cygnus_ssp_remove(ptr noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @cygnus_soc_platform_unregister(ptr noundef %dev) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_ssp_child_node(ptr noundef %pdev, ptr noundef %dn, ptr noundef %cygaud, ptr nocapture noundef writeonly %p_dai) unnamed_addr #4 align 64 {
entry:
  %ssp_regs = alloca [3 x %struct.cygnus_ssp_regs], align 4
  %rawval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %ssp_regs) #8
  %0 = call ptr @memset(ptr %ssp_regs, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rawval) #8
  %1 = ptrtoint ptr %rawval to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rawval, align 4, !annotation !242
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %dn, ptr noundef nonnull @.str.20, ptr noundef nonnull %rawval, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %rawval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rawval, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end30 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb14
    i32 3, label %if.end.sw.epilog_crit_edge
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %ssp_regs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2560, ptr %ssp_regs, align 4
  %.compoundliteral.sroa.2.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %ssp_regs, i32 4
  %6 = ptrtoint ptr %.compoundliteral.sroa.2.0.arrayidx.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2564, ptr %.compoundliteral.sroa.2.0.arrayidx.sroa_idx, align 4
  %.compoundliteral.sroa.3.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %ssp_regs, i32 8
  %7 = ptrtoint ptr %.compoundliteral.sroa.3.0.arrayidx.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %.compoundliteral.sroa.3.0.arrayidx.sroa_idx, align 4
  %.compoundliteral.sroa.4.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %ssp_regs, i32 12
  %8 = ptrtoint ptr %.compoundliteral.sroa.4.0.arrayidx.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %.compoundliteral.sroa.4.0.arrayidx.sroa_idx, align 4
  %.compoundliteral.sroa.5.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %ssp_regs, i32 16
  %9 = ptrtoint ptr %.compoundliteral.sroa.5.0.arrayidx.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2572, ptr %.compoundliteral.sroa.5.0.arrayidx.sroa_idx, align 4
  %.compoundliteral.sroa.6.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %ssp_regs, i32 20
  %10 = ptrtoint ptr %.compoundliteral.sroa.6.0.arrayidx.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 304, ptr %.compoundliteral.sroa.6.0.arrayidx.sroa_idx, align 4
  %.compoundliteral.sroa.7.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %ssp_regs, i32 24
  %11 = ptrtoint ptr %.compoundliteral.sroa.7.0.arrayidx.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 256, ptr %.compoundliteral.sroa.7.0.arrayidx.sroa_idx, align 4
  %.compoundliteral.sroa.8.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %ssp_regs, i32 28
  %12 = ptrtoint ptr %.compoundliteral.sroa.8.0.arrayidx.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 448, ptr %.compoundliteral.sroa.8.0.arrayidx.sroa_idx, align 4
  %.compoundliteral.sroa.9.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %ssp_regs, i32 32
  %13 = ptrtoint ptr %.compoundliteral.sroa.9.0.arrayidx.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 328, ptr %.compoundliteral.sroa.9.0.arrayidx.sroa_idx, align 4
  %.compoundliteral.sroa.10.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %ssp_regs, i32 36
  %14 = ptrtoint ptr %.compoundliteral.sroa.10.0.arrayidx.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 508, ptr %.compoundliteral.sroa.10.0.arrayidx.sroa_idx, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx2 = getelementptr inbounds [3 x %struct.cygnus_ssp_regs], ptr %ssp_regs, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2624, ptr %arrayidx2, align 4
  %.compoundliteral3.sroa.2.0.arrayidx2.sroa_idx = getelementptr inbounds [3 x %struct.cygnus_ssp_regs], ptr %ssp_regs, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %.compoundliteral3.sroa.2.0.arrayidx2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2628, ptr %.compoundliteral3.sroa.2.0.arrayidx2.sroa_idx, align 4
  %.compoundliteral3.sroa.3.0.arrayidx2.sroa_idx = getelementptr inbounds [3 x %struct.cygnus_ssp_regs], ptr %ssp_regs, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %.compoundliteral3.sroa.3.0.arrayidx2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 64, ptr %.compoundliteral3.sroa.3.0.arrayidx2.sroa_idx, align 4
  %.compoundliteral3.sroa.4.0.arrayidx2.sroa_idx = getelementptr inbounds [3 x %struct.cygnus_ssp_regs], ptr %ssp_regs, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %.compoundliteral3.sroa.4.0.arrayidx2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 68, ptr %.compoundliteral3.sroa.4.0.arrayidx2.sroa_idx, align 4
  %.compoundliteral3.sroa.5.0.arrayidx2.sroa_idx = getelementptr inbounds [3 x %struct.cygnus_ssp_regs], ptr %ssp_regs, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %.compoundliteral3.sroa.5.0.arrayidx2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2636, ptr %.compoundliteral3.sroa.5.0.arrayidx2.sroa_idx, align 4
  %.compoundliteral3.sroa.6.0.arrayidx2.sroa_idx = getelementptr inbounds [3 x %struct.cygnus_ssp_regs], ptr %ssp_regs, i32 0, i32 1, i32 5
  %20 = ptrtoint ptr %.compoundliteral3.sroa.6.0.arrayidx2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 308, ptr %.compoundliteral3.sroa.6.0.arrayidx2.sroa_idx, align 4
  %.compoundliteral3.sroa.7.0.arrayidx2.sroa_idx = getelementptr inbounds [3 x %struct.cygnus_ssp_regs], ptr %ssp_regs, i32 0, i32 1, i32 6
  %21 = ptrtoint ptr %.compoundliteral3.sroa.7.0.arrayidx2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 260, ptr %.compoundliteral3.sroa.7.0.arrayidx2.sroa_idx, align 4
  %.compoundliteral3.sroa.8.0.arrayidx2.sroa_idx = getelementptr inbounds [3 x %struct.cygnus_ssp_regs], ptr %ssp_regs, i32 0, i32 1, i32 7
  %22 = ptrtoint ptr %.compoundliteral3.sroa.8.0.arrayidx2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 452, ptr %.compoundliteral3.sroa.8.0.arrayidx2.sroa_idx, align 4
  %.compoundliteral3.sroa.9.0.arrayidx2.sroa_idx = getelementptr inbounds [3 x %struct.cygnus_ssp_regs], ptr %ssp_regs, i32 0, i32 1, i32 8
  %23 = ptrtoint ptr %.compoundliteral3.sroa.9.0.arrayidx2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 332, ptr %.compoundliteral3.sroa.9.0.arrayidx2.sroa_idx, align 4
  %.compoundliteral3.sroa.10.0.arrayidx2.sroa_idx = getelementptr inbounds [3 x %struct.cygnus_ssp_regs], ptr %ssp_regs, i32 0, i32 1, i32 9
  %24 = ptrtoint ptr %.compoundliteral3.sroa.10.0.arrayidx2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 512, ptr %.compoundliteral3.sroa.10.0.arrayidx2.sroa_idx, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx15 = getelementptr inbounds [3 x %struct.cygnus_ssp_regs], ptr %ssp_regs, i32 0, i32 2
  %25 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2688, ptr %arrayidx15, align 4
  %.compoundliteral16.sroa.2.0.arrayidx15.sroa_idx = getelementptr inbounds [3 x %struct.cygnus_ssp_regs], ptr %ssp_regs, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %.compoundliteral16.sroa.2.0.arrayidx15.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2692, ptr %.compoundliteral16.sroa.2.0.arrayidx15.sroa_idx, align 4
  %.compoundliteral16.sroa.3.0.arrayidx15.sroa_idx = getelementptr inbounds [3 x %struct.cygnus_ssp_regs], ptr %ssp_regs, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %.compoundliteral16.sroa.3.0.arrayidx15.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 128, ptr %.compoundliteral16.sroa.3.0.arrayidx15.sroa_idx, align 4
  %.compoundliteral16.sroa.4.0.arrayidx15.sroa_idx = getelementptr inbounds [3 x %struct.cygnus_ssp_regs], ptr %ssp_regs, i32 0, i32 2, i32 3
  %28 = ptrtoint ptr %.compoundliteral16.sroa.4.0.arrayidx15.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 132, ptr %.compoundliteral16.sroa.4.0.arrayidx15.sroa_idx, align 4
  %.compoundliteral16.sroa.5.0.arrayidx15.sroa_idx = getelementptr inbounds [3 x %struct.cygnus_ssp_regs], ptr %ssp_regs, i32 0, i32 2, i32 4
  %29 = ptrtoint ptr %.compoundliteral16.sroa.5.0.arrayidx15.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2700, ptr %.compoundliteral16.sroa.5.0.arrayidx15.sroa_idx, align 4
  %.compoundliteral16.sroa.6.0.arrayidx15.sroa_idx = getelementptr inbounds [3 x %struct.cygnus_ssp_regs], ptr %ssp_regs, i32 0, i32 2, i32 5
  %30 = ptrtoint ptr %.compoundliteral16.sroa.6.0.arrayidx15.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 312, ptr %.compoundliteral16.sroa.6.0.arrayidx15.sroa_idx, align 4
  %.compoundliteral16.sroa.7.0.arrayidx15.sroa_idx = getelementptr inbounds [3 x %struct.cygnus_ssp_regs], ptr %ssp_regs, i32 0, i32 2, i32 6
  %31 = ptrtoint ptr %.compoundliteral16.sroa.7.0.arrayidx15.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 264, ptr %.compoundliteral16.sroa.7.0.arrayidx15.sroa_idx, align 4
  %.compoundliteral16.sroa.8.0.arrayidx15.sroa_idx = getelementptr inbounds [3 x %struct.cygnus_ssp_regs], ptr %ssp_regs, i32 0, i32 2, i32 7
  %32 = ptrtoint ptr %.compoundliteral16.sroa.8.0.arrayidx15.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 456, ptr %.compoundliteral16.sroa.8.0.arrayidx15.sroa_idx, align 4
  %.compoundliteral16.sroa.9.0.arrayidx15.sroa_idx = getelementptr inbounds [3 x %struct.cygnus_ssp_regs], ptr %ssp_regs, i32 0, i32 2, i32 8
  %33 = ptrtoint ptr %.compoundliteral16.sroa.9.0.arrayidx15.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 336, ptr %.compoundliteral16.sroa.9.0.arrayidx15.sroa_idx, align 4
  %.compoundliteral16.sroa.10.0.arrayidx15.sroa_idx = getelementptr inbounds [3 x %struct.cygnus_ssp_regs], ptr %ssp_regs, i32 0, i32 2, i32 9
  %34 = ptrtoint ptr %.compoundliteral16.sroa.10.0.arrayidx15.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 516, ptr %.compoundliteral16.sroa.10.0.arrayidx15.sroa_idx, align 4
  br label %sw.epilog

do.end30:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev31 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.24, i32 noundef %3) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb1, %sw.bb, %if.end.sw.epilog_crit_edge
  %trunc = phi i1 [ true, %sw.bb14 ], [ true, %sw.bb1 ], [ true, %sw.bb ], [ false, %if.end.sw.epilog_crit_edge ]
  %port_type.0 = phi i32 [ 0, %sw.bb14 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ], [ 1, %if.end.sw.epilog_crit_edge ]
  %arrayidx32 = getelementptr [4 x %struct.cygnus_aio_port], ptr %cygaud, i32 0, i32 %3
  %cygaud33 = getelementptr [4 x %struct.cygnus_aio_port], ptr %cygaud, i32 0, i32 %3, i32 10
  %35 = ptrtoint ptr %cygaud33 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %cygaud, ptr %cygaud33, align 4
  %36 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %3, ptr %arrayidx32, align 4
  %port_type35 = getelementptr [4 x %struct.cygnus_aio_port], ptr %cygaud, i32 0, i32 %3, i32 5
  %37 = ptrtoint ptr %port_type35 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %port_type.0, ptr %port_type35, align 4
  %fsync_width = getelementptr [4 x %struct.cygnus_aio_port], ptr %cygaud, i32 0, i32 %3, i32 4
  %38 = ptrtoint ptr %fsync_width to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %fsync_width, align 4
  %regs = getelementptr [4 x %struct.cygnus_aio_port], ptr %cygaud, i32 0, i32 %3, i32 11
  br i1 %trunc, label %sw.bb36, label %sw.bb39

sw.bb36:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx37 = getelementptr [3 x %struct.cygnus_ssp_regs], ptr %ssp_regs, i32 0, i32 %3
  %39 = call ptr @memcpy(ptr %regs, ptr %arrayidx37, i32 40)
  %arrayidx38 = getelementptr [3 x %struct.snd_soc_dai_driver], ptr @cygnus_ssp_dai_info, i32 0, i32 %3
  %40 = call ptr @memcpy(ptr %p_dai, ptr %arrayidx38, i32 168)
  br label %do.body55

sw.bb39:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %bf_sourcech_cfg41 = getelementptr [4 x %struct.cygnus_aio_port], ptr %cygaud, i32 0, i32 %3, i32 11, i32 8
  %41 = ptrtoint ptr %bf_sourcech_cfg41 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 340, ptr %bf_sourcech_cfg41, align 4
  %bf_sourcech_ctrl43 = getelementptr [4 x %struct.cygnus_aio_port], ptr %cygaud, i32 0, i32 %3, i32 11, i32 7
  %42 = ptrtoint ptr %bf_sourcech_ctrl43 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 460, ptr %bf_sourcech_ctrl43, align 4
  %i2s_mclk_cfg45 = getelementptr [4 x %struct.cygnus_aio_port], ptr %cygaud, i32 0, i32 %3, i32 11, i32 4
  %43 = ptrtoint ptr %i2s_mclk_cfg45 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2780, ptr %i2s_mclk_cfg45, align 4
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2752, ptr %regs, align 4
  %45 = call ptr @memcpy(ptr %p_dai, ptr @cygnus_spdif_dai_info, i32 168)
  br label %do.body55

do.body55:                                        ; preds = %sw.bb39, %sw.bb36
  %.sink = phi i32 [ -1, %sw.bb36 ], [ 0, %sw.bb39 ]
  %46 = getelementptr [4 x %struct.cygnus_aio_port], ptr %cygaud, i32 0, i32 %3, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %.sink, ptr %46, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_ssp_child_node.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_ssp_child_node, %if.then60)) #8
          to label %do.end65 [label %if.then60], !srcloc !241

if.then60:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #10
  %dev61 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %48 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx32, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @parse_ssp_child_node.__UNIQUE_ID_ddebug251, ptr noundef %dev61, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.22, i32 noundef %49) #8
  br label %do.end65

do.end65:                                         ; preds = %if.then60, %do.body55
  %streams_on = getelementptr [4 x %struct.cygnus_aio_port], ptr %cygaud, i32 0, i32 %3, i32 3
  %50 = ptrtoint ptr %streams_on to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %streams_on, align 4
  %dev66 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %51 = ptrtoint ptr %cygaud33 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cygaud33, align 4
  %dev68 = getelementptr inbounds %struct.cygnus_audio, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %dev68 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %dev66, ptr %dev68, align 4
  %clk_trace = getelementptr [4 x %struct.cygnus_aio_port], ptr %cygaud, i32 0, i32 %3, i32 16
  %play_en = getelementptr [4 x %struct.cygnus_aio_port], ptr %cygaud, i32 0, i32 %3, i32 16, i32 1
  %54 = ptrtoint ptr %play_en to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %play_en, align 1
  %55 = ptrtoint ptr %clk_trace to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %clk_trace, align 4
  %56 = ptrtoint ptr %port_type35 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port_type35, align 4
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %57, label %do.end178.i [
    i32 0, label %sw.bb.i
    i32 1, label %do.body100.i
  ]

sw.bb.i:                                          ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %cygaud33 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cygaud33, align 4
  %audio.i = getelementptr inbounds %struct.cygnus_audio, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %audio.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %audio.i, align 4
  %regs.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %cygaud, i32 0, i32 %3, i32 11
  %63 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %62, i32 %64
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !244
  %66 = and i32 %65, 16519152
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  call void @arm_heavy_mb() #8
  %67 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx32, align 4
  %69 = call i32 @llvm.bswap.i32(i32 %68) #8
  %70 = ptrtoint ptr %cygaud33 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cygaud33, align 4
  %audio3.i = getelementptr inbounds %struct.cygnus_audio, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %audio3.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %audio3.i, align 4
  %bf_sourcech_grp.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %cygaud, i32 0, i32 %3, i32 11, i32 9
  %74 = ptrtoint ptr %bf_sourcech_grp.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bf_sourcech_grp.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %73, i32 %75
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %69) #8, !srcloc !240
  %76 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx32, align 4
  %shl.i = shl i32 %77, 20
  %78 = or i32 %66, 1
  %79 = call i32 @llvm.bswap.i32(i32 %78) #8
  %or8.i = or i32 %77, %79
  %or9.i = or i32 %or8.i, %shl.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !246
  call void @arm_heavy_mb() #8
  %80 = call i32 @llvm.bswap.i32(i32 %or9.i) #8
  %81 = ptrtoint ptr %cygaud33 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cygaud33, align 4
  %audio14.i = getelementptr inbounds %struct.cygnus_audio, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %audio14.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %audio14.i, align 4
  %85 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %regs.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %84, i32 %86
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %80) #8, !srcloc !240
  %87 = ptrtoint ptr %cygaud33 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cygaud33, align 4
  %audio21.i = getelementptr inbounds %struct.cygnus_audio, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %audio21.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %audio21.i, align 4
  %bf_sourcech_cfg.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %cygaud, i32 0, i32 %3, i32 11, i32 8
  %91 = ptrtoint ptr %bf_sourcech_cfg.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bf_sourcech_cfg.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %90, i32 %92
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #8, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !247
  %94 = and i32 %93, -537133185
  %95 = or i32 %94, 536871040
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !248
  call void @arm_heavy_mb() #8
  %96 = ptrtoint ptr %cygaud33 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cygaud33, align 4
  %audio34.i = getelementptr inbounds %struct.cygnus_audio, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %audio34.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %audio34.i, align 4
  %100 = ptrtoint ptr %bf_sourcech_cfg.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %bf_sourcech_cfg.i, align 4
  %add.ptr37.i = getelementptr i8, ptr %99, i32 %101
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 %95) #8, !srcloc !240
  %102 = ptrtoint ptr %cygaud33 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cygaud33, align 4
  %i2s_in.i = getelementptr inbounds %struct.cygnus_audio, ptr %103, i32 0, i32 4
  %104 = ptrtoint ptr %i2s_in.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %i2s_in.i, align 4
  %i2s_cap_stream_cfg.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %cygaud, i32 0, i32 %3, i32 11, i32 2
  %106 = ptrtoint ptr %i2s_cap_stream_cfg.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %i2s_cap_stream_cfg.i, align 4
  %add.ptr42.i = getelementptr i8, ptr %105, i32 %107
  %108 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42.i) #8, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !249
  %109 = and i32 %108, 268435455
  %110 = call i32 @llvm.bswap.i32(i32 %109) #8
  %111 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx32, align 4
  %shl48.i = shl i32 %112, 4
  %or49.i = or i32 %shl48.i, %110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !250
  call void @arm_heavy_mb() #8
  %113 = call i32 @llvm.bswap.i32(i32 %or49.i) #8
  %114 = ptrtoint ptr %cygaud33 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cygaud33, align 4
  %i2s_in54.i = getelementptr inbounds %struct.cygnus_audio, ptr %115, i32 0, i32 4
  %116 = ptrtoint ptr %i2s_in54.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %i2s_in54.i, align 4
  %118 = ptrtoint ptr %i2s_cap_stream_cfg.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %i2s_cap_stream_cfg.i, align 4
  %add.ptr57.i = getelementptr i8, ptr %117, i32 %119
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57.i, i32 %113) #8, !srcloc !240
  %120 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx32, align 4
  %122 = ptrtoint ptr %cygaud33 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cygaud33, align 4
  %audio62.i = getelementptr inbounds %struct.cygnus_audio, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %audio62.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %audio62.i, align 4
  %bf_destch_cfg.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %cygaud, i32 0, i32 %3, i32 11, i32 6
  %126 = ptrtoint ptr %bf_destch_cfg.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %bf_destch_cfg.i, align 4
  %add.ptr64.i = getelementptr i8, ptr %125, i32 %127
  %128 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.i) #8, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !251
  %129 = and i32 %128, -67633153
  %130 = or i32 %129, 67108864
  %131 = call i32 @llvm.bswap.i32(i32 %130) #8
  %add.i = shl i32 %121, 12
  %shl70.i = add i32 %add.i, 1572864
  %or71.i = or i32 %shl70.i, %131
  %or72.i = or i32 %or71.i, -2147483648
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  call void @arm_heavy_mb() #8
  %132 = call i32 @llvm.bswap.i32(i32 %or72.i) #8
  %133 = ptrtoint ptr %cygaud33 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %cygaud33, align 4
  %audio77.i = getelementptr inbounds %struct.cygnus_audio, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %audio77.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %audio77.i, align 4
  %137 = ptrtoint ptr %bf_destch_cfg.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %bf_destch_cfg.i, align 4
  %add.ptr80.i = getelementptr i8, ptr %136, i32 %138
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80.i, i32 %132) #8, !srcloc !240
  %139 = ptrtoint ptr %cygaud33 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %cygaud33, align 4
  %audio84.i = getelementptr inbounds %struct.cygnus_audio, ptr %140, i32 0, i32 2
  %141 = ptrtoint ptr %audio84.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %audio84.i, align 4
  %add.ptr85.i = getelementptr i8, ptr %142, i32 28
  %143 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85.i) #8, !srcloc !243
  %144 = call i32 @llvm.bswap.i32(i32 %143) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  %145 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx32, align 4
  %mul.i = shl i32 %146, 2
  %shl91.i = shl nuw i32 1, %mul.i
  %neg.i = xor i32 %shl91.i, -1
  %and92.i = and i32 %144, %neg.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !254
  call void @arm_heavy_mb() #8
  %147 = call i32 @llvm.bswap.i32(i32 %and92.i) #8
  %148 = ptrtoint ptr %cygaud33 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %cygaud33, align 4
  %audio97.i = getelementptr inbounds %struct.cygnus_audio, ptr %149, i32 0, i32 2
  %150 = ptrtoint ptr %audio97.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %audio97.i, align 4
  %add.ptr98.i = getelementptr i8, ptr %151, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98.i, i32 %147) #8, !srcloc !240
  br label %cleanup

do.body100.i:                                     ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  call void @arm_heavy_mb() #8
  %152 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx32, align 4
  %154 = call i32 @llvm.bswap.i32(i32 %153) #8
  %155 = ptrtoint ptr %cygaud33 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %cygaud33, align 4
  %audio105.i = getelementptr inbounds %struct.cygnus_audio, ptr %156, i32 0, i32 2
  %157 = ptrtoint ptr %audio105.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %audio105.i, align 4
  %add.ptr106.i = getelementptr i8, ptr %158, i32 520
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106.i, i32 %154) #8, !srcloc !240
  %159 = ptrtoint ptr %cygaud33 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %cygaud33, align 4
  %audio110.i = getelementptr inbounds %struct.cygnus_audio, ptr %160, i32 0, i32 2
  %161 = ptrtoint ptr %audio110.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %audio110.i, align 4
  %add.ptr111.i = getelementptr i8, ptr %162, i32 2756
  %163 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr111.i) #8, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !256
  %164 = or i32 %163, 134217728
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  call void @arm_heavy_mb() #8
  %165 = ptrtoint ptr %cygaud33 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %cygaud33, align 4
  %audio120.i = getelementptr inbounds %struct.cygnus_audio, ptr %166, i32 0, i32 2
  %167 = ptrtoint ptr %audio120.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %audio120.i, align 4
  %add.ptr121.i = getelementptr i8, ptr %168, i32 2756
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr121.i, i32 %164) #8, !srcloc !240
  %169 = ptrtoint ptr %cygaud33 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %cygaud33, align 4
  %audio125.i = getelementptr inbounds %struct.cygnus_audio, ptr %170, i32 0, i32 2
  %171 = ptrtoint ptr %audio125.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %audio125.i, align 4
  %add.ptr126.i = getelementptr i8, ptr %172, i32 2752
  %173 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr126.i) #8, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  %174 = and i32 %173, 16580479
  %175 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %arrayidx32, align 4
  %177 = or i32 %174, 128
  %178 = call i32 @llvm.bswap.i32(i32 %177)
  %or133.i = or i32 %178, %176
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  call void @arm_heavy_mb() #8
  %179 = call i32 @llvm.bswap.i32(i32 %or133.i) #8
  %180 = ptrtoint ptr %cygaud33 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %cygaud33, align 4
  %audio138.i = getelementptr inbounds %struct.cygnus_audio, ptr %181, i32 0, i32 2
  %182 = ptrtoint ptr %audio138.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %audio138.i, align 4
  %add.ptr139.i = getelementptr i8, ptr %183, i32 2752
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr139.i, i32 %179) #8, !srcloc !240
  %184 = ptrtoint ptr %cygaud33 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %cygaud33, align 4
  %audio143.i = getelementptr inbounds %struct.cygnus_audio, ptr %185, i32 0, i32 2
  %186 = ptrtoint ptr %audio143.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %audio143.i, align 4
  %bf_sourcech_cfg145.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %cygaud, i32 0, i32 %3, i32 11, i32 8
  %188 = ptrtoint ptr %bf_sourcech_cfg145.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %bf_sourcech_cfg145.i, align 4
  %add.ptr146.i = getelementptr i8, ptr %187, i32 %189
  %190 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr146.i) #8, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  %191 = and i32 %190, -537133185
  %192 = or i32 %191, 536871040
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  call void @arm_heavy_mb() #8
  %193 = ptrtoint ptr %cygaud33 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %cygaud33, align 4
  %audio157.i = getelementptr inbounds %struct.cygnus_audio, ptr %194, i32 0, i32 2
  %195 = ptrtoint ptr %audio157.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %audio157.i, align 4
  %197 = ptrtoint ptr %bf_sourcech_cfg145.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %bf_sourcech_cfg145.i, align 4
  %add.ptr160.i = getelementptr i8, ptr %196, i32 %198
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr160.i, i32 %192) #8, !srcloc !240
  %199 = ptrtoint ptr %cygaud33 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %cygaud33, align 4
  %audio164.i = getelementptr inbounds %struct.cygnus_audio, ptr %200, i32 0, i32 2
  %201 = ptrtoint ptr %audio164.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %audio164.i, align 4
  %add.ptr165.i = getelementptr i8, ptr %202, i32 28
  %203 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr165.i) #8, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  %204 = and i32 %203, -1048577
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !263
  call void @arm_heavy_mb() #8
  %205 = ptrtoint ptr %cygaud33 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %cygaud33, align 4
  %audio174.i = getelementptr inbounds %struct.cygnus_audio, ptr %206, i32 0, i32 2
  %207 = ptrtoint ptr %audio174.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %audio174.i, align 4
  %add.ptr175.i = getelementptr i8, ptr %208, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr175.i, i32 %204) #8, !srcloc !240
  br label %cleanup

do.end178.i:                                      ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #10
  %209 = ptrtoint ptr %cygaud33 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %cygaud33, align 4
  %dev.i = getelementptr inbounds %struct.cygnus_audio, ptr %210, i32 0, i32 3
  %211 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %212, ptr noundef nonnull @.str.88) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end178.i, %do.body100.i, %sw.bb.i, %do.end30, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end30 ], [ 0, %sw.bb.i ], [ 0, %do.body100.i ], [ 0, %do.end178.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rawval) #8
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %ssp_regs) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cygnus_soc_platform_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cygnus_ssp_set_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cygnus_ssp_set_sysclk.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cygnus_ssp_set_sysclk, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !241

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5
  %cygaud5 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 10
  %6 = ptrtoint ptr %cygaud5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cygaud5, align 4
  %dev = getelementptr inbounds %struct.cygnus_audio, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cygnus_ssp_set_sysclk.__UNIQUE_ID_ddebug245, ptr noundef %9, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %11) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %12 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %freq, label %pll_configure_mclk.exit.thread [
    i32 4096000, label %do.end.if.end4.i_crit_edge
    i32 8192000, label %if.end4.fold.split.i
    i32 16384000, label %if.end4.fold.split94.i
    i32 5644800, label %if.end4.fold.split95.i
    i32 11289600, label %if.end4.fold.split96.i
    i32 22579200, label %if.end4.fold.split97.i
    i32 6144000, label %if.end4.fold.split98.i
    i32 12288000, label %if.end4.fold.split99.i
    i32 24576000, label %if.end4.fold.split100.i
    i32 49152000, label %if.end4.fold.split101.i
    i32 45158400, label %if.end4.fold.split102.i
    i32 90316800, label %if.end4.fold.split103.i
    i32 98304000, label %if.end4.fold.split104.i
  ]

do.end.if.end4.i_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

pll_configure_mclk.exit.thread:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i65 = getelementptr inbounds %struct.cygnus_audio, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %dev.i65 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i65, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef %freq) #11
  br label %do.end10

if.end4.fold.split.i:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.end4.fold.split94.i:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.end4.fold.split95.i:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.end4.fold.split96.i:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.end4.fold.split97.i:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.end4.fold.split98.i:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.end4.fold.split99.i:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.end4.fold.split100.i:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.end4.fold.split101.i:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.end4.fold.split102.i:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.end4.fold.split103.i:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.end4.fold.split104.i:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end4.fold.split104.i, %if.end4.fold.split103.i, %if.end4.fold.split102.i, %if.end4.fold.split101.i, %if.end4.fold.split100.i, %if.end4.fold.split99.i, %if.end4.fold.split98.i, %if.end4.fold.split97.i, %if.end4.fold.split96.i, %if.end4.fold.split95.i, %if.end4.fold.split94.i, %if.end4.fold.split.i, %do.end.if.end4.i_crit_edge
  %i.092.lcssa.i = phi i32 [ 0, %do.end.if.end4.i_crit_edge ], [ 1, %if.end4.fold.split.i ], [ 2, %if.end4.fold.split94.i ], [ 3, %if.end4.fold.split95.i ], [ 4, %if.end4.fold.split96.i ], [ 5, %if.end4.fold.split97.i ], [ 6, %if.end4.fold.split98.i ], [ 7, %if.end4.fold.split99.i ], [ 8, %if.end4.fold.split100.i ], [ 11, %if.end4.fold.split101.i ], [ 13, %if.end4.fold.split102.i ], [ 14, %if.end4.fold.split103.i ], [ 17, %if.end4.fold.split104.i ]
  %pll_ch_num.i = getelementptr [18 x %struct.pll_macro_entry], ptr @pll_predef_mclk, i32 0, i32 %i.092.lcssa.i, i32 1
  %15 = ptrtoint ptr %pll_ch_num.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pll_ch_num.i, align 4
  %arrayidx5.i = getelementptr %struct.cygnus_audio, ptr %3, i32 0, i32 5, i32 %16
  %17 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx5.i, align 4
  %clk_trace.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 16
  %19 = ptrtoint ptr %clk_trace.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %clk_trace.i, align 4, !range !264
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool6.not.i = icmp eq i8 %20, 0
  br i1 %tobool6.not.i, label %if.end4.i.if.end19.i_crit_edge, label %land.lhs.true.i

if.end4.i.if.end19.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

land.lhs.true.i:                                  ; preds = %if.end4.i
  %cap_clk_en.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 16, i32 2
  %21 = ptrtoint ptr %cap_clk_en.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cap_clk_en.i, align 2, !range !264
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool8.not.i = icmp eq i8 %22, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %land.lhs.true.i.if.end19.i_crit_edge

land.lhs.true.i.if.end19.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.then9.i:                                       ; preds = %land.lhs.true.i
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then9.i.do.end14.i_crit_edge

if.then9.i.do.end14.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i

if.end.i.i:                                       ; preds = %if.then9.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end16.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %18) #8
  br label %do.end14.i

do.end14.i:                                       ; preds = %if.then3.i.i, %if.then9.i.do.end14.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.then9.i.do.end14.i_crit_edge ]
  %dev15.i = getelementptr inbounds %struct.cygnus_audio, ptr %3, i32 0, i32 3
  %23 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev15.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.38, i32 noundef %retval.0.i.ph.i) #11
  br label %pll_configure_mclk.exit

if.end16.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %cap_clk_en.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %cap_clk_en.i, align 2
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end16.i, %land.lhs.true.i.if.end19.i_crit_edge, %if.end4.i.if.end19.i_crit_edge
  %play_en.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 16, i32 1
  %26 = ptrtoint ptr %play_en.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %play_en.i, align 1, !range !264
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool21.not.i = icmp eq i8 %27, 0
  br i1 %tobool21.not.i, label %if.end19.i.if.end36.i_crit_edge, label %land.lhs.true22.i

if.end19.i.if.end36.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

land.lhs.true22.i:                                ; preds = %if.end19.i
  %play_clk_en.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 16, i32 3
  %28 = ptrtoint ptr %play_clk_en.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %play_clk_en.i, align 1, !range !264
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool24.not.i = icmp eq i8 %29, 0
  br i1 %tobool24.not.i, label %if.then25.i, label %land.lhs.true22.i.if.end36.i_crit_edge

land.lhs.true22.i.if.end36.i_crit_edge:           ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

if.then25.i:                                      ; preds = %land.lhs.true22.i
  %call.i75.i = tail call i32 @clk_prepare(ptr noundef %18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75.i)
  %tobool.not.i76.i = icmp eq i32 %call.i75.i, 0
  br i1 %tobool.not.i76.i, label %if.end.i79.i, label %if.then25.i.do.end31.i_crit_edge

if.then25.i.do.end31.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end31.i

if.end.i79.i:                                     ; preds = %if.then25.i
  %call1.i77.i = tail call i32 @clk_enable(ptr noundef %18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i77.i)
  %tobool2.not.i78.i = icmp eq i32 %call1.i77.i, 0
  br i1 %tobool2.not.i78.i, label %if.end33.i, label %if.then3.i80.i

if.then3.i80.i:                                   ; preds = %if.end.i79.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %18) #8
  br label %do.end31.i

do.end31.i:                                       ; preds = %if.then3.i80.i, %if.then25.i.do.end31.i_crit_edge
  %retval.0.i81.ph.i = phi i32 [ %call1.i77.i, %if.then3.i80.i ], [ %call.i75.i, %if.then25.i.do.end31.i_crit_edge ]
  %dev32.i = getelementptr inbounds %struct.cygnus_audio, ptr %3, i32 0, i32 3
  %30 = ptrtoint ptr %dev32.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev32.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.38, i32 noundef %retval.0.i81.ph.i) #11
  br label %pll_configure_mclk.exit

if.end33.i:                                       ; preds = %if.end.i79.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %play_clk_en.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %play_clk_en.i, align 1
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.end33.i, %land.lhs.true22.i.if.end36.i_crit_edge, %if.end19.i.if.end36.i_crit_edge
  %call37.i = tail call i32 @clk_set_rate(ptr noundef %18, i32 noundef %freq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end36.i.pll_configure_mclk.exit_crit_edge, label %do.end42.i

if.end36.i.pll_configure_mclk.exit_crit_edge:     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pll_configure_mclk.exit

do.end42.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev43.i = getelementptr inbounds %struct.cygnus_audio, ptr %3, i32 0, i32 3
  %33 = ptrtoint ptr %dev43.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev43.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.38, i32 noundef %call37.i) #11
  br label %pll_configure_mclk.exit

pll_configure_mclk.exit:                          ; preds = %do.end42.i, %if.end36.i.pll_configure_mclk.exit_crit_edge, %do.end31.i, %do.end14.i
  %retval.0.i66 = phi i32 [ %call37.i, %do.end42.i ], [ %retval.0.i81.ph.i, %do.end31.i ], [ %retval.0.i.ph.i, %do.end14.i ], [ %16, %if.end36.i.pll_configure_mclk.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i66)
  %cmp = icmp slt i32 %retval.0.i66, 0
  br i1 %cmp, label %pll_configure_mclk.exit.do.end10_crit_edge, label %if.end13

pll_configure_mclk.exit.do.end10_crit_edge:       ; preds = %pll_configure_mclk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

do.end10:                                         ; preds = %pll_configure_mclk.exit.do.end10_crit_edge, %pll_configure_mclk.exit.thread
  %cygaud11 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 10
  %35 = ptrtoint ptr %cygaud11 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cygaud11, align 4
  %dev12 = getelementptr inbounds %struct.cygnus_audio, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33) #11
  br label %cleanup

if.end13:                                         ; preds = %pll_configure_mclk.exit
  %mclk = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 6
  %39 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %freq, ptr %mclk, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cygnus_ssp_set_sysclk.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cygnus_ssp_set_sysclk, %if.then26)) #8
          to label %do.end31 [label %if.then26], !srcloc !241

if.then26:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %cygaud27 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 10
  %40 = ptrtoint ptr %cygaud27 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cygaud27, align 4
  %dev28 = getelementptr inbounds %struct.cygnus_audio, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev28, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cygnus_ssp_set_sysclk.__UNIQUE_ID_ddebug246, ptr noundef %43, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.33, i32 noundef %retval.0.i66) #8
  br label %do.end31

do.end31:                                         ; preds = %if.then26, %if.end13
  %cygaud32 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 10
  %44 = ptrtoint ptr %cygaud32 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cygaud32, align 4
  %audio = getelementptr inbounds %struct.cygnus_audio, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %audio, align 4
  %i2s_mclk_cfg = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 11, i32 4
  %48 = ptrtoint ptr %i2s_mclk_cfg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %i2s_mclk_cfg, align 4
  %add.ptr = getelementptr i8, ptr %47, i32 %49
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !265
  %51 = and i32 %50, -251658241
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %or = or i32 %52, %retval.0.i66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !266
  tail call void @arm_heavy_mb() #8
  %53 = tail call i32 @llvm.bswap.i32(i32 %or)
  %54 = ptrtoint ptr %cygaud32 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cygaud32, align 4
  %audio40 = getelementptr inbounds %struct.cygnus_audio, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %audio40 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %audio40, align 4
  %58 = ptrtoint ptr %i2s_mclk_cfg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %i2s_mclk_cfg, align 4
  %add.ptr43 = getelementptr i8, ptr %57, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %53) #8, !srcloc !240
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %do.end10
  %retval.0 = phi i32 [ -22, %do.end10 ], [ 0, %do.end31 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cygnus_ssp_set_fmt(ptr nocapture noundef readonly %cpu_dai, i32 noundef %fmt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 1
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  %arrayidx.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cygnus_ssp_set_fmt.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cygnus_ssp_set_fmt, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !241

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cygaud = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 10
  %6 = ptrtoint ptr %cygaud to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cygaud, align 4
  %dev = getelementptr inbounds %struct.cygnus_audio, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cygnus_ssp_set_fmt.__UNIQUE_ID_ddebug247, ptr noundef %9, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47, i32 noundef %fmt) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %port_type = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 5
  %10 = ptrtoint ptr %port_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %12 = trunc i32 %fmt to i16
  %trunc = and i16 %12, -4096
  %13 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.99)
  switch i16 %trunc, label %if.end5.cleanup_crit_edge [
    i16 4096, label %if.end5.sw.epilog_crit_edge
    i16 16384, label %sw.bb6
  ]

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb6:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %if.end5.sw.epilog_crit_edge
  %.sink = phi i8 [ 0, %sw.bb6 ], [ 1, %if.end5.sw.epilog_crit_edge ]
  %ssp_newcfg.0 = phi i32 [ 0, %sw.bb6 ], [ 1073741824, %if.end5.sw.epilog_crit_edge ]
  %is_slave8 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 2
  %14 = ptrtoint ptr %is_slave8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.sink, ptr %is_slave8, align 4
  %and9 = and i32 %fmt, 15
  %15 = zext i32 %and9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %and9, label %sw.epilog.cleanup_crit_edge [
    i32 1, label %sw.bb10
    i32 4, label %sw.epilog.sw.bb13_crit_edge
    i32 5, label %sw.epilog.sw.bb13_crit_edge154
  ]

sw.epilog.sw.bb13_crit_edge154:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb13

sw.epilog.sw.bb13_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb13

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb10:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %or12 = or i32 %ssp_newcfg.0, 262208
  br label %sw.epilog30

sw.bb13:                                          ; preds = %sw.epilog.sw.bb13_crit_edge, %sw.epilog.sw.bb13_crit_edge154
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and9)
  %cmp16 = icmp eq i32 %and9, 4
  %spec.select.v = select i1 %cmp16, i32 -2147483584, i32 -2147483648
  %spec.select = or i32 %ssp_newcfg.0, %spec.select.v
  %fsync_width = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 4
  %16 = ptrtoint ptr %fsync_width to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fsync_width, align 4
  %18 = add i32 %17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %18)
  %19 = icmp ult i32 %18, 255
  %shl = shl i32 %17, 18
  %shl.pn = select i1 %19, i32 %shl, i32 262144
  %ssp_newcfg.2 = or i32 %spec.select, %shl.pn
  br label %sw.epilog30

sw.epilog30:                                      ; preds = %sw.bb13, %sw.bb10
  %.sink153 = phi i32 [ 1, %sw.bb13 ], [ 0, %sw.bb10 ]
  %ssp_newcfg.3 = phi i32 [ %ssp_newcfg.2, %sw.bb13 ], [ %or12, %sw.bb10 ]
  %mode28 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 1
  %20 = ptrtoint ptr %mode28 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink153, ptr %mode28, align 4
  %cygaud31 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 10
  %21 = ptrtoint ptr %cygaud31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cygaud31, align 4
  %audio = getelementptr inbounds %struct.cygnus_audio, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %audio, align 4
  %i2s_cfg = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 11, i32 1
  %25 = ptrtoint ptr %i2s_cfg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i2s_cfg, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 %26
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !267
  %28 = and i32 %27, 67044156
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %or36 = or i32 %29, %ssp_newcfg.3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  tail call void @arm_heavy_mb() #8
  %30 = tail call i32 @llvm.bswap.i32(i32 %or36)
  %31 = ptrtoint ptr %cygaud31 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cygaud31, align 4
  %audio41 = getelementptr inbounds %struct.cygnus_audio, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %audio41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %audio41, align 4
  %35 = ptrtoint ptr %i2s_cfg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %i2s_cfg, align 4
  %add.ptr44 = getelementptr i8, ptr %34, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %30) #8, !srcloc !240
  %37 = ptrtoint ptr %cygaud31 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cygaud31, align 4
  %i2s_in = getelementptr inbounds %struct.cygnus_audio, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %i2s_in to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i2s_in, align 4
  %i2s_cap_cfg = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 11, i32 3
  %41 = ptrtoint ptr %i2s_cap_cfg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i2s_cap_cfg, align 4
  %add.ptr49 = getelementptr i8, ptr %40, i32 %42
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  %44 = and i32 %43, 67108671
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %or54 = or i32 %45, %ssp_newcfg.3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !270
  tail call void @arm_heavy_mb() #8
  %46 = tail call i32 @llvm.bswap.i32(i32 %or54)
  %47 = ptrtoint ptr %cygaud31 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cygaud31, align 4
  %i2s_in59 = getelementptr inbounds %struct.cygnus_audio, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %i2s_in59 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i2s_in59, align 4
  %51 = ptrtoint ptr %i2s_cap_cfg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %i2s_cap_cfg, align 4
  %add.ptr62 = getelementptr i8, ptr %50, i32 %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %46) #8, !srcloc !240
  %53 = ptrtoint ptr %cygaud31 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cygaud31, align 4
  %audio66 = getelementptr inbounds %struct.cygnus_audio, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %audio66 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %audio66, align 4
  %add.ptr67 = getelementptr i8, ptr %56, i32 28
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr67) #8, !srcloc !243
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !271
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i, align 4
  %mul = shl i32 %60, 2
  %shl71 = shl i32 14, %mul
  %is_slave72 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 2
  %61 = ptrtoint ptr %is_slave72 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %is_slave72, align 4, !range !264
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool73.not = icmp eq i8 %62, 0
  %or75 = or i32 %shl71, %58
  %neg = xor i32 %shl71, -1
  %and77 = and i32 %58, %neg
  %val.0 = select i1 %tobool73.not, i32 %and77, i32 %or75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cygnus_ssp_set_fmt.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cygnus_ssp_set_fmt, %if.then91)) #8
          to label %do.body97 [label %if.then91], !srcloc !241

if.then91:                                        ; preds = %sw.epilog30
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %cygaud31 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cygaud31, align 4
  %dev93 = getelementptr inbounds %struct.cygnus_audio, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %dev93 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev93, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cygnus_ssp_set_fmt.__UNIQUE_ID_ddebug248, ptr noundef %66, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %val.0) #8
  br label %do.body97

do.body97:                                        ; preds = %if.then91, %sw.epilog30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !272
  tail call void @arm_heavy_mb() #8
  %67 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %68 = ptrtoint ptr %cygaud31 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cygaud31, align 4
  %audio101 = getelementptr inbounds %struct.cygnus_audio, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %audio101 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %audio101, align 4
  %add.ptr102 = getelementptr i8, ptr %71, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102, i32 %67) #8, !srcloc !240
  br label %cleanup

cleanup:                                          ; preds = %do.body97, %sw.epilog.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body97 ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cygnus_set_dai_tdm_slot(ptr nocapture noundef readonly %cpu_dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 1
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %tx_mask, i32 %rx_mask)
  %cmp.not = icmp eq i32 %tx_mask, %rx_mask
  br i1 %cmp.not, label %cond.false, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cygaud = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 10
  %6 = ptrtoint ptr %cygaud to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cygaud, align 4
  %dev = getelementptr inbounds %struct.cygnus_audio, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #11
  br label %cleanup

cond.false:                                       ; preds = %entry
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %tx_mask) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %call.i)
  %cmp281 = icmp ult i32 %call.i, 17
  %rem = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool285.not = icmp eq i32 %rem, 0
  %or.cond = and i1 %cmp281, %tobool285.not
  br i1 %or.cond, label %if.end287, label %cond.false.cleanup_crit_edge

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end287:                                        ; preds = %cond.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call.i)
  %cmp288 = icmp eq i32 %call.i, 16
  %spec.store.select = select i1 %cmp288, i32 0, i32 %call.i
  %10 = zext i32 %slot_width to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %slot_width, label %sw.default [
    i32 16, label %if.end287.sw.epilog_crit_edge
    i32 32, label %sw.bb292
  ]

if.end287.sw.epilog_crit_edge:                    ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb292:                                         ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.default:                                       ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #10
  %cygaud296 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 10
  %11 = ptrtoint ptr %cygaud296 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cygaud296, align 4
  %dev297 = getelementptr inbounds %struct.cygnus_audio, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %dev297 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev297, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.51) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb292, %if.end287.sw.epilog_crit_edge
  %bits_per_slot.0 = phi i32 [ 0, %sw.default ], [ 0, %sw.bb292 ], [ 8192, %if.end287.sw.epilog_crit_edge ]
  %mul = mul i32 %slot_width, %slots
  %15 = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %mul, label %for.cond.4 [
    i32 32, label %sw.epilog.if.end311_crit_edge
    i32 64, label %sw.epilog.if.end311_crit_edge441
    i32 128, label %sw.epilog.if.end311_crit_edge442
    i32 256, label %sw.epilog.if.end311_crit_edge443
    i32 512, label %sw.epilog.if.end311_crit_edge444
  ]

sw.epilog.if.end311_crit_edge444:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end311

sw.epilog.if.end311_crit_edge443:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end311

sw.epilog.if.end311_crit_edge442:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end311

sw.epilog.if.end311_crit_edge441:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end311

sw.epilog.if.end311_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end311

for.cond.4:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %cygaud309 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 10
  %16 = ptrtoint ptr %cygaud309 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cygaud309, align 4
  %dev310 = getelementptr inbounds %struct.cygnus_audio, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %dev310 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev310, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.51, i32 noundef %mul) #11
  br label %cleanup

if.end311:                                        ; preds = %sw.epilog.if.end311_crit_edge, %sw.epilog.if.end311_crit_edge441, %sw.epilog.if.end311_crit_edge442, %sw.epilog.if.end311_crit_edge443, %sw.epilog.if.end311_crit_edge444
  %bit_per_frame = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 8
  %20 = ptrtoint ptr %bit_per_frame to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul, ptr %bit_per_frame, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cygnus_set_dai_tdm_slot.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cygnus_set_dai_tdm_slot, %if.then320)) #8
          to label %do.end325 [label %if.then320], !srcloc !241

if.then320:                                       ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #10
  %cygaud321 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 10
  %21 = ptrtoint ptr %cygaud321 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cygaud321, align 4
  %dev322 = getelementptr inbounds %struct.cygnus_audio, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %dev322 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev322, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cygnus_set_dai_tdm_slot.__UNIQUE_ID_ddebug250, ptr noundef %24, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.51, i32 noundef %spec.store.select, i32 noundef %mul) #8
  br label %do.end325

do.end325:                                        ; preds = %if.then320, %if.end311
  %cygaud326 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 10
  %25 = ptrtoint ptr %cygaud326 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cygaud326, align 4
  %i2s_in = getelementptr inbounds %struct.cygnus_audio, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %i2s_in to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2s_in, align 4
  %i2s_cap_cfg = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 11, i32 3
  %29 = ptrtoint ptr %i2s_cap_cfg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i2s_cap_cfg, align 4
  %add.ptr = getelementptr i8, ptr %28, i32 %30
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !273
  %shl = shl nuw nsw i32 %spec.store.select, 14
  %32 = and i32 %31, -14680833
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %and331 = or i32 %bits_per_slot.0, %shl
  %or333 = or i32 %and331, %33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !274
  tail call void @arm_heavy_mb() #8
  %34 = tail call i32 @llvm.bswap.i32(i32 %or333)
  %35 = ptrtoint ptr %cygaud326 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cygaud326, align 4
  %i2s_in338 = getelementptr inbounds %struct.cygnus_audio, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %i2s_in338 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i2s_in338, align 4
  %39 = ptrtoint ptr %i2s_cap_cfg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %i2s_cap_cfg, align 4
  %add.ptr341 = getelementptr i8, ptr %38, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr341, i32 %34) #8, !srcloc !240
  %41 = ptrtoint ptr %cygaud326 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cygaud326, align 4
  %audio = getelementptr inbounds %struct.cygnus_audio, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %audio, align 4
  %i2s_cfg = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 11, i32 1
  %45 = ptrtoint ptr %i2s_cfg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %i2s_cfg, align 4
  %add.ptr346 = getelementptr i8, ptr %44, i32 %46
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr346) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !275
  %48 = and i32 %47, -14680833
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %or355 = or i32 %and331, %49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !276
  tail call void @arm_heavy_mb() #8
  %50 = tail call i32 @llvm.bswap.i32(i32 %or355)
  %51 = ptrtoint ptr %cygaud326 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cygaud326, align 4
  %audio360 = getelementptr inbounds %struct.cygnus_audio, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %audio360 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %audio360, align 4
  %55 = ptrtoint ptr %i2s_cfg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %i2s_cfg, align 4
  %add.ptr363 = getelementptr i8, ptr %54, i32 %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr363, i32 %50) #8, !srcloc !240
  br label %cleanup

cleanup:                                          ; preds = %do.end325, %for.cond.4, %cond.false.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end325 ], [ -22, %for.cond.4 ], [ -22, %cond.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cygnus_ssp_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef %dai) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  %arrayidx.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %6 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %capture_dma_data.sink.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %8 = ptrtoint ptr %capture_dma_data.sink.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx.i, ptr %capture_dma_data.sink.i, align 4
  %9 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %play_en = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 16, i32 1
  %11 = ptrtoint ptr %play_en to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %play_en, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %clk_trace1 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 16
  %12 = ptrtoint ptr %clk_trace1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %clk_trace1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %13 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %runtime, align 4
  %rate_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 46, i32 3
  %15 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8000, ptr %rate_min, align 4
  %16 = load ptr, ptr %runtime, align 4
  %rate_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 46, i32 4
  %17 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 384000, ptr %rate_max, align 8
  %18 = load ptr, ptr %runtime, align 4
  %call5 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %18, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @cygnus_rate_constraint) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cygnus_ssp_shutdown(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %6 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %play_en = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 16, i32 1
  %8 = ptrtoint ptr %play_en to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %play_en, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %clk_trace1 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 16
  %9 = ptrtoint ptr %clk_trace1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %clk_trace1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %is_slave = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 2
  %10 = ptrtoint ptr %is_slave to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_slave, align 4, !range !264
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.then2, label %if.end.cleanup31_crit_edge

if.end.cleanup31_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup31

if.then2:                                         ; preds = %if.end
  %cygaud = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 10
  %12 = ptrtoint ptr %cygaud to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cygaud, align 4
  %audio = getelementptr inbounds %struct.cygnus_audio, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %audio, align 4
  %i2s_mclk_cfg = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 11, i32 4
  %16 = ptrtoint ptr %i2s_mclk_cfg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i2s_mclk_cfg, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %17
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !243
  %19 = lshr i32 %18, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !277
  %and = and i32 %19, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp5 = icmp ugt i32 %and, 2
  br i1 %cmp5, label %do.end, label %if.end8

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %cygaud to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cygaud, align 4
  %dev = getelementptr inbounds %struct.cygnus_audio, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.60, i32 noundef %and) #11
  br label %cleanup31

if.end8:                                          ; preds = %if.then2
  %24 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp10 = icmp eq i32 %25, 0
  br i1 %cmp10, label %if.then11, label %if.else19

if.then11:                                        ; preds = %if.end8
  %play_clk_en = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 16, i32 3
  %26 = ptrtoint ptr %play_clk_en to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %play_clk_en, align 1, !range !264
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool13.not = icmp eq i8 %27, 0
  br i1 %tobool13.not, label %if.then11.cleanup31_crit_edge, label %if.then14

if.then11.cleanup31_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup31

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %cygaud to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cygaud, align 4
  %arrayidx = getelementptr %struct.cygnus_audio, ptr %29, i32 0, i32 5, i32 %and
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %31) #8
  tail call void @clk_unprepare(ptr noundef %31) #8
  %32 = ptrtoint ptr %play_clk_en to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %play_clk_en, align 1
  br label %cleanup31

if.else19:                                        ; preds = %if.end8
  %cap_clk_en = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 16, i32 2
  %33 = ptrtoint ptr %cap_clk_en to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %cap_clk_en, align 2, !range !264
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool21.not = icmp eq i8 %34, 0
  br i1 %tobool21.not, label %if.else19.cleanup31_crit_edge, label %if.then22

if.else19.cleanup31_crit_edge:                    ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup31

if.then22:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %cygaud to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cygaud, align 4
  %arrayidx25 = getelementptr %struct.cygnus_audio, ptr %36, i32 0, i32 5, i32 %and
  %37 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx25, align 4
  tail call void @clk_disable(ptr noundef %38) #8
  tail call void @clk_unprepare(ptr noundef %38) #8
  %39 = ptrtoint ptr %cap_clk_en to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %cap_clk_en, align 2
  br label %cleanup31

cleanup31:                                        ; preds = %if.then22, %if.else19.cleanup31_crit_edge, %if.then14, %if.then11.cleanup31_crit_edge, %do.end, %if.end.cleanup31_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cygnus_ssp_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  %arrayidx.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cygnus_ssp_hw_params.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cygnus_ssp_hw_params, %if.then)) #8
          to label %do.body4 [label %if.then], !srcloc !241

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cygaud = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 10
  %6 = ptrtoint ptr %cygaud to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cygaud, align 4
  %dev = getelementptr inbounds %struct.cygnus_audio, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cygnus_ssp_hw_params.__UNIQUE_ID_ddebug241, ptr noundef %9, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.62, i32 noundef %11) #8
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cygnus_ssp_hw_params.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cygnus_ssp_hw_params, %if.then16)) #8
          to label %do.body23 [label %if.then16], !srcloc !241

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  %cygaud17 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 10
  %12 = ptrtoint ptr %cygaud17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cygaud17, align 4
  %dev18 = getelementptr inbounds %struct.cygnus_audio, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev18, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cygnus_ssp_hw_params.__UNIQUE_ID_ddebug242, ptr noundef %15, ptr noundef nonnull @.str.64, i32 noundef %17) #8
  br label %do.body23

do.body23:                                        ; preds = %if.then16, %do.body4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cygnus_ssp_hw_params.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cygnus_ssp_hw_params, %if.then35)) #8
          to label %do.body42 [label %if.then35], !srcloc !241

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  %cygaud36 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 10
  %18 = ptrtoint ptr %cygaud36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cygaud36, align 4
  %dev37 = getelementptr inbounds %struct.cygnus_audio, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev37, align 4
  %arrayidx.i.i224 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %arrayidx.i.i224 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i224, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cygnus_ssp_hw_params.__UNIQUE_ID_ddebug243, ptr noundef %21, ptr noundef nonnull @.str.65, i32 noundef %23) #8
  br label %do.body42

do.body42:                                        ; preds = %if.then35, %do.body23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cygnus_ssp_hw_params.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cygnus_ssp_hw_params, %if.then54)) #8
          to label %do.end60 [label %if.then54], !srcloc !241

if.then54:                                        ; preds = %do.body42
  %cygaud55 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 10
  %24 = ptrtoint ptr %cygaud55 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cygaud55, align 4
  %dev56 = getelementptr inbounds %struct.cygnus_audio, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev56, align 4
  %arrayidx.i.i225 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx.i.i225 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i225, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.then54.if.then.i.i_crit_edge

if.then54.if.then.i.i_crit_edge:                  ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %if.then54.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %if.then54.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %29, %if.then54.if.then.i.i_crit_edge ], [ %32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %30 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #8, !range !278
  %add.i.i = or i32 %30, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %if.then54
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.1.i.i = icmp eq i32 %32, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cygnus_ssp_hw_params.__UNIQUE_ID_ddebug244, ptr noundef %27, ptr noundef nonnull @.str.66, i32 noundef %retval.0.i.i) #8
  br label %do.end60

do.end60:                                         ; preds = %params_format.exit, %do.body42
  %arrayidx.i.i226 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %33 = ptrtoint ptr %arrayidx.i.i226 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i226, align 4
  %mode = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 1
  %35 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mode, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %36, label %do.end75 [
    i32 1, label %sw.bb
    i32 0, label %sw.bb72
  ]

sw.bb:                                            ; preds = %do.end60
  call void @__sanitizer_cov_trace_const_cmp4(i32 192000, i32 %34)
  %cmp = icmp eq i32 %34, 192000
  br i1 %cmp, label %land.lhs.true, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %arrayidx.i.i227 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %38 = ptrtoint ptr %arrayidx.i.i227 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i.i227, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %cmp63 = icmp ugt i32 %39, 4
  br i1 %cmp63, label %do.end67, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end67:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %cygaud68 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 10
  %40 = ptrtoint ptr %cygaud68 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cygaud68, align 4
  %dev69 = getelementptr inbounds %struct.cygnus_audio, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev69, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.67, i32 noundef %39, i32 noundef 192000) #11
  br label %cleanup

sw.bb72:                                          ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #10
  %bit_per_frame = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 8
  %44 = ptrtoint ptr %bit_per_frame to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 64, ptr %bit_per_frame, align 4
  br label %sw.epilog

do.end75:                                         ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #10
  %cygaud76 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 10
  %45 = ptrtoint ptr %cygaud76 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cygaud76, align 4
  %dev77 = getelementptr inbounds %struct.cygnus_audio, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %dev77 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev77, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.62) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb72, %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %49 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp78 = icmp eq i32 %50, 0
  br i1 %cmp78, label %if.then79, label %if.else

if.then79:                                        ; preds = %sw.epilog
  %cygaud80 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 10
  %51 = ptrtoint ptr %cygaud80 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cygaud80, align 4
  %audio = getelementptr inbounds %struct.cygnus_audio, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %audio, align 4
  %bf_sourcech_cfg = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 11, i32 8
  %55 = ptrtoint ptr %bf_sourcech_cfg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bf_sourcech_cfg, align 4
  %add.ptr = getelementptr i8, ptr %54, i32 %56
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !279
  %58 = and i32 %57, -100663297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !280
  tail call void @arm_heavy_mb() #8
  %59 = ptrtoint ptr %cygaud80 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cygaud80, align 4
  %audio89 = getelementptr inbounds %struct.cygnus_audio, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %audio89 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %audio89, align 4
  %63 = ptrtoint ptr %bf_sourcech_cfg to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bf_sourcech_cfg, align 4
  %add.ptr92 = getelementptr i8, ptr %62, i32 %64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 %58) #8, !srcloc !240
  %arrayidx.i.i229 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %65 = ptrtoint ptr %arrayidx.i.i229 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i.i229, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i.i230 = icmp eq i32 %66, 0
  br i1 %tobool.not.i.i230, label %for.inc.i.i237, label %if.then79.params_format.exit239_crit_edge

if.then79.params_format.exit239_crit_edge:        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit239

for.inc.i.i237:                                   ; preds = %if.then79
  %arrayidx.1.i.i235 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %67 = ptrtoint ptr %arrayidx.1.i.i235 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.1.i.i235, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.1.i.i236 = icmp eq i32 %68, 0
  br i1 %tobool.not.1.i.i236, label %for.inc.i.i237.cleanup_crit_edge, label %for.inc.i.i237.params_format.exit239_crit_edge

for.inc.i.i237.params_format.exit239_crit_edge:   ; preds = %for.inc.i.i237
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit239

for.inc.i.i237.cleanup_crit_edge:                 ; preds = %for.inc.i.i237
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

params_format.exit239:                            ; preds = %for.inc.i.i237.params_format.exit239_crit_edge, %if.then79.params_format.exit239_crit_edge
  %i.09.lcssa.i.i231 = phi i32 [ 0, %if.then79.params_format.exit239_crit_edge ], [ 32, %for.inc.i.i237.params_format.exit239_crit_edge ]
  %.lcssa.i.i232 = phi i32 [ %66, %if.then79.params_format.exit239_crit_edge ], [ %68, %for.inc.i.i237.params_format.exit239_crit_edge ]
  %69 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i232, i1 true) #8, !range !278
  %add.i.i233 = or i32 %69, %i.09.lcssa.i.i231
  %70 = zext i32 %add.i.i233 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %add.i.i233, label %params_format.exit239.cleanup_crit_edge [
    i32 2, label %params_format.exit239.sw.epilog97_crit_edge
    i32 10, label %sw.bb95
  ]

params_format.exit239.sw.epilog97_crit_edge:      ; preds = %params_format.exit239
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog97

params_format.exit239.cleanup_crit_edge:          ; preds = %params_format.exit239
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb95:                                          ; preds = %params_format.exit239
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog97

sw.epilog97:                                      ; preds = %sw.bb95, %params_format.exit239.sw.epilog97_crit_edge
  %bitres.0 = phi i32 [ 0, %sw.bb95 ], [ 16777216, %params_format.exit239.sw.epilog97_crit_edge ]
  %71 = ptrtoint ptr %cygaud80 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cygaud80, align 4
  %audio101 = getelementptr inbounds %struct.cygnus_audio, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %audio101 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %audio101, align 4
  %75 = ptrtoint ptr %bf_sourcech_cfg to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %bf_sourcech_cfg, align 4
  %add.ptr104 = getelementptr i8, ptr %74, i32 %76
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr104) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !281
  %78 = and i32 %77, -61442
  %79 = tail call i32 @llvm.bswap.i32(i32 %78)
  %or = or i32 %79, %bitres.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !282
  tail call void @arm_heavy_mb() #8
  %80 = tail call i32 @llvm.bswap.i32(i32 %or)
  %81 = ptrtoint ptr %cygaud80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cygaud80, align 4
  %audio114 = getelementptr inbounds %struct.cygnus_audio, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %audio114 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %audio114, align 4
  %85 = ptrtoint ptr %bf_sourcech_cfg to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %bf_sourcech_cfg, align 4
  %add.ptr117 = getelementptr i8, ptr %84, i32 %86
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 %80) #8, !srcloc !240
  br label %if.end160

if.else:                                          ; preds = %sw.epilog
  %arrayidx.i.i240 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %87 = ptrtoint ptr %arrayidx.i.i240 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.i.i240, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not.i.i241 = icmp eq i32 %88, 0
  br i1 %tobool.not.i.i241, label %for.inc.i.i248, label %if.else.params_format.exit250_crit_edge

if.else.params_format.exit250_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit250

for.inc.i.i248:                                   ; preds = %if.else
  %arrayidx.1.i.i246 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %89 = ptrtoint ptr %arrayidx.1.i.i246 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx.1.i.i246, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.1.i.i247 = icmp eq i32 %90, 0
  br i1 %tobool.not.1.i.i247, label %for.inc.i.i248.cleanup_crit_edge, label %for.inc.i.i248.params_format.exit250_crit_edge

for.inc.i.i248.params_format.exit250_crit_edge:   ; preds = %for.inc.i.i248
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit250

for.inc.i.i248.cleanup_crit_edge:                 ; preds = %for.inc.i.i248
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

params_format.exit250:                            ; preds = %for.inc.i.i248.params_format.exit250_crit_edge, %if.else.params_format.exit250_crit_edge
  %i.09.lcssa.i.i242 = phi i32 [ 0, %if.else.params_format.exit250_crit_edge ], [ 32, %for.inc.i.i248.params_format.exit250_crit_edge ]
  %.lcssa.i.i243 = phi i32 [ %88, %if.else.params_format.exit250_crit_edge ], [ %90, %for.inc.i.i248.params_format.exit250_crit_edge ]
  %91 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i243, i1 true) #8, !range !278
  %add.i.i244 = or i32 %91, %i.09.lcssa.i.i242
  %92 = zext i32 %add.i.i244 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %add.i.i244, label %params_format.exit250.cleanup_crit_edge [
    i32 2, label %sw.bb119
    i32 10, label %sw.bb138
  ]

params_format.exit250.cleanup_crit_edge:          ; preds = %params_format.exit250
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb119:                                         ; preds = %params_format.exit250
  call void @__sanitizer_cov_trace_pc() #10
  %cygaud122 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 10
  %93 = ptrtoint ptr %cygaud122 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cygaud122, align 4
  %audio123 = getelementptr inbounds %struct.cygnus_audio, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %audio123 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %audio123, align 4
  %bf_destch_cfg = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 11, i32 6
  %97 = ptrtoint ptr %bf_destch_cfg to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %bf_destch_cfg, align 4
  %add.ptr125 = getelementptr i8, ptr %96, i32 %98
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr125) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !283
  %100 = or i32 %99, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !284
  tail call void @arm_heavy_mb() #8
  %101 = ptrtoint ptr %cygaud122 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cygaud122, align 4
  %audio134 = getelementptr inbounds %struct.cygnus_audio, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %audio134 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %audio134, align 4
  %105 = ptrtoint ptr %bf_destch_cfg to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %bf_destch_cfg, align 4
  %add.ptr137 = getelementptr i8, ptr %104, i32 %106
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr137, i32 %100) #8, !srcloc !240
  br label %if.end160

sw.bb138:                                         ; preds = %params_format.exit250
  call void @__sanitizer_cov_trace_pc() #10
  %cygaud141 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 10
  %107 = ptrtoint ptr %cygaud141 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cygaud141, align 4
  %audio142 = getelementptr inbounds %struct.cygnus_audio, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %audio142 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %audio142, align 4
  %bf_destch_cfg144 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 11, i32 6
  %111 = ptrtoint ptr %bf_destch_cfg144 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %bf_destch_cfg144, align 4
  %add.ptr145 = getelementptr i8, ptr %110, i32 %112
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr145) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !285
  %114 = and i32 %113, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !286
  tail call void @arm_heavy_mb() #8
  %115 = ptrtoint ptr %cygaud141 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cygaud141, align 4
  %audio154 = getelementptr inbounds %struct.cygnus_audio, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %audio154 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %audio154, align 4
  %119 = ptrtoint ptr %bf_destch_cfg144 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %bf_destch_cfg144, align 4
  %add.ptr157 = getelementptr i8, ptr %118, i32 %120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr157, i32 %114) #8, !srcloc !240
  br label %if.end160

if.end160:                                        ; preds = %sw.bb138, %sw.bb119, %sw.epilog97
  %lrclk = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 7
  %121 = ptrtoint ptr %lrclk to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %34, ptr %lrclk, align 4
  %is_slave = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 2
  %122 = ptrtoint ptr %is_slave to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %is_slave, align 4, !range !264
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool161.not = icmp eq i8 %123, 0
  br i1 %tobool161.not, label %if.then162, label %if.end160.cleanup_crit_edge

if.end160.cleanup_crit_edge:                      ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then162:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #10
  %call163 = tail call fastcc i32 @cygnus_ssp_set_clocks(ptr noundef %arrayidx.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then162, %if.end160.cleanup_crit_edge, %params_format.exit250.cleanup_crit_edge, %for.inc.i.i248.cleanup_crit_edge, %params_format.exit239.cleanup_crit_edge, %for.inc.i.i237.cleanup_crit_edge, %do.end75, %do.end67
  %retval.0 = phi i32 [ -22, %do.end75 ], [ -22, %do.end67 ], [ -22, %params_format.exit239.cleanup_crit_edge ], [ -22, %params_format.exit250.cleanup_crit_edge ], [ 0, %if.end160.cleanup_crit_edge ], [ %call163, %if.then162 ], [ -22, %for.inc.i.i237.cleanup_crit_edge ], [ -22, %for.inc.i.i248.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cygnus_ssp_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  %arrayidx.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cygnus_ssp_trigger.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cygnus_ssp_trigger, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !241

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cygaud5 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 10
  %6 = ptrtoint ptr %cygaud5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cygaud5, align 4
  %dev = getelementptr inbounds %struct.cygnus_audio, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cygnus_ssp_trigger.__UNIQUE_ID_ddebug249, ptr noundef %9, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.82, i32 noundef %cmd, i32 noundef %11) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %12 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %cmd, label %do.end.cleanup_crit_edge [
    i32 1, label %do.end.sw.bb_crit_edge
    i32 4, label %do.end.sw.bb_crit_edge68
    i32 6, label %do.end.sw.bb_crit_edge69
    i32 0, label %do.end.sw.bb9_crit_edge
    i32 3, label %do.end.sw.bb9_crit_edge70
    i32 5, label %do.end.sw.bb9_crit_edge71
  ]

do.end.sw.bb9_crit_edge71:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9

do.end.sw.bb9_crit_edge70:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9

do.end.sw.bb9_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9

do.end.sw.bb_crit_edge69:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end.sw.bb_crit_edge68:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end.sw.bb_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %do.end.sw.bb_crit_edge, %do.end.sw.bb_crit_edge68, %do.end.sw.bb_crit_edge69
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %13 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %sw.bb
  %port_type.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 5
  %15 = ptrtoint ptr %port_type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port_type.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %16, label %do.end97.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb52.i
  ]

sw.bb.i:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %cygaud.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 10
  %18 = ptrtoint ptr %cygaud.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cygaud.i, align 4
  %audio.i = getelementptr inbounds %struct.cygnus_audio, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %audio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %audio.i, align 4
  %regs.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 11
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 %23
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !287
  %25 = or i32 %24, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !288
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %cygaud.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cygaud.i, align 4
  %audio3.i = getelementptr inbounds %struct.cygnus_audio, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %audio3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %audio3.i, align 4
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %regs.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %29, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %25) #8, !srcloc !240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !289
  tail call void @arm_heavy_mb() #8
  %32 = ptrtoint ptr %cygaud.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cygaud.i, align 4
  %audio11.i = getelementptr inbounds %struct.cygnus_audio, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %audio11.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %audio11.i, align 4
  %bf_sourcech_ctrl.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 11, i32 7
  %36 = ptrtoint ptr %bf_sourcech_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bf_sourcech_ctrl.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %35, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 16777216) #8, !srcloc !240
  %38 = ptrtoint ptr %cygaud.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cygaud.i, align 4
  %audio17.i = getelementptr inbounds %struct.cygnus_audio, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %audio17.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %audio17.i, align 4
  %i2s_cfg.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 11, i32 1
  %42 = ptrtoint ptr %i2s_cfg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %i2s_cfg.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %41, i32 %43
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !290
  %45 = or i32 %44, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !291
  tail call void @arm_heavy_mb() #8
  %46 = ptrtoint ptr %cygaud.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cygaud.i, align 4
  %audio29.i = getelementptr inbounds %struct.cygnus_audio, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %audio29.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %audio29.i, align 4
  %50 = ptrtoint ptr %i2s_cfg.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %i2s_cfg.i, align 4
  %add.ptr32.i = getelementptr i8, ptr %49, i32 %51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 %45) #8, !srcloc !240
  %52 = ptrtoint ptr %cygaud.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cygaud.i, align 4
  %audio36.i = getelementptr inbounds %struct.cygnus_audio, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %audio36.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %audio36.i, align 4
  %bf_sourcech_cfg.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 11, i32 8
  %56 = ptrtoint ptr %bf_sourcech_cfg.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bf_sourcech_cfg.i, align 4
  %add.ptr38.i = getelementptr i8, ptr %55, i32 %57
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !292
  %59 = or i32 %58, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !293
  tail call void @arm_heavy_mb() #8
  %60 = ptrtoint ptr %cygaud.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cygaud.i, align 4
  %audio47.i = getelementptr inbounds %struct.cygnus_audio, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %audio47.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %audio47.i, align 4
  %64 = ptrtoint ptr %bf_sourcech_cfg.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bf_sourcech_cfg.i, align 4
  %add.ptr50.i = getelementptr i8, ptr %63, i32 %65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.i, i32 %59) #8, !srcloc !240
  %streams_on.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 3
  %66 = ptrtoint ptr %streams_on.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %streams_on.i, align 4
  %or51.i = or i32 %67, 1
  store i32 %or51.i, ptr %streams_on.i, align 4
  br label %cleanup.sink.split

sw.bb52.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %cygaud55.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 10
  %68 = ptrtoint ptr %cygaud55.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cygaud55.i, align 4
  %audio56.i = getelementptr inbounds %struct.cygnus_audio, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %audio56.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %audio56.i, align 4
  %add.ptr57.i = getelementptr i8, ptr %71, i32 2776
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !294
  %73 = or i32 %72, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !295
  tail call void @arm_heavy_mb() #8
  %74 = ptrtoint ptr %cygaud55.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cygaud55.i, align 4
  %audio66.i = getelementptr inbounds %struct.cygnus_audio, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %audio66.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %audio66.i, align 4
  %add.ptr67.i = getelementptr i8, ptr %77, i32 2776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67.i, i32 %73) #8, !srcloc !240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !296
  tail call void @arm_heavy_mb() #8
  %78 = ptrtoint ptr %cygaud55.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cygaud55.i, align 4
  %audio72.i = getelementptr inbounds %struct.cygnus_audio, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %audio72.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %audio72.i, align 4
  %bf_sourcech_ctrl74.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 11, i32 7
  %82 = ptrtoint ptr %bf_sourcech_ctrl74.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bf_sourcech_ctrl74.i, align 4
  %add.ptr75.i = getelementptr i8, ptr %81, i32 %83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75.i, i32 16777216) #8, !srcloc !240
  %84 = ptrtoint ptr %cygaud55.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cygaud55.i, align 4
  %audio79.i = getelementptr inbounds %struct.cygnus_audio, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %audio79.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %audio79.i, align 4
  %bf_sourcech_cfg81.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 11, i32 8
  %88 = ptrtoint ptr %bf_sourcech_cfg81.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %bf_sourcech_cfg81.i, align 4
  %add.ptr82.i = getelementptr i8, ptr %87, i32 %89
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !297
  %91 = or i32 %90, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !298
  tail call void @arm_heavy_mb() #8
  %92 = ptrtoint ptr %cygaud55.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cygaud55.i, align 4
  %audio91.i = getelementptr inbounds %struct.cygnus_audio, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %audio91.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %audio91.i, align 4
  %96 = ptrtoint ptr %bf_sourcech_cfg81.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %bf_sourcech_cfg81.i, align 4
  %add.ptr94.i = getelementptr i8, ptr %95, i32 %97
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94.i, i32 %91) #8, !srcloc !240
  br label %cleanup.sink.split

do.end97.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %cygaud98.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 10
  %98 = ptrtoint ptr %cygaud98.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cygaud98.i, align 4
  %dev.i27 = getelementptr inbounds %struct.cygnus_audio, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %dev.i27 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev.i27, align 4
  %102 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.84, i32 noundef %103) #11
  br label %cleanup.sink.split

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %cygaud.i28 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 10
  %104 = ptrtoint ptr %cygaud.i28 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cygaud.i28, align 4
  %audio.i29 = getelementptr inbounds %struct.cygnus_audio, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %audio.i29 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %audio.i29, align 4
  %bf_destch_cfg.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 11, i32 6
  %108 = ptrtoint ptr %bf_destch_cfg.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %bf_destch_cfg.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %107, i32 %109
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !299
  %111 = or i32 %110, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !300
  tail call void @arm_heavy_mb() #8
  %112 = ptrtoint ptr %cygaud.i28 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %cygaud.i28, align 4
  %audio3.i31 = getelementptr inbounds %struct.cygnus_audio, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %audio3.i31 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %audio3.i31, align 4
  %116 = ptrtoint ptr %bf_destch_cfg.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %bf_destch_cfg.i, align 4
  %add.ptr6.i32 = getelementptr i8, ptr %115, i32 %117
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i32, i32 %111) #8, !srcloc !240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !301
  tail call void @arm_heavy_mb() #8
  %118 = ptrtoint ptr %cygaud.i28 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %cygaud.i28, align 4
  %audio11.i33 = getelementptr inbounds %struct.cygnus_audio, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %audio11.i33 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %audio11.i33, align 4
  %bf_destch_ctrl.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 11, i32 5
  %122 = ptrtoint ptr %bf_destch_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %bf_destch_ctrl.i, align 4
  %add.ptr13.i34 = getelementptr i8, ptr %121, i32 %123
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i34, i32 16777216) #8, !srcloc !240
  %124 = ptrtoint ptr %cygaud.i28 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cygaud.i28, align 4
  %audio17.i35 = getelementptr inbounds %struct.cygnus_audio, ptr %125, i32 0, i32 2
  %126 = ptrtoint ptr %audio17.i35 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %audio17.i35, align 4
  %i2s_cfg.i36 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 11, i32 1
  %128 = ptrtoint ptr %i2s_cfg.i36 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %i2s_cfg.i36, align 4
  %add.ptr19.i37 = getelementptr i8, ptr %127, i32 %129
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i37) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !302
  %131 = or i32 %130, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !303
  tail call void @arm_heavy_mb() #8
  %132 = ptrtoint ptr %cygaud.i28 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cygaud.i28, align 4
  %audio29.i38 = getelementptr inbounds %struct.cygnus_audio, ptr %133, i32 0, i32 2
  %134 = ptrtoint ptr %audio29.i38 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %audio29.i38, align 4
  %136 = ptrtoint ptr %i2s_cfg.i36 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %i2s_cfg.i36, align 4
  %add.ptr32.i39 = getelementptr i8, ptr %135, i32 %137
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i39, i32 %131) #8, !srcloc !240
  %138 = ptrtoint ptr %cygaud.i28 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %cygaud.i28, align 4
  %i2s_in.i = getelementptr inbounds %struct.cygnus_audio, ptr %139, i32 0, i32 4
  %140 = ptrtoint ptr %i2s_in.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %i2s_in.i, align 4
  %i2s_cap_stream_cfg.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 11, i32 2
  %142 = ptrtoint ptr %i2s_cap_stream_cfg.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %i2s_cap_stream_cfg.i, align 4
  %add.ptr37.i = getelementptr i8, ptr %141, i32 %143
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !304
  %145 = or i32 %144, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !305
  tail call void @arm_heavy_mb() #8
  %146 = ptrtoint ptr %cygaud.i28 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %cygaud.i28, align 4
  %i2s_in46.i = getelementptr inbounds %struct.cygnus_audio, ptr %147, i32 0, i32 4
  %148 = ptrtoint ptr %i2s_in46.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %i2s_in46.i, align 4
  %150 = ptrtoint ptr %i2s_cap_stream_cfg.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %i2s_cap_stream_cfg.i, align 4
  %add.ptr49.i = getelementptr i8, ptr %149, i32 %151
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49.i, i32 %145) #8, !srcloc !240
  %streams_on.i40 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 3
  %152 = ptrtoint ptr %streams_on.i40 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %streams_on.i40, align 4
  %or50.i = or i32 %153, 2
  store i32 %or50.i, ptr %streams_on.i40, align 4
  br label %cleanup.sink.split

sw.bb9:                                           ; preds = %do.end.sw.bb9_crit_edge, %do.end.sw.bb9_crit_edge70, %do.end.sw.bb9_crit_edge71
  %stream10 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %154 = ptrtoint ptr %stream10 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %stream10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %cmp11 = icmp eq i32 %155, 0
  br i1 %cmp11, label %if.then12, label %if.else14

if.then12:                                        ; preds = %sw.bb9
  %port_type.i41 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 5
  %156 = ptrtoint ptr %port_type.i41 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %port_type.i41, align 4
  %158 = zext i32 %157 to i64
  call void @__sanitizer_cov_trace_switch(i64 %158, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %157, label %do.end155.i [
    i32 0, label %sw.bb.i43
    i32 1, label %sw.bb110.i
  ]

sw.bb.i43:                                        ; preds = %if.then12
  %streams_on.i42 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 3
  %159 = ptrtoint ptr %streams_on.i42 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %streams_on.i42, align 4
  %and.i = and i32 %160, -2
  store i32 %and.i, ptr %streams_on.i42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.bb.i43.if.end.i_crit_edge

sw.bb.i43.if.end.i_crit_edge:                     ; preds = %sw.bb.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb.i43
  call void @__sanitizer_cov_trace_pc() #10
  %cygaud.i44 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 10
  %161 = ptrtoint ptr %cygaud.i44 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %cygaud.i44, align 4
  %audio.i45 = getelementptr inbounds %struct.cygnus_audio, ptr %162, i32 0, i32 2
  %163 = ptrtoint ptr %audio.i45 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %audio.i45, align 4
  %i2s_cfg.i46 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 11, i32 1
  %165 = ptrtoint ptr %i2s_cfg.i46 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %i2s_cfg.i46, align 4
  %add.ptr.i47 = getelementptr i8, ptr %164, i32 %166
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  %168 = and i32 %167, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !307
  tail call void @arm_heavy_mb() #8
  %169 = ptrtoint ptr %cygaud.i44 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %cygaud.i44, align 4
  %audio6.i = getelementptr inbounds %struct.cygnus_audio, ptr %170, i32 0, i32 2
  %171 = ptrtoint ptr %audio6.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %audio6.i, align 4
  %173 = ptrtoint ptr %i2s_cfg.i46 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %i2s_cfg.i46, align 4
  %add.ptr9.i = getelementptr i8, ptr %172, i32 %174
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %168) #8, !srcloc !240
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb.i43.if.end.i_crit_edge
  %cygaud12.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 10
  %175 = ptrtoint ptr %cygaud12.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %cygaud12.i, align 4
  %audio13.i = getelementptr inbounds %struct.cygnus_audio, ptr %176, i32 0, i32 2
  %177 = ptrtoint ptr %audio13.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %audio13.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %178, i32 808
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #8, !srcloc !243
  %180 = tail call i32 @llvm.bswap.i32(i32 %179) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !308
  %181 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx.i, align 4
  %shl.i = shl nuw i32 1, %182
  %or.i = or i32 %shl.i, %180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !309
  tail call void @arm_heavy_mb() #8
  %183 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %184 = ptrtoint ptr %cygaud12.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %cygaud12.i, align 4
  %audio22.i = getelementptr inbounds %struct.cygnus_audio, ptr %185, i32 0, i32 2
  %186 = ptrtoint ptr %audio22.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %audio22.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %187, i32 808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %183) #8, !srcloc !240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !310
  tail call void @arm_heavy_mb() #8
  %188 = ptrtoint ptr %cygaud12.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %cygaud12.i, align 4
  %audio28.i = getelementptr inbounds %struct.cygnus_audio, ptr %189, i32 0, i32 2
  %190 = ptrtoint ptr %audio28.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %audio28.i, align 4
  %regs29.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 11
  %bf_sourcech_ctrl.i48 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 11, i32 7
  %192 = ptrtoint ptr %bf_sourcech_ctrl.i48 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %bf_sourcech_ctrl.i48, align 4
  %add.ptr30.i = getelementptr i8, ptr %191, i32 %193
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 0) #8, !srcloc !240
  %194 = ptrtoint ptr %cygaud12.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %cygaud12.i, align 4
  %audio34.i = getelementptr inbounds %struct.cygnus_audio, ptr %195, i32 0, i32 2
  %196 = ptrtoint ptr %audio34.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %audio34.i, align 4
  %bf_sourcech_cfg.i49 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 11, i32 8
  %198 = ptrtoint ptr %bf_sourcech_cfg.i49 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %bf_sourcech_cfg.i49, align 4
  %add.ptr36.i = getelementptr i8, ptr %197, i32 %199
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !311
  %201 = and i32 %200, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !312
  tail call void @arm_heavy_mb() #8
  %202 = ptrtoint ptr %cygaud12.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %cygaud12.i, align 4
  %audio45.i = getelementptr inbounds %struct.cygnus_audio, ptr %203, i32 0, i32 2
  %204 = ptrtoint ptr %audio45.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %audio45.i, align 4
  %206 = ptrtoint ptr %bf_sourcech_cfg.i49 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %bf_sourcech_cfg.i49, align 4
  %add.ptr48.i = getelementptr i8, ptr %205, i32 %207
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i, i32 %201) #8, !srcloc !240
  %208 = ptrtoint ptr %cygaud12.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %cygaud12.i, align 4
  %audio52.i = getelementptr inbounds %struct.cygnus_audio, ptr %209, i32 0, i32 2
  %210 = ptrtoint ptr %audio52.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %audio52.i, align 4
  %add.ptr53.i = getelementptr i8, ptr %211, i32 808
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53.i) #8, !srcloc !243
  %213 = tail call i32 @llvm.bswap.i32(i32 %212) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !313
  %214 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx.i, align 4
  %shl58.i = shl nuw i32 1, %215
  %neg.i = xor i32 %shl58.i, -1
  %and59.i = and i32 %213, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  tail call void @arm_heavy_mb() #8
  %216 = tail call i32 @llvm.bswap.i32(i32 %and59.i) #8
  %217 = ptrtoint ptr %cygaud12.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %cygaud12.i, align 4
  %audio64.i = getelementptr inbounds %struct.cygnus_audio, ptr %218, i32 0, i32 2
  %219 = ptrtoint ptr %audio64.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %audio64.i, align 4
  %add.ptr65.i = getelementptr i8, ptr %220, i32 808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65.i, i32 %216) #8, !srcloc !240
  %221 = ptrtoint ptr %cygaud12.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %cygaud12.i, align 4
  %audio69.i = getelementptr inbounds %struct.cygnus_audio, ptr %222, i32 0, i32 2
  %223 = ptrtoint ptr %audio69.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %audio69.i, align 4
  %225 = ptrtoint ptr %regs29.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %regs29.i, align 4
  %add.ptr71.i = getelementptr i8, ptr %224, i32 %226
  %227 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr71.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  %228 = and i32 %227, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !316
  tail call void @arm_heavy_mb() #8
  %229 = ptrtoint ptr %cygaud12.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %cygaud12.i, align 4
  %audio80.i = getelementptr inbounds %struct.cygnus_audio, ptr %230, i32 0, i32 2
  %231 = ptrtoint ptr %audio80.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %audio80.i, align 4
  %233 = ptrtoint ptr %regs29.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %regs29.i, align 4
  %add.ptr83.i = getelementptr i8, ptr %232, i32 %234
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83.i, i32 %228) #8, !srcloc !240
  %235 = ptrtoint ptr %cygaud12.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %cygaud12.i, align 4
  %i2s_in.i50 = getelementptr inbounds %struct.cygnus_audio, ptr %236, i32 0, i32 4
  %237 = ptrtoint ptr %i2s_in.i50 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %i2s_in.i50, align 4
  %add.ptr87.i = getelementptr i8, ptr %238, i32 448
  %239 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87.i) #8, !srcloc !243
  %240 = tail call i32 @llvm.bswap.i32(i32 %239) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !317
  %241 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %arrayidx.i, align 4
  %shl92.i = shl nuw i32 1, %242
  %or93.i = or i32 %shl92.i, %240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !318
  tail call void @arm_heavy_mb() #8
  %243 = tail call i32 @llvm.bswap.i32(i32 %or93.i) #8
  %244 = ptrtoint ptr %cygaud12.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %cygaud12.i, align 4
  %i2s_in98.i = getelementptr inbounds %struct.cygnus_audio, ptr %245, i32 0, i32 4
  %246 = ptrtoint ptr %i2s_in98.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %i2s_in98.i, align 4
  %add.ptr99.i = getelementptr i8, ptr %247, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99.i, i32 %243) #8, !srcloc !240
  %248 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %arrayidx.i, align 4
  %shl101.i = shl nuw i32 1, %249
  %neg102.i = xor i32 %shl101.i, -1
  %and103.i = and i32 %or93.i, %neg102.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !319
  tail call void @arm_heavy_mb() #8
  %250 = tail call i32 @llvm.bswap.i32(i32 %and103.i) #8
  %251 = ptrtoint ptr %cygaud12.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %cygaud12.i, align 4
  %i2s_in108.i = getelementptr inbounds %struct.cygnus_audio, ptr %252, i32 0, i32 4
  %253 = ptrtoint ptr %i2s_in108.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %i2s_in108.i, align 4
  %add.ptr109.i = getelementptr i8, ptr %254, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109.i, i32 %250) #8, !srcloc !240
  br label %cleanup.sink.split

sw.bb110.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %cygaud113.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 10
  %255 = ptrtoint ptr %cygaud113.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %cygaud113.i, align 4
  %audio114.i = getelementptr inbounds %struct.cygnus_audio, ptr %256, i32 0, i32 2
  %257 = ptrtoint ptr %audio114.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %audio114.i, align 4
  %add.ptr115.i = getelementptr i8, ptr %258, i32 2776
  %259 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr115.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %260 = and i32 %259, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %261 = ptrtoint ptr %cygaud113.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %cygaud113.i, align 4
  %audio124.i = getelementptr inbounds %struct.cygnus_audio, ptr %262, i32 0, i32 2
  %263 = ptrtoint ptr %audio124.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %audio124.i, align 4
  %add.ptr125.i = getelementptr i8, ptr %264, i32 2776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr125.i, i32 %260) #8, !srcloc !240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  tail call void @arm_heavy_mb() #8
  %265 = ptrtoint ptr %cygaud113.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %cygaud113.i, align 4
  %audio130.i = getelementptr inbounds %struct.cygnus_audio, ptr %266, i32 0, i32 2
  %267 = ptrtoint ptr %audio130.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %audio130.i, align 4
  %bf_sourcech_ctrl132.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 11, i32 7
  %269 = ptrtoint ptr %bf_sourcech_ctrl132.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %bf_sourcech_ctrl132.i, align 4
  %add.ptr133.i = getelementptr i8, ptr %268, i32 %270
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr133.i, i32 0) #8, !srcloc !240
  %271 = ptrtoint ptr %cygaud113.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %cygaud113.i, align 4
  %audio137.i = getelementptr inbounds %struct.cygnus_audio, ptr %272, i32 0, i32 2
  %273 = ptrtoint ptr %audio137.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %audio137.i, align 4
  %bf_sourcech_cfg139.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 11, i32 8
  %275 = ptrtoint ptr %bf_sourcech_cfg139.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %bf_sourcech_cfg139.i, align 4
  %add.ptr140.i = getelementptr i8, ptr %274, i32 %276
  %277 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr140.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  %278 = and i32 %277, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !324
  tail call void @arm_heavy_mb() #8
  %279 = ptrtoint ptr %cygaud113.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %cygaud113.i, align 4
  %audio149.i = getelementptr inbounds %struct.cygnus_audio, ptr %280, i32 0, i32 2
  %281 = ptrtoint ptr %audio149.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %audio149.i, align 4
  %283 = ptrtoint ptr %bf_sourcech_cfg139.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %bf_sourcech_cfg139.i, align 4
  %add.ptr152.i = getelementptr i8, ptr %282, i32 %284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr152.i, i32 %278) #8, !srcloc !240
  br label %cleanup.sink.split

do.end155.i:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %cygaud156.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 10
  %285 = ptrtoint ptr %cygaud156.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %cygaud156.i, align 4
  %dev.i51 = getelementptr inbounds %struct.cygnus_audio, ptr %286, i32 0, i32 3
  %287 = ptrtoint ptr %dev.i51 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %dev.i51, align 4
  %289 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %288, ptr noundef nonnull @.str.84, i32 noundef %290) #11
  br label %cleanup.sink.split

if.else14:                                        ; preds = %sw.bb9
  %cygaud.i52 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 10
  %291 = ptrtoint ptr %cygaud.i52 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %cygaud.i52, align 4
  %i2s_in.i53 = getelementptr inbounds %struct.cygnus_audio, ptr %292, i32 0, i32 4
  %293 = ptrtoint ptr %i2s_in.i53 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %i2s_in.i53, align 4
  %i2s_cap_stream_cfg.i54 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 11, i32 2
  %295 = ptrtoint ptr %i2s_cap_stream_cfg.i54 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %i2s_cap_stream_cfg.i54, align 4
  %add.ptr.i55 = getelementptr i8, ptr %294, i32 %296
  %297 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !325
  %298 = and i32 %297, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !326
  tail call void @arm_heavy_mb() #8
  %299 = ptrtoint ptr %cygaud.i52 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %cygaud.i52, align 4
  %i2s_in3.i = getelementptr inbounds %struct.cygnus_audio, ptr %300, i32 0, i32 4
  %301 = ptrtoint ptr %i2s_in3.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %i2s_in3.i, align 4
  %303 = ptrtoint ptr %i2s_cap_stream_cfg.i54 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %i2s_cap_stream_cfg.i54, align 4
  %add.ptr6.i56 = getelementptr i8, ptr %302, i32 %304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i56, i32 %298) #8, !srcloc !240
  %streams_on.i57 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 3
  %305 = ptrtoint ptr %streams_on.i57 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %streams_on.i57, align 4
  %and7.i = and i32 %306, -3
  store i32 %and7.i, ptr %streams_on.i57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool.not.i58 = icmp eq i32 %and7.i, 0
  br i1 %tobool.not.i58, label %if.then.i62, label %if.else14.audio_ssp_in_disable.exit_crit_edge

if.else14.audio_ssp_in_disable.exit_crit_edge:    ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #10
  br label %audio_ssp_in_disable.exit

if.then.i62:                                      ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #10
  %307 = ptrtoint ptr %cygaud.i52 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %cygaud.i52, align 4
  %audio.i59 = getelementptr inbounds %struct.cygnus_audio, ptr %308, i32 0, i32 2
  %309 = ptrtoint ptr %audio.i59 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %audio.i59, align 4
  %i2s_cfg.i60 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 11, i32 1
  %311 = ptrtoint ptr %i2s_cfg.i60 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %i2s_cfg.i60, align 4
  %add.ptr13.i61 = getelementptr i8, ptr %310, i32 %312
  %313 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i61) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !327
  %314 = and i32 %313, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !328
  tail call void @arm_heavy_mb() #8
  %315 = ptrtoint ptr %cygaud.i52 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %cygaud.i52, align 4
  %audio23.i = getelementptr inbounds %struct.cygnus_audio, ptr %316, i32 0, i32 2
  %317 = ptrtoint ptr %audio23.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %audio23.i, align 4
  %319 = ptrtoint ptr %i2s_cfg.i60 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %i2s_cfg.i60, align 4
  %add.ptr26.i = getelementptr i8, ptr %318, i32 %320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 %314) #8, !srcloc !240
  br label %audio_ssp_in_disable.exit

audio_ssp_in_disable.exit:                        ; preds = %if.then.i62, %if.else14.audio_ssp_in_disable.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !329
  tail call void @arm_heavy_mb() #8
  %321 = ptrtoint ptr %cygaud.i52 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %cygaud.i52, align 4
  %audio31.i = getelementptr inbounds %struct.cygnus_audio, ptr %322, i32 0, i32 2
  %323 = ptrtoint ptr %audio31.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %audio31.i, align 4
  %bf_destch_ctrl.i63 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 11, i32 5
  %325 = ptrtoint ptr %bf_destch_ctrl.i63 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %bf_destch_ctrl.i63, align 4
  %add.ptr33.i = getelementptr i8, ptr %324, i32 %326
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 0) #8, !srcloc !240
  %327 = ptrtoint ptr %cygaud.i52 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %cygaud.i52, align 4
  %audio37.i = getelementptr inbounds %struct.cygnus_audio, ptr %328, i32 0, i32 2
  %329 = ptrtoint ptr %audio37.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %audio37.i, align 4
  %bf_destch_cfg.i64 = getelementptr [4 x %struct.cygnus_aio_port], ptr %3, i32 0, i32 %5, i32 11, i32 6
  %331 = ptrtoint ptr %bf_destch_cfg.i64 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %bf_destch_cfg.i64, align 4
  %add.ptr39.i = getelementptr i8, ptr %330, i32 %332
  %333 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !330
  %334 = and i32 %333, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !331
  tail call void @arm_heavy_mb() #8
  %335 = ptrtoint ptr %cygaud.i52 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %cygaud.i52, align 4
  %audio48.i = getelementptr inbounds %struct.cygnus_audio, ptr %336, i32 0, i32 2
  %337 = ptrtoint ptr %audio48.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %audio48.i, align 4
  %339 = ptrtoint ptr %bf_destch_cfg.i64 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %bf_destch_cfg.i64, align 4
  %add.ptr51.i = getelementptr i8, ptr %338, i32 %340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.i, i32 %334) #8, !srcloc !240
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %audio_ssp_in_disable.exit, %do.end155.i, %sw.bb110.i, %if.end.i, %if.else, %do.end97.i, %sw.bb52.i, %sw.bb.i
  %.sink66 = phi i32 [ 1, %do.end97.i ], [ 1, %sw.bb52.i ], [ 1, %sw.bb.i ], [ 1, %if.else ], [ -1, %do.end155.i ], [ -1, %sw.bb110.i ], [ -1, %if.end.i ], [ -1, %audio_ssp_in_disable.exit ]
  %active_ports16 = getelementptr inbounds %struct.cygnus_audio, ptr %3, i32 0, i32 6
  %341 = ptrtoint ptr %active_ports16 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %active_ports16, align 4
  %inc = add i32 %342, %.sink66
  store i32 %inc, ptr %active_ports16, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cygnus_ssp_set_clocks(ptr nocapture noundef readonly %aio) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_per_frame = getelementptr inbounds %struct.cygnus_aio_port, ptr %aio, i32 0, i32 8
  %0 = ptrtoint ptr %bit_per_frame to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bit_per_frame, align 4
  %lrclk = getelementptr inbounds %struct.cygnus_aio_port, ptr %aio, i32 0, i32 7
  %2 = ptrtoint ptr %lrclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lrclk, align 4
  %mul = mul i32 %3, %1
  %mclk = getelementptr inbounds %struct.cygnus_aio_port, ptr %aio, i32 0, i32 6
  %4 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mclk, align 4
  %.frozen = freeze i32 %5
  %mul.frozen = freeze i32 %mul
  %div = udiv i32 %.frozen, %mul.frozen
  %6 = mul i32 %div, %mul.frozen
  %rem.decomposed = sub i32 %.frozen, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %cmp.not = icmp eq i32 %rem.decomposed, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = zext i32 %div to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %div, label %do.end [
    i32 2, label %if.end.sw.bb_crit_edge
    i32 4, label %if.end.sw.bb_crit_edge157
    i32 6, label %if.end.sw.bb_crit_edge158
    i32 8, label %if.end.sw.bb_crit_edge159
    i32 10, label %if.end.sw.bb_crit_edge160
    i32 12, label %if.end.sw.bb_crit_edge161
    i32 14, label %if.end.sw.bb_crit_edge162
  ]

if.end.sw.bb_crit_edge162:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge161:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge160:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge159:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge158:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge157:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge157, %if.end.sw.bb_crit_edge158, %if.end.sw.bb_crit_edge159, %if.end.sw.bb_crit_edge160, %if.end.sw.bb_crit_edge161, %if.end.sw.bb_crit_edge162
  %port_type = getelementptr inbounds %struct.cygnus_aio_port, ptr %aio, i32 0, i32 5
  %8 = ptrtoint ptr %port_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_type, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %9, label %do.end42 [
    i32 0, label %sw.bb11
    i32 1, label %sw.bb.sw.epilog45_crit_edge
  ]

sw.bb.sw.epilog45_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog45

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cygaud = getelementptr inbounds %struct.cygnus_aio_port, ptr %aio, i32 0, i32 10
  %11 = ptrtoint ptr %cygaud to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cygaud, align 4
  %dev = getelementptr inbounds %struct.cygnus_audio, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.71) #11
  %15 = ptrtoint ptr %cygaud to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cygaud, align 4
  %dev7 = getelementptr inbounds %struct.cygnus_audio, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev7, align 4
  %19 = ptrtoint ptr %lrclk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lrclk, align 4
  %21 = ptrtoint ptr %bit_per_frame to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bit_per_frame, align 4
  %23 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mclk, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.74, i32 noundef %20, i32 noundef %22, i32 noundef %24) #11
  br label %cleanup

sw.bb11:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %1)
  %cmp13 = icmp eq i32 %1, 512
  %cygaud17 = getelementptr inbounds %struct.cygnus_aio_port, ptr %aio, i32 0, i32 10
  %25 = ptrtoint ptr %cygaud17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cygaud17, align 4
  %audio = getelementptr inbounds %struct.cygnus_audio, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %audio, align 4
  %i2s_cfg = getelementptr inbounds %struct.cygnus_aio_port, ptr %aio, i32 0, i32 11, i32 1
  %29 = ptrtoint ptr %i2s_cfg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i2s_cfg, align 4
  %add.ptr = getelementptr i8, ptr %28, i32 %30
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !332
  %32 = and i32 %31, -61
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %34 = shl i32 %1, 21
  %.op147.op = and i32 %34, -67108864
  %shl19 = select i1 %cmp13, i32 0, i32 %.op147.op
  %or = or i32 %33, %shl19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !333
  tail call void @arm_heavy_mb() #8
  %35 = tail call i32 @llvm.bswap.i32(i32 %or)
  %36 = ptrtoint ptr %cygaud17 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cygaud17, align 4
  %audio24 = getelementptr inbounds %struct.cygnus_audio, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %audio24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %audio24, align 4
  %40 = ptrtoint ptr %i2s_cfg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %i2s_cfg, align 4
  %add.ptr27 = getelementptr i8, ptr %39, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %35) #8, !srcloc !240
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cygnus_ssp_set_clocks.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cygnus_ssp_set_clocks, %if.then33)) #8
          to label %sw.epilog45 [label %if.then33], !srcloc !241

if.then33:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %cygaud17 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cygaud17, align 4
  %dev35 = getelementptr inbounds %struct.cygnus_audio, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev35, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cygnus_ssp_set_clocks.__UNIQUE_ID_ddebug238, ptr noundef %45, ptr noundef nonnull @.str.76, i32 noundef %or) #8
  br label %sw.epilog45

do.end42:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %cygaud43 = getelementptr inbounds %struct.cygnus_aio_port, ptr %aio, i32 0, i32 10
  %46 = ptrtoint ptr %cygaud43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cygaud43, align 4
  %dev44 = getelementptr inbounds %struct.cygnus_audio, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.78) #11
  br label %cleanup

sw.epilog45:                                      ; preds = %if.then33, %sw.bb11, %sw.bb.sw.epilog45_crit_edge
  %cygaud48 = getelementptr inbounds %struct.cygnus_aio_port, ptr %aio, i32 0, i32 10
  %50 = ptrtoint ptr %cygaud48 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cygaud48, align 4
  %audio49 = getelementptr inbounds %struct.cygnus_audio, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %audio49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %audio49, align 4
  %i2s_mclk_cfg = getelementptr inbounds %struct.cygnus_aio_port, ptr %aio, i32 0, i32 11, i32 4
  %54 = ptrtoint ptr %i2s_mclk_cfg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %i2s_mclk_cfg, align 4
  %add.ptr51 = getelementptr i8, ptr %53, i32 %55
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !334
  %57 = and i32 %56, -3841
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %59 = shl nuw nsw i32 %div, 15
  %shl56 = and i32 %59, -65536
  %or57 = or i32 %58, %shl56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !335
  tail call void @arm_heavy_mb() #8
  %60 = tail call i32 @llvm.bswap.i32(i32 %or57)
  %61 = ptrtoint ptr %cygaud48 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cygaud48, align 4
  %audio62 = getelementptr inbounds %struct.cygnus_audio, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %audio62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %audio62, align 4
  %65 = ptrtoint ptr %i2s_mclk_cfg to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %i2s_mclk_cfg, align 4
  %add.ptr65 = getelementptr i8, ptr %64, i32 %66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %60) #8, !srcloc !240
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cygnus_ssp_set_clocks.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cygnus_ssp_set_clocks, %if.then78)) #8
          to label %do.body84 [label %if.then78], !srcloc !241

if.then78:                                        ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %cygaud48 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cygaud48, align 4
  %dev80 = getelementptr inbounds %struct.cygnus_audio, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev80, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cygnus_ssp_set_clocks.__UNIQUE_ID_ddebug239, ptr noundef %70, ptr noundef nonnull @.str.80, i32 noundef %or57) #8
  br label %do.body84

do.body84:                                        ; preds = %if.then78, %sw.epilog45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cygnus_ssp_set_clocks.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cygnus_ssp_set_clocks, %if.then96)) #8
          to label %cleanup [label %if.then96], !srcloc !241

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %cygaud48 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cygaud48, align 4
  %dev98 = getelementptr inbounds %struct.cygnus_audio, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %dev98 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev98, align 4
  %75 = ptrtoint ptr %bit_per_frame to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %bit_per_frame, align 4
  %77 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %mclk, align 4
  %79 = ptrtoint ptr %lrclk to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %lrclk, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cygnus_ssp_set_clocks.__UNIQUE_ID_ddebug240, ptr noundef %74, ptr noundef nonnull @.str.81, i32 noundef %76, i32 noundef %78, i32 noundef %80) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then96, %do.body84, %do.end42, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end42 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then96 ], [ 0, %do.body84 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cygnus_ssp_suspend(ptr noundef readonly %component) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dai_list = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 11
  %0 = ptrtoint ptr %dai_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn11 = load ptr, ptr %dai_list, align 4
  %cmp.not12 = icmp eq ptr %.pn11, %dai_list
  br i1 %cmp.not12, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %__cygnus_ssp_suspend.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn14 = phi ptr [ %.pn, %__cygnus_ssp_suspend.exit.for.body_crit_edge ], [ %.pn11, %entry.for.body_crit_edge ]
  %ret.013 = phi i32 [ %or, %__cygnus_ssp_suspend.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %dai.0 = getelementptr i8, ptr %.pn14, i32 -64
  %dev.i.i.i = getelementptr i8, ptr %.pn14, i32 -56
  %1 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i.i.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %id.i.i = getelementptr i8, ptr %.pn14, i32 -60
  %5 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id.i.i, align 4
  %call1.i = tail call i32 @snd_soc_dai_active(ptr noundef %dai.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %for.body.__cygnus_ssp_suspend.exit_crit_edge, label %if.end.i

for.body.__cygnus_ssp_suspend.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %__cygnus_ssp_suspend.exit

if.end.i:                                         ; preds = %for.body
  %is_slave.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %4, i32 0, i32 %6, i32 2
  %7 = ptrtoint ptr %is_slave.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_slave.i, align 4, !range !264
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not.i = icmp eq i8 %8, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.__cygnus_ssp_suspend.exit_crit_edge

if.end.i.__cygnus_ssp_suspend.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__cygnus_ssp_suspend.exit

if.then3.i:                                       ; preds = %if.end.i
  %cygaud.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %4, i32 0, i32 %6, i32 10
  %9 = ptrtoint ptr %cygaud.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cygaud.i, align 4
  %audio.i = getelementptr inbounds %struct.cygnus_audio, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %audio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %audio.i, align 4
  %i2s_mclk_cfg.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %4, i32 0, i32 %6, i32 11, i32 4
  %13 = ptrtoint ptr %i2s_mclk_cfg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i2s_mclk_cfg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %14
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !243
  %16 = lshr i32 %15, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !336
  %and.i = and i32 %16, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp.i = icmp ugt i32 %and.i, 2
  br i1 %cmp.i, label %do.end.i, label %if.end8.i

do.end.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %cygaud.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cygaud.i, align 4
  %dev.i = getelementptr inbounds %struct.cygnus_audio, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.60, i32 noundef %and.i) #11
  br label %__cygnus_ssp_suspend.exit

if.end8.i:                                        ; preds = %if.then3.i
  %cap_clk_en.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %4, i32 0, i32 %6, i32 16, i32 2
  %21 = ptrtoint ptr %cap_clk_en.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cap_clk_en.i, align 2, !range !264
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool9.not.i = icmp eq i8 %22, 0
  br i1 %tobool9.not.i, label %if.end8.i.if.end12.i_crit_edge, label %if.then10.i

if.end8.i.if.end12.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %cygaud.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cygaud.i, align 4
  %arrayidx.i = getelementptr %struct.cygnus_audio, ptr %24, i32 0, i32 5, i32 %and.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  tail call void @clk_disable(ptr noundef %26) #8
  tail call void @clk_unprepare(ptr noundef %26) #8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.end8.i.if.end12.i_crit_edge
  %play_clk_en.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %4, i32 0, i32 %6, i32 16, i32 3
  %27 = ptrtoint ptr %play_clk_en.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %play_clk_en.i, align 1, !range !264
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool14.not.i = icmp eq i8 %28, 0
  br i1 %tobool14.not.i, label %if.end12.i.if.end19.i_crit_edge, label %if.then15.i

if.end12.i.if.end19.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %cygaud.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cygaud.i, align 4
  %arrayidx18.i = getelementptr %struct.cygnus_audio, ptr %30, i32 0, i32 5, i32 %and.i
  %31 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx18.i, align 4
  tail call void @clk_disable(ptr noundef %32) #8
  tail call void @clk_unprepare(ptr noundef %32) #8
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then15.i, %if.end12.i.if.end19.i_crit_edge
  %pll_clk_num.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %4, i32 0, i32 %6, i32 9
  %33 = ptrtoint ptr %pll_clk_num.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and.i, ptr %pll_clk_num.i, align 4
  br label %__cygnus_ssp_suspend.exit

__cygnus_ssp_suspend.exit:                        ; preds = %if.end19.i, %do.end.i, %if.end.i.__cygnus_ssp_suspend.exit_crit_edge, %for.body.__cygnus_ssp_suspend.exit_crit_edge
  %retval.1.i = phi i32 [ 0, %for.body.__cygnus_ssp_suspend.exit_crit_edge ], [ -22, %do.end.i ], [ 0, %if.end19.i ], [ 0, %if.end.i.__cygnus_ssp_suspend.exit_crit_edge ]
  %or = or i32 %retval.1.i, %ret.013
  %34 = ptrtoint ptr %.pn14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn = load ptr, ptr %.pn14, align 4
  %cmp.not = icmp eq ptr %.pn, %dai_list
  br i1 %cmp.not, label %__cygnus_ssp_suspend.exit.for.end_crit_edge, label %__cygnus_ssp_suspend.exit.for.body_crit_edge

__cygnus_ssp_suspend.exit.for.body_crit_edge:     ; preds = %__cygnus_ssp_suspend.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

__cygnus_ssp_suspend.exit.for.end_crit_edge:      ; preds = %__cygnus_ssp_suspend.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %__cygnus_ssp_suspend.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %or, %__cygnus_ssp_suspend.exit.for.end_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cygnus_ssp_resume(ptr noundef readonly %component) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dai_list = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 11
  %0 = ptrtoint ptr %dai_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn11 = load ptr, ptr %dai_list, align 4
  %cmp.not12 = icmp eq ptr %.pn11, %dai_list
  br i1 %cmp.not12, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %__cygnus_ssp_resume.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn14 = phi ptr [ %.pn, %__cygnus_ssp_resume.exit.for.body_crit_edge ], [ %.pn11, %entry.for.body_crit_edge ]
  %ret.013 = phi i32 [ %or, %__cygnus_ssp_resume.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %dai.0 = getelementptr i8, ptr %.pn14, i32 -64
  %dev.i.i.i = getelementptr i8, ptr %.pn14, i32 -56
  %1 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i.i.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %id.i.i = getelementptr i8, ptr %.pn14, i32 -60
  %5 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id.i.i, align 4
  %call1.i = tail call i32 @snd_soc_dai_active(ptr noundef %dai.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %for.body.__cygnus_ssp_resume.exit_crit_edge, label %if.end.i

for.body.__cygnus_ssp_resume.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %__cygnus_ssp_resume.exit

if.end.i:                                         ; preds = %for.body
  %is_slave.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %4, i32 0, i32 %6, i32 2
  %7 = ptrtoint ptr %is_slave.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_slave.i, align 4, !range !264
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not.i = icmp eq i8 %8, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.__cygnus_ssp_resume.exit_crit_edge

if.end.i.__cygnus_ssp_resume.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__cygnus_ssp_resume.exit

if.then3.i:                                       ; preds = %if.end.i
  %cap_clk_en.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %4, i32 0, i32 %6, i32 16, i32 2
  %9 = ptrtoint ptr %cap_clk_en.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cap_clk_en.i, align 2, !range !264
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not.i = icmp eq i8 %10, 0
  br i1 %tobool4.not.i, label %if.then3.i.if.end11.i_crit_edge, label %if.then5.i

if.then3.i.if.end11.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then5.i:                                       ; preds = %if.then3.i
  %cygaud.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %4, i32 0, i32 %6, i32 10
  %11 = ptrtoint ptr %cygaud.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cygaud.i, align 4
  %pll_clk_num.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %4, i32 0, i32 %6, i32 9
  %13 = ptrtoint ptr %pll_clk_num.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pll_clk_num.i, align 4
  %arrayidx.i = getelementptr %struct.cygnus_audio, ptr %12, i32 0, i32 5, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then5.i.cleanup.sink.split.i_crit_edge

if.then5.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end.i.i:                                       ; preds = %if.then5.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end11.i_crit_edge, label %if.end.i.i.cleanup.sink.split.sink.split.i_crit_edge

if.end.i.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split.i

if.end.i.i.if.end11.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i.i.if.end11.i_crit_edge, %if.then3.i.if.end11.i_crit_edge
  %play_clk_en.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %4, i32 0, i32 %6, i32 16, i32 3
  %17 = ptrtoint ptr %play_clk_en.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %play_clk_en.i, align 1, !range !264
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool13.not.i = icmp eq i8 %18, 0
  br i1 %tobool13.not.i, label %if.end11.i.__cygnus_ssp_resume.exit_crit_edge, label %if.then14.i

if.end11.i.__cygnus_ssp_resume.exit_crit_edge:    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__cygnus_ssp_resume.exit

if.then14.i:                                      ; preds = %if.end11.i
  %cygaud15.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %4, i32 0, i32 %6, i32 10
  %19 = ptrtoint ptr %cygaud15.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cygaud15.i, align 4
  %pll_clk_num17.i = getelementptr [4 x %struct.cygnus_aio_port], ptr %4, i32 0, i32 %6, i32 9
  %21 = ptrtoint ptr %pll_clk_num17.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pll_clk_num17.i, align 4
  %arrayidx18.i = getelementptr %struct.cygnus_audio, ptr %20, i32 0, i32 5, i32 %22
  %23 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx18.i, align 4
  %call.i53.i = tail call i32 @clk_prepare(ptr noundef %24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53.i)
  %tobool.not.i54.i = icmp eq i32 %call.i53.i, 0
  br i1 %tobool.not.i54.i, label %if.end.i57.i, label %if.then14.i.if.then21.i_crit_edge

if.then14.i.if.then21.i_crit_edge:                ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21.i

if.end.i57.i:                                     ; preds = %if.then14.i
  %call1.i55.i = tail call i32 @clk_enable(ptr noundef %24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i55.i)
  %tobool2.not.i56.i = icmp eq i32 %call1.i55.i, 0
  br i1 %tobool2.not.i56.i, label %if.end.i57.i.__cygnus_ssp_resume.exit_crit_edge, label %if.then3.i58.i

if.end.i57.i.__cygnus_ssp_resume.exit_crit_edge:  ; preds = %if.end.i57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__cygnus_ssp_resume.exit

if.then3.i58.i:                                   ; preds = %if.end.i57.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %24) #8
  br label %if.then21.i

if.then21.i:                                      ; preds = %if.then3.i58.i, %if.then14.i.if.then21.i_crit_edge
  %25 = ptrtoint ptr %cap_clk_en.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %cap_clk_en.i, align 2, !range !264
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool24.not.i = icmp eq i8 %26, 0
  br i1 %tobool24.not.i, label %if.then21.i.cleanup.sink.split.i_crit_edge, label %if.then25.i

if.then21.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.then25.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %cygaud15.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cygaud15.i, align 4
  %29 = ptrtoint ptr %pll_clk_num17.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pll_clk_num17.i, align 4
  %arrayidx29.i = getelementptr %struct.cygnus_audio, ptr %28, i32 0, i32 5, i32 %30
  %31 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx29.i, align 4
  tail call void @clk_disable(ptr noundef %32) #8
  br label %cleanup.sink.split.sink.split.i

cleanup.sink.split.sink.split.i:                  ; preds = %if.then25.i, %if.end.i.i.cleanup.sink.split.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %32, %if.then25.i ], [ %16, %if.end.i.i.cleanup.sink.split.sink.split.i_crit_edge ]
  %cygaud15.sink.ph.i = phi ptr [ %cygaud15.i, %if.then25.i ], [ %cygaud.i, %if.end.i.i.cleanup.sink.split.sink.split.i_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink.i) #8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %cleanup.sink.split.sink.split.i, %if.then21.i.cleanup.sink.split.i_crit_edge, %if.then5.i.cleanup.sink.split.i_crit_edge
  %cygaud15.sink.i = phi ptr [ %cygaud.i, %if.then5.i.cleanup.sink.split.i_crit_edge ], [ %cygaud15.i, %if.then21.i.cleanup.sink.split.i_crit_edge ], [ %cygaud15.sink.ph.i, %cleanup.sink.split.sink.split.i ]
  %33 = ptrtoint ptr %cygaud15.sink.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cygaud15.sink.i, align 4
  %dev35.i = getelementptr inbounds %struct.cygnus_audio, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %dev35.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev35.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93) #11
  br label %__cygnus_ssp_resume.exit

__cygnus_ssp_resume.exit:                         ; preds = %cleanup.sink.split.i, %if.end.i57.i.__cygnus_ssp_resume.exit_crit_edge, %if.end11.i.__cygnus_ssp_resume.exit_crit_edge, %if.end.i.__cygnus_ssp_resume.exit_crit_edge, %for.body.__cygnus_ssp_resume.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.body.__cygnus_ssp_resume.exit_crit_edge ], [ 0, %if.end11.i.__cygnus_ssp_resume.exit_crit_edge ], [ 0, %if.end.i.__cygnus_ssp_resume.exit_crit_edge ], [ 0, %if.end.i57.i.__cygnus_ssp_resume.exit_crit_edge ], [ -22, %cleanup.sink.split.i ]
  %or = or i32 %retval.0.i, %ret.013
  %37 = ptrtoint ptr %.pn14 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn = load ptr, ptr %.pn14, align 4
  %cmp.not = icmp eq ptr %.pn, %dai_list
  br i1 %cmp.not, label %__cygnus_ssp_resume.exit.for.end_crit_edge, label %__cygnus_ssp_resume.exit.for.body_crit_edge

__cygnus_ssp_resume.exit.for.body_crit_edge:      ; preds = %__cygnus_ssp_resume.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

__cygnus_ssp_resume.exit.for.end_crit_edge:       ; preds = %__cygnus_ssp_resume.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %__cygnus_ssp_resume.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %or, %__cygnus_ssp_resume.exit.for.end_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_active(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cygnus_soc_platform_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !69, !71, !73, !75, !77, !79, !80, !81, !83, !84, !85, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !102, !103, !104, !106, !108, !109, !110, !112, !113, !115, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !132, !134, !136, !138, !139, !140, !141, !143, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !167, !169, !170, !171, !173, !174, !176, !177, !178, !180, !181, !183, !184, !186, !187, !188, !190, !191, !192, !193, !195, !196, !197, !199, !201, !203, !205, !206, !207, !208, !210, !212, !214, !216, !217, !218, !220, !221, !222, !223, !225, !226, !228}
!llvm.module.flags = !{!230, !231, !232, !233, !234, !235, !236, !237}
!llvm.ident = !{!238}

!0 = !{ptr @__ksymtab_cygnus_ssp_set_custom_fsync_width, !1, !"__ksymtab_cygnus_ssp_set_custom_fsync_width", i1 false, i1 false}
!1 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 832, i32 1}
!2 = !{ptr @__initcall__kmod_snd_soc_cygnus__254_1411_cygnus_ssp_driver_init6, !3, !"__initcall__kmod_snd_soc_cygnus__254_1411_cygnus_ssp_driver_init6", i1 false, i1 false}
!3 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1411, i32 1}
!4 = !{ptr @__exitcall_cygnus_ssp_driver_exit, !3, !"__exitcall_cygnus_ssp_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_alias255, !6, !"__UNIQUE_ID_alias255", i1 false, i1 false}
!6 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1413, i32 1}
!7 = !{ptr @__UNIQUE_ID_file256, !8, !"__UNIQUE_ID_file256", i1 false, i1 false}
!8 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1414, i32 1}
!9 = !{ptr @__UNIQUE_ID_license257, !8, !"__UNIQUE_ID_license257", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_author258, !11, !"__UNIQUE_ID_author258", i1 false, i1 false}
!11 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1415, i32 1}
!12 = !{ptr @__UNIQUE_ID_description259, !13, !"__UNIQUE_ID_description259", i1 false, i1 false}
!13 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1416, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1406, i32 11}
!16 = !{ptr @cygnus_ssp_driver, !17, !"cygnus_ssp_driver", i1 false, i1 false}
!17 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1402, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1322, i32 62}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1326, i32 63}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1336, i32 3}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @cygnus_ssp_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @cygnus_ssp_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1353, i32 4}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @cygnus_ssp_probe.__UNIQUE_ID_ddebug252, !31, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1362, i32 2}
!36 = !{ptr @cygnus_ssp_probe.__UNIQUE_ID_ddebug253, !35, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1366, i32 3}
!39 = !{ptr @cygnus_ssp_probe._entry.11, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @cygnus_ssp_probe._entry_ptr.13, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1376, i32 3}
!43 = !{ptr @cygnus_ssp_probe._entry.14, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @cygnus_ssp_probe._entry_ptr.16, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1382, i32 3}
!47 = !{ptr @cygnus_ssp_probe._entry.17, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @cygnus_ssp_probe._entry_ptr.19, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1225, i32 31}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1226, i32 3}
!53 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @parse_ssp_child_node._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @parse_ssp_child_node._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1248, i32 3}
!58 = !{ptr @parse_ssp_child_node._entry.23, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @parse_ssp_child_node._entry_ptr.25, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1276, i32 3}
!62 = !{ptr @parse_ssp_child_node._entry.26, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @parse_ssp_child_node._entry_ptr.28, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1280, i32 2}
!66 = !{ptr @parse_ssp_child_node.__UNIQUE_ID_ddebug251, !65, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1184, i32 2}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1185, i32 2}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1186, i32 2}
!73 = !{ptr @cygnus_ssp_dai_info, !74, !"cygnus_ssp_dai_info", i1 false, i1 false}
!74 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1183, i32 40}
!75 = !{ptr @cygnus_ssp_dai_ops, !76, !"cygnus_ssp_dai_ops", i1 false, i1 false}
!76 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1146, i32 37}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 723, i32 2}
!79 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @cygnus_ssp_set_sysclk.__UNIQUE_ID_ddebug245, !78, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 727, i32 3}
!83 = !{ptr @cygnus_ssp_set_sysclk._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @cygnus_ssp_set_sysclk._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 734, i32 2}
!87 = !{ptr @cygnus_ssp_set_sysclk.__UNIQUE_ID_ddebug246, !86, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 507, i32 3}
!90 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @pll_configure_mclk._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @pll_configure_mclk._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 517, i32 4}
!95 = !{ptr @pll_configure_mclk._entry.39, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @pll_configure_mclk._entry_ptr.41, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @pll_configure_mclk._entry.42, !98, !"_entry", i1 false, i1 false}
!98 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 527, i32 4}
!99 = !{ptr @pll_configure_mclk._entry_ptr.43, !98, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 536, i32 3}
!102 = !{ptr @pll_configure_mclk._entry.44, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @pll_configure_mclk._entry_ptr.46, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @pll_predef_mclk, !105, !"pll_predef_mclk", i1 false, i1 false}
!105 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 205, i32 37}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 844, i32 2}
!108 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @cygnus_ssp_set_fmt.__UNIQUE_ID_ddebug247, !107, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 926, i32 2}
!112 = !{ptr @cygnus_ssp_set_fmt.__UNIQUE_ID_ddebug248, !111, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 982, i32 3}
!115 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @cygnus_set_dai_tdm_slot._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @cygnus_set_dai_tdm_slot._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1010, i32 3}
!120 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @cygnus_set_dai_tdm_slot._entry.52, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @cygnus_set_dai_tdm_slot._entry_ptr.55, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1024, i32 3}
!125 = !{ptr @cygnus_set_dai_tdm_slot._entry.56, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @cygnus_set_dai_tdm_slot._entry_ptr.58, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1032, i32 2}
!129 = !{ptr @cygnus_set_dai_tdm_slot.__UNIQUE_ID_ddebug250, !128, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!130 = distinct !{null, !131, !"ssp_valid_tdm_framesize", i1 false, i1 false}
!131 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 235, i32 18}
!132 = !{ptr @cygnus_rate_constraint, !133, !"cygnus_rate_constraint", i1 false, i1 false}
!133 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 242, i32 48}
!134 = !{ptr @cygnus_rates, !135, !"cygnus_rates", i1 false, i1 false}
!135 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 237, i32 27}
!136 = !{ptr @.str.60, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 778, i32 4}
!138 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @cygnus_ssp_shutdown._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @cygnus_ssp_shutdown._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.62, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 630, i32 2}
!143 = !{ptr @.str.63, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @cygnus_ssp_hw_params.__UNIQUE_ID_ddebug241, !142, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!145 = !{ptr @.str.64, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 631, i32 2}
!147 = !{ptr @cygnus_ssp_hw_params.__UNIQUE_ID_ddebug242, !146, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!148 = !{ptr @.str.65, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 633, i32 2}
!150 = !{ptr @cygnus_ssp_hw_params.__UNIQUE_ID_ddebug243, !149, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!151 = !{ptr @.str.66, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 634, i32 2}
!153 = !{ptr @cygnus_ssp_hw_params.__UNIQUE_ID_ddebug244, !152, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!154 = !{ptr @.str.67, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 641, i32 4}
!156 = !{ptr @cygnus_ssp_hw_params._entry, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @cygnus_ssp_hw_params._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.69, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 650, i32 3}
!160 = !{ptr @cygnus_ssp_hw_params._entry.68, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @cygnus_ssp_hw_params._entry_ptr.70, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 576, i32 3}
!164 = !{ptr @.str.72, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @cygnus_ssp_set_clocks._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @cygnus_ssp_set_clocks._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.74, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 578, i32 3}
!169 = !{ptr @cygnus_ssp_set_clocks._entry.73, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @cygnus_ssp_set_clocks._entry_ptr.75, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.76, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 598, i32 3}
!173 = !{ptr @cygnus_ssp_set_clocks.__UNIQUE_ID_ddebug238, !172, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!174 = !{ptr @.str.78, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 604, i32 3}
!176 = !{ptr @cygnus_ssp_set_clocks._entry.77, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @cygnus_ssp_set_clocks._entry_ptr.79, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.80, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 614, i32 2}
!180 = !{ptr @cygnus_ssp_set_clocks.__UNIQUE_ID_ddebug239, !179, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!181 = !{ptr @.str.81, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 615, i32 2}
!183 = !{ptr @cygnus_ssp_set_clocks.__UNIQUE_ID_ddebug240, !182, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!184 = !{ptr @.str.82, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 938, i32 2}
!186 = !{ptr @.str.83, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @cygnus_ssp_trigger.__UNIQUE_ID_ddebug249, !185, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!188 = !{ptr @.str.84, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 420, i32 3}
!190 = !{ptr @.str.85, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @audio_ssp_out_enable._entry, !189, !"_entry", i1 false, i1 false}
!192 = !{ptr @audio_ssp_out_enable._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.86, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 483, i32 3}
!195 = !{ptr @audio_ssp_out_disable._entry, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @audio_ssp_out_disable._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.87, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1190, i32 10}
!199 = !{ptr @cygnus_spdif_dai_info, !200, !"cygnus_spdif_dai_info", i1 false, i1 false}
!200 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1189, i32 40}
!201 = !{ptr @cygnus_spdif_dai_ops, !202, !"cygnus_spdif_dai_ops", i1 false, i1 false}
!202 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1156, i32 37}
!203 = !{ptr @.str.88, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 330, i32 3}
!205 = !{ptr @.str.89, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @audio_ssp_init_portregs._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @audio_ssp_init_portregs._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @cygnus_ssp_dai, !209, !"cygnus_ssp_dai", i1 false, i1 false}
!209 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1201, i32 34}
!210 = !{ptr @.str.90, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1204, i32 11}
!212 = !{ptr @cygnus_ssp_component, !213, !"cygnus_ssp_component", i1 false, i1 false}
!213 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1203, i32 46}
!214 = !{ptr @.str.91, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1068, i32 4}
!216 = !{ptr @__cygnus_ssp_suspend._entry, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @__cygnus_ssp_suspend._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.92, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1108, i32 5}
!220 = !{ptr @.str.93, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @__cygnus_ssp_resume._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @__cygnus_ssp_resume._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @__cygnus_ssp_resume._entry.94, !224, !"_entry", i1 false, i1 false}
!224 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1120, i32 5}
!225 = !{ptr @__cygnus_ssp_resume._entry_ptr.95, !224, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.96, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1297, i32 36}
!228 = !{ptr @cygnus_ssp_of_match, !229, !"cygnus_ssp_of_match", i1 false, i1 false}
!229 = !{!"../sound/soc/bcm/cygnus-ssp.c", i32 1396, i32 34}
!230 = !{i32 1, !"wchar_size", i32 2}
!231 = !{i32 1, !"min_enum_size", i32 4}
!232 = !{i32 8, !"branch-target-enforcement", i32 0}
!233 = !{i32 8, !"sign-return-address", i32 0}
!234 = !{i32 8, !"sign-return-address-all", i32 0}
!235 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!236 = !{i32 7, !"uwtable", i32 1}
!237 = !{i32 7, !"frame-pointer", i32 2}
!238 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!239 = !{i64 2155019682}
!240 = !{i64 3106303}
!241 = !{i64 2148758713, i64 2148758718, i64 2148758731, i64 2148758775, i64 2148758809, i64 2148758830}
!242 = !{!"auto-init"}
!243 = !{i64 3106721}
!244 = !{i64 2154874354}
!245 = !{i64 2154874616}
!246 = !{i64 2154875101}
!247 = !{i64 2154875912}
!248 = !{i64 2154876392}
!249 = !{i64 2154877232}
!250 = !{i64 2154877491}
!251 = !{i64 2154878308}
!252 = !{i64 2154878789}
!253 = !{i64 2154879525}
!254 = !{i64 2154879854}
!255 = !{i64 2154880282}
!256 = !{i64 2154881021}
!257 = !{i64 2154881329}
!258 = !{i64 2154882047}
!259 = !{i64 2154882363}
!260 = !{i64 2154883155}
!261 = !{i64 2154883635}
!262 = !{i64 2154884373}
!263 = !{i64 2154884683}
!264 = !{i8 0, i8 2}
!265 = !{i64 2154964251}
!266 = !{i64 2154964497}
!267 = !{i64 2154972945}
!268 = !{i64 2154973198}
!269 = !{i64 2154974005}
!270 = !{i64 2154974305}
!271 = !{i64 2154975052}
!272 = !{i64 2154977838}
!273 = !{i64 2154991245}
!274 = !{i64 2154991575}
!275 = !{i64 2154992352}
!276 = !{i64 2154992677}
!277 = !{i64 2154965309}
!278 = !{i32 0, i32 33}
!279 = !{i64 2154949146}
!280 = !{i64 2154949545}
!281 = !{i64 2154950423}
!282 = !{i64 2154950674}
!283 = !{i64 2154951529}
!284 = !{i64 2154951856}
!285 = !{i64 2154952715}
!286 = !{i64 2154953042}
!287 = !{i64 2154894988}
!288 = !{i64 2154895311}
!289 = !{i64 2154895762}
!290 = !{i64 2154896531}
!291 = !{i64 2154896922}
!292 = !{i64 2154897726}
!293 = !{i64 2154898048}
!294 = !{i64 2154898868}
!295 = !{i64 2154899099}
!296 = !{i64 2154899531}
!297 = !{i64 2154900332}
!298 = !{i64 2154900654}
!299 = !{i64 2154887040}
!300 = !{i64 2154887360}
!301 = !{i64 2154887810}
!302 = !{i64 2154888583}
!303 = !{i64 2154888974}
!304 = !{i64 2154889794}
!305 = !{i64 2154890122}
!306 = !{i64 2154903142}
!307 = !{i64 2154903533}
!308 = !{i64 2154904263}
!309 = !{i64 2154904580}
!310 = !{i64 2154905012}
!311 = !{i64 2154905813}
!312 = !{i64 2154906135}
!313 = !{i64 2154906873}
!314 = !{i64 2154907190}
!315 = !{i64 2154907978}
!316 = !{i64 2154908301}
!317 = !{i64 2154909042}
!318 = !{i64 2154909360}
!319 = !{i64 2154909869}
!320 = !{i64 2154910588}
!321 = !{i64 2154910819}
!322 = !{i64 2154911251}
!323 = !{i64 2154912052}
!324 = !{i64 2154912374}
!325 = !{i64 2154891036}
!326 = !{i64 2154891364}
!327 = !{i64 2154892230}
!328 = !{i64 2154892621}
!329 = !{i64 2154893065}
!330 = !{i64 2154893862}
!331 = !{i64 2154894182}
!332 = !{i64 2154925584}
!333 = !{i64 2154925827}
!334 = !{i64 2154930531}
!335 = !{i64 2154930779}
!336 = !{i64 2154993469}
