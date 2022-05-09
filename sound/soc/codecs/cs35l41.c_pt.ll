; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/cs35l41.c_pt.bc'
source_filename = "../sound/soc/codecs/cs35l41.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cs35l41_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_cs35l41_probe\09\09\09\09"
module asm "\09.long\09__crc_cs35l41_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cs35l41_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22cs35l41_probe\22\09\09\09\09\09"
module asm "__kstrtabns_cs35l41_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cs35l41_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_cs35l41_remove\09\09\09\09"
module asm "\09.long\09__crc_cs35l41_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cs35l41_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22cs35l41_remove\22\09\09\09\09\09"
module asm "__kstrtabns_cs35l41_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cs35l41_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_cs35l41_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_cs35l41_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cs35l41_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22cs35l41_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_cs35l41_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.102, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.102 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cs_dsp_region = type { i32, i32 }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.94, i32 }
%union.anon.94 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.atomic_t = type { i32 }
%struct.cs35l41_pll_sysclk_config = type { i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.cs35l41_fs_mon_config = type { i32, i32, i32 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.cs35l41_global_fs_config = type { i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cs35l41_private = type { %struct.wm_adsp, ptr, %struct.cs35l41_platform_data, ptr, ptr, [2 x %struct.regulator_bulk_data], i32, ptr }
%struct.wm_adsp = type { %struct.cs_dsp, ptr, ptr, ptr, i32, i32, %struct.work_struct, i8, i8, %struct.list_head, %struct.list_head, i8 }
%struct.cs_dsp = type { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.list_head, ptr, i32, i32, i32, ptr, i32, i32, i8, i8, %struct.list_head, %struct.mutex, i32, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cs35l41_platform_data = type { i32, i32, i32, i32, %struct.cs35l41_irq_cfg, %struct.cs35l41_irq_cfg }
%struct.cs35l41_irq_cfg = type { i8, i8, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
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
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
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

@cs35l41_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1274, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to request core supplies: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cs35l41_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/codecs/cs35l41.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cs35l41_probe._entry_ptr = internal global ptr @cs35l41_probe._entry, section ".printk_index", align 4
@cs35l41_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1280, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to enable core supplies: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@cs35l41_probe._entry_ptr.7 = internal global ptr @cs35l41_probe._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@cs35l41_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 1292, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Reset line busy, assuming shared reset\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cs35l41_probe._entry_ptr.12 = internal global ptr @cs35l41_probe._entry.9, section ".printk_index", align 4
@cs35l41_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 1295, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get reset GPIO: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@cs35l41_probe._entry_ptr.15 = internal global ptr @cs35l41_probe._entry.13, section ".printk_index", align 4
@cs35l41_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 1312, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed waiting for OTP_BOOT_DONE: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@cs35l41_probe._entry_ptr.18 = internal global ptr @cs35l41_probe._entry.16, section ".printk_index", align 4
@cs35l41_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 1318, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OTP Boot error\0A\00", [16 x i8] zeroinitializer }, align 32
@cs35l41_probe._entry_ptr.21 = internal global ptr @cs35l41_probe._entry.19, section ".printk_index", align 4
@cs35l41_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.1, ptr @.str.2, i32 1325, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Get Device ID failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@cs35l41_probe._entry_ptr.24 = internal global ptr @cs35l41_probe._entry.22, section ".printk_index", align 4
@cs35l41_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.1, ptr @.str.2, i32 1331, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Get Revision ID failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@cs35l41_probe._entry_ptr.27 = internal global ptr @cs35l41_probe._entry.25, section ".printk_index", align 4
@cs35l41_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.1, ptr @.str.2, i32 1343, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"CS35L41 Device ID (%X). Expected ID %X\0A\00", [56 x i8] zeroinitializer }, align 32
@cs35l41_probe._entry_ptr.30 = internal global ptr @cs35l41_probe._entry.28, section ".printk_index", align 4
@cs35l41_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.1, ptr @.str.2, i32 1356, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"OTP Unpack failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@cs35l41_probe._entry_ptr.33 = internal global ptr @cs35l41_probe._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cs35l41\00", [24 x i8] zeroinitializer }, align 32
@cs35l41_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.1, ptr @.str.2, i32 1372, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@cs35l41_probe._entry_ptr.37 = internal global ptr @cs35l41_probe._entry.35, section ".printk_index", align 4
@cs35l41_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.1, ptr @.str.2, i32 1378, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Set pdata failed: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@cs35l41_probe._entry_ptr.40 = internal global ptr @cs35l41_probe._entry.38, section ".printk_index", align 4
@soc_component_dev_cs35l41 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.104, ptr @cs35l41_aud_controls, i32 18, ptr @cs35l41_dapm_widgets, i32 35, ptr @cs35l41_audio_map, i32 72, ptr @cs35l41_component_probe, ptr @cs35l41_component_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs35l41_component_set_sysclk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@cs35l41_dai = internal global { [1 x %struct.snd_soc_dai_driver], [56 x i8] } { [1 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.222, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @cs35l41_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.215, i64 68, i32 -2147483648, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.216, i64 68, i32 -2147483648, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@cs35l41_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.1, ptr @.str.2, i32 1397, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Register codec failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@cs35l41_probe._entry_ptr.43 = internal global ptr @cs35l41_probe._entry.41, section ".printk_index", align 4
@cs35l41_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.1, ptr @.str.2, i32 1404, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Cirrus Logic CS35L41 (%x), Revision: %02X\0A\00", [53 x i8] zeroinitializer }, align 32
@cs35l41_probe._entry_ptr.46 = internal global ptr @cs35l41_probe._entry.44, section ".printk_index", align 4
@__kstrtab_cs35l41_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_cs35l41_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_cs35l41_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cs35l41_probe to i32), ptr @__kstrtab_cs35l41_probe, ptr @__kstrtabns_cs35l41_probe }, section "___ksymtab_gpl+cs35l41_probe", align 4
@__kstrtab_cs35l41_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_cs35l41_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_cs35l41_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cs35l41_remove to i32), ptr @__kstrtab_cs35l41_remove, ptr @__kstrtabns_cs35l41_remove }, section "___ksymtab_gpl+cs35l41_remove", align 4
@cs35l41_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cs35l41_sys_suspend, ptr @cs35l41_sys_resume, ptr @cs35l41_sys_suspend, ptr @cs35l41_sys_resume, ptr @cs35l41_sys_suspend, ptr @cs35l41_sys_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs35l41_sys_suspend_noirq, ptr @cs35l41_sys_resume_noirq, ptr @cs35l41_sys_suspend_noirq, ptr @cs35l41_sys_resume_noirq, ptr @cs35l41_sys_suspend_noirq, ptr @cs35l41_sys_resume_noirq, ptr @cs35l41_runtime_suspend, ptr @cs35l41_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_cs35l41_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_cs35l41_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_cs35l41_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cs35l41_pm_ops to i32), ptr @__kstrtab_cs35l41_pm_ops, ptr @__kstrtabns_cs35l41_pm_ops }, section "___ksymtab_gpl+cs35l41_pm_ops", align 4
@__UNIQUE_ID_description306 = internal constant [48 x i8] c"snd_soc_cs35l41.description=ASoC CS35L41 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author307 = internal constant [81 x i8] c"snd_soc_cs35l41.author=David Rhodes, Cirrus Logic Inc, <david.rhodes@cirrus.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file308 = internal constant [54 x i8] c"snd_soc_cs35l41.file=sound/soc/codecs/snd-soc-cs35l41\00", section ".modinfo", align 1
@__UNIQUE_ID_license309 = internal constant [28 x i8] c"snd_soc_cs35l41.license=GPL\00", section ".modinfo", align 1
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cirrus,boost-peak-milliamp\00", [37 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cirrus,boost-ind-nanohenry\00", [37 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cirrus,boost-cap-microfarad\00", [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cirrus,asp-sdout-hiz\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cirrus,gpio1-polarity-invert\00", [35 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cirrus,gpio1-output-enable\00", [37 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cirrus,gpio1-src-select\00", [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cirrus,gpio2-polarity-invert\00", [35 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cirrus,gpio2-output-enable\00", [37 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cirrus,gpio2-src-select\00", [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VA\00", [29 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VP\00", [29 x i8] zeroinitializer }, align 32
@cs35l41_irq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.59, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.cs35l41_irq = private unnamed_addr constant [12 x i8] c"cs35l41_irq\00", align 1
@cs35l41_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @__func__.cs35l41_irq, ptr @.str.2, i32 452, ptr @.str.61, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Amp short error\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@cs35l41_irq._entry_ptr = internal global ptr @cs35l41_irq._entry, section ".printk_index", align 4
@cs35l41_irq._rs.62 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.59, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cs35l41_irq._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @__func__.cs35l41_irq, ptr @.str.2, i32 465, ptr @.str.61, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Over temperature warning\0A\00", [38 x i8] zeroinitializer }, align 32
@cs35l41_irq._entry_ptr.65 = internal global ptr @cs35l41_irq._entry.63, section ".printk_index", align 4
@cs35l41_irq._rs.66 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.59, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cs35l41_irq._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @__func__.cs35l41_irq, ptr @.str.2, i32 478, ptr @.str.61, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Over temperature error\0A\00", [40 x i8] zeroinitializer }, align 32
@cs35l41_irq._entry_ptr.69 = internal global ptr @cs35l41_irq._entry.67, section ".printk_index", align 4
@cs35l41_irq._rs.70 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.59, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cs35l41_irq._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @__func__.cs35l41_irq, ptr @.str.2, i32 491, ptr @.str.61, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"VBST Over Voltage error\0A\00", [39 x i8] zeroinitializer }, align 32
@cs35l41_irq._entry_ptr.73 = internal global ptr @cs35l41_irq._entry.71, section ".printk_index", align 4
@cs35l41_irq._rs.74 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.59, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cs35l41_irq._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @__func__.cs35l41_irq, ptr @.str.2, i32 509, ptr @.str.61, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DCM VBST Under Voltage Error\0A\00", [34 x i8] zeroinitializer }, align 32
@cs35l41_irq._entry_ptr.77 = internal global ptr @cs35l41_irq._entry.75, section ".printk_index", align 4
@cs35l41_irq._rs.78 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.59, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cs35l41_irq._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @__func__.cs35l41_irq, ptr @.str.2, i32 527, ptr @.str.61, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LBST error: powering off!\0A\00", [37 x i8] zeroinitializer }, align 32
@cs35l41_irq._entry_ptr.81 = internal global ptr @cs35l41_irq._entry.79, section ".printk_index", align 4
@cs35l41_set_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 1007, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error in Boost DT config: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cs35l41_set_pdata\00", [46 x i8] zeroinitializer }, align 32
@cs35l41_set_pdata._entry_ptr = internal global ptr @cs35l41_set_pdata._entry, section ".printk_index", align 4
@cs35l41_set_pdata._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.2, i32 1011, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Incomplete Boost component DT config\0A\00", [58 x i8] zeroinitializer }, align 32
@cs35l41_set_pdata._entry_ptr.86 = internal global ptr @cs35l41_set_pdata._entry.84, section ".printk_index", align 4
@cs35l41_dsp1_regions = internal constant { [5 x %struct.cs_dsp_region], [56 x i8] } { [5 x %struct.cs_dsp_region] [%struct.cs_dsp_region { i32 16, i32 58720256 }, %struct.cs_dsp_region { i32 17, i32 33554432 }, %struct.cs_dsp_region { i32 18, i32 46137344 }, %struct.cs_dsp_region { i32 5, i32 41943040 }, %struct.cs_dsp_region { i32 6, i32 54525952 }], [56 x i8] zeroinitializer }, align 32
@cs35l41_fs_errata_patch = internal constant { [16 x %struct.reg_sequence], [32 x i8] } { [16 x %struct.reg_sequence] [%struct.reg_sequence { i32 45613184, i32 1, i32 0 }, %struct.reg_sequence { i32 45613192, i32 1, i32 0 }, %struct.reg_sequence { i32 45613200, i32 1, i32 0 }, %struct.reg_sequence { i32 45613208, i32 1, i32 0 }, %struct.reg_sequence { i32 45613216, i32 1, i32 0 }, %struct.reg_sequence { i32 45613224, i32 1, i32 0 }, %struct.reg_sequence { i32 45613232, i32 1, i32 0 }, %struct.reg_sequence { i32 45613240, i32 1, i32 0 }, %struct.reg_sequence { i32 45613696, i32 1, i32 0 }, %struct.reg_sequence { i32 45613704, i32 1, i32 0 }, %struct.reg_sequence { i32 45613712, i32 1, i32 0 }, %struct.reg_sequence { i32 45613720, i32 1, i32 0 }, %struct.reg_sequence { i32 45613728, i32 1, i32 0 }, %struct.reg_sequence { i32 45613736, i32 1, i32 0 }, %struct.reg_sequence { i32 45613744, i32 1, i32 0 }, %struct.reg_sequence { i32 45613752, i32 1, i32 0 }], [32 x i8] zeroinitializer }, align 32
@cs35l41_dsp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.2, i32 1210, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to write fs errata: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cs35l41_dsp_init\00", [47 x i8] zeroinitializer }, align 32
@cs35l41_dsp_init._entry_ptr = internal global ptr @cs35l41_dsp_init._entry, section ".printk_index", align 4
@cs35l41_dsp_init._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.2, i32 1216, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wm_halo_init failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@cs35l41_dsp_init._entry_ptr.91 = internal global ptr @cs35l41_dsp_init._entry.89, section ".printk_index", align 4
@cs35l41_dsp_init._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.88, ptr @.str.2, i32 1223, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Write INPUT_SRC_VPMON failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@cs35l41_dsp_init._entry_ptr.94 = internal global ptr @cs35l41_dsp_init._entry.92, section ".printk_index", align 4
@cs35l41_dsp_init._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.88, ptr @.str.2, i32 1229, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Write INPUT_SRC_CLASSH failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@cs35l41_dsp_init._entry_ptr.97 = internal global ptr @cs35l41_dsp_init._entry.95, section ".printk_index", align 4
@cs35l41_dsp_init._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.88, ptr @.str.2, i32 1235, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Write INPUT_SRC_TEMPMON failed: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@cs35l41_dsp_init._entry_ptr.100 = internal global ptr @cs35l41_dsp_init._entry.98, section ".printk_index", align 4
@cs35l41_dsp_init._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.88, ptr @.str.2, i32 1241, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Write INPUT_SRC_RSVD failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@cs35l41_dsp_init._entry_ptr.103 = internal global ptr @cs35l41_dsp_init._entry.101, section ".printk_index", align 4
@.str.104 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cs35l41-codec\00", [18 x i8] zeroinitializer }, align 32
@cs35l41_aud_controls = internal constant { [18 x %struct.snd_kcontrol_new], [192 x i8] } { [18 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.105, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_sx, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, %union.anon.94 { ptr @dig_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.106, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @amp_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.107 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.108, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @pcm_sft_ramp to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.109, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.110 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.111, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.112 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.113, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.114 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.115, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.116 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.117, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.118 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.119, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.120 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.121, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.122 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.123, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.124 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.125, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.126 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.127, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.128 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.129, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.130 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.131, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.132 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.133, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.134 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wm_adsp2_preloader_get, ptr @wm_adsp2_preloader_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.136 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @wm_adsp_fw_get, ptr @wm_adsp_fw_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @wm_adsp_fw_enum to i32) }], [192 x i8] zeroinitializer }, align 32
@cs35l41_audio_map = internal constant { [72 x %struct.snd_soc_dapm_route], [928 x i8] } { [72 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.176, ptr @.str.150, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr @.str.151, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr @.str.150, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr @.str.151, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr null, ptr @.str.176, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr null, ptr @.str.177, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.160, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.161, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.162, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.163, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.204, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.205, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.150, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.151, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr @.str.160, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr @.str.161, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr @.str.162, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr @.str.163, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr @.str.204, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr @.str.205, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr @.str.150, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr @.str.151, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr @.str.160, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr @.str.161, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr @.str.162, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr @.str.163, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr @.str.204, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr @.str.205, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr @.str.150, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr @.str.151, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr @.str.160, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr @.str.161, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr @.str.162, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr @.str.163, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr @.str.204, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr @.str.205, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr @.str.150, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr @.str.151, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr null, ptr @.str.172, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr null, ptr @.str.173, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr null, ptr @.str.174, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr null, ptr @.str.175, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.215, ptr null, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.215, ptr null, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.215, ptr null, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.215, ptr null, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr null, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr null, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr null, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr null, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr null, ptr @.str.164, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr null, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr null, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr null, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr null, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr null, ptr @.str.164, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr null, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr null, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr null, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr null, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr null, ptr @.str.159, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr null, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr null, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr null, ptr @.str.216, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr null, ptr @.str.216, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.179, ptr @.str.213, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr null, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr null, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr null, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr @.str.211, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr @.str.212, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr null, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }], [928 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Digital PCM Volume\00", [45 x i8] zeroinitializer }, align 32
@dig_vol_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 0, i32 1, i32 8, i32 -9999999, i32 65536, i32 1, i32 913, i32 4, i32 8, i32 -10200, i32 1200], [40 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 1231, i32 913, i32 0, i32 24576, i32 24576, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Analog PCM Volume\00", [46 x i8] zeroinitializer }, align 32
@amp_gain_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 65537], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.107 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 20, i32 20, i32 27652, i32 27652, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PCM Soft Ramp\00", [18 x i8] zeroinitializer }, align 32
@pcm_sft_ramp = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 24576, i8 0, i8 0, i32 8, i32 7, ptr @cs35l41_pcm_sftramp_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HW Noise Gate Enable\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.110 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 26632, i32 26632, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HW Noise Gate Delay\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.112 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 26632, i32 26632, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HW Noise Gate Threshold\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.114 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 26632, i32 26632, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Aux Noise Gate CH1 Enable\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.116 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 73732, i32 73732, i32 16, i32 16, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Aux Noise Gate CH1 Entry Delay\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.118 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 73732, i32 73732, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Aux Noise Gate CH1 Threshold\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.120 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 73732, i32 73732, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Aux Noise Gate CH2 Entry Delay\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.122 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 73736, i32 73736, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Aux Noise Gate CH2 Enable\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.124 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 73736, i32 73736, i32 16, i32 16, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Aux Noise Gate CH2 Threshold\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.126 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 73736, i32 73736, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SCLK Force\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.128 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 18440, i32 18440, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LRCLK Force\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.130 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 18440, i32 18440, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Invert Class D\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.132 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 24576, i32 24576, i32 14, i32 14, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Amp Gain ZC\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.134 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 27652, i32 27652, i32 10, i32 10, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSP1 Preload Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.136 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DSP1 Firmware\00", [18 x i8] zeroinitializer }, align 32
@wm_adsp_fw_enum = external dso_local constant [0 x %struct.soc_enum], align 4
@cs35l41_pcm_sftramp_text = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145], [32 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c".5ms\00", [27 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1ms\00", [28 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2ms\00", [28 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"4ms\00", [28 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"8ms\00", [28 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"15ms\00", [27 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"30ms\00", [27 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DSP1 Preload\00", [19 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DSP1 Preloader\00", [17 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DSP1\00", [27 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SPK\00", [28 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ASPRX1\00", [25 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ASPRX2\00", [25 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ASPTX1\00", [25 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ASPTX2\00", [25 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ASPTX3\00", [25 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ASPTX4\00", [25 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VSENSE\00", [25 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ISENSE\00", [25 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VBST\00", [27 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TEMP\00", [27 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VMON\00", [27 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IMON\00", [27 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VPMON\00", [26 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VBSTMON\00", [24 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TEMPMON\00", [24 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VMON ADC\00", [23 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IMON ADC\00", [23 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VPMON ADC\00", [22 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VBSTMON ADC\00", [20 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TEMPMON ADC\00", [20 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CLASS H\00", [24 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Main AMP\00", [23 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ASP TX1 Source\00", [17 x i8] zeroinitializer }, align 32
@asp_tx1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.202, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @cs35l41_asptx1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ASP TX2 Source\00", [17 x i8] zeroinitializer }, align 32
@asp_tx2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.206, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @cs35l41_asptx2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ASP TX3 Source\00", [17 x i8] zeroinitializer }, align 32
@asp_tx3_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.207, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @cs35l41_asptx3_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ASP TX4 Source\00", [17 x i8] zeroinitializer }, align 32
@asp_tx4_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.208, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @cs35l41_asptx4_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DSP RX1 Source\00", [17 x i8] zeroinitializer }, align 32
@dsp_rx1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.209, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @cs35l41_dsprx1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DSP RX2 Source\00", [17 x i8] zeroinitializer }, align 32
@dsp_rx2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.210, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @cs35l41_dsprx2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PCM Source\00", [21 x i8] zeroinitializer }, align 32
@pcm_source_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.178, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @cs35l41_pcm_source_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DRE\00", [28 x i8] zeroinitializer }, align 32
@dre_ctrl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.213, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.214 to i32) }, [48 x i8] zeroinitializer }, align 32
@cs35l41_dapm_widgets = internal constant { [35 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [1572 x i8] } { [35 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.146, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.147, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 100, ptr null, i16 5, ptr @cs35l41_dsp_preload_ev, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.148, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @cs35l41_dsp_audio_ev, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.149, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.150, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 18432, i8 16, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.151, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 18432, i8 17, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.152, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 18432, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.153, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 18432, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.154, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 18432, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.155, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 18432, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 25, ptr @.str.156, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 25, ptr @.str.157, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 25, ptr @.str.58, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 25, ptr @.str.158, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 25, ptr @.str.159, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.160, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8216, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.161, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8216, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.162, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8216, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.163, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8216, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.164, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8216, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.165, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.166, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.167, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.168, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.169, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.170, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8220, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.171, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8216, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @cs35l41_main_amp_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.172, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @asp_tx1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.173, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @asp_tx2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.174, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @asp_tx3_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.175, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @asp_tx4_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.176, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dsp_rx1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.177, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dsp_rx2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.178, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @pcm_source_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.179, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dre_ctrl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [1572 x i8] zeroinitializer }, align 32
@cs35l41_dsp_audio_ev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.182, ptr @.str.2, i32 288, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to read firmware status: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cs35l41_dsp_audio_ev\00", [43 x i8] zeroinitializer }, align 32
@cs35l41_dsp_audio_ev._entry_ptr = internal global ptr @cs35l41_dsp_audio_ev._entry, section ".printk_index", align 4
@cs35l41_dsp_audio_ev._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.182, ptr @.str.2, i32 298, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Firmware status is invalid: %u\0A\00", [32 x i8] zeroinitializer }, align 32
@cs35l41_dsp_audio_ev._entry_ptr.185 = internal global ptr @cs35l41_dsp_audio_ev._entry.183, section ".printk_index", align 4
@cs35l41_set_cspl_mbox_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.187, ptr @.str.2, i32 242, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to write MBOX: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cs35l41_set_cspl_mbox_cmd\00", [38 x i8] zeroinitializer }, align 32
@cs35l41_set_cspl_mbox_cmd._entry_ptr = internal global ptr @cs35l41_set_cspl_mbox_cmd._entry, section ".printk_index", align 4
@cs35l41_set_cspl_mbox_cmd._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.187, ptr @.str.2, i32 252, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to read MBOX STS: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@cs35l41_set_cspl_mbox_cmd._entry_ptr.190 = internal global ptr @cs35l41_set_cspl_mbox_cmd._entry.188, section ".printk_index", align 4
@cs35l41_set_cspl_mbox_cmd.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.191, ptr @.str.187, ptr @.str.2, ptr @.str.192, i8 0, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.191 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_soc_cs35l41\00", [16 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%u] cmd %u returned invalid sts %u\00", [60 x i8] zeroinitializer }, align 32
@cs35l41_set_cspl_mbox_cmd._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.187, ptr @.str.2, i32 267, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to set mailbox cmd %u (status %u)\0A\00", [54 x i8] zeroinitializer }, align 32
@cs35l41_set_cspl_mbox_cmd._entry_ptr.195 = internal global ptr @cs35l41_set_cspl_mbox_cmd._entry.193, section ".printk_index", align 4
@cs35l41_pup_patch = internal constant { [5 x %struct.reg_sequence], [36 x i8] } { [5 x %struct.reg_sequence] [%struct.reg_sequence { i32 64, i32 85, i32 0 }, %struct.reg_sequence { i32 64, i32 170, i32 0 }, %struct.reg_sequence { i32 8324, i32 3087008, i32 0 }, %struct.reg_sequence { i32 64, i32 204, i32 0 }, %struct.reg_sequence { i32 64, i32 51, i32 0 }], [36 x i8] zeroinitializer }, align 32
@cs35l41_main_amp_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.197, ptr @.str.2, i32 595, ptr @.str.198, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PDN failed: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cs35l41_main_amp_event\00", [41 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cs35l41_main_amp_event._entry_ptr = internal global ptr @cs35l41_main_amp_event._entry, section ".printk_index", align 4
@cs35l41_pdn_patch = internal constant { [5 x %struct.reg_sequence], [36 x i8] } { [5 x %struct.reg_sequence] [%struct.reg_sequence { i32 64, i32 85, i32 0 }, %struct.reg_sequence { i32 64, i32 170, i32 0 }, %struct.reg_sequence { i32 8324, i32 3087011, i32 0 }, %struct.reg_sequence { i32 64, i32 204, i32 0 }, %struct.reg_sequence { i32 64, i32 51, i32 0 }], [36 x i8] zeroinitializer }, align 32
@cs35l41_main_amp_event._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.197, ptr @.str.2, i32 605, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid event = 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@cs35l41_main_amp_event._entry_ptr.201 = internal global ptr @cs35l41_main_amp_event._entry.199, section ".printk_index", align 4
@.str.202 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ASPTX1 SRC\00", [21 x i8] zeroinitializer }, align 32
@cs35l41_asptx1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 19488, i8 0, i8 0, i32 9, i32 127, ptr @cs35l41_tx_input_texts, ptr @cs35l41_tx_input_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@cs35l41_tx_input_texts = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.203, ptr @.str.150, ptr @.str.151, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.204, ptr @.str.205], [60 x i8] zeroinitializer }, align 32
@cs35l41_tx_input_values = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 8, i32 9, i32 24, i32 25, i32 40, i32 41, i32 50, i32 51], [60 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Zero\00", [27 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DSPTX1\00", [25 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DSPTX2\00", [25 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ASPTX2 SRC\00", [21 x i8] zeroinitializer }, align 32
@cs35l41_asptx2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 19492, i8 0, i8 0, i32 9, i32 127, ptr @cs35l41_tx_input_texts, ptr @cs35l41_tx_input_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ASPTX3 SRC\00", [21 x i8] zeroinitializer }, align 32
@cs35l41_asptx3_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 19496, i8 0, i8 0, i32 9, i32 127, ptr @cs35l41_tx_input_texts, ptr @cs35l41_tx_input_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ASPTX4 SRC\00", [21 x i8] zeroinitializer }, align 32
@cs35l41_asptx4_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 19500, i8 0, i8 0, i32 9, i32 127, ptr @cs35l41_tx_input_texts, ptr @cs35l41_tx_input_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DSPRX1 SRC\00", [21 x i8] zeroinitializer }, align 32
@cs35l41_dsprx1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 19520, i8 0, i8 0, i32 9, i32 127, ptr @cs35l41_tx_input_texts, ptr @cs35l41_tx_input_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DSPRX2 SRC\00", [21 x i8] zeroinitializer }, align 32
@cs35l41_dsprx2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 19524, i8 0, i8 0, i32 9, i32 127, ptr @cs35l41_tx_input_texts, ptr @cs35l41_tx_input_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@cs35l41_pcm_source_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 19456, i8 0, i8 0, i32 2, i32 127, ptr @cs35l41_pcm_source_texts, ptr @cs35l41_pcm_source_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@cs35l41_pcm_source_texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.211, ptr @.str.212], [24 x i8] zeroinitializer }, align 32
@cs35l41_pcm_source_values = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 8, i32 50], [24 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ASP\00", [28 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DSP\00", [28 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Switch\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.214 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8220, i32 8220, i32 20, i32 20, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AMP Capture\00", [20 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AMP Playback\00", [19 x i8] zeroinitializer }, align 32
@cs35l41_component_set_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.218, ptr @.str.2, i32 929, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid CLK Config\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cs35l41_component_set_sysclk\00", [35 x i8] zeroinitializer }, align 32
@cs35l41_component_set_sysclk._entry_ptr = internal global ptr @cs35l41_component_set_sysclk._entry, section ".printk_index", align 4
@cs35l41_component_set_sysclk._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.218, ptr @.str.2, i32 937, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid CLK Config: %d, freq: %u\0A\00", [62 x i8] zeroinitializer }, align 32
@cs35l41_component_set_sysclk._entry_ptr.221 = internal global ptr @cs35l41_component_set_sysclk._entry.219, section ".printk_index", align 4
@cs35l41_pll_sysclk = internal constant { [64 x %struct.cs35l41_pll_sysclk_config], [128 x i8] } { [64 x %struct.cs35l41_pll_sysclk_config] [%struct.cs35l41_pll_sysclk_config { i32 32768, i32 0 }, %struct.cs35l41_pll_sysclk_config { i32 8000, i32 1 }, %struct.cs35l41_pll_sysclk_config { i32 11025, i32 2 }, %struct.cs35l41_pll_sysclk_config { i32 12000, i32 3 }, %struct.cs35l41_pll_sysclk_config { i32 16000, i32 4 }, %struct.cs35l41_pll_sysclk_config { i32 22050, i32 5 }, %struct.cs35l41_pll_sysclk_config { i32 24000, i32 6 }, %struct.cs35l41_pll_sysclk_config { i32 32000, i32 7 }, %struct.cs35l41_pll_sysclk_config { i32 44100, i32 8 }, %struct.cs35l41_pll_sysclk_config { i32 48000, i32 9 }, %struct.cs35l41_pll_sysclk_config { i32 88200, i32 10 }, %struct.cs35l41_pll_sysclk_config { i32 96000, i32 11 }, %struct.cs35l41_pll_sysclk_config { i32 128000, i32 12 }, %struct.cs35l41_pll_sysclk_config { i32 176400, i32 13 }, %struct.cs35l41_pll_sysclk_config { i32 192000, i32 14 }, %struct.cs35l41_pll_sysclk_config { i32 256000, i32 15 }, %struct.cs35l41_pll_sysclk_config { i32 352800, i32 16 }, %struct.cs35l41_pll_sysclk_config { i32 384000, i32 17 }, %struct.cs35l41_pll_sysclk_config { i32 512000, i32 18 }, %struct.cs35l41_pll_sysclk_config { i32 705600, i32 19 }, %struct.cs35l41_pll_sysclk_config { i32 750000, i32 20 }, %struct.cs35l41_pll_sysclk_config { i32 768000, i32 21 }, %struct.cs35l41_pll_sysclk_config { i32 1000000, i32 22 }, %struct.cs35l41_pll_sysclk_config { i32 1024000, i32 23 }, %struct.cs35l41_pll_sysclk_config { i32 1200000, i32 24 }, %struct.cs35l41_pll_sysclk_config { i32 1411200, i32 25 }, %struct.cs35l41_pll_sysclk_config { i32 1500000, i32 26 }, %struct.cs35l41_pll_sysclk_config { i32 1536000, i32 27 }, %struct.cs35l41_pll_sysclk_config { i32 2000000, i32 28 }, %struct.cs35l41_pll_sysclk_config { i32 2048000, i32 29 }, %struct.cs35l41_pll_sysclk_config { i32 2400000, i32 30 }, %struct.cs35l41_pll_sysclk_config { i32 2822400, i32 31 }, %struct.cs35l41_pll_sysclk_config { i32 3000000, i32 32 }, %struct.cs35l41_pll_sysclk_config { i32 3072000, i32 33 }, %struct.cs35l41_pll_sysclk_config { i32 3200000, i32 34 }, %struct.cs35l41_pll_sysclk_config { i32 4000000, i32 35 }, %struct.cs35l41_pll_sysclk_config { i32 4096000, i32 36 }, %struct.cs35l41_pll_sysclk_config { i32 4800000, i32 37 }, %struct.cs35l41_pll_sysclk_config { i32 5644800, i32 38 }, %struct.cs35l41_pll_sysclk_config { i32 6000000, i32 39 }, %struct.cs35l41_pll_sysclk_config { i32 6144000, i32 40 }, %struct.cs35l41_pll_sysclk_config { i32 6250000, i32 41 }, %struct.cs35l41_pll_sysclk_config { i32 6400000, i32 42 }, %struct.cs35l41_pll_sysclk_config { i32 6500000, i32 43 }, %struct.cs35l41_pll_sysclk_config { i32 6750000, i32 44 }, %struct.cs35l41_pll_sysclk_config { i32 7526400, i32 45 }, %struct.cs35l41_pll_sysclk_config { i32 8000000, i32 46 }, %struct.cs35l41_pll_sysclk_config { i32 8192000, i32 47 }, %struct.cs35l41_pll_sysclk_config { i32 9600000, i32 48 }, %struct.cs35l41_pll_sysclk_config { i32 11289600, i32 49 }, %struct.cs35l41_pll_sysclk_config { i32 12000000, i32 50 }, %struct.cs35l41_pll_sysclk_config { i32 12288000, i32 51 }, %struct.cs35l41_pll_sysclk_config { i32 12500000, i32 52 }, %struct.cs35l41_pll_sysclk_config { i32 12800000, i32 53 }, %struct.cs35l41_pll_sysclk_config { i32 13000000, i32 54 }, %struct.cs35l41_pll_sysclk_config { i32 13500000, i32 55 }, %struct.cs35l41_pll_sysclk_config { i32 19200000, i32 56 }, %struct.cs35l41_pll_sysclk_config { i32 22579200, i32 57 }, %struct.cs35l41_pll_sysclk_config { i32 24000000, i32 58 }, %struct.cs35l41_pll_sysclk_config { i32 24576000, i32 59 }, %struct.cs35l41_pll_sysclk_config { i32 25000000, i32 60 }, %struct.cs35l41_pll_sysclk_config { i32 25600000, i32 61 }, %struct.cs35l41_pll_sysclk_config { i32 26000000, i32 62 }, %struct.cs35l41_pll_sysclk_config { i32 27000000, i32 63 }], [128 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cs35l41-pcm\00", [20 x i8] zeroinitializer }, align 32
@cs35l41_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @cs35l41_dai_set_sysclk, ptr null, ptr null, ptr null, ptr @cs35l41_set_dai_fmt, ptr null, ptr null, ptr @cs35l41_set_channel_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs35l41_pcm_startup, ptr null, ptr @cs35l41_pcm_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@cs35l41_dai_set_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.224, ptr @.str.2, i32 973, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid CLK Config freq: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cs35l41_dai_set_sysclk\00", [41 x i8] zeroinitializer }, align 32
@cs35l41_dai_set_sysclk._entry_ptr = internal global ptr @cs35l41_dai_set_sysclk._entry, section ".printk_index", align 4
@cs35l41_dai_set_sysclk.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.191, ptr @.str.224, ptr @.str.2, ptr @.str.225, i8 0, i8 -12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.225 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Set DAI sysclk %d\0A\00", [45 x i8] zeroinitializer }, align 32
@cs35l41_fs_mon = internal constant { [41 x %struct.cs35l41_fs_mon_config], [116 x i8] } { [41 x %struct.cs35l41_fs_mon_config] [%struct.cs35l41_fs_mon_config { i32 32768, i32 2254, i32 3754 }, %struct.cs35l41_fs_mon_config { i32 8000, i32 9220, i32 15364 }, %struct.cs35l41_fs_mon_config { i32 11025, i32 6148, i32 10244 }, %struct.cs35l41_fs_mon_config { i32 12000, i32 6148, i32 10244 }, %struct.cs35l41_fs_mon_config { i32 16000, i32 4612, i32 7684 }, %struct.cs35l41_fs_mon_config { i32 22050, i32 3076, i32 5124 }, %struct.cs35l41_fs_mon_config { i32 24000, i32 3076, i32 5124 }, %struct.cs35l41_fs_mon_config { i32 32000, i32 2308, i32 3844 }, %struct.cs35l41_fs_mon_config { i32 44100, i32 1540, i32 2564 }, %struct.cs35l41_fs_mon_config { i32 48000, i32 1540, i32 2564 }, %struct.cs35l41_fs_mon_config { i32 88200, i32 772, i32 1284 }, %struct.cs35l41_fs_mon_config { i32 96000, i32 772, i32 1284 }, %struct.cs35l41_fs_mon_config { i32 128000, i32 580, i32 964 }, %struct.cs35l41_fs_mon_config { i32 176400, i32 388, i32 644 }, %struct.cs35l41_fs_mon_config { i32 192000, i32 388, i32 644 }, %struct.cs35l41_fs_mon_config { i32 256000, i32 292, i32 484 }, %struct.cs35l41_fs_mon_config { i32 352800, i32 196, i32 324 }, %struct.cs35l41_fs_mon_config { i32 384000, i32 196, i32 324 }, %struct.cs35l41_fs_mon_config { i32 512000, i32 148, i32 244 }, %struct.cs35l41_fs_mon_config { i32 705600, i32 100, i32 164 }, %struct.cs35l41_fs_mon_config { i32 750000, i32 100, i32 164 }, %struct.cs35l41_fs_mon_config { i32 768000, i32 100, i32 164 }, %struct.cs35l41_fs_mon_config { i32 1000000, i32 76, i32 124 }, %struct.cs35l41_fs_mon_config { i32 1024000, i32 76, i32 124 }, %struct.cs35l41_fs_mon_config { i32 1200000, i32 64, i32 104 }, %struct.cs35l41_fs_mon_config { i32 1411200, i32 52, i32 84 }, %struct.cs35l41_fs_mon_config { i32 1500000, i32 52, i32 84 }, %struct.cs35l41_fs_mon_config { i32 1536000, i32 52, i32 84 }, %struct.cs35l41_fs_mon_config { i32 2000000, i32 40, i32 64 }, %struct.cs35l41_fs_mon_config { i32 2048000, i32 40, i32 64 }, %struct.cs35l41_fs_mon_config { i32 2400000, i32 34, i32 54 }, %struct.cs35l41_fs_mon_config { i32 2822400, i32 28, i32 44 }, %struct.cs35l41_fs_mon_config { i32 3000000, i32 28, i32 44 }, %struct.cs35l41_fs_mon_config { i32 3072000, i32 28, i32 44 }, %struct.cs35l41_fs_mon_config { i32 3200000, i32 27, i32 42 }, %struct.cs35l41_fs_mon_config { i32 4000000, i32 22, i32 34 }, %struct.cs35l41_fs_mon_config { i32 4096000, i32 22, i32 34 }, %struct.cs35l41_fs_mon_config { i32 4800000, i32 19, i32 29 }, %struct.cs35l41_fs_mon_config { i32 5644800, i32 16, i32 24 }, %struct.cs35l41_fs_mon_config { i32 6000000, i32 16, i32 24 }, %struct.cs35l41_fs_mon_config { i32 6144000, i32 16, i32 24 }], [116 x i8] zeroinitializer }, align 32
@cs35l41_set_dai_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.227, ptr @.str.2, i32 775, ptr @.str.198, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Mixed provider/consumer mode unsupported\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cs35l41_set_dai_fmt\00", [44 x i8] zeroinitializer }, align 32
@cs35l41_set_dai_fmt._entry_ptr = internal global ptr @cs35l41_set_dai_fmt._entry, section ".printk_index", align 4
@cs35l41_set_dai_fmt._entry.228 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.229, ptr @.str.227, ptr @.str.2, i32 786, ptr @.str.198, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid or unsupported DAI format\0A\00", [61 x i8] zeroinitializer }, align 32
@cs35l41_set_dai_fmt._entry_ptr.230 = internal global ptr @cs35l41_set_dai_fmt._entry.228, section ".printk_index", align 4
@cs35l41_set_dai_fmt._entry.231 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.227, ptr @.str.2, i32 803, ptr @.str.198, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid DAI clock INV\0A\00", [41 x i8] zeroinitializer }, align 32
@cs35l41_set_dai_fmt._entry_ptr.233 = internal global ptr @cs35l41_set_dai_fmt._entry.231, section ".printk_index", align 4
@cs35l41_constraints = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @cs35l41_src_rates, i32 13, i32 0 }, [20 x i8] zeroinitializer }, align 32
@cs35l41_src_rates = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 8000, i32 12000, i32 11025, i32 16000, i32 22050, i32 24000, i32 32000, i32 44100, i32 48000, i32 88200, i32 96000, i32 176400, i32 192000], [44 x i8] zeroinitializer }, align 32
@cs35l41_fs_rates = internal constant { [13 x %struct.cs35l41_global_fs_config], [56 x i8] } { [13 x %struct.cs35l41_global_fs_config] [%struct.cs35l41_global_fs_config { i32 12000, i32 1 }, %struct.cs35l41_global_fs_config { i32 24000, i32 2 }, %struct.cs35l41_global_fs_config { i32 48000, i32 3 }, %struct.cs35l41_global_fs_config { i32 96000, i32 4 }, %struct.cs35l41_global_fs_config { i32 192000, i32 5 }, %struct.cs35l41_global_fs_config { i32 11025, i32 9 }, %struct.cs35l41_global_fs_config { i32 22050, i32 10 }, %struct.cs35l41_global_fs_config { i32 44100, i32 11 }, %struct.cs35l41_global_fs_config { i32 88200, i32 12 }, %struct.cs35l41_global_fs_config { i32 176400, i32 13 }, %struct.cs35l41_global_fs_config { i32 8000, i32 17 }, %struct.cs35l41_global_fs_config { i32 16000, i32 18 }, %struct.cs35l41_global_fs_config { i32 32000, i32 19 }], [56 x i8] zeroinitializer }, align 32
@cs35l41_pcm_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.235, ptr @.str.2, i32 849, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unsupported rate: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cs35l41_pcm_hw_params\00", [42 x i8] zeroinitializer }, align 32
@cs35l41_pcm_hw_params._entry_ptr = internal global ptr @cs35l41_pcm_hw_params._entry, section ".printk_index", align 4
@cs35l41_sys_suspend.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.191, ptr @.str.236, ptr @.str.2, ptr @.str.237, i8 1, i8 -125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.236 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cs35l41_sys_suspend\00", [44 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"System suspend, disabling IRQ\0A\00", [33 x i8] zeroinitializer }, align 32
@cs35l41_sys_resume.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.191, ptr @.str.238, ptr @.str.2, ptr @.str.239, i8 1, i8 -117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.238 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cs35l41_sys_resume\00", [45 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"System resume, reenabling IRQ\0A\00", [33 x i8] zeroinitializer }, align 32
@cs35l41_sys_suspend_noirq.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.191, ptr @.str.240, ptr @.str.2, ptr @.str.241, i8 1, i8 -122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.240 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cs35l41_sys_suspend_noirq\00", [38 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Late system suspend, reenabling IRQ\0A\00", [59 x i8] zeroinitializer }, align 32
@cs35l41_sys_resume_noirq.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.191, ptr @.str.242, ptr @.str.2, ptr @.str.243, i8 1, i8 -120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.242 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cs35l41_sys_resume_noirq\00", [39 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Early system resume, disabling IRQ\0A\00", [60 x i8] zeroinitializer }, align 32
@cs35l41_runtime_suspend.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.191, ptr @.str.244, ptr @.str.2, ptr @.str.245, i8 1, i8 104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.244 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cs35l41_runtime_suspend\00", [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Runtime suspend\0A\00", [47 x i8] zeroinitializer }, align 32
@cs35l41_runtime_suspend.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.191, ptr @.str.244, ptr @.str.2, ptr @.str.246, i8 1, i8 105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.246 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Enter hibernate\0A\00", [47 x i8] zeroinitializer }, align 32
@cs35l41_runtime_resume.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.191, ptr @.str.247, ptr @.str.2, ptr @.str.248, i8 1, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.247 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cs35l41_runtime_resume\00", [41 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Runtime resume\0A\00", [16 x i8] zeroinitializer }, align 32
@cs35l41_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.249, ptr @.str.247, ptr @.str.2, i32 1540, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to restore register cache: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@cs35l41_runtime_resume._entry_ptr = internal global ptr @cs35l41_runtime_resume._entry, section ".printk_index", align 4
@cs35l41_exit_hibernate.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.191, ptr @.str.250, ptr @.str.2, ptr @.str.251, i8 1, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.250 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cs35l41_exit_hibernate\00", [41 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Exit hibernate\0A\00", [16 x i8] zeroinitializer }, align 32
@cs35l41_exit_hibernate.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.191, ptr @.str.250, ptr @.str.2, ptr @.str.252, i8 1, i8 118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.252 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Wake success at cycle: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@cs35l41_exit_hibernate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.253, ptr @.str.250, ptr @.str.2, i32 1502, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Wake failed, re-enter hibernate: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@cs35l41_exit_hibernate._entry_ptr = internal global ptr @cs35l41_exit_hibernate._entry, section ".printk_index", align 4
@cs35l41_exit_hibernate._entry.254 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.255, ptr @.str.250, ptr @.str.2, i32 1514, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Timed out waking device\0A\00", [39 x i8] zeroinitializer }, align 32
@cs35l41_exit_hibernate._entry_ptr.256 = internal global ptr @cs35l41_exit_hibernate._entry.254, section ".printk_index", align 4
@cs35l41_wait_for_pwrmgt_sts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.257, ptr @.str.258, ptr @.str.2, i32 1469, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to read PWRMGT_STS: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cs35l41_wait_for_pwrmgt_sts\00", [36 x i8] zeroinitializer }, align 32
@cs35l41_wait_for_pwrmgt_sts._entry_ptr = internal global ptr @cs35l41_wait_for_pwrmgt_sts._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cs35l41_wait_for_pwrmgt_sts._entry.259 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.260, ptr @.str.258, ptr @.str.2, i32 1476, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Timed out reading PWRMGT_STS\0A\00", [34 x i8] zeroinitializer }, align 32
@cs35l41_wait_for_pwrmgt_sts._entry_ptr.261 = internal global ptr @cs35l41_wait_for_pwrmgt_sts._entry.259, section ".printk_index", align 4
@switch.table.cs35l41_probe = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 8328, i32 8320, i32 8328, i32 8324], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.262 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.263 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.264 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.265 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.266 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.267 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.268 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.269 = internal global [15 x i64] [i64 13, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1274, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1280, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1285, i32 62 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1291, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1294, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1311, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1318, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1325, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1331, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1342, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1356, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1370, i32 6 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1372, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1378, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant [26 x i8] c"soc_component_dev_cs35l41\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1103, i32 46 }
@___asan_gen_.366 = private unnamed_addr constant [12 x i8] c"cs35l41_dai\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1080, i32 34 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1397, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1403, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant [15 x i8] c"cs35l41_pm_ops\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1587, i32 25 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1127, i32 38 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1131, i32 38 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1135, i32 38 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1139, i32 38 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1147, i32 6 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1149, i32 6 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1150, i32 38 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1157, i32 6 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1159, i32 6 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1160, i32 38 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 28, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 29, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 452, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 465, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 478, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 491, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 509, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 527, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1007, i32 4 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1011, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant [21 x i8] c"cs35l41_dsp1_regions\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 747, i32 35 }
@___asan_gen_.498 = private unnamed_addr constant [24 x i8] c"cs35l41_fs_errata_patch\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1168, i32 34 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1210, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1216, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1223, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1229, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1235, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1241, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1104, i32 10 }
@___asan_gen_.543 = private unnamed_addr constant [21 x i8] c"cs35l41_aud_controls\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 386, i32 38 }
@___asan_gen_.546 = private unnamed_addr constant [18 x i8] c"cs35l41_audio_map\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 664, i32 40 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 387, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant [12 x i8] c"dig_vol_tlv\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 166, i32 14 }
@___asan_gen_.555 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 389, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant [13 x i8] c"amp_gain_tlv\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 169, i32 8 }
@___asan_gen_.562 = private unnamed_addr constant [21 x i8] c".compoundliteral.107\00", align 1
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 391, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant [13 x i8] c"pcm_sft_ramp\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 178, i32 8 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 392, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant [21 x i8] c".compoundliteral.110\00", align 1
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 393, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant [21 x i8] c".compoundliteral.112\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 394, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant [21 x i8] c".compoundliteral.114\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 395, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant [21 x i8] c".compoundliteral.116\00", align 1
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 397, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant [21 x i8] c".compoundliteral.118\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 399, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant [21 x i8] c".compoundliteral.120\00", align 1
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 401, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant [21 x i8] c".compoundliteral.122\00", align 1
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 403, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant [21 x i8] c".compoundliteral.124\00", align 1
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 405, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant [21 x i8] c".compoundliteral.126\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 407, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant [21 x i8] c".compoundliteral.128\00", align 1
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 408, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant [21 x i8] c".compoundliteral.130\00", align 1
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 409, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant [21 x i8] c".compoundliteral.132\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 411, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant [21 x i8] c".compoundliteral.134\00", align 1
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 413, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant [21 x i8] c".compoundliteral.136\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 414, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant [25 x i8] c"cs35l41_pcm_sftramp_text\00", align 1
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 174, i32 27 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 175, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 175, i32 9 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 175, i32 17 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 175, i32 24 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 175, i32 31 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 175, i32 38 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 175, i32 45 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 175, i32 53 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 613, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 614, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 617, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 621, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 623, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 624, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 625, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 626, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 627, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 628, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 630, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 631, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 633, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 634, i32 2 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 636, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 637, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 638, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 639, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 640, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 642, i32 2 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 643, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 644, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 645, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 646, i32 2 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 648, i32 2 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 650, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 654, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant [12 x i8] c"asp_tx1_mux\00", align 1
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 338, i32 38 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 655, i32 2 }
@___asan_gen_.742 = private unnamed_addr constant [12 x i8] c"asp_tx2_mux\00", align 1
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 347, i32 38 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 656, i32 2 }
@___asan_gen_.748 = private unnamed_addr constant [12 x i8] c"asp_tx3_mux\00", align 1
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 356, i32 38 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 657, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant [12 x i8] c"asp_tx4_mux\00", align 1
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 365, i32 38 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 658, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant [12 x i8] c"dsp_rx1_mux\00", align 1
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 374, i32 38 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 659, i32 2 }
@___asan_gen_.766 = private unnamed_addr constant [12 x i8] c"dsp_rx2_mux\00", align 1
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 383, i32 38 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 660, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant [15 x i8] c"pcm_source_mux\00", align 1
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 318, i32 38 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 661, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant [9 x i8] c"dre_ctrl\00", align 1
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 171, i32 38 }
@___asan_gen_.781 = private unnamed_addr constant [21 x i8] c"cs35l41_dapm_widgets\00", align 1
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 612, i32 41 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 287, i32 4 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 297, i32 4 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 242, i32 4 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 252, i32 4 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 257, i32 4 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 265, i32 2 }
@___asan_gen_.826 = private unnamed_addr constant [18 x i8] c"cs35l41_pup_patch\00", align 1
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 551, i32 34 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 595, i32 4 }
@___asan_gen_.841 = private unnamed_addr constant [18 x i8] c"cs35l41_pdn_patch\00", align 1
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 559, i32 34 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 605, i32 3 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 339, i32 2 }
@___asan_gen_.853 = private unnamed_addr constant [20 x i8] c"cs35l41_asptx1_enum\00", align 1
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 332, i32 8 }
@___asan_gen_.856 = private unnamed_addr constant [23 x i8] c"cs35l41_tx_input_texts\00", align 1
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 321, i32 27 }
@___asan_gen_.859 = private unnamed_addr constant [24 x i8] c"cs35l41_tx_input_values\00", align 1
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 326, i32 27 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 322, i32 2 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 323, i32 22 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 323, i32 32 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 348, i32 2 }
@___asan_gen_.874 = private unnamed_addr constant [20 x i8] c"cs35l41_asptx2_enum\00", align 1
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 341, i32 8 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 357, i32 2 }
@___asan_gen_.880 = private unnamed_addr constant [20 x i8] c"cs35l41_asptx3_enum\00", align 1
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 350, i32 8 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 366, i32 2 }
@___asan_gen_.886 = private unnamed_addr constant [20 x i8] c"cs35l41_asptx4_enum\00", align 1
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 359, i32 8 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 375, i32 2 }
@___asan_gen_.892 = private unnamed_addr constant [20 x i8] c"cs35l41_dsprx1_enum\00", align 1
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 368, i32 8 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 384, i32 2 }
@___asan_gen_.898 = private unnamed_addr constant [20 x i8] c"cs35l41_dsprx2_enum\00", align 1
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 377, i32 8 }
@___asan_gen_.901 = private unnamed_addr constant [24 x i8] c"cs35l41_pcm_source_enum\00", align 1
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 312, i32 8 }
@___asan_gen_.904 = private unnamed_addr constant [25 x i8] c"cs35l41_pcm_source_texts\00", align 1
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 310, i32 27 }
@___asan_gen_.907 = private unnamed_addr constant [26 x i8] c"cs35l41_pcm_source_values\00", align 1
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 311, i32 27 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 310, i32 57 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 310, i32 64 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 172, i32 2 }
@___asan_gen_.919 = private unnamed_addr constant [21 x i8] c".compoundliteral.214\00", align 1
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 709, i32 3 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 735, i32 19 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 929, i32 3 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 936, i32 3 }
@___asan_gen_.941 = private unnamed_addr constant [19 x i8] c"cs35l41_pll_sysclk\00", align 1
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 37, i32 47 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1082, i32 11 }
@___asan_gen_.947 = private unnamed_addr constant [12 x i8] c"cs35l41_ops\00", align 1
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1072, i32 37 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 973, i32 3 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 977, i32 2 }
@___asan_gen_.962 = private unnamed_addr constant [15 x i8] c"cs35l41_fs_mon\00", align 1
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 110, i32 43 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 775, i32 3 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 786, i32 3 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 803, i32 3 }
@___asan_gen_.986 = private unnamed_addr constant [20 x i8] c"cs35l41_constraints\00", align 1
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 896, i32 48 }
@___asan_gen_.989 = private unnamed_addr constant [18 x i8] c"cs35l41_src_rates\00", align 1
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 891, i32 27 }
@___asan_gen_.992 = private unnamed_addr constant [17 x i8] c"cs35l41_fs_rates\00", align 1
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 818, i32 46 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 849, i32 3 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1551, i32 2 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1581, i32 2 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1561, i32 2 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1571, i32 2 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1440, i32 2 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1445, i32 2 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1524, i32 2 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1540, i32 3 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1486, i32 3 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1498, i32 4 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1502, i32 3 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1514, i32 2 }
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1469, i32 4 }
@___asan_gen_.1079 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1082 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1083 = private constant [30 x i8] c"../sound/soc/codecs/cs35l41.c\00", align 1
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1083, i32 1476, i32 2 }
@___asan_gen_.1085 = private unnamed_addr constant [27 x i8] c"switch.table.cs35l41_probe\00", align 1
@llvm.compiler.used = appending global [338 x ptr] [ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_description306, ptr @__UNIQUE_ID_file308, ptr @__UNIQUE_ID_license309, ptr @__ksymtab_cs35l41_pm_ops, ptr @__ksymtab_cs35l41_probe, ptr @__ksymtab_cs35l41_remove, ptr @cs35l41_component_set_sysclk._entry, ptr @cs35l41_component_set_sysclk._entry.219, ptr @cs35l41_component_set_sysclk._entry_ptr, ptr @cs35l41_component_set_sysclk._entry_ptr.221, ptr @cs35l41_dai_set_sysclk._entry, ptr @cs35l41_dai_set_sysclk._entry_ptr, ptr @cs35l41_dsp_audio_ev._entry, ptr @cs35l41_dsp_audio_ev._entry.183, ptr @cs35l41_dsp_audio_ev._entry_ptr, ptr @cs35l41_dsp_audio_ev._entry_ptr.185, ptr @cs35l41_dsp_init._entry, ptr @cs35l41_dsp_init._entry.101, ptr @cs35l41_dsp_init._entry.89, ptr @cs35l41_dsp_init._entry.92, ptr @cs35l41_dsp_init._entry.95, ptr @cs35l41_dsp_init._entry.98, ptr @cs35l41_dsp_init._entry_ptr, ptr @cs35l41_dsp_init._entry_ptr.100, ptr @cs35l41_dsp_init._entry_ptr.103, ptr @cs35l41_dsp_init._entry_ptr.91, ptr @cs35l41_dsp_init._entry_ptr.94, ptr @cs35l41_dsp_init._entry_ptr.97, ptr @cs35l41_exit_hibernate._entry, ptr @cs35l41_exit_hibernate._entry.254, ptr @cs35l41_exit_hibernate._entry_ptr, ptr @cs35l41_exit_hibernate._entry_ptr.256, ptr @cs35l41_irq._entry, ptr @cs35l41_irq._entry.63, ptr @cs35l41_irq._entry.67, ptr @cs35l41_irq._entry.71, ptr @cs35l41_irq._entry.75, ptr @cs35l41_irq._entry.79, ptr @cs35l41_irq._entry_ptr, ptr @cs35l41_irq._entry_ptr.65, ptr @cs35l41_irq._entry_ptr.69, ptr @cs35l41_irq._entry_ptr.73, ptr @cs35l41_irq._entry_ptr.77, ptr @cs35l41_irq._entry_ptr.81, ptr @cs35l41_main_amp_event._entry, ptr @cs35l41_main_amp_event._entry.199, ptr @cs35l41_main_amp_event._entry_ptr, ptr @cs35l41_main_amp_event._entry_ptr.201, ptr @cs35l41_pcm_hw_params._entry, ptr @cs35l41_pcm_hw_params._entry_ptr, ptr @cs35l41_probe._entry, ptr @cs35l41_probe._entry.13, ptr @cs35l41_probe._entry.16, ptr @cs35l41_probe._entry.19, ptr @cs35l41_probe._entry.22, ptr @cs35l41_probe._entry.25, ptr @cs35l41_probe._entry.28, ptr @cs35l41_probe._entry.31, ptr @cs35l41_probe._entry.35, ptr @cs35l41_probe._entry.38, ptr @cs35l41_probe._entry.41, ptr @cs35l41_probe._entry.44, ptr @cs35l41_probe._entry.5, ptr @cs35l41_probe._entry.9, ptr @cs35l41_probe._entry_ptr, ptr @cs35l41_probe._entry_ptr.12, ptr @cs35l41_probe._entry_ptr.15, ptr @cs35l41_probe._entry_ptr.18, ptr @cs35l41_probe._entry_ptr.21, ptr @cs35l41_probe._entry_ptr.24, ptr @cs35l41_probe._entry_ptr.27, ptr @cs35l41_probe._entry_ptr.30, ptr @cs35l41_probe._entry_ptr.33, ptr @cs35l41_probe._entry_ptr.37, ptr @cs35l41_probe._entry_ptr.40, ptr @cs35l41_probe._entry_ptr.43, ptr @cs35l41_probe._entry_ptr.46, ptr @cs35l41_probe._entry_ptr.7, ptr @cs35l41_runtime_resume._entry, ptr @cs35l41_runtime_resume._entry_ptr, ptr @cs35l41_set_cspl_mbox_cmd._entry, ptr @cs35l41_set_cspl_mbox_cmd._entry.188, ptr @cs35l41_set_cspl_mbox_cmd._entry.193, ptr @cs35l41_set_cspl_mbox_cmd._entry_ptr, ptr @cs35l41_set_cspl_mbox_cmd._entry_ptr.190, ptr @cs35l41_set_cspl_mbox_cmd._entry_ptr.195, ptr @cs35l41_set_dai_fmt._entry, ptr @cs35l41_set_dai_fmt._entry.228, ptr @cs35l41_set_dai_fmt._entry.231, ptr @cs35l41_set_dai_fmt._entry_ptr, ptr @cs35l41_set_dai_fmt._entry_ptr.230, ptr @cs35l41_set_dai_fmt._entry_ptr.233, ptr @cs35l41_set_pdata._entry, ptr @cs35l41_set_pdata._entry.84, ptr @cs35l41_set_pdata._entry_ptr, ptr @cs35l41_set_pdata._entry_ptr.86, ptr @cs35l41_wait_for_pwrmgt_sts._entry, ptr @cs35l41_wait_for_pwrmgt_sts._entry.259, ptr @cs35l41_wait_for_pwrmgt_sts._entry_ptr, ptr @cs35l41_wait_for_pwrmgt_sts._entry_ptr.261, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @soc_component_dev_cs35l41, ptr @cs35l41_dai, ptr @.str.42, ptr @.str.45, ptr @cs35l41_pm_ops, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @cs35l41_irq._rs, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @cs35l41_irq._rs.62, ptr @.str.64, ptr @cs35l41_irq._rs.66, ptr @.str.68, ptr @cs35l41_irq._rs.70, ptr @.str.72, ptr @cs35l41_irq._rs.74, ptr @.str.76, ptr @cs35l41_irq._rs.78, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @cs35l41_dsp1_regions, ptr @cs35l41_fs_errata_patch, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.104, ptr @cs35l41_aud_controls, ptr @cs35l41_audio_map, ptr @.str.105, ptr @dig_vol_tlv, ptr @.compoundliteral, ptr @.str.106, ptr @amp_gain_tlv, ptr @.compoundliteral.107, ptr @.str.108, ptr @pcm_sft_ramp, ptr @.str.109, ptr @.compoundliteral.110, ptr @.str.111, ptr @.compoundliteral.112, ptr @.str.113, ptr @.compoundliteral.114, ptr @.str.115, ptr @.compoundliteral.116, ptr @.str.117, ptr @.compoundliteral.118, ptr @.str.119, ptr @.compoundliteral.120, ptr @.str.121, ptr @.compoundliteral.122, ptr @.str.123, ptr @.compoundliteral.124, ptr @.str.125, ptr @.compoundliteral.126, ptr @.str.127, ptr @.compoundliteral.128, ptr @.str.129, ptr @.compoundliteral.130, ptr @.str.131, ptr @.compoundliteral.132, ptr @.str.133, ptr @.compoundliteral.134, ptr @.str.135, ptr @.compoundliteral.136, ptr @.str.137, ptr @cs35l41_pcm_sftramp_text, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @asp_tx1_mux, ptr @.str.173, ptr @asp_tx2_mux, ptr @.str.174, ptr @asp_tx3_mux, ptr @.str.175, ptr @asp_tx4_mux, ptr @.str.176, ptr @dsp_rx1_mux, ptr @.str.177, ptr @dsp_rx2_mux, ptr @.str.178, ptr @pcm_source_mux, ptr @.str.179, ptr @dre_ctrl, ptr @cs35l41_dapm_widgets, ptr @.str.181, ptr @.str.182, ptr @.str.184, ptr @.str.186, ptr @.str.187, ptr @.str.189, ptr @.str.191, ptr @.str.192, ptr @.str.194, ptr @cs35l41_pup_patch, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @cs35l41_pdn_patch, ptr @.str.200, ptr @.str.202, ptr @cs35l41_asptx1_enum, ptr @cs35l41_tx_input_texts, ptr @cs35l41_tx_input_values, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @cs35l41_asptx2_enum, ptr @.str.207, ptr @cs35l41_asptx3_enum, ptr @.str.208, ptr @cs35l41_asptx4_enum, ptr @.str.209, ptr @cs35l41_dsprx1_enum, ptr @.str.210, ptr @cs35l41_dsprx2_enum, ptr @cs35l41_pcm_source_enum, ptr @cs35l41_pcm_source_texts, ptr @cs35l41_pcm_source_values, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.compoundliteral.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.220, ptr @cs35l41_pll_sysclk, ptr @.str.222, ptr @cs35l41_ops, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @cs35l41_fs_mon, ptr @.str.226, ptr @.str.227, ptr @.str.229, ptr @.str.232, ptr @cs35l41_constraints, ptr @cs35l41_src_rates, ptr @cs35l41_fs_rates, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.255, ptr @.str.257, ptr @.str.258, ptr @.str.260, ptr @switch.table.cs35l41_probe], section "llvm.metadata"
@0 = internal global [284 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_cs35l41 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_irq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_irq._rs.62 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_irq._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_irq._rs.66 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_irq._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_irq._rs.70 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_irq._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_irq._rs.74 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_irq._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_irq._rs.78 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_irq._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_set_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_set_pdata._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_dsp1_regions to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_fs_errata_patch to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_dsp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_dsp_init._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_dsp_init._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_dsp_init._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_dsp_init._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_dsp_init._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_aud_controls to i32), i32 864, i32 1056, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_audio_map to i32), i32 3744, i32 4672, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dig_vol_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amp_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.107 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_sft_ramp to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.110 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.112 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.114 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.116 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.118 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.120 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.122 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.124 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.126 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.128 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.130 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.132 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.134 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.136 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_pcm_sftramp_text to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asp_tx1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asp_tx2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asp_tx3_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asp_tx4_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_rx1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_rx2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_source_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dre_ctrl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_dapm_widgets to i32), i32 6300, i32 7872, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_dsp_audio_ev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_dsp_audio_ev._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_set_cspl_mbox_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_set_cspl_mbox_cmd._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_set_cspl_mbox_cmd._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_pup_patch to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_main_amp_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_pdn_patch to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_main_amp_event._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_asptx1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_tx_input_texts to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_tx_input_values to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_asptx2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_asptx3_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_asptx4_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_dsprx1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_dsprx2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_pcm_source_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_pcm_source_texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_pcm_source_values to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.214 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_component_set_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_component_set_sysclk._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_pll_sysclk to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_dai_set_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_fs_mon to i32), i32 492, i32 608, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_set_dai_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_set_dai_fmt._entry.228 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_set_dai_fmt._entry.231 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_constraints to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_src_rates to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_fs_rates to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_pcm_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_exit_hibernate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_exit_hibernate._entry.254 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_wait_for_pwrmgt_sts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l41_wait_for_pwrmgt_sts._entry.259 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cs35l41_probe to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs35l41_probe(ptr noundef %cs35l41, ptr noundef readonly %pdata) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %regid = alloca i32, align 4
  %reg_revid = alloca i32, align 4
  %int_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regid) #7
  %0 = ptrtoint ptr %regid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regid, align 4, !annotation !536
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_revid) #7
  %1 = ptrtoint ptr %reg_revid to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %reg_revid, align 4, !annotation !536
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_status) #7
  %2 = ptrtoint ptr %int_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %int_status, align 4, !annotation !536
  %tobool.not = icmp eq ptr %pdata, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pdata1 = getelementptr inbounds %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 2
  %3 = call ptr @memcpy(ptr %pdata1, ptr %pdata, i32 32)
  br label %if.end4

if.else:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %pdata2 = getelementptr inbounds %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 2
  %irq_config1.i = getelementptr inbounds %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 2, i32 4
  %irq_config2.i = getelementptr inbounds %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 2, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i, align 4, !annotation !536
  %call.i.i = call i32 @device_property_read_u32_array(ptr noundef %5, ptr noundef nonnull @.str.47, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp.i, label %if.then.i, label %if.else.if.end.i_crit_edge

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %bst_ipk.i = getelementptr inbounds %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %bst_ipk.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %bst_ipk.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.else.if.end.i_crit_edge
  %call.i1.i = call i32 @device_property_read_u32_array(ptr noundef %5, ptr noundef nonnull @.str.48, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1.i)
  %cmp2.i = icmp sgt i32 %call.i1.i, -1
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i, align 4
  %12 = ptrtoint ptr %pdata2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %pdata2, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %call.i2.i = call i32 @device_property_read_u32_array(ptr noundef %5, ptr noundef nonnull @.str.49, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i2.i)
  %cmp6.i = icmp sgt i32 %call.i2.i, -1
  br i1 %cmp6.i, label %if.then7.i, label %if.end4.i.if.end8.i_crit_edge

if.end4.i.if.end8.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i, align 4
  %bst_cap.i = getelementptr inbounds %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %bst_cap.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %bst_cap.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end4.i.if.end8.i_crit_edge
  %call.i3.i = call i32 @device_property_read_u32_array(ptr noundef %5, ptr noundef nonnull @.str.50, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i3.i)
  %cmp10.i = icmp sgt i32 %call.i3.i, -1
  br i1 %cmp10.i, label %if.then11.i, label %if.end8.i.if.end13.i_crit_edge

if.end8.i.if.end13.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.end8.i.if.end13.i_crit_edge
  %.sink.i = phi i32 [ %17, %if.then11.i ], [ -1, %if.end8.i.if.end13.i_crit_edge ]
  %18 = getelementptr inbounds %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink.i, ptr %18, align 4
  %call.i4.i = call zeroext i1 @device_property_present(ptr noundef %5, ptr noundef nonnull @.str.51) #7
  %frombool.i = zext i1 %call.i4.i to i8
  %20 = ptrtoint ptr %irq_config1.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool.i, ptr %irq_config1.i, align 4
  %call.i5.i = call zeroext i1 @device_property_present(ptr noundef %5, ptr noundef nonnull @.str.52) #7
  %irq_out_en.i = getelementptr inbounds %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 2, i32 4, i32 1
  %frombool16.i = zext i1 %call.i5.i to i8
  %21 = ptrtoint ptr %irq_out_en.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool16.i, ptr %irq_out_en.i, align 1
  %call.i6.i = call i32 @device_property_read_u32_array(ptr noundef %5, ptr noundef nonnull @.str.53, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i6.i)
  %cmp18.i = icmp sgt i32 %call.i6.i, -1
  br i1 %cmp18.i, label %if.then19.i, label %if.end13.i.if.end20.i_crit_edge

if.end13.i.if.end20.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.then19.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val.i, align 4
  %or.i = or i32 %23, -2147483648
  %irq_src_sel.i = getelementptr inbounds %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 2, i32 4, i32 2
  %24 = ptrtoint ptr %irq_src_sel.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or.i, ptr %irq_src_sel.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then19.i, %if.end13.i.if.end20.i_crit_edge
  %call.i7.i = call zeroext i1 @device_property_present(ptr noundef %5, ptr noundef nonnull @.str.54) #7
  %frombool23.i = zext i1 %call.i7.i to i8
  %25 = ptrtoint ptr %irq_config2.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool23.i, ptr %irq_config2.i, align 4
  %call.i8.i = call zeroext i1 @device_property_present(ptr noundef %5, ptr noundef nonnull @.str.55) #7
  %irq_out_en25.i = getelementptr inbounds %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 2, i32 5, i32 1
  %frombool26.i = zext i1 %call.i8.i to i8
  %26 = ptrtoint ptr %irq_out_en25.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool26.i, ptr %irq_out_en25.i, align 1
  %call.i9.i = call i32 @device_property_read_u32_array(ptr noundef %5, ptr noundef nonnull @.str.56, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i9.i)
  %cmp28.i = icmp sgt i32 %call.i9.i, -1
  br i1 %cmp28.i, label %if.then29.i, label %if.end20.i.cs35l41_handle_pdata.exit_crit_edge

if.end20.i.cs35l41_handle_pdata.exit_crit_edge:   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cs35l41_handle_pdata.exit

if.then29.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val.i, align 4
  %or30.i = or i32 %28, -2147483648
  %irq_src_sel31.i = getelementptr inbounds %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 2, i32 5, i32 2
  %29 = ptrtoint ptr %irq_src_sel31.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or30.i, ptr %irq_src_sel31.i, align 4
  br label %cs35l41_handle_pdata.exit

cs35l41_handle_pdata.exit:                        ; preds = %if.then29.i, %if.end20.i.cs35l41_handle_pdata.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %if.end4

if.end4:                                          ; preds = %cs35l41_handle_pdata.exit, %if.then
  %arrayidx6 = getelementptr %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 5, i32 0
  %30 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.57, ptr %arrayidx6, align 4
  %arrayidx6.1 = getelementptr %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 5, i32 1
  %31 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.58, ptr %arrayidx6.1, align 4
  %dev7 = getelementptr inbounds %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 3
  %32 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev7, align 4
  %call9 = call i32 @devm_regulator_bulk_get(ptr noundef %33, i32 noundef 2, ptr noundef %arrayidx6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str, i32 noundef %call9) #10
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  %call16 = call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %arrayidx6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 0
  %36 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev7, align 4
  br i1 %cmp17.not, label %if.end23, label %do.end21

do.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.6, i32 noundef %call16) #10
  br label %cleanup

if.end23:                                         ; preds = %if.end13
  %call25 = call ptr @devm_gpiod_get_optional(ptr noundef %37, ptr noundef nonnull @.str.8, i32 noundef 3) #7
  %reset_gpio = getelementptr inbounds %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 7
  %38 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call25, ptr %reset_gpio, align 4
  %cmp.i312 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i312, label %if.then28, label %if.end23.if.end44_crit_edge

if.end23.if.end44_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then28:                                        ; preds = %if.end23
  %39 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %reset_gpio, align 4
  %cmp32 = icmp eq ptr %call25, inttoptr (i32 -16 to ptr)
  br i1 %cmp32, label %do.end36, label %do.end41

do.end36:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.10) #10
  %42 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr = load ptr, ptr %reset_gpio, align 4
  br label %if.end44

do.end41:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %call25 to i32
  %44 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.14, i32 noundef %43) #10
  br label %err

if.end44:                                         ; preds = %do.end36, %if.end23.if.end44_crit_edge
  %46 = phi ptr [ %.pr, %do.end36 ], [ %call25, %if.end23.if.end44_crit_edge ]
  %tobool46.not = icmp eq ptr %46, null
  br i1 %tobool46.not, label %if.end44.if.end49_crit_edge, label %if.then47

if.end44.if.end49_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 2100, i32 noundef 2) #7
  %47 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reset_gpio, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %48, i32 noundef 1) #7
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end44.if.end49_crit_edge
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 2100, i32 noundef 2) #7
  %call50 = call i64 @ktime_get() #7
  %add.i = add i64 %call50, 100000000
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1309) #7
  %regmap = getelementptr inbounds %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 4
  %49 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap, align 4
  %call65366 = call i32 @regmap_read(ptr noundef %50, i32 noundef 65564, ptr noundef nonnull %int_status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65366)
  %tobool66.not367 = icmp eq i32 %call65366, 0
  br i1 %tobool66.not367, label %if.end49.lor.lhs.false_crit_edge, label %if.end49.do.end92_crit_edge

if.end49.do.end92_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end92

if.end49.lor.lhs.false_crit_edge:                 ; preds = %if.end49
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then79.lor.lhs.false_crit_edge, %if.end49.lor.lhs.false_crit_edge
  %51 = ptrtoint ptr %int_status to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %int_status, align 4
  %and = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool67.not = icmp eq i32 %and, 0
  br i1 %tobool67.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call71 = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call71, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call71, %add.i
  br i1 %cmp3.i, label %for.end81, label %if.then79

if.then79:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #7
  %53 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap, align 4
  %call65 = call i32 @regmap_read(ptr noundef %54, i32 noundef 65564, ptr noundef nonnull %int_status) #7
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then79.lor.lhs.false_crit_edge, label %if.then79.do.end92_crit_edge

if.then79.do.end92_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end92

if.then79.lor.lhs.false_crit_edge:                ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.end81:                                        ; preds = %land.lhs.true
  %55 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap, align 4
  %call76 = call i32 @regmap_read(ptr noundef %56, i32 noundef 65564, ptr noundef nonnull %int_status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool82.not = icmp eq i32 %call76, 0
  br i1 %tobool82.not, label %for.end81.lor.rhs_crit_edge, label %for.end81.do.end92_crit_edge

for.end81.do.end92_crit_edge:                     ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end92

for.end81.lor.rhs_crit_edge:                      ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end81.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %57 = ptrtoint ptr %int_status to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %int_status, align 4
  %and83 = and i32 %58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %lor.rhs.do.end92_crit_edge, label %if.end94

lor.rhs.do.end92_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end92

do.end92:                                         ; preds = %lor.rhs.do.end92_crit_edge, %for.end81.do.end92_crit_edge, %if.then79.do.end92_crit_edge, %if.end49.do.end92_crit_edge
  %tobool82.not340.ph = phi i32 [ %call65366, %if.end49.do.end92_crit_edge ], [ %call76, %for.end81.do.end92_crit_edge ], [ -110, %lor.rhs.do.end92_crit_edge ], [ %call65, %if.then79.do.end92_crit_edge ]
  %59 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.17, i32 noundef %tobool82.not340.ph) #10
  br label %err

if.end94:                                         ; preds = %lor.rhs
  %61 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap, align 4
  %call96 = call i32 @regmap_read(ptr noundef %62, i32 noundef 65560, ptr noundef nonnull %int_status) #7
  %63 = ptrtoint ptr %int_status to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %int_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %tobool98.not = icmp sgt i32 %64, -1
  br i1 %tobool98.not, label %if.end104, label %do.end102

do.end102:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.20) #10
  br label %err

if.end104:                                        ; preds = %if.end94
  %67 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap, align 4
  %call106 = call i32 @regmap_read(ptr noundef %68, i32 noundef 0, ptr noundef nonnull %regid) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %cmp107 = icmp slt i32 %call106, 0
  br i1 %cmp107, label %do.end111, label %if.end113

do.end111:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.23, i32 noundef %call106) #10
  br label %err

if.end113:                                        ; preds = %if.end104
  %71 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap, align 4
  %call115 = call i32 @regmap_read(ptr noundef %72, i32 noundef 4, ptr noundef nonnull %reg_revid) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %cmp116 = icmp slt i32 %call115, 0
  br i1 %cmp116, label %do.end120, label %if.end122

do.end120:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.26, i32 noundef %call115) #10
  br label %err

if.end122:                                        ; preds = %if.end113
  %75 = ptrtoint ptr %reg_revid to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %reg_revid, align 4
  %rem = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool124.not = icmp eq i32 %rem, 0
  %cond125 = select i1 %tobool124.not, i32 219712, i32 219968
  %77 = ptrtoint ptr %regid to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %regid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %cond125)
  %cmp126.not = icmp eq i32 %78, %cond125
  %79 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev7, align 4
  br i1 %cmp126.not, label %if.end132, label %do.end130

do.end130:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.29, i32 noundef %78, i32 noundef %cond125) #10
  br label %err

if.end132:                                        ; preds = %if.end122
  %81 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regmap, align 4
  %call135 = call i32 @cs35l41_test_key_unlock(ptr noundef %80, ptr noundef %82) #7
  %83 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev7, align 4
  %85 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regmap, align 4
  %87 = ptrtoint ptr %reg_revid to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %reg_revid, align 4
  %call138 = call i32 @cs35l41_register_errata_patch(ptr noundef %84, ptr noundef %86, i32 noundef %88) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.end141, label %if.end132.err_crit_edge

if.end132.err_crit_edge:                          ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end141:                                        ; preds = %if.end132
  %89 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev7, align 4
  %91 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regmap, align 4
  %call144 = call i32 @cs35l41_otp_unpack(ptr noundef %90, ptr noundef %92) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %cmp145 = icmp slt i32 %call144, 0
  %93 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev7, align 4
  br i1 %cmp145, label %do.end149, label %if.end151

do.end149:                                        ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.32, i32 noundef %call144) #10
  br label %err

if.end151:                                        ; preds = %if.end141
  %95 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regmap, align 4
  %call154 = call i32 @cs35l41_test_key_lock(ptr noundef %94, ptr noundef %96) #7
  %irq_config1.i314 = getelementptr inbounds %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 2, i32 4
  %97 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regmap, align 4
  %99 = ptrtoint ptr %irq_config1.i314 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %irq_config1.i314, align 4, !range !537
  %101 = zext i8 %100 to i32
  %shl.i = shl nuw nsw i32 %101, 12
  %irq_out_en.i315 = getelementptr inbounds %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 2, i32 4, i32 1
  %102 = ptrtoint ptr %irq_out_en.i315 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %irq_out_en.i315, align 1, !range !537
  %104 = xor i8 %103, -1
  %105 = zext i8 %104 to i32
  %shl3.i = shl i32 %105, 31
  %or.i316 = or i32 %shl3.i, %shl.i
  %call.i.i317 = call i32 @regmap_update_bits_base(ptr noundef %98, i32 noundef 69640, i32 noundef -2147479552, i32 noundef %or.i316, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %106 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regmap, align 4
  %108 = ptrtoint ptr %irq_config1.i314 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %irq_config1.i314, align 4, !range !537
  %110 = zext i8 %109 to i32
  %shl8.i = shl nuw nsw i32 %110, 12
  %111 = ptrtoint ptr %irq_out_en.i315 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %irq_out_en.i315, align 1, !range !537
  %113 = xor i8 %112, -1
  %114 = zext i8 %113 to i32
  %shl13.i = shl i32 %114, 31
  %or14.i = or i32 %shl13.i, %shl8.i
  %call.i43.i = call i32 @regmap_update_bits_base(ptr noundef %107, i32 noundef 69644, i32 noundef -2147479552, i32 noundef %or14.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %115 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regmap, align 4
  %irq_src_sel.i318 = getelementptr inbounds %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 2, i32 4, i32 2
  %117 = ptrtoint ptr %irq_src_sel.i318 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %irq_src_sel.i318, align 4
  %shl17.i = shl i32 %118, 16
  %irq_src_sel18.i = getelementptr inbounds %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 2, i32 5, i32 2
  %119 = ptrtoint ptr %irq_src_sel18.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %irq_src_sel18.i, align 4
  %shl19.i = shl i32 %120, 24
  %or20.i = or i32 %shl19.i, %shl17.i
  %call.i44.i = call i32 @regmap_update_bits_base(ptr noundef %116, i32 noundef 9260, i32 noundef 117637120, i32 noundef %or20.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %121 = ptrtoint ptr %irq_src_sel18.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %irq_src_sel18.i, align 4
  %switch.tableidx = add i32 %122, 2147483646
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %123 = icmp ult i32 %switch.tableidx, 4
  br i1 %123, label %switch.lookup, label %if.end151.cs35l41_irq_gpio_config.exit_crit_edge

if.end151.cs35l41_irq_gpio_config.exit_crit_edge: ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #9
  br label %cs35l41_irq_gpio_config.exit

switch.lookup:                                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.cs35l41_probe, i32 0, i32 %switch.tableidx
  %124 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %124)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cs35l41_irq_gpio_config.exit

cs35l41_irq_gpio_config.exit:                     ; preds = %switch.lookup, %if.end151.cs35l41_irq_gpio_config.exit_crit_edge
  %irq_pol.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 8320, %if.end151.cs35l41_irq_gpio_config.exit_crit_edge ]
  %125 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regmap, align 4
  %call157 = call i32 @regmap_write(ptr noundef %126, i32 noundef 65808, i32 noundef 2147286591) #7
  %127 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev7, align 4
  %irq = getelementptr inbounds %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 6
  %129 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %irq, align 4
  %call159 = call i32 @devm_request_threaded_irq(ptr noundef %128, i32 noundef %130, ptr noundef null, ptr noundef nonnull @cs35l41_irq, i32 noundef %irq_pol.0.i, ptr noundef nonnull @.str.34, ptr noundef %cs35l41) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %cmp160.not = icmp eq i32 %call159, 0
  br i1 %cmp160.not, label %if.end166, label %do.end164

do.end164:                                        ; preds = %cs35l41_irq_gpio_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  %131 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.36, i32 noundef %call159) #10
  br label %err

if.end166:                                        ; preds = %cs35l41_irq_gpio_config.exit
  %bst_ipk.i319 = getelementptr inbounds %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 2, i32 1
  %133 = ptrtoint ptr %bst_ipk.i319 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %bst_ipk.i319, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool.not.i = icmp eq i32 %134, 0
  br i1 %tobool.not.i, label %if.end166.cs35l41_set_pdata.exit.thread347_crit_edge, label %land.lhs.true.i

if.end166.cs35l41_set_pdata.exit.thread347_crit_edge: ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #9
  br label %cs35l41_set_pdata.exit.thread347

land.lhs.true.i:                                  ; preds = %if.end166
  %pdata.i = getelementptr inbounds %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 2
  %135 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %pdata.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool2.not.i = icmp eq i32 %136, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.cs35l41_set_pdata.exit.thread347_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.cs35l41_set_pdata.exit.thread347_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cs35l41_set_pdata.exit.thread347

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %bst_cap.i320 = getelementptr inbounds %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 2, i32 2
  %137 = ptrtoint ptr %bst_cap.i320 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %bst_cap.i320, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool5.not.i = icmp eq i32 %138, 0
  br i1 %tobool5.not.i, label %land.lhs.true3.i.cs35l41_set_pdata.exit.thread347_crit_edge, label %if.then.i322

land.lhs.true3.i.cs35l41_set_pdata.exit.thread347_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cs35l41_set_pdata.exit.thread347

if.then.i322:                                     ; preds = %land.lhs.true3.i
  %139 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev7, align 4
  %141 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @cs35l41_boost_config(ptr noundef %140, ptr noundef %142, i32 noundef %136, i32 noundef %138, i32 noundef %134) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool12.not.i, label %if.end19.i, label %cs35l41_set_pdata.exit

cs35l41_set_pdata.exit.thread347:                 ; preds = %land.lhs.true3.i.cs35l41_set_pdata.exit.thread347_crit_edge, %land.lhs.true.i.cs35l41_set_pdata.exit.thread347_crit_edge, %if.end166.cs35l41_set_pdata.exit.thread347_crit_edge
  %143 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %144, ptr noundef nonnull @.str.85) #10
  br label %do.end172

if.end19.i:                                       ; preds = %if.then.i322
  %dout_hiz.i = getelementptr inbounds %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 2, i32 3
  %145 = ptrtoint ptr %dout_hiz.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %dout_hiz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %146)
  %147 = icmp ult i32 %146, 4
  br i1 %147, label %if.then25.i, label %if.end19.i.if.end174_crit_edge

if.end19.i.if.end174_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end174

if.then25.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %148 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %regmap, align 4
  %call.i.i323 = call i32 @regmap_update_bits_base(ptr noundef %149, i32 noundef 18444, i32 noundef 3, i32 noundef %146, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end174

cs35l41_set_pdata.exit:                           ; preds = %if.then.i322
  %150 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %151, ptr noundef nonnull @.str.82, i32 noundef %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp168 = icmp slt i32 %call.i, 0
  br i1 %cmp168, label %cs35l41_set_pdata.exit.do.end172_crit_edge, label %cs35l41_set_pdata.exit.if.end174_crit_edge

cs35l41_set_pdata.exit.if.end174_crit_edge:       ; preds = %cs35l41_set_pdata.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end174

cs35l41_set_pdata.exit.do.end172_crit_edge:       ; preds = %cs35l41_set_pdata.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end172

do.end172:                                        ; preds = %cs35l41_set_pdata.exit.do.end172_crit_edge, %cs35l41_set_pdata.exit.thread347
  %retval.0.i324350 = phi i32 [ -22, %cs35l41_set_pdata.exit.thread347 ], [ %call.i, %cs35l41_set_pdata.exit.do.end172_crit_edge ]
  %152 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %153, ptr noundef nonnull @.str.39, i32 noundef %retval.0.i324350) #10
  br label %err

if.end174:                                        ; preds = %cs35l41_set_pdata.exit.if.end174_crit_edge, %if.then25.i, %if.end19.i.if.end174_crit_edge
  %part.i = getelementptr inbounds %struct.wm_adsp, ptr %cs35l41, i32 0, i32 1
  %154 = ptrtoint ptr %part.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr @.str.34, ptr %part.i, align 4
  %num.i = getelementptr inbounds %struct.cs_dsp, ptr %cs35l41, i32 0, i32 2
  %155 = ptrtoint ptr %num.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 1, ptr %num.i, align 4
  %type.i = getelementptr inbounds %struct.cs_dsp, ptr %cs35l41, i32 0, i32 3
  %156 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 4, ptr %type.i, align 4
  %rev.i = getelementptr inbounds %struct.cs_dsp, ptr %cs35l41, i32 0, i32 1
  %157 = ptrtoint ptr %rev.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %rev.i, align 4
  %fw.i = getelementptr inbounds %struct.wm_adsp, ptr %cs35l41, i32 0, i32 5
  %158 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 9, ptr %fw.i, align 4
  %toggle_preload.i = getelementptr inbounds %struct.wm_adsp, ptr %cs35l41, i32 0, i32 11
  %159 = ptrtoint ptr %toggle_preload.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 1, ptr %toggle_preload.i, align 4
  %160 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dev7, align 4
  %dev5.i = getelementptr inbounds %struct.cs_dsp, ptr %cs35l41, i32 0, i32 4
  %162 = ptrtoint ptr %dev5.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %161, ptr %dev5.i, align 4
  %163 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %regmap, align 4
  %regmap7.i = getelementptr inbounds %struct.cs_dsp, ptr %cs35l41, i32 0, i32 5
  %165 = ptrtoint ptr %regmap7.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %164, ptr %regmap7.i, align 4
  %base.i = getelementptr inbounds %struct.cs_dsp, ptr %cs35l41, i32 0, i32 8
  %166 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 45613056, ptr %base.i, align 4
  %base_sysinfo.i = getelementptr inbounds %struct.cs_dsp, ptr %cs35l41, i32 0, i32 9
  %167 = ptrtoint ptr %base_sysinfo.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 39714816, ptr %base_sysinfo.i, align 4
  %mem.i = getelementptr inbounds %struct.cs_dsp, ptr %cs35l41, i32 0, i32 18
  %168 = ptrtoint ptr %mem.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr @cs35l41_dsp1_regions, ptr %mem.i, align 4
  %num_mems.i = getelementptr inbounds %struct.cs_dsp, ptr %cs35l41, i32 0, i32 19
  %169 = ptrtoint ptr %num_mems.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 5, ptr %num_mems.i, align 4
  %lock_regions.i = getelementptr inbounds %struct.cs_dsp, ptr %cs35l41, i32 0, i32 25
  %170 = ptrtoint ptr %lock_regions.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 -1, ptr %lock_regions.i, align 4
  %call.i327 = call i32 @regmap_multi_reg_write(ptr noundef %164, ptr noundef nonnull @cs35l41_fs_errata_patch, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i327)
  %cmp.i328 = icmp slt i32 %call.i327, 0
  br i1 %cmp.i328, label %do.end.i329, label %if.end.i331

do.end.i329:                                      ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #9
  %171 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %172, ptr noundef nonnull @.str.87, i32 noundef %call.i327) #10
  br label %err

if.end.i331:                                      ; preds = %if.end174
  %call15.i = call i32 @wm_halo_init(ptr noundef %cs35l41) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool.not.i330 = icmp eq i32 %call15.i, 0
  br i1 %tobool.not.i330, label %if.end21.i, label %cs35l41_dsp_init.exit

if.end21.i:                                       ; preds = %if.end.i331
  %173 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %regmap, align 4
  %call23.i = call i32 @regmap_write(ptr noundef %174, i32 noundef 19536, i32 noundef 40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp slt i32 %call23.i, 0
  br i1 %cmp24.i, label %do.end28.i, label %if.end30.i

do.end28.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  %175 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %176, ptr noundef nonnull @.str.93, i32 noundef %call23.i) #10
  br label %err_dsp.i

if.end30.i:                                       ; preds = %if.end21.i
  %177 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %regmap, align 4
  %call32.i = call i32 @regmap_write(ptr noundef %178, i32 noundef 19540, i32 noundef 33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp33.i = icmp slt i32 %call32.i, 0
  br i1 %cmp33.i, label %do.end37.i, label %if.end39.i

do.end37.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  %179 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %180, ptr noundef nonnull @.str.96, i32 noundef %call32.i) #10
  br label %err_dsp.i

if.end39.i:                                       ; preds = %if.end30.i
  %181 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %regmap, align 4
  %call41.i = call i32 @regmap_write(ptr noundef %182, i32 noundef 19544, i32 noundef 58) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %cmp42.i = icmp slt i32 %call41.i, 0
  br i1 %cmp42.i, label %do.end46.i, label %if.end48.i

do.end46.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  %183 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %184, ptr noundef nonnull @.str.99, i32 noundef %call41.i) #10
  br label %err_dsp.i

if.end48.i:                                       ; preds = %if.end39.i
  %185 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %regmap, align 4
  %call50.i = call i32 @regmap_write(ptr noundef %186, i32 noundef 19548, i32 noundef 59) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %cmp51.i = icmp slt i32 %call50.i, 0
  br i1 %cmp51.i, label %do.end55.i, label %if.end48.i.if.end178_crit_edge

if.end48.i.if.end178_crit_edge:                   ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end178

do.end55.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  %187 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %188, ptr noundef nonnull @.str.102, i32 noundef %call50.i) #10
  br label %err_dsp.i

err_dsp.i:                                        ; preds = %do.end55.i, %do.end46.i, %do.end37.i, %do.end28.i
  %ret.0.i = phi i32 [ %call23.i, %do.end28.i ], [ %call32.i, %do.end37.i ], [ %call41.i, %do.end46.i ], [ %call50.i, %do.end55.i ]
  call void @wm_adsp2_remove(ptr noundef %cs35l41) #7
  br label %err

cs35l41_dsp_init.exit:                            ; preds = %if.end.i331
  %189 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %190, ptr noundef nonnull @.str.90, i32 noundef %call15.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp176 = icmp slt i32 %call15.i, 0
  br i1 %cmp176, label %cs35l41_dsp_init.exit.err_crit_edge, label %cs35l41_dsp_init.exit.if.end178_crit_edge

cs35l41_dsp_init.exit.if.end178_crit_edge:        ; preds = %cs35l41_dsp_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end178

cs35l41_dsp_init.exit.err_crit_edge:              ; preds = %cs35l41_dsp_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end178:                                        ; preds = %cs35l41_dsp_init.exit.if.end178_crit_edge, %if.end48.i.if.end178_crit_edge
  %191 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dev7, align 4
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %192, i32 noundef 3000) #7
  %193 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dev7, align 4
  call void @__pm_runtime_use_autosuspend(ptr noundef %194, i1 noundef zeroext true) #7
  %195 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %dev7, align 4
  %call.i333 = call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %196, i32 0, i32 12, i32 22
  %197 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %197)
  store volatile i64 %call.i333, ptr %last_busy.i, align 8
  %198 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %dev7, align 4
  %call.i334 = call i32 @__pm_runtime_set_status(ptr noundef %199, i32 noundef 0) #7
  %200 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %dev7, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %201, i32 0, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %202 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !538
  %203 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %dev7, align 4
  call void @pm_runtime_enable(ptr noundef %204) #7
  %205 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %dev7, align 4
  %call187 = call i32 @devm_snd_soc_register_component(ptr noundef %206, ptr noundef nonnull @soc_component_dev_cs35l41, ptr noundef nonnull @cs35l41_dai, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %cmp188 = icmp slt i32 %call187, 0
  %207 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %dev7, align 4
  br i1 %cmp188, label %do.end192, label %if.end194

do.end192:                                        ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %208, ptr noundef nonnull @.str.42, i32 noundef %call187) #10
  %209 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %dev7, align 4
  call void @__pm_runtime_disable(ptr noundef %210, i1 noundef zeroext true) #7
  %211 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %dev7, align 4
  call fastcc void @pm_runtime_put_noidle(ptr noundef %212)
  call void @wm_adsp2_remove(ptr noundef %cs35l41) #7
  br label %err

if.end194:                                        ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #9
  %call.i335 = call i32 @__pm_runtime_suspend(ptr noundef %208, i32 noundef 13) #7
  %213 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %dev7, align 4
  %215 = ptrtoint ptr %regid to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %regid, align 4
  %217 = ptrtoint ptr %reg_revid to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %reg_revid, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %214, ptr noundef nonnull @.str.45, i32 noundef %216, i32 noundef %218) #10
  br label %cleanup

err:                                              ; preds = %do.end192, %cs35l41_dsp_init.exit.err_crit_edge, %err_dsp.i, %do.end.i329, %do.end172, %do.end164, %do.end149, %if.end132.err_crit_edge, %do.end130, %do.end120, %do.end111, %do.end102, %do.end92, %do.end41
  %ret.0 = phi i32 [ %tobool82.not340.ph, %do.end92 ], [ -22, %do.end102 ], [ %call106, %do.end111 ], [ %call115, %do.end120 ], [ -19, %do.end130 ], [ %call138, %if.end132.err_crit_edge ], [ %call144, %do.end149 ], [ %call159, %do.end164 ], [ %retval.0.i324350, %do.end172 ], [ %call15.i, %cs35l41_dsp_init.exit.err_crit_edge ], [ %call187, %do.end192 ], [ %43, %do.end41 ], [ %ret.0.i, %err_dsp.i ], [ %call.i327, %do.end.i329 ]
  %call205 = call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %arrayidx6) #7
  %219 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %reset_gpio, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %220, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end194, %do.end21, %do.end
  %retval.0 = phi i32 [ %call9, %do.end ], [ %call16, %do.end21 ], [ %ret.0, %err ], [ 0, %if.end194 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_status) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_revid) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regid) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs35l41_test_key_unlock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs35l41_register_errata_patch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs35l41_otp_unpack(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs35l41_test_key_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l41_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %status = alloca [4 x i32], align 4
  %masks = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %status) #7
  %0 = call ptr @memset(ptr %status, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %masks) #7
  %1 = call ptr @memset(ptr %masks, i32 0, i32 16)
  %dev = getelementptr inbounds %struct.cs35l41_private, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #7
  %regmap = getelementptr inbounds %struct.cs35l41_private, ptr %data, i32 0, i32 4
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %5, i32 noundef 65552, ptr noundef nonnull %status) #7
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call6 = call i32 @regmap_read(ptr noundef %7, i32 noundef 65808, ptr noundef nonnull %masks) #7
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %arrayidx.1 = getelementptr inbounds [4 x i32], ptr %status, i32 0, i32 1
  %call1.1 = call i32 @regmap_read(ptr noundef %9, i32 noundef 65556, ptr noundef %arrayidx.1) #7
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %arrayidx5.1 = getelementptr inbounds [4 x i32], ptr %masks, i32 0, i32 1
  %call6.1 = call i32 @regmap_read(ptr noundef %11, i32 noundef 65812, ptr noundef %arrayidx5.1) #7
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %arrayidx.2 = getelementptr inbounds [4 x i32], ptr %status, i32 0, i32 2
  %call1.2 = call i32 @regmap_read(ptr noundef %13, i32 noundef 65560, ptr noundef %arrayidx.2) #7
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %arrayidx5.2 = getelementptr inbounds [4 x i32], ptr %masks, i32 0, i32 2
  %call6.2 = call i32 @regmap_read(ptr noundef %15, i32 noundef 65816, ptr noundef %arrayidx5.2) #7
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %arrayidx.3 = getelementptr inbounds [4 x i32], ptr %status, i32 0, i32 3
  %call1.3 = call i32 @regmap_read(ptr noundef %17, i32 noundef 65564, ptr noundef %arrayidx.3) #7
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %arrayidx5.3 = getelementptr inbounds [4 x i32], ptr %masks, i32 0, i32 3
  %call6.3 = call i32 @regmap_read(ptr noundef %19, i32 noundef 65820, ptr noundef %arrayidx5.3) #7
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status, align 4
  %22 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %masks, align 4
  %neg = xor i32 %23, -1
  %and = and i32 %21, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %24 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.1, align 4
  %26 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx5.1, align 4
  %neg11 = xor i32 %27, -1
  %and12 = and i32 %25, %neg11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %land.lhs.true14, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true14:                                  ; preds = %land.lhs.true
  %28 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.2, align 4
  %30 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx5.2, align 4
  %neg17 = xor i32 %31, -1
  %and18 = and i32 %29, %neg17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %land.lhs.true14.if.end_crit_edge

land.lhs.true14.if.end_crit_edge:                 ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true20:                                  ; preds = %land.lhs.true14
  %32 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.3, align 4
  %34 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx5.3, align 4
  %neg23 = xor i32 %35, -1
  %and24 = and i32 %33, %neg23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %land.lhs.true20.done_crit_edge, label %land.lhs.true20.if.end_crit_edge

land.lhs.true20.if.end_crit_edge:                 ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true20.done_crit_edge:                   ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end:                                           ; preds = %land.lhs.true20.if.end_crit_edge, %land.lhs.true14.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %36 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.3, align 4
  %and27 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end.if.end32_crit_edge, label %if.then29

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %call.i235 = call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 65820, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end.if.end32_crit_edge
  %40 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %tobool35.not = icmp sgt i32 %41, -1
  br i1 %tobool35.not, label %if.end32.if.end53_crit_edge, label %do.body

if.end32.if.end53_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

do.body:                                          ; preds = %if.end32
  %call37 = call i32 @___ratelimit(ptr noundef nonnull @cs35l41_irq._rs, ptr noundef nonnull @__func__.cs35l41_irq) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %do.body.do.end44_crit_edge, label %do.end

do.body.do.end44_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end44

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %43, ptr noundef nonnull @.str.60) #10
  br label %do.end44

do.end44:                                         ; preds = %do.end, %do.body.do.end44_crit_edge
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 4
  %call46 = call i32 @regmap_write(ptr noundef %45, i32 noundef 65552, i32 noundef -2147483648) #7
  %46 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap, align 4
  %call48 = call i32 @regmap_write(ptr noundef %47, i32 noundef 8244, i32 noundef 0) #7
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %call.i236 = call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 8244, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %50 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap, align 4
  %call.i237 = call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 8244, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end53

if.end53:                                         ; preds = %do.end44, %if.end32.if.end53_crit_edge
  %ret.0 = phi i32 [ 1, %do.end44 ], [ 0, %if.end32.if.end53_crit_edge ]
  %52 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %status, align 4
  %and55 = and i32 %53, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end53.if.end77_crit_edge, label %do.body58

if.end53.if.end77_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

do.body58:                                        ; preds = %if.end53
  %call59 = call i32 @___ratelimit(ptr noundef nonnull @cs35l41_irq._rs.62, ptr noundef nonnull @__func__.cs35l41_irq) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %do.body58.do.end68_crit_edge, label %do.end64

do.body58.do.end68_crit_edge:                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

do.end64:                                         ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %55, ptr noundef nonnull @.str.64) #10
  br label %do.end68

do.end68:                                         ; preds = %do.end64, %do.body58.do.end68_crit_edge
  %56 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap, align 4
  %call70 = call i32 @regmap_write(ptr noundef %57, i32 noundef 65552, i32 noundef 32768) #7
  %58 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap, align 4
  %call72 = call i32 @regmap_write(ptr noundef %59, i32 noundef 8244, i32 noundef 0) #7
  %60 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap, align 4
  %call.i238 = call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef 8244, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %62 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap, align 4
  %call.i239 = call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 8244, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end77

if.end77:                                         ; preds = %do.end68, %if.end53.if.end77_crit_edge
  %ret.1 = phi i32 [ 1, %do.end68 ], [ %ret.0, %if.end53.if.end77_crit_edge ]
  %64 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %status, align 4
  %and79 = and i32 %65, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end77.if.end101_crit_edge, label %do.body82

if.end77.if.end101_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

do.body82:                                        ; preds = %if.end77
  %call83 = call i32 @___ratelimit(ptr noundef nonnull @cs35l41_irq._rs.66, ptr noundef nonnull @__func__.cs35l41_irq) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %do.body82.do.end92_crit_edge, label %do.end88

do.body82.do.end92_crit_edge:                     ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end92

do.end88:                                         ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %67, ptr noundef nonnull @.str.68) #10
  br label %do.end92

do.end92:                                         ; preds = %do.end88, %do.body82.do.end92_crit_edge
  %68 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap, align 4
  %call94 = call i32 @regmap_write(ptr noundef %69, i32 noundef 65552, i32 noundef 131072) #7
  %70 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap, align 4
  %call96 = call i32 @regmap_write(ptr noundef %71, i32 noundef 8244, i32 noundef 0) #7
  %72 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap, align 4
  %call.i240 = call i32 @regmap_update_bits_base(ptr noundef %73, i32 noundef 8244, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %74 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regmap, align 4
  %call.i241 = call i32 @regmap_update_bits_base(ptr noundef %75, i32 noundef 8244, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end101

if.end101:                                        ; preds = %do.end92, %if.end77.if.end101_crit_edge
  %ret.2 = phi i32 [ 1, %do.end92 ], [ %ret.1, %if.end77.if.end101_crit_edge ]
  %76 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %status, align 4
  %and103 = and i32 %77, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.end101.if.end129_crit_edge, label %do.body106

if.end101.if.end129_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end129

do.body106:                                       ; preds = %if.end101
  %call107 = call i32 @___ratelimit(ptr noundef nonnull @cs35l41_irq._rs.70, ptr noundef nonnull @__func__.cs35l41_irq) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %do.body106.do.end116_crit_edge, label %do.end112

do.body106.do.end116_crit_edge:                   ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end116

do.end112:                                        ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %79, ptr noundef nonnull @.str.72) #10
  br label %do.end116

do.end116:                                        ; preds = %do.end112, %do.body106.do.end116_crit_edge
  %80 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regmap, align 4
  %call.i242 = call i32 @regmap_update_bits_base(ptr noundef %81, i32 noundef 8216, i32 noundef 48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %82 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap, align 4
  %call120 = call i32 @regmap_write(ptr noundef %83, i32 noundef 65552, i32 noundef 64) #7
  %84 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap, align 4
  %call122 = call i32 @regmap_write(ptr noundef %85, i32 noundef 8244, i32 noundef 0) #7
  %86 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regmap, align 4
  %call.i243 = call i32 @regmap_update_bits_base(ptr noundef %87, i32 noundef 8244, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %88 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regmap, align 4
  %call.i244 = call i32 @regmap_update_bits_base(ptr noundef %89, i32 noundef 8244, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %90 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regmap, align 4
  %call.i245 = call i32 @regmap_update_bits_base(ptr noundef %91, i32 noundef 8216, i32 noundef 48, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end129

if.end129:                                        ; preds = %do.end116, %if.end101.if.end129_crit_edge
  %ret.3 = phi i32 [ 1, %do.end116 ], [ %ret.2, %if.end101.if.end129_crit_edge ]
  %92 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %status, align 4
  %and131 = and i32 %93, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %if.end129.if.end157_crit_edge, label %do.body134

if.end129.if.end157_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end157

do.body134:                                       ; preds = %if.end129
  %call135 = call i32 @___ratelimit(ptr noundef nonnull @cs35l41_irq._rs.74, ptr noundef nonnull @__func__.cs35l41_irq) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %do.body134.do.end144_crit_edge, label %do.end140

do.body134.do.end144_crit_edge:                   ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end144

do.end140:                                        ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %95, ptr noundef nonnull @.str.76) #10
  br label %do.end144

do.end144:                                        ; preds = %do.end140, %do.body134.do.end144_crit_edge
  %96 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regmap, align 4
  %call.i246 = call i32 @regmap_update_bits_base(ptr noundef %97, i32 noundef 8216, i32 noundef 48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %98 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regmap, align 4
  %call148 = call i32 @regmap_write(ptr noundef %99, i32 noundef 65552, i32 noundef 128) #7
  %100 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regmap, align 4
  %call150 = call i32 @regmap_write(ptr noundef %101, i32 noundef 8244, i32 noundef 0) #7
  %102 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regmap, align 4
  %call.i247 = call i32 @regmap_update_bits_base(ptr noundef %103, i32 noundef 8244, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %104 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regmap, align 4
  %call.i248 = call i32 @regmap_update_bits_base(ptr noundef %105, i32 noundef 8244, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %106 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regmap, align 4
  %call.i249 = call i32 @regmap_update_bits_base(ptr noundef %107, i32 noundef 8216, i32 noundef 48, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end157

if.end157:                                        ; preds = %do.end144, %if.end129.if.end157_crit_edge
  %ret.4 = phi i32 [ 1, %do.end144 ], [ %ret.3, %if.end129.if.end157_crit_edge ]
  %108 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %status, align 4
  %and159 = and i32 %109, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %if.end157.done_crit_edge, label %do.body162

if.end157.done_crit_edge:                         ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

do.body162:                                       ; preds = %if.end157
  %call163 = call i32 @___ratelimit(ptr noundef nonnull @cs35l41_irq._rs.78, ptr noundef nonnull @__func__.cs35l41_irq) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %do.body162.do.end172_crit_edge, label %do.end168

do.body162.do.end172_crit_edge:                   ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end172

do.end168:                                        ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #9
  %110 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %111, ptr noundef nonnull @.str.80) #10
  br label %do.end172

do.end172:                                        ; preds = %do.end168, %do.body162.do.end172_crit_edge
  %112 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regmap, align 4
  %call.i250 = call i32 @regmap_update_bits_base(ptr noundef %113, i32 noundef 8216, i32 noundef 48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %114 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regmap, align 4
  %call176 = call i32 @regmap_write(ptr noundef %115, i32 noundef 65552, i32 noundef 256) #7
  %116 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regmap, align 4
  %call178 = call i32 @regmap_write(ptr noundef %117, i32 noundef 8244, i32 noundef 0) #7
  %118 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regmap, align 4
  %call.i251 = call i32 @regmap_update_bits_base(ptr noundef %119, i32 noundef 8244, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %120 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regmap, align 4
  %call.i252 = call i32 @regmap_update_bits_base(ptr noundef %121, i32 noundef 8244, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %122 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regmap, align 4
  %call.i253 = call i32 @regmap_update_bits_base(ptr noundef %123, i32 noundef 8216, i32 noundef 48, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %done

done:                                             ; preds = %do.end172, %if.end157.done_crit_edge, %land.lhs.true20.done_crit_edge
  %ret.5 = phi i32 [ 1, %do.end172 ], [ %ret.4, %if.end157.done_crit_edge ], [ 0, %land.lhs.true20.done_crit_edge ]
  %124 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev, align 4
  %call.i254 = call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %125, i32 0, i32 12, i32 22
  %126 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %126)
  store volatile i64 %call.i254, ptr %last_busy.i, align 8
  %127 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev, align 4
  %call.i255 = call i32 @__pm_runtime_suspend(ptr noundef %128, i32 noundef 13) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %masks) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %status) #7
  ret i32 %ret.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !539
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #7, !srcloc !540
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !541
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wm_adsp2_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cs35l41_remove(ptr noundef %cs35l41) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #7
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #7
  %regmap = getelementptr inbounds %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 4
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 65808, i32 noundef -1) #7
  tail call void @wm_adsp2_remove(ptr noundef %cs35l41) #7
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !539
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !540
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !541
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  %supplies = getelementptr inbounds %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 5
  %call4 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #7
  %reset_gpio = getelementptr inbounds %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 7
  %9 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %10, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l41_sys_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l41_sys_suspend.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l41_sys_suspend, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !542

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.cs35l41_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l41_sys_suspend.__UNIQUE_ID_ddebug302, ptr noundef %3, ptr noundef nonnull @.str.237) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %irq = getelementptr inbounds %struct.cs35l41_private, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l41_sys_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l41_sys_resume.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l41_sys_resume, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !542

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.cs35l41_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l41_sys_resume.__UNIQUE_ID_ddebug305, ptr noundef %3, ptr noundef nonnull @.str.239) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %irq = getelementptr inbounds %struct.cs35l41_private, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l41_sys_suspend_noirq(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l41_sys_suspend_noirq.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l41_sys_suspend_noirq, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !542

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.cs35l41_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l41_sys_suspend_noirq.__UNIQUE_ID_ddebug303, ptr noundef %3, ptr noundef nonnull @.str.241) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %irq = getelementptr inbounds %struct.cs35l41_private, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l41_sys_resume_noirq(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l41_sys_resume_noirq.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l41_sys_resume_noirq, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !542

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.cs35l41_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l41_sys_resume_noirq.__UNIQUE_ID_ddebug304, ptr noundef %3, ptr noundef nonnull @.str.243) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %irq = getelementptr inbounds %struct.cs35l41_private, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l41_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l41_runtime_suspend.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l41_runtime_suspend, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !542

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.cs35l41_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l41_runtime_suspend.__UNIQUE_ID_ddebug297, ptr noundef %3, ptr noundef nonnull @.str.245) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %preloaded = getelementptr inbounds %struct.wm_adsp, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %preloaded to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %preloaded, align 4, !range !537
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %running = getelementptr inbounds %struct.cs_dsp, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %running, align 1, !range !537
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp eq i8 %7, 0
  br i1 %tobool7.not, label %lor.lhs.false.cleanup_crit_edge, label %do.body10

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body10:                                        ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l41_runtime_suspend.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l41_runtime_suspend, %if.then22)) #7
          to label %do.end26 [label %if.then22], !srcloc !542

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  %dev23 = getelementptr inbounds %struct.cs35l41_private, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l41_runtime_suspend.__UNIQUE_ID_ddebug298, ptr noundef %9, ptr noundef nonnull @.str.246) #7
  br label %do.end26

do.end26:                                         ; preds = %if.then22, %do.body10
  %regmap = getelementptr inbounds %struct.cs35l41_private, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call27 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 10500, i32 noundef 136) #7
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call29 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 10500, i32 noundef 392) #7
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call31 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 77856, i32 noundef 5) #7
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %17, i1 noundef zeroext true) #7
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %19) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l41_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l41_runtime_resume.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l41_runtime_resume, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !542

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.cs35l41_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l41_runtime_resume.__UNIQUE_ID_ddebug301, ptr noundef %3, ptr noundef nonnull @.str.248) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %preloaded = getelementptr inbounds %struct.wm_adsp, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %preloaded to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %preloaded, align 4, !range !537
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %running = getelementptr inbounds %struct.cs_dsp, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %running, align 1, !range !537
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp eq i8 %7, 0
  br i1 %tobool7.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end9

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %regmap = getelementptr inbounds %struct.cs35l41_private, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %9, i1 noundef zeroext false) #7
  %call10 = tail call fastcc i32 @cs35l41_exit_hibernate(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %dev14 = getelementptr inbounds %struct.cs35l41_private, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev14, align 4
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call16 = tail call i32 @cs35l41_test_key_unlock(ptr noundef %11, ptr noundef %13) #7
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call18 = tail call i32 @regcache_sync(ptr noundef %15) #7
  %16 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev14, align 4
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call21 = tail call i32 @cs35l41_test_key_lock(ptr noundef %17, ptr noundef %19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool22.not = icmp eq i32 %call18, 0
  br i1 %tobool22.not, label %if.end13.cleanup_crit_edge, label %do.end26

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end26:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.249, i32 noundef %call18) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %do.end26 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs35l41_boost_config(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm_halo_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l41_component_probe(ptr noundef %component) #0 align 64 {
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
  %call1 = tail call i32 @wm_adsp2_component_probe(ptr noundef %3, ptr noundef %component) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs35l41_component_remove(ptr noundef %component) #0 align 64 {
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
  %call1 = tail call i32 @wm_adsp2_component_remove(ptr noundef %3, ptr noundef %component) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l41_component_set_sysclk(ptr nocapture noundef readonly %component, i32 noundef %clk_id, i32 noundef %source, i32 noundef %freq, i32 noundef %dir) #0 align 64 {
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
  %4 = zext i32 %clk_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %clk_id, label %do.end [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb1
    i32 4, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.cs35l41_private, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.217) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %clksrc.0 = phi i32 [ 5, %sw.bb2 ], [ 1, %sw.bb1 ], [ %clk_id, %entry.sw.epilog_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.epilog
  %i.08.i = phi i32 [ 0, %sw.epilog ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [64 x %struct.cs35l41_pll_sysclk_config], ptr @cs35l41_pll_sysclk, i32 0, i32 %i.08.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %freq)
  %cmp2.i = icmp eq i32 %8, %freq
  br i1 %cmp2.i, label %cs35l41_get_clk_config.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %do.end6, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cs35l41_get_clk_config.exit:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %clk_cfg.i = getelementptr [64 x %struct.cs35l41_pll_sysclk_config], ptr @cs35l41_pll_sysclk, i32 0, i32 %i.08.i, i32 1
  %9 = ptrtoint ptr %clk_cfg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %clk_cfg.i, align 4
  %regmap = getelementptr inbounds %struct.cs35l41_private, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 11268, i32 noundef 2048, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %shl = shl i32 %10, 5
  %call.i31 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 11268, i32 noundef 2016, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i32 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 11268, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call.i33 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 11268, i32 noundef 7, i32 noundef %clksrc.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call.i34 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 11268, i32 noundef 2048, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call.i35 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 11268, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

do.end6:                                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev7 = getelementptr inbounds %struct.cs35l41_private, ptr %3, i32 0, i32 3
  %23 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.220, i32 noundef -22, i32 noundef %freq) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %cs35l41_get_clk_config.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end6 ], [ 0, %cs35l41_get_clk_config.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw_sx(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw_sx(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw_sx(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm_adsp2_preloader_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm_adsp2_preloader_put(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm_adsp_fw_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm_adsp_fw_put(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l41_dsp_preload_ev(ptr noundef %w, ptr noundef %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.262)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %booted = getelementptr inbounds %struct.cs_dsp, ptr %5, i32 0, i32 21
  %7 = ptrtoint ptr %booted to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %booted, align 4, !range !537
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %sw.bb.cleanup.sink.split_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %entry
  %preloaded = getelementptr inbounds %struct.wm_adsp, ptr %5, i32 0, i32 7
  %9 = ptrtoint ptr %preloaded to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %preloaded, align 4, !range !537
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not = icmp eq i8 %10, 0
  br i1 %tobool5.not, label %if.end7, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %sw.bb3
  %running = getelementptr inbounds %struct.cs_dsp, ptr %5, i32 0, i32 22
  %11 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %running, align 1, !range !537
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool10.not = icmp eq i8 %12, 0
  br i1 %tobool10.not, label %if.end7.cleanup.sink.split_crit_edge, label %if.then11

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then11:                                        ; preds = %if.end7
  %call12 = tail call i32 @wm_adsp_event(ptr noundef %w, ptr noundef %kcontrol, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.cleanup.sink.split_crit_edge, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11.cleanup.sink.split_crit_edge:           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then11.cleanup.sink.split_crit_edge, %if.end7.cleanup.sink.split_crit_edge, %sw.bb.cleanup.sink.split_crit_edge
  %call17 = tail call i32 @wm_adsp_early_event(ptr noundef %w, ptr noundef %kcontrol, i32 noundef %event) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then11.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %sw.bb3.cleanup_crit_edge ], [ %call12, %if.then11.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call17, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l41_dsp_audio_ev(ptr noundef %w, ptr noundef %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  %fw_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_status) #7
  %6 = ptrtoint ptr %fw_status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %fw_status, align 4, !annotation !536
  %7 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.263)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb12
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %running = getelementptr inbounds %struct.cs_dsp, ptr %5, i32 0, i32 22
  %8 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %running, align 1, !range !537
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @wm_adsp_event(ptr noundef %w, ptr noundef %kcontrol, i32 noundef 2) #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %regmap = getelementptr inbounds %struct.cs35l41_private, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_read(ptr noundef %11, i32 noundef 77828, ptr noundef nonnull %fw_status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.cs35l41_private, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.181, i32 noundef %call3) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %14 = ptrtoint ptr %fw_status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fw_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %switch = icmp ult i32 %15, 2
  br i1 %switch, label %sw.epilog, label %do.end9

do.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev10 = getelementptr inbounds %struct.cs35l41_private, ptr %5, i32 0, i32 3
  %16 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.184, i32 noundef %15) #10
  br label %cleanup

sw.epilog:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = call fastcc i32 @cs35l41_set_cspl_mbox_cmd(ptr noundef %5, i32 noundef 2)
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call fastcc i32 @cs35l41_set_cspl_mbox_cmd(ptr noundef %5, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb12, %sw.epilog, %do.end9, %do.end, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %sw.bb12 ], [ %call3, %do.end ], [ -22, %do.end9 ], [ %call11, %sw.epilog ], [ %call2, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_status) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l41_main_amp_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !536
  %7 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.264)
  switch i32 %event, label %do.end50 [
    i32 2, label %sw.bb
    i32 8, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regmap = getelementptr inbounds %struct.cs35l41_private, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_multi_reg_write_bypassed(ptr noundef %9, ptr noundef nonnull @cs35l41_pup_patch, i32 noundef 5) #7
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 8212, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %regmap6 = getelementptr inbounds %struct.cs35l41_private, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %regmap6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap6, align 4
  %call.i69 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 8212, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call8 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call8, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 593) #7
  %14 = ptrtoint ptr %regmap6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap6, align 4
  %call1781 = call i32 @regmap_read(ptr noundef %15, i32 noundef 65552, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1781)
  %tobool.not82 = icmp eq i32 %call1781, 0
  br i1 %tobool.not82, label %sw.bb5.lor.lhs.false_crit_edge, label %sw.bb5.do.end42_crit_edge

sw.bb5.do.end42_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

sw.bb5.lor.lhs.false_crit_edge:                   ; preds = %sw.bb5
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then30.lor.lhs.false_crit_edge, %sw.bb5.lor.lhs.false_crit_edge
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %and = and i32 %17, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call22 = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call22, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call22, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then30

if.then30:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #7
  %18 = ptrtoint ptr %regmap6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap6, align 4
  %call17 = call i32 @regmap_read(ptr noundef %19, i32 noundef 65552, ptr noundef nonnull %val) #7
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %if.then30.lor.lhs.false_crit_edge, label %if.then30.do.end42_crit_edge

if.then30.do.end42_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

if.then30.lor.lhs.false_crit_edge:                ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %20 = ptrtoint ptr %regmap6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap6, align 4
  %call27 = call i32 @regmap_read(ptr noundef %21, i32 noundef 65552, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool32.not = icmp eq i32 %call27, 0
  br i1 %tobool32.not, label %for.end.lor.rhs_crit_edge, label %for.end.do.end42_crit_edge

for.end.do.end42_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  %and33 = and i32 %23, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %lor.rhs.do.end42_crit_edge, label %lor.rhs.if.end43_crit_edge

lor.rhs.if.end43_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

lor.rhs.do.end42_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

do.end42:                                         ; preds = %lor.rhs.do.end42_crit_edge, %for.end.do.end42_crit_edge, %if.then30.do.end42_crit_edge, %sw.bb5.do.end42_crit_edge
  %tobool32.not74.ph = phi i32 [ %call1781, %sw.bb5.do.end42_crit_edge ], [ %call27, %for.end.do.end42_crit_edge ], [ -110, %lor.rhs.do.end42_crit_edge ], [ %call17, %if.then30.do.end42_crit_edge ]
  %dev = getelementptr inbounds %struct.cs35l41_private, ptr %5, i32 0, i32 3
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.196, i32 noundef %tobool32.not74.ph) #10
  br label %if.end43

if.end43:                                         ; preds = %do.end42, %lor.rhs.if.end43_crit_edge
  %tobool32.not7486 = phi i32 [ %tobool32.not74.ph, %do.end42 ], [ 0, %lor.rhs.if.end43_crit_edge ]
  %26 = ptrtoint ptr %regmap6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap6, align 4
  %call45 = call i32 @regmap_write(ptr noundef %27, i32 noundef 65552, i32 noundef 8388608) #7
  %28 = ptrtoint ptr %regmap6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap6, align 4
  %call47 = call i32 @regmap_multi_reg_write_bypassed(ptr noundef %29, ptr noundef nonnull @cs35l41_pdn_patch, i32 noundef 5) #7
  br label %sw.epilog

do.end50:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev51 = getelementptr inbounds %struct.cs35l41_private, ptr %5, i32 0, i32 3
  %30 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev51, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.200, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end50, %if.end43, %sw.bb
  %ret.0 = phi i32 [ -22, %do.end50 ], [ %tobool32.not7486, %if.end43 ], [ 0, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm_adsp_early_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm_adsp_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cs35l41_set_cspl_mbox_cmd(ptr nocapture noundef readonly %cs35l41, i32 noundef %cmd) unnamed_addr #0 align 64 {
entry:
  %sts = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sts) #7
  %0 = ptrtoint ptr %sts to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %sts, align 4
  %regmap = getelementptr inbounds %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 4
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 77856, i32 noundef %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %dev21 = getelementptr inbounds %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 3
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %cmd)
  %cmp1.not = icmp eq i32 %cmd, 6
  br i1 %cmp1.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.186, i32 noundef %call) #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.050 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #7
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call6 = call i32 @regmap_read(ptr noundef %6, i32 noundef 77828, ptr noundef nonnull %sts) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end11, label %if.end13

do.end11:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.189, i32 noundef %call6) #10
  br label %for.inc

if.end13:                                         ; preds = %for.body
  %9 = ptrtoint ptr %sts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sts, align 4
  %11 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.265)
  switch i32 %cmd, label %if.end13.do.body16_crit_edge [
    i32 4, label %sw.bb6.i
    i32 3, label %sw.bb4.i
    i32 1, label %if.end13.cs35l41_check_cspl_mbox_sts.exit_crit_edge
    i32 6, label %if.end13.cs35l41_check_cspl_mbox_sts.exit_crit_edge51
    i32 2, label %sw.bb2.i
  ]

if.end13.cs35l41_check_cspl_mbox_sts.exit_crit_edge51: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cs35l41_check_cspl_mbox_sts.exit

if.end13.cs35l41_check_cspl_mbox_sts.exit_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cs35l41_check_cspl_mbox_sts.exit

if.end13.do.body16_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16

sw.bb2.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp3.i = icmp eq i32 %10, 0
  br i1 %cmp3.i, label %sw.bb2.i.cleanup_crit_edge, label %sw.bb2.i.do.body16_crit_edge

sw.bb2.i.do.body16_crit_edge:                     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16

sw.bb2.i.cleanup_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb4.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp5.i = icmp eq i32 %10, 0
  br i1 %cmp5.i, label %sw.bb4.i.cleanup_crit_edge, label %sw.bb4.i.do.body16_crit_edge

sw.bb4.i.do.body16_crit_edge:                     ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16

sw.bb4.i.cleanup_crit_edge:                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb6.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp7.i = icmp eq i32 %10, 2
  br i1 %cmp7.i, label %sw.bb6.i.cleanup_crit_edge, label %sw.bb6.i.do.body16_crit_edge

sw.bb6.i.do.body16_crit_edge:                     ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16

sw.bb6.i.cleanup_crit_edge:                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cs35l41_check_cspl_mbox_sts.exit:                 ; preds = %if.end13.cs35l41_check_cspl_mbox_sts.exit_crit_edge, %if.end13.cs35l41_check_cspl_mbox_sts.exit_crit_edge51
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i = icmp eq i32 %10, 1
  br i1 %cmp.i, label %cs35l41_check_cspl_mbox_sts.exit.cleanup_crit_edge, label %cs35l41_check_cspl_mbox_sts.exit.do.body16_crit_edge

cs35l41_check_cspl_mbox_sts.exit.do.body16_crit_edge: ; preds = %cs35l41_check_cspl_mbox_sts.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16

cs35l41_check_cspl_mbox_sts.exit.cleanup_crit_edge: ; preds = %cs35l41_check_cspl_mbox_sts.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body16:                                        ; preds = %cs35l41_check_cspl_mbox_sts.exit.do.body16_crit_edge, %sw.bb6.i.do.body16_crit_edge, %sw.bb4.i.do.body16_crit_edge, %sw.bb2.i.do.body16_crit_edge, %if.end13.do.body16_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l41_set_cspl_mbox_cmd.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l41_set_cspl_mbox_cmd, %if.then20)) #7
          to label %for.inc [label %if.then20], !srcloc !542

if.then20:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev21, align 4
  %14 = ptrtoint ptr %sts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sts, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l41_set_cspl_mbox_cmd.__UNIQUE_ID_ddebug295, ptr noundef %13, ptr noundef nonnull @.str.192, i32 noundef %i.050, i32 noundef %cmd, i32 noundef %15) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %do.body16, %do.end11
  %inc = add nuw nsw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %do.end28, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end28:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev21, align 4
  %18 = ptrtoint ptr %sts to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sts, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.194, i32 noundef %cmd, i32 noundef %19) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %cs35l41_check_cspl_mbox_sts.exit.cleanup_crit_edge, %sw.bb6.i.cleanup_crit_edge, %sw.bb4.i.cleanup_crit_edge, %sw.bb2.i.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -42, %do.end28 ], [ %call, %do.end ], [ %call, %if.then.cleanup_crit_edge ], [ 0, %cs35l41_check_cspl_mbox_sts.exit.cleanup_crit_edge ], [ 0, %sw.bb6.i.cleanup_crit_edge ], [ 0, %sw.bb4.i.cleanup_crit_edge ], [ 0, %sw.bb2.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sts) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write_bypassed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm_adsp2_component_probe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm_adsp2_component_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l41_dai_set_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.06.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [41 x %struct.cs35l41_fs_mon_config], ptr @cs35l41_fs_mon, i32 0, i32 %i.06.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %freq)
  %cmp2.i = icmp eq i32 %7, %freq
  br i1 %cmp2.i, label %do.body2, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 41
  br i1 %exitcond.not.i, label %do.end, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.end:                                           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.cs35l41_private, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.223, i32 noundef %freq) #10
  br label %cleanup

do.body2:                                         ; preds = %for.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l41_dai_set_sysclk.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l41_dai_set_sysclk, %if.then6)) #7
          to label %do.end10 [label %if.then6], !srcloc !542

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  %dev7 = getelementptr inbounds %struct.cs35l41_private, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l41_dai_set_sysclk.__UNIQUE_ID_ddebug296, ptr noundef %11, ptr noundef nonnull @.str.225, i32 noundef %freq) #7
  br label %do.end10

do.end10:                                         ; preds = %if.then6, %do.body2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144001, i32 %freq)
  %cmp11 = icmp ult i32 %freq, 6144001
  br i1 %cmp11, label %if.then12, label %do.end10.if.end14_crit_edge

do.end10.if.end14_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then12:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  %fs1 = getelementptr [41 x %struct.cs35l41_fs_mon_config], ptr @cs35l41_fs_mon, i32 0, i32 %i.06.i, i32 1
  %12 = ptrtoint ptr %fs1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fs1, align 4
  %fs2 = getelementptr [41 x %struct.cs35l41_fs_mon_config], ptr @cs35l41_fs_mon, i32 0, i32 %i.06.i, i32 2
  %14 = ptrtoint ptr %fs2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fs2, align 4
  %phi.bo = shl i32 %15, 12
  %phi.bo28 = and i32 %phi.bo, 16773120
  %16 = or i32 %phi.bo28, %13
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %do.end10.if.end14_crit_edge
  %or = phi i32 [ %16, %if.then12 ], [ 147472, %do.end10.if.end14_crit_edge ]
  %regmap = getelementptr inbounds %struct.cs35l41_private, ptr %5, i32 0, i32 4
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call15 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 11536, i32 noundef %or) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l41_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = trunc i32 %fmt to i16
  %trunc = and i16 %6, -4096
  %7 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.266)
  switch i16 %trunc, label %do.end [
    i16 4096, label %sw.bb
    i16 16384, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.cs35l41_private, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.226) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %daifmt.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 17, %sw.bb ]
  %and1 = and i32 %fmt, 15
  %10 = zext i32 %and1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.267)
  switch i32 %and1, label %do.end7 [
    i32 4, label %sw.epilog.sw.epilog9_crit_edge
    i32 1, label %sw.bb2
  ]

sw.epilog.sw.epilog9_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog9

sw.bb2:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %or3 = or i32 %daifmt.0, 512
  br label %sw.epilog9

do.end7:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %dev8 = getelementptr inbounds %struct.cs35l41_private, ptr %5, i32 0, i32 3
  %11 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.229) #10
  br label %cleanup

sw.epilog9:                                       ; preds = %sw.bb2, %sw.epilog.sw.epilog9_crit_edge
  %daifmt.1 = phi i32 [ %or3, %sw.bb2 ], [ %daifmt.0, %sw.epilog.sw.epilog9_crit_edge ]
  %and10 = lshr i32 %fmt, 8
  %13 = and i32 %and10, 15
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.268)
  switch i32 %13, label %do.end20 [
    i32 2, label %sw.bb11
    i32 3, label %sw.bb13
    i32 4, label %sw.bb15
    i32 0, label %sw.epilog9.sw.epilog22_crit_edge
  ]

sw.epilog9.sw.epilog22_crit_edge:                 ; preds = %sw.epilog9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog22

sw.bb11:                                          ; preds = %sw.epilog9
  call void @__sanitizer_cov_trace_pc() #9
  %or12 = or i32 %daifmt.1, 4
  br label %sw.epilog22

sw.bb13:                                          ; preds = %sw.epilog9
  call void @__sanitizer_cov_trace_pc() #9
  %or14 = or i32 %daifmt.1, 64
  br label %sw.epilog22

sw.bb15:                                          ; preds = %sw.epilog9
  call void @__sanitizer_cov_trace_pc() #9
  %or16 = or i32 %daifmt.1, 68
  br label %sw.epilog22

do.end20:                                         ; preds = %sw.epilog9
  call void @__sanitizer_cov_trace_pc() #9
  %dev21 = getelementptr inbounds %struct.cs35l41_private, ptr %5, i32 0, i32 3
  %15 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev21, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.232) #10
  br label %cleanup

sw.epilog22:                                      ; preds = %sw.bb15, %sw.bb13, %sw.bb11, %sw.epilog9.sw.epilog22_crit_edge
  %daifmt.2 = phi i32 [ %daifmt.1, %sw.epilog9.sw.epilog22_crit_edge ], [ %or16, %sw.bb15 ], [ %or14, %sw.bb13 ], [ %or12, %sw.bb11 ]
  %regmap = getelementptr inbounds %struct.cs35l41_private, ptr %5, i32 0, i32 4
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 18440, i32 noundef 1877, i32 noundef %daifmt.2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog22, %do.end20, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end7 ], [ -22, %do.end20 ], [ %call.i, %sw.epilog22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l41_set_channel_map(ptr nocapture noundef readonly %dai, i32 noundef %tx_n, ptr noundef %tx_slot, i32 noundef %rx_n, ptr noundef %rx_slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.cs35l41_private, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %regmap = getelementptr inbounds %struct.cs35l41_private, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @cs35l41_set_channels(ptr noundef %7, ptr noundef %9, i32 noundef %tx_n, ptr noundef %tx_slot, i32 noundef %rx_n, ptr noundef %rx_slot) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l41_pcm_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @cs35l41_constraints) #7
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l41_pcm_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.269)
  switch i32 %7, label %for.inc.12 [
    i32 12000, label %entry.if.end6_crit_edge
    i32 24000, label %if.end6.fold.split
    i32 48000, label %if.end6.fold.split60
    i32 96000, label %if.end6.fold.split61
    i32 192000, label %if.end6.fold.split62
    i32 11025, label %if.end6.fold.split63
    i32 22050, label %if.end6.fold.split64
    i32 44100, label %if.end6.fold.split65
    i32 88200, label %if.end6.fold.split66
    i32 176400, label %if.end6.fold.split67
    i32 8000, label %if.end6.fold.split68
    i32 16000, label %if.end6.fold.split69
    i32 32000, label %if.end6.fold.split70
  ]

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

for.inc.12:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.cs35l41_private, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.234, i32 noundef %7) #10
  br label %cleanup

if.end6.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6.fold.split60:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6.fold.split61:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6.fold.split62:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6.fold.split63:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6.fold.split64:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6.fold.split65:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6.fold.split66:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6.fold.split67:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6.fold.split68:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6.fold.split69:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6.fold.split70:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6:                                          ; preds = %if.end6.fold.split70, %if.end6.fold.split69, %if.end6.fold.split68, %if.end6.fold.split67, %if.end6.fold.split66, %if.end6.fold.split65, %if.end6.fold.split64, %if.end6.fold.split63, %if.end6.fold.split62, %if.end6.fold.split61, %if.end6.fold.split60, %if.end6.fold.split, %entry.if.end6_crit_edge
  %i.058.lcssa = phi i32 [ 0, %entry.if.end6_crit_edge ], [ 1, %if.end6.fold.split ], [ 2, %if.end6.fold.split60 ], [ 3, %if.end6.fold.split61 ], [ 4, %if.end6.fold.split62 ], [ 5, %if.end6.fold.split63 ], [ 6, %if.end6.fold.split64 ], [ 7, %if.end6.fold.split65 ], [ 8, %if.end6.fold.split66 ], [ 9, %if.end6.fold.split67 ], [ 10, %if.end6.fold.split68 ], [ 11, %if.end6.fold.split69 ], [ 12, %if.end6.fold.split70 ]
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.end6.if.then.i.i.i_crit_edge

if.end6.if.then.i.i.i_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.end6.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.end6.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %12, %if.end6.if.then.i.i.i_crit_edge ], [ %15, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %13 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #7, !range !543
  %add.i.i.i = or i32 %13, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.end6
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.1.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #7
  %regmap = getelementptr inbounds %struct.cs35l41_private, ptr %5, i32 0, i32 4
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %fs_cfg = getelementptr [13 x %struct.cs35l41_global_fs_config], ptr @cs35l41_fs_rates, i32 0, i32 %i.058.lcssa, i32 1
  %18 = ptrtoint ptr %fs_cfg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fs_cfg, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 11276, i32 noundef 31, i32 noundef %19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %20 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp14 = icmp eq i32 %21, 0
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %conv18 = and i32 %call1.i, 255
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shl19 = shl i32 %call1.i, 24
  %call.i52 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 18440, i32 noundef -16777216, i32 noundef %shl19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call.i53 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 18496, i32 noundef 63, i32 noundef %conv18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

if.else:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shl27 = shl nuw nsw i32 %conv18, 16
  %call.i54 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 18440, i32 noundef 16711680, i32 noundef %shl27, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call.i55 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 18480, i32 noundef 63, i32 noundef %conv18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then16, %for.inc.12
  %retval.0 = phi i32 [ -22, %for.inc.12 ], [ 0, %if.else ], [ 0, %if.then16 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs35l41_set_channels(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cs35l41_exit_hibernate(ptr nocapture noundef readonly %cs35l41) unnamed_addr #0 align 64 {
entry:
  %sts.i84 = alloca i32, align 4
  %sts.i68 = alloca i32, align 4
  %sts.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 3
  %regmap.i = getelementptr inbounds %struct.cs35l41_private, ptr %cs35l41, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %cs35l41_wait_for_pwrmgt_sts.exit99.do.body_crit_edge, %entry
  %i.0106 = phi i32 [ 0, %entry ], [ %inc40, %cs35l41_wait_for_pwrmgt_sts.exit99.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l41_exit_hibernate.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l41_exit_hibernate, %if.then)) #7
          to label %for.body5 [label %if.then], !srcloc !542

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l41_exit_hibernate.__UNIQUE_ID_ddebug299, ptr noundef %1, ptr noundef nonnull @.str.251) #7
  br label %for.body5

for.body5:                                        ; preds = %if.end9.for.body5_crit_edge, %if.then, %do.body
  %j.0105 = phi i32 [ %inc, %if.end9.for.body5_crit_edge ], [ 0, %do.body ], [ 0, %if.then ]
  %call6 = call fastcc i32 @cs35l41_set_cspl_mbox_cmd(ptr noundef %cs35l41, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body12, label %if.end9

if.end9:                                          ; preds = %for.body5
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %inc = add nuw nsw i32 %j.0105, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %do.end32, label %if.end9.for.body5_crit_edge

if.end9.for.body5_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body5

do.body12:                                        ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l41_exit_hibernate.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l41_exit_hibernate, %if.then24)) #7
          to label %cleanup [label %if.then24], !srcloc !542

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l41_exit_hibernate.__UNIQUE_ID_ddebug300, ptr noundef %3, ptr noundef nonnull @.str.252, i32 noundef %j.0105) #7
  br label %cleanup

do.end32:                                         ; preds = %if.end9
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.253, i32 noundef %call6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sts.i) #7
  %6 = ptrtoint ptr %sts.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %sts.i, align 4, !annotation !536
  br label %for.body.i

for.body.i:                                       ; preds = %if.end3.i.for.body.i_crit_edge, %do.end32
  %i.015.i = phi i32 [ 0, %do.end32 ], [ %inc.i, %if.end3.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 10504, ptr noundef nonnull %sts.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.257, i32 noundef %call.i) #10
  br label %if.end3.i

if.else.i:                                        ; preds = %for.body.i
  %11 = ptrtoint ptr %sts.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sts.i, align 4
  %and.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.else.i.cs35l41_wait_for_pwrmgt_sts.exit_crit_edge, label %if.else.i.if.end3.i_crit_edge

if.else.i.if.end3.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.else.i.cs35l41_wait_for_pwrmgt_sts.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cs35l41_wait_for_pwrmgt_sts.exit

if.end3.i:                                        ; preds = %if.else.i.if.end3.i_crit_edge, %do.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 4294960) #7
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %do.end6.i, label %if.end3.i.for.body.i_crit_edge

if.end3.i.for.body.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.end6.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.260) #10
  br label %cs35l41_wait_for_pwrmgt_sts.exit

cs35l41_wait_for_pwrmgt_sts.exit:                 ; preds = %do.end6.i, %if.else.i.cs35l41_wait_for_pwrmgt_sts.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sts.i) #7
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %call34 = call i32 @regmap_write(ptr noundef %17, i32 noundef 10500, i32 noundef 136) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sts.i68) #7
  %18 = ptrtoint ptr %sts.i68 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %sts.i68, align 4, !annotation !536
  br label %for.body.i74

for.body.i74:                                     ; preds = %if.end3.i81.for.body.i74_crit_edge, %cs35l41_wait_for_pwrmgt_sts.exit
  %i.015.i71 = phi i32 [ 0, %cs35l41_wait_for_pwrmgt_sts.exit ], [ %inc.i79, %if.end3.i81.for.body.i74_crit_edge ]
  %19 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i, align 4
  %call.i72 = call i32 @regmap_read(ptr noundef %20, i32 noundef 10504, ptr noundef nonnull %sts.i68) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool.not.i73 = icmp eq i32 %call.i72, 0
  br i1 %tobool.not.i73, label %if.else.i78, label %do.end.i75

do.end.i75:                                       ; preds = %for.body.i74
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.257, i32 noundef %call.i72) #10
  br label %if.end3.i81

if.else.i78:                                      ; preds = %for.body.i74
  %23 = ptrtoint ptr %sts.i68 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sts.i68, align 4
  %and.i76 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i76)
  %tobool1.not.i77 = icmp eq i32 %and.i76, 0
  br i1 %tobool1.not.i77, label %if.else.i78.cs35l41_wait_for_pwrmgt_sts.exit83_crit_edge, label %if.else.i78.if.end3.i81_crit_edge

if.else.i78.if.end3.i81_crit_edge:                ; preds = %if.else.i78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i81

if.else.i78.cs35l41_wait_for_pwrmgt_sts.exit83_crit_edge: ; preds = %if.else.i78
  call void @__sanitizer_cov_trace_pc() #9
  br label %cs35l41_wait_for_pwrmgt_sts.exit83

if.end3.i81:                                      ; preds = %if.else.i78.if.end3.i81_crit_edge, %do.end.i75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %25(i32 noundef 4294960) #7
  %inc.i79 = add nuw nsw i32 %i.015.i71, 1
  %exitcond.not.i80 = icmp eq i32 %inc.i79, 10
  br i1 %exitcond.not.i80, label %do.end6.i82, label %if.end3.i81.for.body.i74_crit_edge

if.end3.i81.for.body.i74_crit_edge:               ; preds = %if.end3.i81
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i74

do.end6.i82:                                      ; preds = %if.end3.i81
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.260) #10
  br label %cs35l41_wait_for_pwrmgt_sts.exit83

cs35l41_wait_for_pwrmgt_sts.exit83:               ; preds = %do.end6.i82, %if.else.i78.cs35l41_wait_for_pwrmgt_sts.exit83_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sts.i68) #7
  %28 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i, align 4
  %call36 = call i32 @regmap_write(ptr noundef %29, i32 noundef 10500, i32 noundef 392) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sts.i84) #7
  %30 = ptrtoint ptr %sts.i84 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %sts.i84, align 4, !annotation !536
  br label %for.body.i90

for.body.i90:                                     ; preds = %if.end3.i97.for.body.i90_crit_edge, %cs35l41_wait_for_pwrmgt_sts.exit83
  %i.015.i87 = phi i32 [ 0, %cs35l41_wait_for_pwrmgt_sts.exit83 ], [ %inc.i95, %if.end3.i97.for.body.i90_crit_edge ]
  %31 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i, align 4
  %call.i88 = call i32 @regmap_read(ptr noundef %32, i32 noundef 10504, ptr noundef nonnull %sts.i84) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool.not.i89 = icmp eq i32 %call.i88, 0
  br i1 %tobool.not.i89, label %if.else.i94, label %do.end.i91

do.end.i91:                                       ; preds = %for.body.i90
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.257, i32 noundef %call.i88) #10
  br label %if.end3.i97

if.else.i94:                                      ; preds = %for.body.i90
  %35 = ptrtoint ptr %sts.i84 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sts.i84, align 4
  %and.i92 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i92)
  %tobool1.not.i93 = icmp eq i32 %and.i92, 0
  br i1 %tobool1.not.i93, label %if.else.i94.cs35l41_wait_for_pwrmgt_sts.exit99_crit_edge, label %if.else.i94.if.end3.i97_crit_edge

if.else.i94.if.end3.i97_crit_edge:                ; preds = %if.else.i94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i97

if.else.i94.cs35l41_wait_for_pwrmgt_sts.exit99_crit_edge: ; preds = %if.else.i94
  call void @__sanitizer_cov_trace_pc() #9
  br label %cs35l41_wait_for_pwrmgt_sts.exit99

if.end3.i97:                                      ; preds = %if.else.i94.if.end3.i97_crit_edge, %do.end.i91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %37(i32 noundef 4294960) #7
  %inc.i95 = add nuw nsw i32 %i.015.i87, 1
  %exitcond.not.i96 = icmp eq i32 %inc.i95, 10
  br i1 %exitcond.not.i96, label %do.end6.i98, label %if.end3.i97.for.body.i90_crit_edge

if.end3.i97.for.body.i90_crit_edge:               ; preds = %if.end3.i97
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i90

do.end6.i98:                                      ; preds = %if.end3.i97
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.260) #10
  br label %cs35l41_wait_for_pwrmgt_sts.exit99

cs35l41_wait_for_pwrmgt_sts.exit99:               ; preds = %do.end6.i98, %if.else.i94.cs35l41_wait_for_pwrmgt_sts.exit99_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sts.i84) #7
  %40 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i, align 4
  %call38 = call i32 @regmap_write(ptr noundef %41, i32 noundef 10496, i32 noundef 3) #7
  %inc40 = add nuw nsw i32 %i.0106, 1
  %exitcond109.not = icmp eq i32 %inc40, 5
  br i1 %exitcond109.not, label %do.end44, label %cs35l41_wait_for_pwrmgt_sts.exit99.do.body_crit_edge

cs35l41_wait_for_pwrmgt_sts.exit99.do.body_crit_edge: ; preds = %cs35l41_wait_for_pwrmgt_sts.exit99
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end44:                                         ; preds = %cs35l41_wait_for_pwrmgt_sts.exit99
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.255) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %if.then24, %do.body12
  %retval.0 = phi i32 [ -110, %do.end44 ], [ 0, %if.then24 ], [ 0, %do.body12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 284)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 284)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !69, !71, !73, !75, !77, !79, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !109, !110, !111, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !144, !146, !147, !148, !150, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !316, !317, !318, !320, !321, !322, !324, !325, !326, !327, !329, !330, !331, !333, !334, !335, !337, !338, !339, !341, !342, !343, !344, !345, !347, !348, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !424, !425, !426, !428, !429, !430, !432, !434, !436, !438, !440, !441, !442, !443, !445, !446, !448, !450, !451, !452, !453, !455, !456, !457, !459, !460, !461, !463, !465, !467, !468, !469, !470, !472, !474, !475, !476, !478, !479, !480, !482, !483, !484, !486, !487, !488, !490, !491, !492, !494, !495, !497, !498, !499, !501, !502, !503, !505, !506, !507, !509, !510, !512, !513, !514, !516, !517, !518, !520, !521, !522, !523, !525, !526}
!llvm.module.flags = !{!527, !528, !529, !530, !531, !532, !533, !534}
!llvm.ident = !{!535}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/cs35l41.c", i32 1274, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cs35l41_probe._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @cs35l41_probe._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/cs35l41.c", i32 1280, i32 3}
!10 = !{ptr @cs35l41_probe._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @cs35l41_probe._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/cs35l41.c", i32 1285, i32 62}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/cs35l41.c", i32 1291, i32 4}
!16 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @cs35l41_probe._entry.9, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @cs35l41_probe._entry_ptr.12, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/cs35l41.c", i32 1294, i32 4}
!21 = !{ptr @cs35l41_probe._entry.13, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @cs35l41_probe._entry_ptr.15, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.17, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/codecs/cs35l41.c", i32 1311, i32 3}
!25 = !{ptr @cs35l41_probe._entry.16, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @cs35l41_probe._entry_ptr.18, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.20, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/cs35l41.c", i32 1318, i32 3}
!29 = !{ptr @cs35l41_probe._entry.19, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @cs35l41_probe._entry_ptr.21, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.23, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/cs35l41.c", i32 1325, i32 3}
!33 = !{ptr @cs35l41_probe._entry.22, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @cs35l41_probe._entry_ptr.24, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.26, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/cs35l41.c", i32 1331, i32 3}
!37 = !{ptr @cs35l41_probe._entry.25, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @cs35l41_probe._entry_ptr.27, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.29, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/cs35l41.c", i32 1342, i32 3}
!41 = !{ptr @cs35l41_probe._entry.28, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @cs35l41_probe._entry_ptr.30, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.32, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/cs35l41.c", i32 1356, i32 3}
!45 = !{ptr @cs35l41_probe._entry.31, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @cs35l41_probe._entry_ptr.33, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.34, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/cs35l41.c", i32 1370, i32 6}
!49 = !{ptr @.str.36, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/cs35l41.c", i32 1372, i32 3}
!51 = !{ptr @cs35l41_probe._entry.35, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @cs35l41_probe._entry_ptr.37, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.39, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/cs35l41.c", i32 1378, i32 3}
!55 = !{ptr @cs35l41_probe._entry.38, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @cs35l41_probe._entry_ptr.40, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.42, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/cs35l41.c", i32 1397, i32 3}
!59 = !{ptr @cs35l41_probe._entry.41, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @cs35l41_probe._entry_ptr.43, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.45, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/cs35l41.c", i32 1403, i32 2}
!63 = !{ptr @cs35l41_probe._entry.44, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @cs35l41_probe._entry_ptr.46, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @__ksymtab_cs35l41_probe, !66, !"__ksymtab_cs35l41_probe", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/cs35l41.c", i32 1419, i32 1}
!67 = !{ptr @__ksymtab_cs35l41_remove, !68, !"__ksymtab_cs35l41_remove", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/cs35l41.c", i32 1434, i32 1}
!69 = !{ptr @cs35l41_pm_ops, !70, !"cs35l41_pm_ops", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/cs35l41.c", i32 1587, i32 25}
!71 = !{ptr @__ksymtab_cs35l41_pm_ops, !72, !"__ksymtab_cs35l41_pm_ops", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/cs35l41.c", i32 1593, i32 1}
!73 = !{ptr @__UNIQUE_ID_description306, !74, !"__UNIQUE_ID_description306", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/cs35l41.c", i32 1595, i32 1}
!75 = !{ptr @__UNIQUE_ID_author307, !76, !"__UNIQUE_ID_author307", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/cs35l41.c", i32 1596, i32 1}
!77 = !{ptr @__UNIQUE_ID_file308, !78, !"__UNIQUE_ID_file308", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/cs35l41.c", i32 1597, i32 1}
!79 = !{ptr @__UNIQUE_ID_license309, !78, !"__UNIQUE_ID_license309", i1 false, i1 false}
!80 = !{ptr @.str.47, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/cs35l41.c", i32 1127, i32 38}
!82 = !{ptr @.str.48, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/cs35l41.c", i32 1131, i32 38}
!84 = !{ptr @.str.49, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/cs35l41.c", i32 1135, i32 38}
!86 = !{ptr @.str.50, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/cs35l41.c", i32 1139, i32 38}
!88 = !{ptr @.str.51, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/cs35l41.c", i32 1147, i32 6}
!90 = !{ptr @.str.52, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/cs35l41.c", i32 1149, i32 6}
!92 = !{ptr @.str.53, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/cs35l41.c", i32 1150, i32 38}
!94 = !{ptr @.str.54, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/cs35l41.c", i32 1157, i32 6}
!96 = !{ptr @.str.55, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/cs35l41.c", i32 1159, i32 6}
!98 = !{ptr @.str.56, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/cs35l41.c", i32 1160, i32 38}
!100 = !{ptr @.str.57, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/cs35l41.c", i32 28, i32 2}
!102 = !{ptr @.str.58, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/cs35l41.c", i32 29, i32 2}
!104 = distinct !{null, !105, !"cs35l41_supplies", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/cs35l41.c", i32 27, i32 27}
!106 = !{ptr @.str.59, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/cs35l41.c", i32 452, i32 3}
!108 = !{ptr @cs35l41_irq._rs, !107, !"_rs", i1 false, i1 false}
!109 = !{ptr @__func__.cs35l41_irq, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.60, !107, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.61, !107, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @cs35l41_irq._entry, !107, !"_entry", i1 false, i1 false}
!113 = !{ptr @cs35l41_irq._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @cs35l41_irq._rs.62, !115, !"_rs", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/cs35l41.c", i32 465, i32 3}
!116 = !{ptr @.str.64, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @cs35l41_irq._entry.63, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @cs35l41_irq._entry_ptr.65, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @cs35l41_irq._rs.66, !120, !"_rs", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/cs35l41.c", i32 478, i32 3}
!121 = !{ptr @.str.68, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @cs35l41_irq._entry.67, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @cs35l41_irq._entry_ptr.69, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @cs35l41_irq._rs.70, !125, !"_rs", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/cs35l41.c", i32 491, i32 3}
!126 = !{ptr @.str.72, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @cs35l41_irq._entry.71, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @cs35l41_irq._entry_ptr.73, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @cs35l41_irq._rs.74, !130, !"_rs", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/cs35l41.c", i32 509, i32 3}
!131 = !{ptr @.str.76, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @cs35l41_irq._entry.75, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @cs35l41_irq._entry_ptr.77, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @cs35l41_irq._rs.78, !135, !"_rs", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/cs35l41.c", i32 527, i32 3}
!136 = !{ptr @.str.80, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @cs35l41_irq._entry.79, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @cs35l41_irq._entry_ptr.81, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.82, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/cs35l41.c", i32 1007, i32 4}
!141 = !{ptr @.str.83, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @cs35l41_set_pdata._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @cs35l41_set_pdata._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.85, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/cs35l41.c", i32 1011, i32 3}
!146 = !{ptr @cs35l41_set_pdata._entry.84, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @cs35l41_set_pdata._entry_ptr.86, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.87, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/cs35l41.c", i32 1210, i32 3}
!150 = !{ptr @.str.88, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @cs35l41_dsp_init._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @cs35l41_dsp_init._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.90, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/cs35l41.c", i32 1216, i32 3}
!155 = !{ptr @cs35l41_dsp_init._entry.89, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @cs35l41_dsp_init._entry_ptr.91, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.93, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/cs35l41.c", i32 1223, i32 3}
!159 = !{ptr @cs35l41_dsp_init._entry.92, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @cs35l41_dsp_init._entry_ptr.94, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.96, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/cs35l41.c", i32 1229, i32 3}
!163 = !{ptr @cs35l41_dsp_init._entry.95, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @cs35l41_dsp_init._entry_ptr.97, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.99, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/cs35l41.c", i32 1235, i32 3}
!167 = !{ptr @cs35l41_dsp_init._entry.98, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @cs35l41_dsp_init._entry_ptr.100, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.102, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/cs35l41.c", i32 1241, i32 3}
!171 = !{ptr @cs35l41_dsp_init._entry.101, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @cs35l41_dsp_init._entry_ptr.103, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @cs35l41_dsp1_regions, !174, !"cs35l41_dsp1_regions", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/cs35l41.c", i32 747, i32 35}
!175 = !{ptr @cs35l41_fs_errata_patch, !176, !"cs35l41_fs_errata_patch", i1 false, i1 false}
!176 = !{!"../sound/soc/codecs/cs35l41.c", i32 1168, i32 34}
!177 = !{ptr @.str.104, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/cs35l41.c", i32 1104, i32 10}
!179 = !{ptr @soc_component_dev_cs35l41, !180, !"soc_component_dev_cs35l41", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/cs35l41.c", i32 1103, i32 46}
!181 = !{ptr @.str.105, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/cs35l41.c", i32 387, i32 2}
!183 = !{ptr @.str.106, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/cs35l41.c", i32 389, i32 2}
!185 = !{ptr @.str.108, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/cs35l41.c", i32 391, i32 2}
!187 = !{ptr @.str.109, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/cs35l41.c", i32 392, i32 2}
!189 = !{ptr @.str.111, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/cs35l41.c", i32 393, i32 2}
!191 = !{ptr @.str.113, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/cs35l41.c", i32 394, i32 2}
!193 = !{ptr @.str.115, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/cs35l41.c", i32 395, i32 2}
!195 = !{ptr @.str.117, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/cs35l41.c", i32 397, i32 2}
!197 = !{ptr @.str.119, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/cs35l41.c", i32 399, i32 2}
!199 = !{ptr @.str.121, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/cs35l41.c", i32 401, i32 2}
!201 = !{ptr @.str.123, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/cs35l41.c", i32 403, i32 2}
!203 = !{ptr @.str.125, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/cs35l41.c", i32 405, i32 2}
!205 = !{ptr @.str.127, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/cs35l41.c", i32 407, i32 2}
!207 = !{ptr @.str.129, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/cs35l41.c", i32 408, i32 2}
!209 = !{ptr @.str.131, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/cs35l41.c", i32 409, i32 2}
!211 = !{ptr @.str.133, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/cs35l41.c", i32 411, i32 2}
!213 = !{ptr @.str.135, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/cs35l41.c", i32 413, i32 2}
!215 = !{ptr @.str.137, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/cs35l41.c", i32 414, i32 2}
!217 = !{ptr @cs35l41_aud_controls, !218, !"cs35l41_aud_controls", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/cs35l41.c", i32 386, i32 38}
!219 = !{ptr @dig_vol_tlv, !220, !"dig_vol_tlv", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/cs35l41.c", i32 166, i32 14}
!221 = !{ptr @amp_gain_tlv, !222, !"amp_gain_tlv", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/cs35l41.c", i32 169, i32 8}
!223 = !{ptr @pcm_sft_ramp, !224, !"pcm_sft_ramp", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/cs35l41.c", i32 178, i32 8}
!225 = !{ptr @.str.138, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/cs35l41.c", i32 175, i32 2}
!227 = !{ptr @.str.139, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/cs35l41.c", i32 175, i32 9}
!229 = !{ptr @.str.140, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/cs35l41.c", i32 175, i32 17}
!231 = !{ptr @.str.141, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/cs35l41.c", i32 175, i32 24}
!233 = !{ptr @.str.142, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/cs35l41.c", i32 175, i32 31}
!235 = !{ptr @.str.143, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/cs35l41.c", i32 175, i32 38}
!237 = !{ptr @.str.144, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/cs35l41.c", i32 175, i32 45}
!239 = !{ptr @.str.145, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/cs35l41.c", i32 175, i32 53}
!241 = !{ptr @cs35l41_pcm_sftramp_text, !242, !"cs35l41_pcm_sftramp_text", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/cs35l41.c", i32 174, i32 27}
!243 = !{ptr @.str.146, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/cs35l41.c", i32 613, i32 2}
!245 = !{ptr @.str.147, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/cs35l41.c", i32 614, i32 2}
!247 = !{ptr @.str.148, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/cs35l41.c", i32 617, i32 2}
!249 = !{ptr @.str.149, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/cs35l41.c", i32 621, i32 2}
!251 = !{ptr @.str.150, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/cs35l41.c", i32 623, i32 2}
!253 = !{ptr @.str.151, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/cs35l41.c", i32 624, i32 2}
!255 = !{ptr @.str.152, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/cs35l41.c", i32 625, i32 2}
!257 = !{ptr @.str.153, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/cs35l41.c", i32 626, i32 2}
!259 = !{ptr @.str.154, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/cs35l41.c", i32 627, i32 2}
!261 = !{ptr @.str.155, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/cs35l41.c", i32 628, i32 2}
!263 = !{ptr @.str.156, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/cs35l41.c", i32 630, i32 2}
!265 = !{ptr @.str.157, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/cs35l41.c", i32 631, i32 2}
!267 = !{ptr @.str.158, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/cs35l41.c", i32 633, i32 2}
!269 = !{ptr @.str.159, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/cs35l41.c", i32 634, i32 2}
!271 = !{ptr @.str.160, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/cs35l41.c", i32 636, i32 2}
!273 = !{ptr @.str.161, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/cs35l41.c", i32 637, i32 2}
!275 = !{ptr @.str.162, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/cs35l41.c", i32 638, i32 2}
!277 = !{ptr @.str.163, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/codecs/cs35l41.c", i32 639, i32 2}
!279 = !{ptr @.str.164, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/cs35l41.c", i32 640, i32 2}
!281 = !{ptr @.str.165, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/soc/codecs/cs35l41.c", i32 642, i32 2}
!283 = !{ptr @.str.166, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/cs35l41.c", i32 643, i32 2}
!285 = !{ptr @.str.167, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/soc/codecs/cs35l41.c", i32 644, i32 2}
!287 = !{ptr @.str.168, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/cs35l41.c", i32 645, i32 2}
!289 = !{ptr @.str.169, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/soc/codecs/cs35l41.c", i32 646, i32 2}
!291 = !{ptr @.str.170, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/cs35l41.c", i32 648, i32 2}
!293 = !{ptr @.str.171, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/cs35l41.c", i32 650, i32 2}
!295 = !{ptr @.str.172, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../sound/soc/codecs/cs35l41.c", i32 654, i32 2}
!297 = !{ptr @.str.173, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/cs35l41.c", i32 655, i32 2}
!299 = !{ptr @.str.174, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/soc/codecs/cs35l41.c", i32 656, i32 2}
!301 = !{ptr @.str.175, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../sound/soc/codecs/cs35l41.c", i32 657, i32 2}
!303 = !{ptr @.str.176, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/soc/codecs/cs35l41.c", i32 658, i32 2}
!305 = !{ptr @.str.177, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../sound/soc/codecs/cs35l41.c", i32 659, i32 2}
!307 = !{ptr @.str.178, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../sound/soc/codecs/cs35l41.c", i32 660, i32 2}
!309 = !{ptr @.str.179, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../sound/soc/codecs/cs35l41.c", i32 661, i32 2}
!311 = !{ptr @cs35l41_dapm_widgets, !312, !"cs35l41_dapm_widgets", i1 false, i1 false}
!312 = !{!"../sound/soc/codecs/cs35l41.c", i32 612, i32 41}
!313 = !{ptr @.str.181, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../sound/soc/codecs/cs35l41.c", i32 287, i32 4}
!315 = !{ptr @.str.182, !314, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @cs35l41_dsp_audio_ev._entry, !314, !"_entry", i1 false, i1 false}
!317 = !{ptr @cs35l41_dsp_audio_ev._entry_ptr, !314, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.184, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../sound/soc/codecs/cs35l41.c", i32 297, i32 4}
!320 = !{ptr @cs35l41_dsp_audio_ev._entry.183, !319, !"_entry", i1 false, i1 false}
!321 = !{ptr @cs35l41_dsp_audio_ev._entry_ptr.185, !319, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.186, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/soc/codecs/cs35l41.c", i32 242, i32 4}
!324 = !{ptr @.str.187, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @cs35l41_set_cspl_mbox_cmd._entry, !323, !"_entry", i1 false, i1 false}
!326 = !{ptr @cs35l41_set_cspl_mbox_cmd._entry_ptr, !323, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.189, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../sound/soc/codecs/cs35l41.c", i32 252, i32 4}
!329 = !{ptr @cs35l41_set_cspl_mbox_cmd._entry.188, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @cs35l41_set_cspl_mbox_cmd._entry_ptr.190, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.191, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../sound/soc/codecs/cs35l41.c", i32 257, i32 4}
!333 = !{ptr @.str.192, !332, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @cs35l41_set_cspl_mbox_cmd.__UNIQUE_ID_ddebug295, !332, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!335 = !{ptr @.str.194, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../sound/soc/codecs/cs35l41.c", i32 265, i32 2}
!337 = !{ptr @cs35l41_set_cspl_mbox_cmd._entry.193, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @cs35l41_set_cspl_mbox_cmd._entry_ptr.195, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.196, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../sound/soc/codecs/cs35l41.c", i32 595, i32 4}
!341 = !{ptr @.str.197, !340, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @.str.198, !340, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @cs35l41_main_amp_event._entry, !340, !"_entry", i1 false, i1 false}
!344 = !{ptr @cs35l41_main_amp_event._entry_ptr, !340, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.200, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../sound/soc/codecs/cs35l41.c", i32 605, i32 3}
!347 = !{ptr @cs35l41_main_amp_event._entry.199, !346, !"_entry", i1 false, i1 false}
!348 = !{ptr @cs35l41_main_amp_event._entry_ptr.201, !346, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @cs35l41_pup_patch, !350, !"cs35l41_pup_patch", i1 false, i1 false}
!350 = !{!"../sound/soc/codecs/cs35l41.c", i32 551, i32 34}
!351 = !{ptr @cs35l41_pdn_patch, !352, !"cs35l41_pdn_patch", i1 false, i1 false}
!352 = !{!"../sound/soc/codecs/cs35l41.c", i32 559, i32 34}
!353 = !{ptr @.str.202, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../sound/soc/codecs/cs35l41.c", i32 339, i32 2}
!355 = !{ptr @asp_tx1_mux, !356, !"asp_tx1_mux", i1 false, i1 false}
!356 = !{!"../sound/soc/codecs/cs35l41.c", i32 338, i32 38}
!357 = !{ptr @cs35l41_asptx1_enum, !358, !"cs35l41_asptx1_enum", i1 false, i1 false}
!358 = !{!"../sound/soc/codecs/cs35l41.c", i32 332, i32 8}
!359 = !{ptr @.str.203, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../sound/soc/codecs/cs35l41.c", i32 322, i32 2}
!361 = !{ptr @.str.204, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../sound/soc/codecs/cs35l41.c", i32 323, i32 22}
!363 = !{ptr @.str.205, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../sound/soc/codecs/cs35l41.c", i32 323, i32 32}
!365 = !{ptr @cs35l41_tx_input_texts, !366, !"cs35l41_tx_input_texts", i1 false, i1 false}
!366 = !{!"../sound/soc/codecs/cs35l41.c", i32 321, i32 27}
!367 = !{ptr @cs35l41_tx_input_values, !368, !"cs35l41_tx_input_values", i1 false, i1 false}
!368 = !{!"../sound/soc/codecs/cs35l41.c", i32 326, i32 27}
!369 = !{ptr @.str.206, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../sound/soc/codecs/cs35l41.c", i32 348, i32 2}
!371 = !{ptr @asp_tx2_mux, !372, !"asp_tx2_mux", i1 false, i1 false}
!372 = !{!"../sound/soc/codecs/cs35l41.c", i32 347, i32 38}
!373 = !{ptr @cs35l41_asptx2_enum, !374, !"cs35l41_asptx2_enum", i1 false, i1 false}
!374 = !{!"../sound/soc/codecs/cs35l41.c", i32 341, i32 8}
!375 = !{ptr @.str.207, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../sound/soc/codecs/cs35l41.c", i32 357, i32 2}
!377 = !{ptr @asp_tx3_mux, !378, !"asp_tx3_mux", i1 false, i1 false}
!378 = !{!"../sound/soc/codecs/cs35l41.c", i32 356, i32 38}
!379 = !{ptr @cs35l41_asptx3_enum, !380, !"cs35l41_asptx3_enum", i1 false, i1 false}
!380 = !{!"../sound/soc/codecs/cs35l41.c", i32 350, i32 8}
!381 = !{ptr @.str.208, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../sound/soc/codecs/cs35l41.c", i32 366, i32 2}
!383 = !{ptr @asp_tx4_mux, !384, !"asp_tx4_mux", i1 false, i1 false}
!384 = !{!"../sound/soc/codecs/cs35l41.c", i32 365, i32 38}
!385 = !{ptr @cs35l41_asptx4_enum, !386, !"cs35l41_asptx4_enum", i1 false, i1 false}
!386 = !{!"../sound/soc/codecs/cs35l41.c", i32 359, i32 8}
!387 = !{ptr @.str.209, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../sound/soc/codecs/cs35l41.c", i32 375, i32 2}
!389 = !{ptr @dsp_rx1_mux, !390, !"dsp_rx1_mux", i1 false, i1 false}
!390 = !{!"../sound/soc/codecs/cs35l41.c", i32 374, i32 38}
!391 = !{ptr @cs35l41_dsprx1_enum, !392, !"cs35l41_dsprx1_enum", i1 false, i1 false}
!392 = !{!"../sound/soc/codecs/cs35l41.c", i32 368, i32 8}
!393 = !{ptr @.str.210, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../sound/soc/codecs/cs35l41.c", i32 384, i32 2}
!395 = !{ptr @dsp_rx2_mux, !396, !"dsp_rx2_mux", i1 false, i1 false}
!396 = !{!"../sound/soc/codecs/cs35l41.c", i32 383, i32 38}
!397 = !{ptr @cs35l41_dsprx2_enum, !398, !"cs35l41_dsprx2_enum", i1 false, i1 false}
!398 = !{!"../sound/soc/codecs/cs35l41.c", i32 377, i32 8}
!399 = !{ptr @pcm_source_mux, !400, !"pcm_source_mux", i1 false, i1 false}
!400 = !{!"../sound/soc/codecs/cs35l41.c", i32 318, i32 38}
!401 = !{ptr @cs35l41_pcm_source_enum, !402, !"cs35l41_pcm_source_enum", i1 false, i1 false}
!402 = !{!"../sound/soc/codecs/cs35l41.c", i32 312, i32 8}
!403 = !{ptr @.str.211, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../sound/soc/codecs/cs35l41.c", i32 310, i32 57}
!405 = !{ptr @.str.212, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../sound/soc/codecs/cs35l41.c", i32 310, i32 64}
!407 = !{ptr @cs35l41_pcm_source_texts, !408, !"cs35l41_pcm_source_texts", i1 false, i1 false}
!408 = !{!"../sound/soc/codecs/cs35l41.c", i32 310, i32 27}
!409 = !{ptr @cs35l41_pcm_source_values, !410, !"cs35l41_pcm_source_values", i1 false, i1 false}
!410 = !{!"../sound/soc/codecs/cs35l41.c", i32 311, i32 27}
!411 = !{ptr @.str.213, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../sound/soc/codecs/cs35l41.c", i32 172, i32 2}
!413 = !{ptr @dre_ctrl, !414, !"dre_ctrl", i1 false, i1 false}
!414 = !{!"../sound/soc/codecs/cs35l41.c", i32 171, i32 38}
!415 = !{ptr @.str.215, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../sound/soc/codecs/cs35l41.c", i32 709, i32 3}
!417 = !{ptr @.str.216, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../sound/soc/codecs/cs35l41.c", i32 735, i32 19}
!419 = !{ptr @cs35l41_audio_map, !420, !"cs35l41_audio_map", i1 false, i1 false}
!420 = !{!"../sound/soc/codecs/cs35l41.c", i32 664, i32 40}
!421 = !{ptr @.str.217, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../sound/soc/codecs/cs35l41.c", i32 929, i32 3}
!423 = !{ptr @.str.218, !422, !"<string literal>", i1 false, i1 false}
!424 = !{ptr @cs35l41_component_set_sysclk._entry, !422, !"_entry", i1 false, i1 false}
!425 = !{ptr @cs35l41_component_set_sysclk._entry_ptr, !422, !"_entry_ptr", i1 false, i1 false}
!426 = !{ptr @.str.220, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../sound/soc/codecs/cs35l41.c", i32 936, i32 3}
!428 = !{ptr @cs35l41_component_set_sysclk._entry.219, !427, !"_entry", i1 false, i1 false}
!429 = !{ptr @cs35l41_component_set_sysclk._entry_ptr.221, !427, !"_entry_ptr", i1 false, i1 false}
!430 = !{ptr @cs35l41_pll_sysclk, !431, !"cs35l41_pll_sysclk", i1 false, i1 false}
!431 = !{!"../sound/soc/codecs/cs35l41.c", i32 37, i32 47}
!432 = !{ptr @.str.222, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../sound/soc/codecs/cs35l41.c", i32 1082, i32 11}
!434 = !{ptr @cs35l41_dai, !435, !"cs35l41_dai", i1 false, i1 false}
!435 = !{!"../sound/soc/codecs/cs35l41.c", i32 1080, i32 34}
!436 = !{ptr @cs35l41_ops, !437, !"cs35l41_ops", i1 false, i1 false}
!437 = !{!"../sound/soc/codecs/cs35l41.c", i32 1072, i32 37}
!438 = !{ptr @.str.223, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../sound/soc/codecs/cs35l41.c", i32 973, i32 3}
!440 = !{ptr @.str.224, !439, !"<string literal>", i1 false, i1 false}
!441 = !{ptr @cs35l41_dai_set_sysclk._entry, !439, !"_entry", i1 false, i1 false}
!442 = !{ptr @cs35l41_dai_set_sysclk._entry_ptr, !439, !"_entry_ptr", i1 false, i1 false}
!443 = !{ptr @.str.225, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../sound/soc/codecs/cs35l41.c", i32 977, i32 2}
!445 = !{ptr @cs35l41_dai_set_sysclk.__UNIQUE_ID_ddebug296, !444, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!446 = !{ptr @cs35l41_fs_mon, !447, !"cs35l41_fs_mon", i1 false, i1 false}
!447 = !{!"../sound/soc/codecs/cs35l41.c", i32 110, i32 43}
!448 = !{ptr @.str.226, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../sound/soc/codecs/cs35l41.c", i32 775, i32 3}
!450 = !{ptr @.str.227, !449, !"<string literal>", i1 false, i1 false}
!451 = !{ptr @cs35l41_set_dai_fmt._entry, !449, !"_entry", i1 false, i1 false}
!452 = !{ptr @cs35l41_set_dai_fmt._entry_ptr, !449, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @.str.229, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../sound/soc/codecs/cs35l41.c", i32 786, i32 3}
!455 = !{ptr @cs35l41_set_dai_fmt._entry.228, !454, !"_entry", i1 false, i1 false}
!456 = !{ptr @cs35l41_set_dai_fmt._entry_ptr.230, !454, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @.str.232, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../sound/soc/codecs/cs35l41.c", i32 803, i32 3}
!459 = !{ptr @cs35l41_set_dai_fmt._entry.231, !458, !"_entry", i1 false, i1 false}
!460 = !{ptr @cs35l41_set_dai_fmt._entry_ptr.233, !458, !"_entry_ptr", i1 false, i1 false}
!461 = !{ptr @cs35l41_constraints, !462, !"cs35l41_constraints", i1 false, i1 false}
!462 = !{!"../sound/soc/codecs/cs35l41.c", i32 896, i32 48}
!463 = !{ptr @cs35l41_src_rates, !464, !"cs35l41_src_rates", i1 false, i1 false}
!464 = !{!"../sound/soc/codecs/cs35l41.c", i32 891, i32 27}
!465 = !{ptr @.str.234, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../sound/soc/codecs/cs35l41.c", i32 849, i32 3}
!467 = !{ptr @.str.235, !466, !"<string literal>", i1 false, i1 false}
!468 = !{ptr @cs35l41_pcm_hw_params._entry, !466, !"_entry", i1 false, i1 false}
!469 = !{ptr @cs35l41_pcm_hw_params._entry_ptr, !466, !"_entry_ptr", i1 false, i1 false}
!470 = !{ptr @cs35l41_fs_rates, !471, !"cs35l41_fs_rates", i1 false, i1 false}
!471 = !{!"../sound/soc/codecs/cs35l41.c", i32 818, i32 46}
!472 = !{ptr @.str.236, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../sound/soc/codecs/cs35l41.c", i32 1551, i32 2}
!474 = !{ptr @.str.237, !473, !"<string literal>", i1 false, i1 false}
!475 = !{ptr @cs35l41_sys_suspend.__UNIQUE_ID_ddebug302, !473, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!476 = !{ptr @.str.238, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../sound/soc/codecs/cs35l41.c", i32 1581, i32 2}
!478 = !{ptr @.str.239, !477, !"<string literal>", i1 false, i1 false}
!479 = !{ptr @cs35l41_sys_resume.__UNIQUE_ID_ddebug305, !477, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!480 = !{ptr @.str.240, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../sound/soc/codecs/cs35l41.c", i32 1561, i32 2}
!482 = !{ptr @.str.241, !481, !"<string literal>", i1 false, i1 false}
!483 = !{ptr @cs35l41_sys_suspend_noirq.__UNIQUE_ID_ddebug303, !481, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!484 = !{ptr @.str.242, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../sound/soc/codecs/cs35l41.c", i32 1571, i32 2}
!486 = !{ptr @.str.243, !485, !"<string literal>", i1 false, i1 false}
!487 = !{ptr @cs35l41_sys_resume_noirq.__UNIQUE_ID_ddebug304, !485, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!488 = !{ptr @.str.244, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../sound/soc/codecs/cs35l41.c", i32 1440, i32 2}
!490 = !{ptr @.str.245, !489, !"<string literal>", i1 false, i1 false}
!491 = !{ptr @cs35l41_runtime_suspend.__UNIQUE_ID_ddebug297, !489, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!492 = !{ptr @.str.246, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../sound/soc/codecs/cs35l41.c", i32 1445, i32 2}
!494 = !{ptr @cs35l41_runtime_suspend.__UNIQUE_ID_ddebug298, !493, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!495 = !{ptr @.str.247, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../sound/soc/codecs/cs35l41.c", i32 1524, i32 2}
!497 = !{ptr @.str.248, !496, !"<string literal>", i1 false, i1 false}
!498 = !{ptr @cs35l41_runtime_resume.__UNIQUE_ID_ddebug301, !496, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!499 = !{ptr @.str.249, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../sound/soc/codecs/cs35l41.c", i32 1540, i32 3}
!501 = !{ptr @cs35l41_runtime_resume._entry, !500, !"_entry", i1 false, i1 false}
!502 = !{ptr @cs35l41_runtime_resume._entry_ptr, !500, !"_entry_ptr", i1 false, i1 false}
!503 = !{ptr @.str.250, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../sound/soc/codecs/cs35l41.c", i32 1486, i32 3}
!505 = !{ptr @.str.251, !504, !"<string literal>", i1 false, i1 false}
!506 = !{ptr @cs35l41_exit_hibernate.__UNIQUE_ID_ddebug299, !504, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!507 = !{ptr @.str.252, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../sound/soc/codecs/cs35l41.c", i32 1498, i32 4}
!509 = !{ptr @cs35l41_exit_hibernate.__UNIQUE_ID_ddebug300, !508, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!510 = !{ptr @.str.253, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../sound/soc/codecs/cs35l41.c", i32 1502, i32 3}
!512 = !{ptr @cs35l41_exit_hibernate._entry, !511, !"_entry", i1 false, i1 false}
!513 = !{ptr @cs35l41_exit_hibernate._entry_ptr, !511, !"_entry_ptr", i1 false, i1 false}
!514 = !{ptr @.str.255, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../sound/soc/codecs/cs35l41.c", i32 1514, i32 2}
!516 = !{ptr @cs35l41_exit_hibernate._entry.254, !515, !"_entry", i1 false, i1 false}
!517 = !{ptr @cs35l41_exit_hibernate._entry_ptr.256, !515, !"_entry_ptr", i1 false, i1 false}
!518 = !{ptr @.str.257, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../sound/soc/codecs/cs35l41.c", i32 1469, i32 4}
!520 = !{ptr @.str.258, !519, !"<string literal>", i1 false, i1 false}
!521 = !{ptr @cs35l41_wait_for_pwrmgt_sts._entry, !519, !"_entry", i1 false, i1 false}
!522 = !{ptr @cs35l41_wait_for_pwrmgt_sts._entry_ptr, !519, !"_entry_ptr", i1 false, i1 false}
!523 = !{ptr @.str.260, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../sound/soc/codecs/cs35l41.c", i32 1476, i32 2}
!525 = !{ptr @cs35l41_wait_for_pwrmgt_sts._entry.259, !524, !"_entry", i1 false, i1 false}
!526 = !{ptr @cs35l41_wait_for_pwrmgt_sts._entry_ptr.261, !524, !"_entry_ptr", i1 false, i1 false}
!527 = !{i32 1, !"wchar_size", i32 2}
!528 = !{i32 1, !"min_enum_size", i32 4}
!529 = !{i32 8, !"branch-target-enforcement", i32 0}
!530 = !{i32 8, !"sign-return-address", i32 0}
!531 = !{i32 8, !"sign-return-address-all", i32 0}
!532 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!533 = !{i32 7, !"uwtable", i32 1}
!534 = !{i32 7, !"frame-pointer", i32 2}
!535 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!536 = !{!"auto-init"}
!537 = !{i8 0, i8 2}
!538 = !{i64 2148233778, i64 2148233804, i64 2148233833, i64 2148233867, i64 2148233898, i64 2148233921}
!539 = !{i64 2148233197}
!540 = !{i64 718020, i64 718045, i64 718067, i64 718083, i64 718095, i64 718115, i64 718139, i64 718155, i64 718167}
!541 = !{i64 2148233385}
!542 = !{i64 2148801443, i64 2148801448, i64 2148801461, i64 2148801505, i64 2148801539, i64 2148801560}
!543 = !{i32 0, i32 33}
